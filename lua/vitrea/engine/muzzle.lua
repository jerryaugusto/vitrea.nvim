-- ==============================================================================
-- MODULE: Vitrea ANSI Muzzle
-- DESCRIPTION: Computes the terminal color mappings aligned with the canonical
-- stones, preparing them for injection into the bytecode cache.
-- ==============================================================================

local M = {}

--- Returns a table mapping the 16 global ANSI terminal variables to the palette.
---@param palette table The active Vitrea palette.
---@return table
function M.get(palette)
	return {
		terminal_color_0 = palette.obsidian_nave, -- Black
		terminal_color_1 = palette.relic_vermilion, -- Red
		terminal_color_2 = palette.malachite_dust, -- Green
		terminal_color_3 = palette.vesper_amber, -- Yellow
		terminal_color_4 = palette.woad_indigo, -- Blue
		terminal_color_5 = palette.sacrament_rose, -- Magenta
		terminal_color_6 = palette.patina_verdigris, -- Cyan
		terminal_color_7 = palette.scriptorium_parchment, -- White

		terminal_color_8 = palette.cloister_shadow, -- Bright Black
		terminal_color_9 = palette.relic_vermilion, -- Bright Red
		terminal_color_10 = palette.malachite_dust, -- Bright Green
		terminal_color_11 = palette.tabernacle_gold, -- Bright Yellow
		terminal_color_12 = palette.woad_indigo, -- Bright Blue
		terminal_color_13 = palette.sacrament_rose, -- Bright Magenta
		terminal_color_14 = palette.patina_verdigris, -- Bright Cyan
		terminal_color_15 = palette.scriptorium_parchment, -- Bright White
	}
end

return M
