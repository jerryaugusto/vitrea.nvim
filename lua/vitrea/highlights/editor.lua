-- ==============================================================================
-- MODULE: Summa Native Editor Integration
-- DESCRIPTION: Enforces physical silence on the Neovim UI. Suppresses borders,
-- muzzles ANSI terminal colors, and establishes the core cognitive canvas.
-- ==============================================================================

local M = {}

--- Generates the core UI highlight groups for the compiler.
---@param p table The active Summa palette matrix.
---@param config table The consolidated user configuration.
---@return table A dictionary of Neovim native highlight definitions.
function M.get(p, config)
	return {
		-- 1. The Core Canvas (The Monolith)
		Normal = { fg = p.parchment_linen, bg = p.obsidian_nave },
		NormalNC = { fg = p.stone_pillar, bg = p.crypt_shadow },

		-- 2. Floating Dimensions (Eradicating Borders)
		-- Windows float seamlessly without harsh mathematical lines.
		NormalFloat = { fg = p.parchment_linen, bg = p.altar_smoke },
		FloatBorder = { fg = p.altar_smoke, bg = p.altar_smoke },
		FloatTitle = { fg = p.abbey_dust, bg = p.altar_smoke, bold = true },

		-- 3. Navigation and Focus
		Cursor = { fg = p.obsidian_nave, bg = p.relic_light },
		CursorLine = { bg = p.altar_smoke },
		CursorColumn = { bg = p.altar_smoke },
		CursorLineNr = { fg = p.tabernacle_gold, bold = true },
		LineNr = { fg = p.silent_cloisters },

		-- 4. Brown Noise Suppression (Structural Glue)
		-- Recesses gutters, splits, and invisible characters into the shadows.
		SignColumn = { bg = p.obsidian_nave },
		ColorColumn = { bg = p.crypt_shadow },
		EndOfBuffer = { fg = p.obsidian_nave },
		NonText = { fg = p.abbey_dust },
		WinSeparator = { fg = config.modules.brown_noise_suppression and p.obsidian_nave or p.altar_smoke },

		-- 5. Selection and Search (Active Illumination)
		Visual = { bg = p.vesper_mist },
		VisualNOS = { bg = p.vesper_mist, underline = true },
		Search = { fg = p.obsidian_nave, bg = p.relic_light },
		IncSearch = { fg = p.obsidian_nave, bg = p.vigil_candle },

		-- 6. The Omniscient Messages (Command Line)
		MsgArea = { fg = p.parchment_linen, bg = p.obsidian_nave },
		ModeMsg = { fg = p.bishop_amethyst, bold = true },
		MoreMsg = { fg = p.celestial_vault },
		WarningMsg = { fg = p.vigil_candle, bold = true },
		ErrorMsg = { fg = p.martyr_blood, bold = true },

		-- 7. Diagnostic Ecosystem (Thermal Reservation)
		DiagnosticError = { fg = p.martyr_blood },
		DiagnosticWarn = { fg = p.vigil_candle },
		DiagnosticInfo = { fg = p.incense_smoke },
		DiagnosticHint = { fg = p.fresco_lapis },
		DiagnosticOk = { fg = p.olive_gethsemane },

		DiagnosticUnderlineError = { undercurl = true, sp = p.martyr_blood },
		DiagnosticUnderlineWarn = { undercurl = true, sp = p.vigil_candle },
		DiagnosticUnderlineInfo = { undercurl = true, sp = p.incense_smoke },
		DiagnosticUnderlineHint = { underdotted = true, sp = p.fresco_lapis },
		DiagnosticUnderlineOk = { underdotted = true, sp = p.olive_gethsemane },

		-- Marginalia conversion: Virtual text becomes italicized, non-intrusive metadata.
		DiagnosticVirtualTextError = { fg = p.martyr_blood, bg = "NONE", italic = true },
		DiagnosticVirtualTextWarn = { fg = p.vigil_candle, bg = "NONE", italic = true },
		DiagnosticVirtualTextInfo = { fg = p.incense_smoke, bg = "NONE", italic = true },
		DiagnosticVirtualTextHint = { fg = p.fresco_lapis, bg = "NONE", italic = true },
		DiagnosticVirtualTextOk = { fg = p.olive_gethsemane, bg = "NONE", italic = true },
	}
end

--- Injects the monastic equivalent colors into the Neovim global terminal variables.
--- Actively suppresses external CLI tools from injecting excessive neon colors.
---@param p table The active Summa palette matrix.
---@param config table The consolidated user configuration.
function M.set_term_colors(p, config)
	if not config.modules.silence_ansi then
		return
	end

	vim.g.terminal_color_0 = p.obsidian_nave
	vim.g.terminal_color_1 = p.cardinal_silk
	vim.g.terminal_color_2 = p.olive_gethsemane
	vim.g.terminal_color_3 = p.tabernacle_gold
	vim.g.terminal_color_4 = p.incense_smoke
	vim.g.terminal_color_5 = p.bishop_amethyst
	vim.g.terminal_color_6 = p.fresco_lapis
	vim.g.terminal_color_7 = p.parchment_linen

	-- Bright variants mapped to monastic equivalents to destroy UI pollution.
	vim.g.terminal_color_8 = p.abbey_dust
	vim.g.terminal_color_9 = p.martyr_blood
	vim.g.terminal_color_10 = p.olive_gethsemane
	vim.g.terminal_color_11 = p.tabernacle_gold
	vim.g.terminal_color_12 = p.fresco_lapis
	vim.g.terminal_color_13 = p.bishop_amethyst
	vim.g.terminal_color_14 = p.copper_patina
	vim.g.terminal_color_15 = p.parchment_linen
end

return M
