<h1 align="center">VITREA</h1>

<p align="center">
  <em>The architecture of intellectual contemplation. A monastic color paradigm for Neovim designed to isolate the intellect and illuminate logic.</em>
</p>

<p align="center">
  <img src="assets/hero-canonical.png" alt="VITREA - The Canonical Environment">
</p>

> "Chaos is the natural rule of the world. Engineering is the monastic imposition of Order."

## I. The Architecture of Intellectual Contemplation

The modern software ecosystem has been corrupted by visual entropy. Commercial color schemes and saturated environments endlessly compete for the engineer's foveal attention, resulting in profound cognitive exhaustion. **VITREA** was forged as the absolute antithesis to this decay.

We do not offer a mere color palette; we architect an Environment of Intellectual Contemplation. Designed strictly for the rigorous demands of concurrent systems architecture and heavy backend engineering, VITREA eradicates visual fatigue. It is a monastic state of Deep Work, packaged in high-performance Lua.

VITREA is not an aesthetic preference; it is a physiological specification. By offloading the burden of syntax parsing to the subconscious processing of specific optical wavelengths, our engine protects your central nervous system's energy, gifting you back hours of raw, unpolluted intellectual stamina.

---

## II. The Dogmas of Optical Asceticism

The aesthetics of VITREA are born from stringent cognitive psychology and optical physics (*Chromostereopsis*). We adhere to three uncompromising dogmas designed to protect the engineer's foveal bandwidth.

### 1. Chromatic Determinism (The Ontology of Code)

Color strictly dictates the ontological nature of an entity. It is a functional beacon, never a decoration.

* **Passive Infrastructure:** Types, interfaces, and control flow form the structural masonry. They optically recede, providing support without demanding attention.
* **Active Payloads:** Properties and functions act as the foveal beacon. The engineer tracks the flow of data instantaneously, bypassing the need to read the surrounding syntax.
* **Critical States:** Banished from standard syntax. They manifest exclusively during active compiler errors or state mutations, utterly eliminating "alarm fatigue."

### 2. Typographic Metaphysics (The Z-Axis)

Font styling operates on the Z-axis, dictating the origin, weight, and teleology of a given entity to prevent visual turbulence.

* **Flat:** The unyielding baseline of logic (variables, standard text).
* **Bold:** The visual weight of human intent (type definitions, critical errors).
* **Italic:** Entities not authored by the active user (compiler axioms, external imports, and the marginalia of human thought in comments).

### 3. Visual Brown Noise (Structural Suppression)

Syntax glue—brackets, braces, operators, and inlay hints—is actively suppressed using dense, ashen tones. There are no cages, no artificial boundaries. The UI melts seamlessly into the monolithic substrate.

---

## III. The Monolithic Arsenal (Technological Supremacy)

VITREA is not a fragile configuration; it is an uncompromising engine that imposes its will upon the Neovim ecosystem.

* **The Premonitory Window (Lexical Parser):** A bespoke Lua parser intercepts raw language server output in real-time, enforcing precise semantic colors and typography. Function parameters are thrust into muted shadows before the syntax is even committed to the buffer.
* **The ANSI Muzzle (Terminal Subjugation):** Where commercial themes fracture under the chaotic injection of external CLI true-color hex codes, VITREA actively strangles native terminal color channels. Screaming neon outputs are forcibly subdued into our monastic palette.
* **Dynamic Silence (Conditional UI):** The statusline operates without borders. System metadata recedes into the void. Thermal alerts and LSP fractures only bleed into the visual spectrum when the system's structural integrity is genuinely compromised.

---

## IV. The Liturgy of Light (Temporal Shifts)

VITREA operates on a definitive, canonical foundation. However, acknowledging the physical passage of the sun and the shifting needs of the retina, the engine supports strict liturgical shifts:

* **The Canonical State:** The default, uncompromising environment of VITREA. Engineered to mitigate ocular fatigue during dense, sustained code reviews. It assumes warm, calming earthen tones to preserve stamina.
* **Matina (The Dawn):** An ascetic shift forged for the sacred blocks of early study before 05:00 AM. It embodies the dense texture of parchment beneath the scholar's ink.
* **Vigil (The Night Watch):** A nocturnal descent designed for immersions of severe architectural engineering. The background merges with the pitch-black void, leaving only the surgical illumination of the syntax.

---

## V. Installation & Vows

To take the vow of focus and integrate the VITREA engine into your Neovim environment, utilize your preferred package manager. Installing without configuration immediately invokes the Canonical State.

### [Lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "your-username/vitrea.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- The engine requires no fundamental adjustments, 
    -- but allows for the selection of the liturgical hour.
    variant = "vesper", -- "matina" | "vesper" | "vigil"
  },
  config = function(_, opts)
    require("vitrea").setup(opts)
    vim.cmd([[colorscheme vitrea]])
  end,
}
```

---

## VI. The Physiological Palette

For those who wish to understand the exact optical wavelengths governing their environment, this is the foundation of the canonical VITREA palette:

### 1. Canvas & Substrate

* **Obsidian Nave (`#121110`):** *The monastic silence.* Absorbs excess screen light, providing a grounded physical space that completely eradicates the claustrophobia of typical digital interfaces.
* **Parchment Linen (`#CDC7AB`):** *Oxidized bone-white.* The primary substrate. Prevents retinal halation, ensuring the core logic tells its story without screaming.

### 2. The Passive Infrastructure

* **Fresco Lapis (`#7E9CD8`):** *Cold, recessive blue.* Applied to Types and Interfaces. It cools the eye, signaling to the brain that no logic is executing.
* **Bishop Amethyst (`#957FB8`):** *Solemn weight.* Cast upon Control Flow keywords to create structural pillars without the reading bumps induced by traditional bold text.
* **Abbey Dust (`#4A4643`):** *Visual deletion.* Punctuation, brackets, and operators are forced into dense shadows. The infrastructure fuses with the dark, emancipating the code to float freely.

### 3. The Active Intellect

* **Tabernacle Gold (`#E6C384`):** *Advancing foveal beacon.* High luminance mapped exclusively to Properties and Fields, allowing instant tracking of data mutations.
* **Copper Patina (`#7AA89F`):** *Mid-tone energy.* Tactically marks Functions and Methods, allowing the developer to trace the call graph by pure instinct.
* **Olive Gethsemane (`#98BB6C`):** *Organic oasis.* Placed precisely at the biological peak of effortless focus (555nm). Applied to Strings and Literals to provide an undeniable biological rest for the retina.

### 4. The Tactical Reserve

* **Vigil Candle (`#FFA066`):** *Amber thermal warning.* Applied to booleans and `nil` to ensure state mutations emit a warning heat, preventing pointer blindness.
* **Martyr Blood (`#E82424`):** *Compiler rupture.* The ultimate sacrifice, banished from standard syntax. It manifests exclusively during diagnostic errors, guaranteeing an immediate motor response.

---

<p align="center">
  <em>VITREA is an open-source architectural artifact. Pull requests are evaluated strictly on their adherence to the dogmas of optical asceticism.</em>
</p>
