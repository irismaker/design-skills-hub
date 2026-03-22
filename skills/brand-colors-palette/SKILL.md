---
name: brand-colors-palette
description: Generate complete color palettes from a single brand color with smart shade generation, complementary colors, and accessibility validation. Use when the user wants to create a color palette, generate color schemes, find complementary colors, validate color contrast, or explore color variations. Also trigger when they mention "color palette", "color scheme", "generate shades", "complementary colors", or "accessible colors".
---

# Brand Colors Palette Generator

Generate professional, accessible color palettes from a single brand color.

## What This Skill Does

1. **Generate color shades** - Create 9 shades (50-900) from any hex color
2. **Smart color relationships** - Find complementary, analogous, triadic colors
3. **Accessibility validation** - Ensure WCAG AA/AAA compliance
4. **Semantic naming** - Apply industry-appropriate color names
5. **Export formats** - Output as JSON, CSS variables, or design tokens

## When to Use This Skill

- Generate a full palette from a single brand color
- Find complementary or accent colors for a brand
- Create accessible color combinations
- Explore color variations and schemes
- Validate existing palette for accessibility
- Generate secondary/tertiary color palettes

## Core Workflow

### Step 1: Get Brand Color

Ask for the primary brand color:

```
What's your brand color? (provide hex code)
Examples:
- #6366F1 (indigo)
- #EF4444 (red)
- #10B981 (green)
```

