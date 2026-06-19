-- ==============================================================================
-- MODULE: Vitrea Configuration Manager
-- DESCRIPTION: Establishes the default framework settings and deep-merges them
-- with the user's explicitly declared preferences.
-- ==============================================================================

local M = {}

--- The immutable factory defaults for the Vitrea ecosystem.
M.defaults = {
	style = "vesper", -- "vesper" (default), "vigil" (darker), "matina" (light)

	-- Ecosystem Integration Control.
	-- Allows the user to dictate exactly which plugin highlights are compiled,
	-- preventing global namespace pollution.
	integrations = {
		blink_cmp = true,
		telescope = true,
		snacks = true,
		gitsigns = true,
		mini = true,
	},
}

M.options = vim.deepcopy(M.defaults)

--- Deep merges user configuration with the ecosystem defaults.
---@param opts table? User-defined configuration table.
function M.setup(opts)
	opts = opts or {}
	M.options = vim.tbl_deep_extend("force", M.defaults, opts)
end

return M
