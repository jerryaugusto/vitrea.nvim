-- ==============================================================================
-- MODULE: Vitrea Core API
-- DESCRIPTION: The primary entry point for the Vitrea ecosystem. Orchestrates
-- user configurations, state management, and the compilation cycle.
-- ==============================================================================

local compiler = require("vitrea.engine.compiler")
local config = require("vitrea.config")

local M = {}

--- Initializes the ecosystem with user-defined parameters.
---@param opts table? The user configuration matrix.
function M.setup(opts)
	config.setup(opts)

	-- Register the manual compilation command for the artisan
	vim.api.nvim_create_user_command("VitreaCompile", function()
		local success = M.compile()
		if success then
			vim.notify("[Vitrea Engine] Architecture recompiled successfully.", vim.log.levels.INFO)
			vim.cmd("colorscheme vitrea")
		end
	end, { desc = "Forces the Vitrea engine to recompile its bytecode cache" })
end

--- Manually triggers the generation of the bytecode cache.
---@return boolean success True if compilation finishes without critical errors.
function M.compile()
	-- ======================================================================
	-- THE CACHE BUSTER: Evicts all vitrea modules from Lua's internal memory
	-- to force a physical read from the disk. Essential for live-reloading.
	-- ======================================================================
	for k, _ in pairs(package.loaded) do
		if k:match("^vitrea") then
			package.loaded[k] = nil
		end
	end

	local style = config.options.style
	local ok, palette = pcall(require, "vitrea.palettes." .. style)

	if not ok then
		vim.notify("[Vitrea Engine] Critical Error: Failed to locate palette '" .. style .. "'.", vim.log.levels.ERROR)
		return false
	end

	local groups = require("vitrea.groups").merge(palette, config.options)
	groups = require("vitrea.engine.parser").enforce_dialects(groups, palette)

	compiler.purge()
	compiler.compile(groups, palette)

	return true
end

--- Loads the visual architecture. Automatically compiles if no cache is present.
function M.load()
	if not compiler.load() then
		-- No cache detected: initiate the first compilation cycle
		M.compile()
		compiler.load()
	end
end

return M