Validate the input:
- Must be valid hex format (#RRGGBB or #RGB)
- Convert short form (#RGB) to full (#RRGGBB)
- Show the color name if recognizable

```
✓ Valid color: #6366F1 (Indigo)
```

### Step 2: Generate Shade Palette

Create 9 shades from the brand color:

**Shade Generation Algorithm:**
```
50  - Lightest (95% lightness) - backgrounds
100 - Very light (85% lightness) - hover states
200 - Light (75% lightness) - borders
300 - Light-medium (60% lightness) - disabled states
400 - Medium-light (50% lightness) - placeholders
500 - Base color (your input) - primary actions
600 - Medium-dark (40% lightness) - hover on primary
700 - Dark (30% lightness) - active states
800 - Very dark (20% lightness) - text on light
900 - Darkest (10% lightness) - headings
```

Example output for #6366F1:

```
PRIMARY PALETTE
50:  #EEF2FF - Lightest indigo
100: #E0E7FF - Very light indigo
200: #C7D2FE - Light indigo
300: #A5B4FC - Light-medium indigo
400: #818CF8 - Medium-light indigo
500: #6366F1 - Base indigo ★ Your brand color
600: #4F46E5 - Medium-dark indigo
700: #4338CA - Dark indigo
800: #3730A3 - Very dark indigo
900: #312E81 - Darkest indigo
```

### Step 3: Generate Color Relationships

Offer to generate complementary color schemes:

**Which color scheme would you like?**
1. **Monochromatic** (default) - Just shades of your brand color
2. **Complementary** - Add opposite color on color wheel
3. **Analogous** - Add adjacent colors (warm/cool variants)
4. **Triadic** - Three evenly spaced colors
5. **Split-Complementary** - Base + two adjacent to complement
6. **Tetradic** - Four colors forming a rectangle
7. **Custom** - Specify additional colors manually

#### Complementary Example (#6366F1 indigo)

```
PRIMARY: #6366F1 (Indigo)
COMPLEMENTARY: #F1F366 (Yellow-green)

Usage suggestions:
- Primary: Main brand color, CTAs, links
- Complementary: Accents, highlights, warnings
```

Generate full palettes for each:

```
PRIMARY PALETTE (Indigo)
500: #6366F1 ★

COMPLEMENTARY PALETTE (Yellow-green)
50:  #FEFCE8
100: #FEF9C3
200: #FEF08A
300: #FDE047
400: #FACC15
500: #F1F366 ★
600: #CA8A04
700: #A16207
800: #854D0E
900: #713F12
```

#### Analogous Example

```
PRIMARY: #6366F1 (Indigo)
ANALOGOUS COOL: #6366F1 → #60A5FA (Blue)
ANALOGOUS WARM: #6366F1 → #A855F7 (Purple)
```

### Step 4: Accessibility Validation

Check all color combinations for WCAG compliance:

**Contrast Ratios:**
- **WCAG AA:** 4.5:1 for normal text, 3:1 for large text
- **WCAG AAA:** 7:1 for normal text, 4.5:1 for large text

Test each shade against common backgrounds:

```
ACCESSIBILITY CHECK: #6366F1 (Primary 500)

Against White (#FFFFFF):
├─ Ratio: 4.8:1
├─ WCAG AA: ✓ Pass (normal text)
├─ WCAG AAA: ✗ Fail (needs 7:1)
└─ Use for: Body text, buttons, links

Against Black (#000000):
├─ Ratio: 8.9:1
├─ WCAG AA: ✓ Pass
├─ WCAG AAA: ✓ Pass
└─ Use for: Text on dark backgrounds

Against Gray-100 (#F3F4F6):
├─ Ratio: 4.2:1
├─ WCAG AA: ✗ Fail (needs 4.5:1)
└─ ⚠ Use darker shade (600+) for text

Recommended combinations:
✓ Primary-700 on White (7.2:1) - Best for text
✓ Primary-600 on Gray-50 (5.8:1) - Good for text
✓ White on Primary-500 (4.8:1) - Good for buttons
✓ White on Primary-600 (6.4:1) - Better for buttons
```

### Step 5: Semantic Naming

Apply semantic names based on color usage:

```
SEMANTIC COLOR MAPPING

Primary Palette:
├─ primary-lightest (50) - Backgrounds, subtle accents
├─ primary-lighter (100) - Hover backgrounds
├─ primary-light (200) - Borders, dividers
├─ primary (500) - Main brand color ★
├─ primary-dark (700) - Hover states, active
└─ primary-darkest (900) - Text, headings

Functional Colors (using primary as base):
├─ text-primary: primary-900
├─ text-secondary: primary-700
├─ bg-primary: primary-500
├─ bg-primary-hover: primary-600
├─ border-primary: primary-200
└─ focus-ring: primary-500 (with opacity)

Complementary/Accent:
├─ accent-light
├─ accent
└─ accent-dark
```

Or apply industry-specific naming (if user specifies):

```
TECH STYLE NAMING:
- electric-50 to electric-900 (primary)
- cyber-50 to cyber-900 (accent)

NATURE STYLE:
- forest-50 to forest-900 (primary)
- sage-50 to sage-900 (accent)

FINANCE STYLE:
- trust-50 to trust-900 (primary)
- gold-50 to gold-900 (accent)
```

### Step 6: Export Options

Offer multiple export formats:

**How would you like to export this palette?**
1. **JSON** (design-tokens.json format)
2. **CSS Variables**
3. **Tailwind Config**
4. **SCSS Variables**
5. **All formats**

#### JSON Export

```json
{
  "colors": {
    "primary": {
      "50": "#EEF2FF",
      "100": "#E0E7FF",
      "200": "#C7D2FE",
      "300": "#A5B4FC",
      "400": "#818CF8",
      "500": "#6366F1",
      "600": "#4F46E5",
      "700": "#4338CA",
      "800": "#3730A3",
      "900": "#312E81"
    },
    "complementary": {
      "50": "#FEFCE8",
      ...
    }
  }
}
```

#### CSS Variables Export

```css
:root {
  /* Primary Colors */
  --color-primary-50: #EEF2FF;
  --color-primary-100: #E0E7FF;
  --color-primary-200: #C7D2FE;
  --color-primary-300: #A5B4FC;
  --color-primary-400: #818CF8;
  --color-primary-500: #6366F1;
  --color-primary-600: #4F46E5;
  --color-primary-700: #4338CA;
  --color-primary-800: #3730A3;
  --color-primary-900: #312E81;

  /* Semantic Colors */
  --color-text-primary: var(--color-primary-900);
  --color-text-secondary: var(--color-primary-700);
  --color-bg-primary: var(--color-primary-500);
  --color-border-primary: var(--color-primary-200);
}
```

#### Tailwind Config Export

```javascript
module.exports = {
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#EEF2FF',
          100: '#E0E7FF',
          200: '#C7D2FE',
          300: '#A5B4FC',
          400: '#818CF8',
          500: '#6366F1',
          600: '#4F46E5',
          700: '#4338CA',
          800: '#3730A3',
          900: '#312E81',
        },
      },
    },
  },
};
```

### Step 7: Generate Color Preview

Create a simple HTML preview to visualize the palette:

```html
<!DOCTYPE html>
<html>
<head>
  <title>Color Palette Preview</title>
  <style>
    .palette { display: flex; margin: 20px 0; }
    .swatch {
      width: 100px;
      height: 100px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 12px;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <h1>Brand Color Palette</h1>

  <h2>Primary (Indigo)</h2>
  <div class="palette">
    <div class="swatch" style="background: #EEF2FF; color: #312E81;">50</div>
    <div class="swatch" style="background: #E0E7FF; color: #312E81;">100</div>
    <!-- ... -->
    <div class="swatch" style="background: #6366F1; color: #FFFFFF;">500 ★</div>
    <!-- ... -->
    <div class="swatch" style="background: #312E81; color: #FFFFFF;">900</div>
  </div>

  <h2>Accessibility Tests</h2>
  <div style="background: white; color: #6366F1; padding: 20px;">
    Text on white (4.8:1) - WCAG AA ✓
  </div>
  <div style="background: #6366F1; color: white; padding: 20px;">
    White on primary (4.8:1) - WCAG AA ✓
  </div>
</body>
</html>
```

Offer to save this as `color-palette-preview.html` and open it in browser.

## Advanced Features

### Color Harmonies

Generate multiple harmonies at once:

```
MONOCHROMATIC
Primary: #6366F1
Tints/Shades: 9 variations

COMPLEMENTARY
Primary: #6366F1 (Indigo)
Complement: #F1F366 (Yellow-green)

TRIADIC
Primary: #6366F1 (Indigo)
Second: #F16363 (Red)
Third: #63F163 (Green)

ANALOGOUS
Primary: #6366F1 (Indigo)
Cool: #60A5FA (Blue)
Warm: #A855F7 (Purple)
```

### Gradient Generation

Create gradients from the palette:

```css
/* Linear Gradients */
.gradient-primary {
  background: linear-gradient(135deg, #6366F1 0%, #A855F7 100%);
}

.gradient-subtle {
  background: linear-gradient(to bottom, #EEF2FF 0%, #E0E7FF 100%);
}

/* Radial Gradients */
.gradient-radial {
  background: radial-gradient(circle, #6366F1 0%, #312E81 100%);
}
```

### Color Psychology

Provide guidance on color meaning:

```
COLOR PSYCHOLOGY: #6366F1 (Indigo/Blue-Purple)

Associations:
- Trust, reliability, professionalism
- Creativity, innovation
- Calm, stability
- Technology, digital

Best for:
✓ SaaS products
✓ Finance/banking
✓ Healthcare
✓ Technology companies

Avoid for:
✗ Food/restaurants
✗ Children's products
✗ Outdoor/nature brands
```

## Error Handling

### Invalid Color

```
❌ Invalid color: "abc"

Please provide a valid hex code:
✓ #6366F1
✓ #63F
✗ abc
✗ rgb(255, 0, 0)
✗ blue
```

### Poor Accessibility

```
⚠ Warning: #FFFF00 (Yellow) has poor contrast

Against white: 1.1:1 (needs 4.5:1)
Against black: 19.6:1 ✓

Suggestions:
- Use on dark backgrounds only
- Darken to #B8B800 for better contrast on white
- Choose a different primary color
```

### Color Too Similar

If generating complementary/analogous colors:

```
⚠ Notice: Complementary color #F1F366 is very close to yellow

This may cause:
- Low contrast with light backgrounds
- Visibility issues
- Accessibility problems

Recommendation:
- Darken the complementary shade
- Use triadic scheme instead
- Adjust hue for better distinction
```

## Example Interaction

```
User: "Generate a color palette from #6366F1"

Response:
✓ Valid color: #6366F1 (Indigo)

Generating color palette...

PRIMARY PALETTE (Indigo)
50:  #EEF2FF - Lightest
100: #E0E7FF
200: #C7D2FE
300: #A5B4FC
400: #818CF8
500: #6366F1 ★ Your color
600: #4F46E5
700: #4338CA
800: #3730A3
900: #312E81 - Darkest

ACCESSIBILITY CHECK
✓ All shades pass WCAG AA for appropriate uses
✓ Recommended text colors: 700, 800, 900
✓ Recommended backgrounds: 50, 100, 500, 600

Would you like to:
1. Generate complementary colors
2. Export in a specific format (JSON/CSS/Tailwind)
3. Preview in browser
4. Apply to design tokens
```

## Tips for Best Results

1. **Start with a strong brand color** - Should represent your brand personality
2. **Test accessibility early** - Ensure key colors work on white/dark backgrounds
3. **Consider context** - Different industries benefit from different color schemes
4. **Use semantic naming** - Makes it easier to maintain and understand
5. **Generate gradients** - Smooth transitions between shades
6. **Preview before using** - Always check colors in context

## Integration with Other Skills

- **brand-generate**: Use generated palette as input for brand creation
- **design-tokens-editor**: Import generated palette into existing tokens
- **brand-audit**: Validate palette accessibility
