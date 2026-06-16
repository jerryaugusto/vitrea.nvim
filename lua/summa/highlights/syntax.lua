-- ==============================================================================
-- MODULE: Summa Syntax Engine (Treesitter & LSP)
-- DESCRIPTION: Enforces strict chromatic determinism across the Abstract Syntax
-- Tree and Language Server Semantic Tokens. Establishes the optical hierarchy
-- for prolonged software engineering sessions.
-- ==============================================================================

local M = {}

--- Generates the comprehensive syntax and semantic token highlight matrix.
---@param p table The active Summa palette matrix.
---@return table A dictionary of Neovim syntax highlight definitions.
function M.get(p)
	return {
		-- ====================================================================
		-- 1. LEGACY SYNTAX FALLBACK (The Monastic Substrate)
		-- Ensures unparsed buffers remain compliant with the visual matrix.
		-- ====================================================================
		Comment = { fg = p.silent_cloisters, italic = true },
		Constant = { fg = p.vigil_candle },
		String = { fg = p.olive_gethsemane },
		Identifier = { fg = p.parchment_linen },
		Function = { fg = p.copper_patina },
		Statement = { fg = p.bishop_amethyst, bold = true },
		Operator = { fg = p.abbey_dust },
		PreProc = { fg = p.celestial_vault },
		Type = { fg = p.fresco_lapis },
		Special = { fg = p.relic_light },
		Todo = { fg = p.obsidian_nave, bg = p.tabernacle_gold, bold = true },

		-- ====================================================================
		-- 2. NATIVE TREE-SITTER ENGINE
		-- Mapped strictly to the 10 Semantic Hues for absolute determinism.
		-- ====================================================================

		-- Structural Glue (Recedes into the shadows)
		["@punctuation.bracket"] = { fg = p.abbey_dust },
		["@punctuation.delimiter"] = { fg = p.abbey_dust },
		["@punctuation.special"] = { fg = p.abbey_dust },
		["@operator"] = { fg = p.abbey_dust },

		-- Logic Pillars (Control Flow - Purple)
		["@keyword"] = { fg = p.bishop_amethyst },
		["@keyword.function"] = { fg = p.bishop_amethyst },
		["@keyword.return"] = { fg = p.bishop_amethyst },
		["@keyword.operator"] = { fg = p.bishop_amethyst },
		["@keyword.import"] = { fg = p.bishop_amethyst },
		["@keyword.exception"] = { fg = p.martyr_blood, italic = true },

		-- Action Verbs (Functions & Methods - Cyan)
		["@function"] = { fg = p.copper_patina },
		["@function.builtin"] = { fg = p.copper_patina, italic = true },
		["@function.macro"] = { fg = p.copper_patina, italic = true },
		["@function.method"] = { fg = p.copper_patina },
		["@function.method.call"] = { fg = p.copper_patina },

		-- Ontology & Structure (Types & Classes - Blue)
		["@type"] = { fg = p.fresco_lapis },
		["@type.builtin"] = { fg = p.fresco_lapis, italic = true },
		["@type.definition"] = { fg = p.fresco_lapis, bold = true },
		["@type.qualifier"] = { fg = p.bishop_amethyst },

		-- Bibliography & Namespaces (Slate)
		["@module"] = { fg = p.incense_smoke, italic = true },
		["@module.builtin"] = { fg = p.incense_smoke, italic = true },

		-- Subjects & Attributes (Bone & Gold)
		["@variable"] = { fg = p.parchment_linen },
		["@variable.builtin"] = { fg = p.parchment_linen, italic = true },
		["@variable.parameter"] = { fg = p.silent_cloisters, italic = true }, -- Deprioritized
		["@variable.member"] = { fg = p.tabernacle_gold }, -- The Foveal Payload
		["@property"] = { fg = p.tabernacle_gold },
		["@attribute"] = { fg = p.tabernacle_gold },

		-- Literals (Green & Orange)
		["@string"] = { fg = p.olive_gethsemane },
		["@string.escape"] = { fg = p.relic_light },
		["@string.regexp"] = { fg = p.chalice_wine },
		["@number"] = { fg = p.vigil_candle },
		["@number.float"] = { fg = p.vigil_candle },
		["@boolean"] = { fg = p.vigil_candle, italic = true },

		-- ====================================================================
		-- 3. LANGUAGE SPECIFIC OVERRIDES (AST Correction)
		-- Forces declarative languages back into the monastic substrate.
		-- ====================================================================

		-- Lua: Suppress aggressive highlighting of declarative table fields
		["@constructor.lua"] = { fg = p.abbey_dust },
		["@punctuation.bracket.lua"] = { fg = p.abbey_dust },
		["@variable.member.lua"] = { fg = p.parchment_linen },
		["@property.lua"] = { fg = p.parchment_linen },

		-- Go: Force bibliography paths to slate (Silencing the import blocks)
		["@string.special.url.go"] = { fg = p.incense_smoke, italic = true },
		["@string.special.import"] = { fg = p.incense_smoke, italic = true },

		-- TypeScript / TSX: Component Architecture
		["@tag"] = { fg = p.fresco_lapis }, -- Components
		["@tag.attribute"] = { fg = p.copper_patina, italic = true }, -- Props
		["@tag.delimiter"] = { fg = p.abbey_dust },

		-- ====================================================================
		-- 4. LSP SEMANTIC TOKENS (Dynamic Compiler Context)
		-- Maps directly to the Treesitter hierarchy to prevent color bleeding.
		-- ====================================================================
		["@lsp.type.namespace"] = { fg = p.incense_smoke, italic = true },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.interface"] = { link = "@type" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.typeParameter"] = { fg = p.fresco_lapis, italic = true },

		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.variable"] = { link = "@variable" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.enumMember"] = { fg = p.vigil_candle },

		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.method"] = { link = "@function.method" },
		["@lsp.type.macro"] = { link = "@function.macro" },
		["@lsp.type.decorator"] = { link = "@function" },

		-- Modifiers (The Typographical Z-Axis)
		["@lsp.mod.readonly"] = { fg = p.vigil_candle },
		["@lsp.mod.deprecated"] = { fg = p.silent_cloisters, strikethrough = true },

		-- ====================================================================
		-- 5. LspInlayHints (The Silent Guides)
		-- CRITICAL: Inlay hints must never compete with actual code logic.
		-- Forced into the shadows without italicization to prevent eye strain.
		-- ====================================================================
		LspInlayHint = { fg = p.abbey_dust, bg = "NONE", italic = false },

		-- ====================================================================
		-- 6. MARKDOWN & SCHOLASTIC MARGINALIA
		-- Translates documentation hovers into calm reading environments.
		-- ====================================================================
		["@markup.heading"] = { fg = p.bishop_amethyst, bold = true },
		["@markup.strong"] = { fg = p.parchment_linen, bold = true },
		["@markup.italic"] = { fg = p.parchment_linen, italic = true },
		["@markup.link"] = { fg = p.incense_smoke, italic = true, underline = true },
		["@markup.link.url"] = { fg = p.silent_cloisters, italic = true },
		["@markup.link.label"] = { fg = p.incense_smoke, bold = true },
		["@markup.raw"] = { fg = p.copper_patina, bg = "NONE" },
		["@markup.raw.block"] = { fg = p.parchment_linen, bg = "NONE" },
		["@markup.list"] = { fg = p.relic_light },
		["@markup.quote"] = { fg = p.silent_cloisters, italic = true },
	}
end

return M
