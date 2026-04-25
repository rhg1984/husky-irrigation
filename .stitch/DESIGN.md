# Husky Irrigation — Design System

> Auto-synthesized by Stitch from the home-page prompt. Brand overrides: Primary `#2563EB`, Secondary `#0B2545`, Tertiary `#1CA7EC`, Neutral `#0F172A`. Display/Headline font: Epilogue. Body/Label font: Manrope.

---

## 1. Overview & Creative North Star: "The Hydrated Precision"

This design system is built to reflect the intersection of Texas reliability and modern fluid engineering. We are moving away from the "clunky contractor" aesthetic toward an editorial, high-end service experience.

**Creative North Star: The Hydrated Precision.**
This concept balances the heavy, authoritative weight of Dallas-established trust with the light, refreshing clarity of water. We break the standard "grid-of-boxes" by using intentional asymmetry, where "heavy" typographic headers anchor "light" floating content. Expect layered surfaces that mimic the translucency of water and a layout that breathes with significant white space, suggesting the openness of a well-maintained estate.

---

## 2. Colors

Our palette is anchored in the **Navy Trust** (`#0B2545`) and the vibrant **Husky Blue** gradient, utilizing Material Design 3 logic for tonal depth.

- **The "No-Line" Rule:** 1px solid borders are strictly prohibited for defining sections. Boundaries must be achieved through background color shifts. Use `surface-container-low` (`#f2f3ff`) to transition from a `surface` (`#faf8ff`) hero section. Let the change in value define the edge, not a stroke.
- **Surface Hierarchy & Nesting:** Treat the interface as layers of physical materials.
  - *Base:* `surface` (`#faf8ff`)
  - *Raised Layouts:* `surface-container` (`#eaedff`)
  - *Interactive Elements:* `surface-container-highest` (`#dae2fd`)
- **The "Glass & Gradient" Rule:** To reflect water, use Glassmorphism for floating navigation and cards. Apply `surface_container_lowest` (`#ffffff`) at 70% opacity with a `24px` backdrop blur.
- **Signature Textures:** Primary CTAs must use a linear gradient from `primary` (`#004ac6`) to `primary_container` (`#2563eb`) at a 135-degree angle. This adds "soul" and a sense of movement that flat colors lack.

### Full token reference

| Role | Token | Hex |
|---|---|---|
| Background | `background` | `#faf8ff` |
| Surface | `surface` | `#faf8ff` |
| Surface container (lowest) | `surface_container_lowest` | `#ffffff` |
| Surface container (low) | `surface_container_low` | `#f2f3ff` |
| Surface container | `surface_container` | `#eaedff` |
| Surface container (high) | `surface_container_high` | `#e2e7ff` |
| Surface container (highest) | `surface_container_highest` | `#dae2fd` |
| On surface (text) | `on_surface` | `#131b2e` |
| On surface variant | `on_surface_variant` | `#434655` |
| Primary | `primary` | `#004ac6` |
| Primary container | `primary_container` | `#2563eb` |
| Primary fixed | `primary_fixed` | `#dbe1ff` |
| Primary fixed dim | `primary_fixed_dim` | `#b4c5ff` |
| On primary | `on_primary` | `#ffffff` |
| Secondary | `secondary` | `#495f82` |
| Secondary container | `secondary_container` | `#bfd5fe` |
| Tertiary | `tertiary` | `#005a83` |
| Tertiary container | `tertiary_container` | `#0074a7` |
| Outline | `outline` | `#737686` |
| Outline variant | `outline_variant` | `#c3c6d7` |
| Error | `error` | `#ba1a1a` |

---

## 3. Typography

We utilize a high-contrast pairing: a heavy, aggressive heading style against a highly legible, humanist body.

- **Display & Headline (Epilogue — Heavy Italic):** These are our "anchors." By using Epilogue in a heavy italic, we convey speed, efficiency, and Dallas-sized authority. Use `display-lg` for hero statements with tight letter-spacing (`-0.04em`).
- **Body & Labels (Manrope):** A clean, humanist sans that feels approachable and modern.
- **Editorial Hierarchy:** Use a significant scale jump between `headline-lg` (2rem) and `body-lg` (1rem). This creates a "premium magazine" feel rather than a generic business site.

---

## 4. Elevation & Depth

Depth is not a drop shadow; it is a physical relationship between layers.

