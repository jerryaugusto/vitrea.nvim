-- ==============================================================================
-- MODULE: Summa Palette (Cathedra Standard)
-- DESCRIPTION: The definitive ontological color matrix (10 Semantic Hues).
-- Designed to enforce strict chromatic determinism and optical ergonomics
-- for the default Cathedra aesthetic.
-- ==============================================================================

local M = {}

--- The absolute color matrix for the Cathedra standard theme.
--- Extracted directly from the Summa Architectural Dossier.
M.colors = {
	-- 1. Substrate & Shadows (The Void)
	-- The physical silence. Borders and backgrounds dissolve into these values.
	obsidian_nave = "#121110", -- Absolute background (The Monolith)
	crypt_shadow = "#0B0A09", -- Inactive splits and peripheral backgrounds
	altar_smoke = "#201D1C", -- Floating UI elements, implicit borders
	vesper_mist = "#36302C", -- Visual selections and active cursors

	-- 2. Structural Dust (Passive Infrastructure)
	-- Brown noise suppression. Elements that must exist but not be seen.
	parchment_linen = "#CDC7AB", -- Baseline text, standard variables (Bone)
	stone_pillar = "#717C7C", -- Inactive text and dimmed terminal elements
	silent_cloisters = "#5C5A56", -- Comments, marginalia, and passive metadata
	abbey_dust = "#4A4643", -- Operators, delimiters, brackets, and structural glue

	-- 3. The 10 Semantic Hues (The Lexicon)
	-- Strict deterministic mapping. Colors dictate the nature of the entity.
	tabernacle_gold = "#E6C384", -- Foveal Payload: Properties, Struct Fields, JSON Keys
	relic_light = "#E8CA8C", -- Active Illumination: Search matches, Pmenu selection
	cardinal_silk = "#E46876", -- Core Verbs and Exceptions
	chalice_wine = "#D27E99", -- Special Returns, Magenta constructs, Regex
	olive_gethsemane = "#98BB6C", -- Organic Clarity: Strings and raw text
	copper_patina = "#7AA89F", -- Action Verbs: Functions, Methods, Calls
	fresco_lapis = "#7E9CD8", -- Passive Structure: Types, Interfaces, Classes
	celestial_vault = "#9CABCA", -- Modules and Pale Structure (Higher-order taxonomy)
	bishop_amethyst = "#957FB8", -- Control Flow: Conditionals, Loops, Keywords
	incense_smoke = "#658594", -- Bibliography: Namespaces, Imports, Paths

	-- 4. Absolute States & Hazards (Thermal Indicators)
	-- Reserved exclusively for system-level signaling.
	vigil_candle = "#FFA066", -- Warnings, Constants, Booleans (Orange)
	martyr_blood = "#E82424", -- Critical Danger, Errors, Git Deletions (Red)
}

return M
