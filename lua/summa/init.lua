-- ==============================================================================
-- MODULE: Summa Framework API (Init)
-- DESCRIPTION: The public-facing configuration contract for the user.
-- Establishes framework defaults and securely merges user-defined overrides.
-- ==============================================================================

local M = {}

-- The immutable default configuration contract (The Factory Defaults)
-- Strictly mirrors the architectural dossier specification.
M.config = {
	aesthetic = "cathedra",
	style = "vigil", -- vigil (default), vesper, matina (Prepared for future implementation)
	modules = {
		silence_ansi = true,
		cmp_integration = "blink.cmp", -- Ascetic primary support target
		brown_noise_suppression = true,
	},
}

--- Securely performs a deep merge of the user configuration with the framework defaults.
---@param default table The baseline Summa configuration matrix.
---@param user table? The user-provided overrides.
---@return table The consolidated configuration matrix.
local function merge_config(default, user)
	user = user or {}
	local consolidated = vim.deepcopy(default)

	for key, value in pairs(user) do
		if type(value) == "table" and type(consolidated[key]) == "table" then
			consolidated[key] = merge_config(consolidated[key], value)
		else
			consolidated[key] = value
		end
	end

	return consolidated
end

--- Initializes the Summa engine with user-defined parameters.
--- This method must be invoked in the user's configuration prior to the colorscheme command.
---@param opts table? User configuration overrides.
function M.setup(opts)
	M.config = merge_config(M.config, opts)

	-- Register the global user command for manual cache invalidation
	vim.api.nvim_create_user_command("SummaCompile", function()
		require("summa.compiler").purge()

		-- Triggering the colorscheme command forces a cache miss, rebuilding the engine
		vim.cmd("colorscheme cathedra")

		vim.notify("[Summa Framework] Bytecode cache purged and recompiled successfully.", vim.log.levels.INFO)
	end, { desc = "Force recompile the Summa Framework bytecode cache" })
end

--- Retrieves the active, fully consolidated configuration matrix.
--- Consumed internally by the compiler and UI generators.
---@return table
function M.get_config()
	return M.config
end

return M