- **The Layering Principle:** Avoid shadows for static cards. Instead, stack `surface-container-lowest` on top of `surface-container-low`. The 2-point value difference creates a "soft lift."
- **Ambient Shadows:** For floating elements (Modals / Active FABs), use an ambient shadow: `0px 12px 32px rgba(15, 23, 42, 0.06)`. Note the color is a tint of `on_surface` (`#131b2e`), never pure black.
- **The "Ghost Border" Fallback:** If accessibility requires a border, use `outline_variant` (`#c3c6d7`) at **15% opacity**. It should be felt, not seen.
- **Corner Radii:** Strictly adhere to **xl** (`1.5rem` / 24px) for large containers and **lg** (`1rem` / 16px) for standard cards to maintain a friendly, "liquid" feel.

---

## 5. Components

### Buttons
- **Primary:** Gradient fill (`primary` → `primary_container`), 16px rounded corners, white text. No border.
- **Secondary:** `surface_container_highest` fill with `primary` text.
- **Tertiary:** No fill. `primary` text with an underlined hover state using a 2px offset.

### Input Fields
- **Styling:** Use `surface_container_lowest` as the fill. Never use a 4-sided border. Use a 2px bottom-border in `outline_variant` that transitions to `primary` on focus.
- **Labels:** `label-md` in `on_surface_variant`, positioned above the field, never as placeholder text.

### Cards & Lists
- **The Divider Ban:** Vertical white space (using the 24px or 32px spacing scale) is the only allowed separator. For lists, use a subtle `surface-container-low` background on hover to define the row.
- **Service Cards:** Use `lg` (16px) rounding. Imagery should bleed to the edges of the top and sides, with content nested in a 24px internal padding container.

### Iconic Accents
- **Icons:** Use 2px thin-stroke line icons. All icons must be rendered in `primary` blue. They should be housed in a `primary_fixed_dim` circular container with 10% opacity to create a "water droplet" halo effect.

---

## 6. Do's and Don'ts

### Do
- **Do** use asymmetrical layouts (e.g., a large image on the left overlapping a text container on the right).
- **Do** use "Sun-lit" photography. Images must feel bright (High Key) with visible water droplets on grass to emphasize the "irrigation" aspect.
- **Do** use `primary_fixed` for subtle highlight backgrounds behind text to create emphasis without visual noise.

### Don't
- **Don't** use 1px solid borders. It breaks the premium "editorial" feel.
- **Don't** use emojis. The brand is professional and established; let the photography and typography carry the emotion.
- **Don't** use standard "Drop Shadows." If it looks like a default CSS shadow, it is wrong. Soften the blur and reduce the opacity.
- **Don't** center-align long-form body text. Keep all text left-aligned to maintain the rigid "Geometric" foundation of the brand.

---

## 7. Spacing Scale

Maintain a strict 8px grid system to ensure "Precision."
- **Squish:** 4px, 8px (Buttons, Chips)
- **Stretch:** 16px, 24px (Card padding, Inner gutters)
- **Flow:** 48px, 64px, 80px (Section margins, Hero vertical breathing room)

---

## 8. Design System Notes for Stitch Generation

When passing prompts to Stitch for future pages, copy this block verbatim into the prompt body:

```
DESIGN SYSTEM (REQUIRED):
- Platform: Web, desktop-first, fully responsive
- Palette: Primary Husky Blue gradient (#004ac6 → #2563EB), Navy Trust #0B2545, Tertiary Sky #1CA7EC, Text #0F172A (never pure black), Surface #faf8ff, Surface Container #eaedff
- Typography: Epilogue heavy italic for display/headlines (tight -0.04em tracking); Manrope for body and labels
- Shape: 24px radius on large containers, 16px on cards, fully rounded chips/pills
- Elevation: layered surfaces (no 1px borders). Soft ambient shadow 0 12px 32px rgba(15,23,42,0.06) only on floating elements
- Iconography: 2px thin-stroke line icons in primary blue, housed in a 10%-opacity circular primary_fixed_dim halo
- Photography: sun-lit, high-key, Dallas lawns with visible water droplets
- Voice: professional but friendly — licensed Dallas contractor, established 2017
- Prohibited: emojis, pure black text, 1px borders, centered body copy, generic CSS drop shadows, neon glows
```
