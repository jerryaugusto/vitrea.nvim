-- ==============================================================================
-- MODULE: Vitrea Groups Orchestrator
-- DESCRIPTION: Acts as the central nexus for all visual matrices. Imports the 
-- native editor rules, the syntax semantics, and the plugin constraints, 
-- fusing them into a singular highlight table for the bytecode compiler.
-- ==============================================================================

local M = {}

--- Consolidates all highlight groups into a single unyielding matrix.
---@param palette table The active Vitrea palette (e.g., vesper, vigil).
---@param config table The framework configuration matrix.
---@return table The fully merged highlight matrix.
function M.merge(palette, config)
    local editor_groups  = require("vitrea.groups.editor").get(palette, config)
    local syntax_groups  = require("vitrea.groups.syntax").get(palette)
    local plugin_groups  = require("vitrea.groups.plugins").get(palette, config)

    -- Deep merge the matrices. Conflicts are intentionally overwritten by 
    -- the later tables (plugins override syntax if necessary).
    return vim.tbl_deep_extend("force", editor_groups, syntax_groups, plugin_groups)
end

return M
