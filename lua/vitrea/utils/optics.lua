-- ==============================================================================
-- MODULE: Vitrea Optical Physics
-- DESCRIPTION: Exposes mathematical operations for color wavelengths. Enables
-- the dynamic computation of contrast and blending without violating the integrity
-- of the canonical 15-pillar matrix.
-- ==============================================================================

local M = {}

--- Parses a hexadecimal string into its RGB numerical components.
---@param hex string The hexadecimal color (e.g., "#RRGGBB").
---@return number r, number g, number b
local function hex_to_rgb(hex)
	hex = hex:gsub("#", "")
	return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
end

--- Reconstructs a hexadecimal string from RGB numerical components.
---@param r number Red component (0-255).
---@param g number Green component (0-255).
---@param b number Blue component (0-255).
---@return string The hexadecimal color format.
local function rgb_to_hex(r, g, b)
	return string.format("#%02x%02x%02x", r, g, b)
end

--- Blends two wavelengths using a linear interpolation alpha ratio.
---@param foreground string Foreground color hex.
---@param background string Background color hex.
---@param alpha number Ratio between 0.0 and 1.0 (e.g., 0.8 = 80% fg, 20% bg).
---@return string The mathematically synthesized hex color.
function M.blend(foreground, background, alpha)
	local fg_r, fg_g, fg_b = hex_to_rgb(foreground)
	local bg_r, bg_g, bg_b = hex_to_rgb(background)

	local r = math.floor((alpha * fg_r) + ((1 - alpha) * bg_r))
	local g = math.floor((alpha * fg_g) + ((1 - alpha) * bg_g))
	local b = math.floor((alpha * fg_b) + ((1 - alpha) * bg_b))

	return rgb_to_hex(r, g, b)
end

--- Diminishes the luminance of a canonical color by blending it into absolute void.
---@param hex string The initial color hex.
---@param percentage number The dimming intensity (0 to 100).
---@return string The darkened hex color.
function M.darken(hex, percentage)
	return M.blend("#000000", hex, percentage / 100)
end

--- Elevates the luminance of a canonical color by blending it into absolute light.
---@param hex string The initial color hex.
---@param percentage number The illuminating intensity (0 to 100).
---@return string The lightened hex color.
function M.lighten(hex, percentage)
	return M.blend("#FFFFFF", hex, percentage / 100)
end

return M
