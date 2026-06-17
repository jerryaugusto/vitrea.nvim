-- ==============================================================================
-- ENTRYPOINT: Vitrea Colorscheme
-- DESCRIPTION: The native Neovim invocation target. Clears existing visual state,
-- forces True Color mode, and coordinates the bytecode engine.
-- ==============================================================================

-- 1. State Sanitization
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "vitrea"
vim.o.termguicolors = true

-- 2. Engine Dependencies
local compiler = require("vitrea.engine.compiler")
local editor = require("vitrea.groups.editor")
local muzzle = require("vitrea.engine.muzzle")
local plugins = require("vitrea.groups.plugins")
local syntax = require("vitrea.groups.syntax")
local vitrea = require("vitrea")

local config = vitrea.get_config()

-- Dynamically load the requested liturgical hour (vesper, vigil, or matina)
local palette_module = string.format("vitrea.palettes.%s", config.style)
local ok, palette = pcall(require, palette_module)

if not ok then
	vim.notify(
		"[Vitrea] CRITICAL ERROR: Invalid style '" .. tostring(config.style) .. "'. Falling back to 'vesper'.",
		vim.log.levels.ERROR
	)
	palette = require("vitrea.palettes.vesper").colors
else
	palette = palette.colors
end

-- 3. Apply Global Directives
muzzle.set_term_colors(palette, config)

-- 4. Bytecode Cache Execution
if not compiler.load() then
	local spec = {}

	spec = vim.tbl_extend("force", spec, editor.get(palette, config))
	spec = vim.tbl_extend("force", spec, syntax.get(palette))
	spec = vim.tbl_extend("force", spec, plugins.get(palette, config))

	compiler.compile(spec)
	compiler.load()
end
