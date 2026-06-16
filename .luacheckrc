-- ==============================================================================
-- Luacheck Configuration for Summa Framework
-- ==============================================================================
stds.nvim = {
    read_globals = { "vim" }
}

std = "lua51+nvim"
max_line_length = 120

ignore = {
    "212", -- Unused argument
    "122", -- Indirectly setting a readonly global
}
