-- ==============================================================================
-- MODULE: Vitrea Stealth UI Substrate
-- DESCRIPTION: Constructs the graphical masonry through Z-axis luminance shifting.
-- Eradicates hard drawn borders, allowing panels to separate via micro-tones
-- like Midnight Rain and Forged Iron, strictly preserving foveal focus.
-- ==============================================================================

local M = {}

--- Returns the native Neovim UI matrix mapped to the Doctrine.
---@param palette table The active Vitrea palette.
---@param config table The framework configuration matrix.
---@return table
function M.get(palette, config)
	return {
		-- ======================================================================
		-- 1. The Canvas & Substrate
		-- ======================================================================
		Normal = { fg = palette.scriptorium_parchment, bg = palette.obsidian_nave },
		NormalNC = { fg = palette.scriptorium_parchment, bg = palette.obsidian_nave },
		SignColumn = { bg = palette.cloister_shadow },
		EndOfBuffer = { fg = palette.obsidian_nave },

		-- ======================================================================
		-- 2. The Liturgical Bounds (Stealth UI via Z-Axis)
		-- ======================================================================
		-- Splits rendered with Midnight Rain and Forged Iron to avoid sharp lines
		WinSeparator = { fg = palette.forged_iron, bg = palette.midnight_rain },
		VertSplit = { fg = palette.forged_iron, bg = palette.midnight_rain },

		-- ======================================================================
		-- 3. Floating Altars
		-- ======================================================================
		NormalFloat = { fg = palette.scriptorium_parchment, bg = palette.obsidian_nave },
		FloatBorder = { fg = palette.forged_iron, bg = palette.obsidian_nave },
		FloatTitle = { fg = palette.cathedral_stone, bg = palette.obsidian_nave, bold = true },

		Pmenu = { fg = palette.scriptorium_parchment, bg = palette.midnight_rain },
		PmenuSel = { fg = palette.tabernacle_gold, bg = palette.forged_iron },
		PmenuSbar = { bg = palette.midnight_rain },
		PmenuThumb = { bg = palette.forged_iron },

		-- ======================================================================
		-- 4. Metrics & Foveal Tracking
		-- ======================================================================
		-- Incense Smoke physically elevates the active line
		CursorLine = { bg = palette.incense_smoke },
		CursorColumn = { bg = palette.incense_smoke },
		ColorColumn = { bg = palette.forged_iron },

		-- Cloister Shadow anchors the boundaries peripherally
		LineNr = { fg = palette.cloister_shadow },
		CursorLineNr = { fg = palette.cathedral_stone, bold = true },

		Cursor = { fg = palette.obsidian_nave, bg = palette.scriptorium_parchment },
		TermCursor = { fg = palette.obsidian_nave, bg = palette.scriptorium_parchment },

		-- ======================================================================
		-- 5. Focus & Deliberation
		-- ======================================================================
		Visual = { bg = palette.incense_smoke },
		Search = { fg = palette.obsidian_nave, bg = palette.tabernacle_gold },
		CurSearch = { fg = palette.obsidian_nave, bg = palette.vesper_amber },

		-- ======================================================================
		-- 6. Z-Axis Statuslines
		-- ======================================================================
		StatusLine = { fg = palette.cathedral_stone, bg = palette.forged_iron },
		StatusLineNC = { fg = palette.cloister_shadow, bg = palette.midnight_rain },
		MsgArea = { fg = palette.scriptorium_parchment, bg = palette.obsidian_nave },

		-- ======================================================================
		-- 7. Semantic Echoing (UI Action)
		-- ======================================================================
		Directory = { fg = palette.woad_indigo }, -- Inherits AST Action-Driver
		MatchParen = { fg = palette.tabernacle_gold, bg = palette.forged_iron, bold = true },

		Folded = { fg = palette.incense_smoke, bg = palette.midnight_rain },
		FoldColumn = { fg = palette.cloister_shadow, bg = palette.cloister_shadow },
	}
end

return M
