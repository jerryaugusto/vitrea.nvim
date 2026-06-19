-- ==============================================================================
-- MODULE: Vitrea Syntax & AST Architecture
-- DESCRIPTION: Translates the physiological pigments into Treesitter and LSP
-- semantic tokens. Implements tactile gravity for mutable states and
-- dynamic optical dimming for immutable constants.
-- ==============================================================================

local optics = require("vitrea.utils.optics")

local M = {}

--- Returns the syntax and semantic highlighting matrix.
---@param palette table The active Vitrea palette.
---@return table
function M.get(palette)
	-- Compute the darkened Patina Verdigris for read-only optical physics (15% dim)
	local patina_dimmed = optics.darken(palette.patina_verdigris, 15)

	return {
		-- ======================================================================
		-- 1. The Substrate (Common Text & Variables)
		-- ======================================================================
		Normal = { fg = palette.scriptorium_parchment, bg = palette.obsidian_nave },
		Identifier = { fg = palette.scriptorium_parchment },
		["@variable"] = { fg = palette.scriptorium_parchment },
		["@variable.parameter"] = { fg = palette.vellum_linen },
		["@lsp.type.variable"] = { fg = palette.scriptorium_parchment },
		["@lsp.type.parameter"] = { fg = palette.vellum_linen },

		-- ======================================================================
		-- 2. The Structural Masonry (Types & Interfaces)
		-- ======================================================================
		Type = { fg = palette.martyrs_ash },
		["@type"] = { fg = palette.martyrs_ash },
		["@type.builtin"] = { fg = palette.martyrs_ash },
		["@class"] = { fg = palette.martyrs_ash },
		["@lsp.type.class"] = { fg = palette.martyrs_ash },
		["@lsp.type.interface"] = { fg = palette.martyrs_ash },
		["@lsp.type.enum"] = { fg = palette.martyrs_ash },

		-- ======================================================================
		-- 3. The Active Intellect (Methods & Properties)
		-- ======================================================================
		Function = { fg = palette.woad_indigo },
		["@function"] = { fg = palette.woad_indigo },
		["@function.method"] = { fg = palette.woad_indigo },
		["@lsp.type.function"] = { fg = palette.woad_indigo },
		["@lsp.type.method"] = { fg = palette.woad_indigo },

		["@property"] = { fg = palette.tabernacle_gold },
		["@variable.member"] = { fg = palette.tabernacle_gold },
		["@lsp.type.property"] = { fg = palette.tabernacle_gold },

		-- ======================================================================
		-- 4. The Metronomic Flow & Truths
		-- ======================================================================
		Keyword = { fg = palette.scriptorium_parchment },
		["@keyword"] = { fg = palette.scriptorium_parchment },
		["@keyword.conditional"] = { fg = palette.sacrament_rose },
		["@keyword.repeat"] = { fg = palette.sacrament_rose },
		["@keyword.return"] = { fg = palette.sacrament_rose },

		Constant = { fg = palette.patina_verdigris },
		Boolean = { fg = palette.patina_verdigris },
		Number = { fg = palette.patina_verdigris },
		["@constant"] = { fg = palette.patina_verdigris },
		["@boolean"] = { fg = palette.patina_verdigris },
		["@number"] = { fg = palette.patina_verdigris },

		-- ======================================================================
		-- 5. Gravity, Entropy & Code Smells
		-- ======================================================================
		Operator = { fg = palette.censer_terracotta },
		["@operator"] = { fg = palette.censer_terracotta },
		["@keyword.directive"] = { fg = palette.censer_terracotta },
		["@function.macro"] = { fg = palette.censer_terracotta },
		["@lsp.type.macro"] = { fg = palette.censer_terracotta },
		["@lsp.typemod.variable.global"] = { fg = palette.censer_terracotta },

		-- ======================================================================
		-- 6. The Syntactic Mortar (Punctuation)
		-- ======================================================================
		Punctuation = { fg = palette.abbey_dust },
		Delimiter = { fg = palette.abbey_dust },
		["@punctuation.delimiter"] = { fg = palette.abbey_dust },
		["@punctuation.bracket"] = { fg = palette.abbey_dust },
		["@punctuation.special"] = { fg = palette.abbey_dust },

		-- ======================================================================
		-- 7. Organic Structures (Strings & Comments)
		-- ======================================================================
		String = { fg = palette.malachite_dust },
		["@string"] = { fg = palette.malachite_dust },
		["@character"] = { fg = palette.malachite_dust },

		Comment = { fg = palette.incense_smoke, italic = true },
		["@comment"] = { fg = palette.incense_smoke, italic = true },

		-- ======================================================================
		-- 8. Advanced LSP Physical States (Mutability & Read-Only)
		-- ======================================================================
		-- Readonly: Diminished presence to reflect immutability.
		["@lsp.mod.readonly"] = { fg = patina_dimmed },

		-- Mutable: Typographic physical weight to warn of runtime entropy.
		["@lsp.mod.mutable"] = { fg = palette.scriptorium_parchment, italic = true, bold = true },

		-- ======================================================================
		-- 9. Ephemeral States & Diagnostics (Apatheia)
		-- ======================================================================
		DiagnosticError = { fg = palette.relic_vermilion },
		DiagnosticWarn = { fg = palette.vesper_amber },
		DiagnosticInfo = { fg = palette.woad_indigo },
		DiagnosticHint = { fg = palette.veil_silver },

		DiagnosticUnderlineError = { sp = palette.relic_vermilion, undercurl = true },
		DiagnosticUnderlineWarn = { sp = palette.vesper_amber, undercurl = true },

		-- Stealth Inlay Hints & Ghost Text
		LspInlayHint = { fg = palette.veil_silver, bg = "NONE" },
		BlinkCmpGhostText = { fg = palette.veil_silver, bg = "NONE" },
	}
end

return M
