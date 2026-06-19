-- ==============================================================================
-- MODULE: Vitrea Ignition Point
-- DESCRIPTION: The native Neovim interface for loading the colorscheme.
-- Invoked implicitly by the `colorscheme vitrea` command.
-- ==============================================================================

-- The Vow of Tabula Rasa: Purify the environment before applying the architecture
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "vitrea"

-- Invoke the core engine to load the compiled bytecode
require("vitrea").load()
