-- ==============================================================================
-- MODULE: Summa Plugin Ecosystem Integration
-- DESCRIPTION: Subjugates third-party UI plugins to the Cathedra chromatic
-- determinism. Eradicates the "Sticker Syndrome" from overlays and enforces
-- strict brown noise suppression on autocompletion metadata.
-- ==============================================================================

local M = {}

--- Generates the comprehensive plugin highlight matrix.
---@param p table The active Summa palette matrix.
---@param config table The consolidated user configuration.
---@return table A dictionary of Neovim plugin highlight definitions.
function M.get(p, config)
	return {
		-- ====================================================================
		-- 1. BLINK.CMP (The Premonitory Window)
		-- Ascetic primary autocomplete integration.
		-- ====================================================================
		BlinkCmpMenu = { fg = p.stone_pillar, bg = p.altar_smoke },
		BlinkCmpMenuBorder = { fg = p.altar_smoke, bg = p.altar_smoke }, -- Seamless fusion
		BlinkCmpMenuSelection = { fg = p.relic_light, bg = p.vesper_mist, bold = true },

		BlinkCmpDoc = { fg = p.parchment_linen, bg = p.altar_smoke },
		BlinkCmpDocBorder = { fg = p.altar_smoke, bg = p.altar_smoke },

		-- Lexical Matching (Foveal Focus)
		BlinkCmpLabelMatch = { fg = p.relic_light, bold = true },

		-- Signature and Parameter Pacification (Brown Noise)
		BlinkCmpLabelDetail = { fg = p.silent_cloisters, italic = true },
		BlinkCmpLabelDescription = { fg = p.silent_cloisters },

		-- Provenance Suppression: Sources become dry stamps, void of neon colors
		BlinkCmpSourceLsp = { fg = p.silent_cloisters, italic = false },
		BlinkCmpSourceBuffer = { fg = p.silent_cloisters, italic = false },
		BlinkCmpSourceSnippet = { fg = p.silent_cloisters, italic = false },

		BlinkCmpGhostText = { fg = p.silent_cloisters, italic = true },

		-- ====================================================================
		-- 2. SNACKS.NVIM (Omniscient Overlays)
		-- ====================================================================
		SnacksNormal = { fg = p.parchment_linen, bg = p.altar_smoke },
		SnacksNormalNC = { fg = p.stone_pillar, bg = p.altar_smoke },
		SnacksBorder = { fg = p.altar_smoke, bg = p.altar_smoke },
		SnacksPickerBorder = { fg = p.altar_smoke, bg = p.altar_smoke },

		-- Sticker Syndrome Eradication: Titles float in the void
		SnacksPickerTitle = { fg = p.abbey_dust, bg = "NONE", bold = true },
		SnacksPickPreview = { bg = p.crypt_shadow },
		SnacksPickListCursorLine = { bg = p.vesper_mist, bold = true },
		SnacksPickMatch = { fg = p.tabernacle_gold, bold = true },

		-- Git Thermal Alignment (Strict execution of the Tribunal of Versions)
		SnacksPickerGitStatusAdded = { fg = p.olive_gethsemane },
		SnacksPickerGitStatusDeleted = { fg = p.martyr_blood },
		SnacksPickerGitStatusModified = { fg = p.tabernacle_gold },
		SnacksPickerGitStatusRenamed = { fg = p.copper_patina },
		SnacksPickerGitStatusUntracked = { fg = p.silent_cloisters },

		SnacksPickerGitBranch = { fg = p.copper_patina, italic = true },
		SnacksPickerGitCommit = { fg = p.incense_smoke },

		-- Notifier Infrastructure
		SnacksNotifierIconDebug = { fg = p.tabernacle_gold, bg = "NONE" },
		SnacksNotifierTitleDebug = { fg = p.tabernacle_gold, bg = "NONE" },
		SnacksNotifierIconError = { fg = p.martyr_blood, bg = "NONE" },
		SnacksNotifierTitleError = { fg = p.martyr_blood, bg = "NONE" },
		SnacksNotifierIconInfo = { fg = p.incense_smoke, bg = "NONE" },
		SnacksNotifierTitleInfo = { fg = p.incense_smoke, bg = "NONE" },
		SnacksNotifierIconWarn = { fg = p.vigil_candle, bg = "NONE" },
		SnacksNotifierTitleWarn = { fg = p.vigil_candle, bg = "NONE" },

		-- ====================================================================
		-- 3. MINI.NVIM ECOSYSTEM (The Native Shadow)
		-- ====================================================================

		-- mini.files: Seamless extension of the primary canvas
		MiniFilesNormal = { fg = p.stone_pillar, bg = p.crypt_shadow },
		MiniFilesBorder = { fg = p.crypt_shadow, bg = p.crypt_shadow },
		MiniFilesTitle = { fg = p.abbey_dust, bg = "NONE", bold = true },
		MiniFilesTitleFocused = { fg = p.tabernacle_gold, bg = "NONE", bold = true },
		MiniFilesCursorLine = { bg = p.vesper_mist, bold = true },

		-- mini.statusline: Floating indicators without powerline borders
		MiniStatuslineFilename = { fg = p.parchment_linen, bg = "NONE", bold = true },
		MiniStatuslineDevinfo = { fg = p.silent_cloisters, bg = "NONE" },
		MiniStatuslineFileinfo = { fg = p.silent_cloisters, bg = "NONE" },
		MiniStatuslineGit = { fg = p.incense_smoke, bg = "NONE" },
		MiniStatuslineModeNormal = { fg = p.obsidian_nave, bg = p.stone_pillar, bold = true },
		MiniStatuslineModeInsert = { fg = p.obsidian_nave, bg = p.olive_gethsemane, bold = true },
		MiniStatuslineModeVisual = { fg = p.obsidian_nave, bg = p.fresco_lapis, bold = true },
		MiniStatuslineModeReplace = { fg = p.obsidian_nave, bg = p.martyr_blood, bold = true },
		MiniStatuslineModeCommand = { fg = p.obsidian_nave, bg = p.relic_light, bold = true },

		-- mini.icons (Base Engine Hijack)
		-- Forces every icon in the universe to strictly inherit the 10 Semantic Hues
		MiniIconsAzure = { fg = p.celestial_vault },
		MiniIconsBlue = { fg = p.fresco_lapis },
		MiniIconsCyan = { fg = p.copper_patina },
		MiniIconsGreen = { fg = p.olive_gethsemane },
		MiniIconsGrey = { fg = p.silent_cloisters },
		MiniIconsOrange = { fg = p.vigil_candle },
		MiniIconsPurple = { fg = p.bishop_amethyst },
		MiniIconsRed = { fg = p.martyr_blood },
		MiniIconsYellow = { fg = p.tabernacle_gold },
	}
end

return M
