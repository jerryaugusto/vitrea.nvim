-- ==============================================================================
-- MODULE: Vitrea Ecosystem Subjugation (Plugins)
-- DESCRIPTION: Conditionally enforces the Doctrine of Containment upon
-- third-party plugins. Ensures strict Semantic Echoing across all supported UI
-- components, mapping their states to the 17-pillar physiological matrix.
-- ==============================================================================

local M = {}

--- Returns the conditional plugin UI highlight matrix.
---@param palette table The active Vitrea palette.
---@param config table The framework configuration matrix.
---@return table The mapped highlight groups.
function M.get(palette, config)
	local groups = {}
	local integrations = config.integrations

	if integrations.blink_cmp then
		groups = vim.tbl_extend("force", groups, {
			-- The auto-completion menu is elevated into the Z-axis
			BlinkCmpMenu = { fg = palette.scriptorium_parchment, bg = palette.midnight_rain },
			BlinkCmpMenuBorder = { fg = palette.forged_iron, bg = palette.midnight_rain },
			BlinkCmpMenuSelection = { fg = palette.tabernacle_gold, bg = palette.forged_iron },
			BlinkCmpDoc = { fg = palette.scriptorium_parchment, bg = palette.midnight_rain },
			BlinkCmpDocBorder = { fg = palette.forged_iron, bg = palette.midnight_rain },

			-- Semantic Kind alignments inheriting from the AST
			BlinkCmpKindClass = { fg = palette.martyrs_ash },
			BlinkCmpKindFunction = { fg = palette.woad_indigo },
			BlinkCmpKindMethod = { fg = palette.woad_indigo },
			BlinkCmpKindProperty = { fg = palette.tabernacle_gold },
			BlinkCmpKindVariable = { fg = palette.scriptorium_parchment },
			BlinkCmpKindKeyword = { fg = palette.sacrament_rose },
			BlinkCmpKindConstant = { fg = palette.patina_verdigris },
		})
	end

	if integrations.snacks then
		groups = vim.tbl_extend("force", groups, {
			SnacksDashboardHeader = { fg = palette.abbey_dust },
			SnacksDashboardDesc = { fg = palette.scriptorium_parchment },
			SnacksDashboardIcon = { fg = palette.martyrs_ash },
			SnacksDashboardKey = { fg = palette.sacrament_rose },

			-- Stealth UI borders and Semantic Echoing for fuzzy matching
			SnacksPickerBorder = { fg = palette.forged_iron, bg = palette.obsidian_nave },
			SnacksPickerMatch = { fg = palette.sacrament_rose, bold = true },
			SnacksPickerSelected = { fg = palette.tabernacle_gold, bg = palette.forged_iron },
		})
	end

	if integrations.mini then
		groups = vim.tbl_extend("force", groups, {
			-- Mini.Files (Stealth UI)
			MiniFilesBorder = { fg = palette.forged_iron, bg = palette.obsidian_nave },
			MiniFilesNormal = { fg = palette.scriptorium_parchment, bg = palette.obsidian_nave },
			MiniFilesTitle = { fg = palette.cathedral_stone, bg = palette.obsidian_nave, bold = true },

			-- Mini.Statusline (Z-Axis Elevation)
			MiniStatuslineModeNormal = { fg = palette.obsidian_nave, bg = palette.scriptorium_parchment, bold = true },
			MiniStatuslineModeInsert = { fg = palette.obsidian_nave, bg = palette.patina_verdigris, bold = true },
			MiniStatuslineModeVisual = { fg = palette.obsidian_nave, bg = palette.sacrament_rose, bold = true },
			MiniStatuslineDevinfo = { fg = palette.cathedral_stone, bg = palette.forged_iron },
			MiniStatuslineFilename = { fg = palette.scriptorium_parchment, bg = palette.midnight_rain },

			-- Mini.Diff (Semantic Echoing for Version Control)
			-- Additions map to Malachite Dust, Changes to Tabernacle Gold, Deletions to Relic Vermilion
			MiniDiffSignAdd = { fg = palette.malachite_dust, bg = palette.cloister_shadow },
			MiniDiffSignChange = { fg = palette.tabernacle_gold, bg = palette.cloister_shadow },
			MiniDiffSignDelete = { fg = palette.relic_vermilion, bg = palette.cloister_shadow },
			MiniDiffOverAdd = { fg = palette.malachite_dust, bg = palette.midnight_rain },
			MiniDiffOverChange = { fg = palette.tabernacle_gold, bg = palette.midnight_rain },
			MiniDiffOverDelete = { fg = palette.relic_vermilion, bg = palette.midnight_rain },
		})
	end

	-- Keeping GitSigns and Telescope as legacy/ecosystem integrations
	-- for potential community users of the VITREA framework
	if integrations.gitsigns then
		groups = vim.tbl_extend("force", groups, {
			GitSignsAdd = { fg = palette.malachite_dust, bg = palette.cloister_shadow },
			GitSignsChange = { fg = palette.tabernacle_gold, bg = palette.cloister_shadow },
			GitSignsDelete = { fg = palette.relic_vermilion, bg = palette.cloister_shadow },
		})
	end

	if integrations.telescope then
		groups = vim.tbl_extend("force", groups, {
			TelescopeBorder = { fg = palette.forged_iron, bg = palette.obsidian_nave },
			TelescopePromptBorder = { fg = palette.forged_iron, bg = palette.obsidian_nave },
			TelescopeResultsBorder = { fg = palette.forged_iron, bg = palette.obsidian_nave },
			TelescopePreviewBorder = { fg = palette.forged_iron, bg = palette.obsidian_nave },
			TelescopeNormal = { fg = palette.scriptorium_parchment, bg = palette.obsidian_nave },
			TelescopePromptNormal = { fg = palette.scriptorium_parchment, bg = palette.obsidian_nave },
			TelescopeSelection = { fg = palette.tabernacle_gold, bg = palette.forged_iron },
			TelescopeMatching = { fg = palette.sacrament_rose, bold = true },
		})
	end

	return groups
end

return M
