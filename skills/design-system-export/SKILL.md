---
name: design-system-export
description: Export design systems to multiple formats including Figma tokens, Sketch variables, Style Dictionary, Tailwind config, CSS/SCSS variables, JSON/YAML, and more. Use when the user wants to export design tokens, convert design systems to different formats, generate platform-specific tokens, or integrate with design tools. Also trigger when they mention "export to Figma", "convert tokens", "generate Style Dictionary", "export as CSS variables", or "create Tailwind config".
---

# Design System Export

Export design tokens and design systems to multiple formats for different platforms, tools, and frameworks.

## What This Skill Does

1. **Read design tokens** from design-tokens.json or similar sources
2. **Select target format(s)** - Figma, Sketch, Style Dictionary, CSS, Tailwind, etc.
3. **Transform data** to match target format specifications
4. **Validate output** for format compliance and correctness
5. **Write output files** with proper structure and naming
6. **Batch export** to multiple formats simultaneously

## When to Use This Skill

- Export design tokens to Figma for design handoff
- Convert tokens to Sketch format for design tools
- Generate Style Dictionary configuration for multi-platform builds
- Create Tailwind CSS configuration from design tokens
- Export CSS/SCSS variables for stylesheets
- Convert to JSON/YAML for documentation or APIs
- Generate platform-specific token formats (iOS, Android, Web)
- Integrate design tokens with CI/CD pipelines

## Core Workflow

### Step 1: Locate Source Design Tokens

Ask the user for the path to their design tokens file:

```
"Where are your design tokens located?"
- ./brands/brand-name/design-tokens.json
- ./design-system/tokens.json
- ./tokens/design-tokens.yaml
- Custom path
```

Supported source formats:
- JSON (design-tokens.json)
- YAML (tokens.yaml)
- JavaScript/TypeScript (tokens.js, tokens.ts)
- Style Dictionary format

### Step 2: Display Token Summary

Read and show a summary of available tokens:

```
Design Tokens Found:
- Colors: 45 tokens (primary, secondary, neutral, semantic)
- Typography: 12 font definitions, 8 size scales
- Spacing: 10 values (4px to 96px)
- Border radius: 5 values
- Shadows: 6 elevation levels
- Custom tokens: 3 additional token sets
```

### Step 3: Select Export Format(s)

Present format options:

**Which format(s) would you like to export to?**

1. **Figma Tokens** - Design Tokens format for Figma plugins
2. **Sketch** - JSON format for Sketch design variables
3. **Style Dictionary** - Multi-platform token system
4. **Tailwind CSS** - Tailwind configuration file
5. **CSS Variables** - Custom properties stylesheet
6. **SCSS Variables** - Sass variables file
7. **JSON** - Plain JSON export
8. **YAML** - YAML format for documentation
9. **JavaScript/TypeScript** - ES modules or CommonJS
10. **iOS (Swift)** - iOS token definitions
11. **Android (XML)** - Android resource files
12. **Multiple formats** - Export to several formats at once

Allow selecting multiple formats for batch export.

### Step 4: Configure Export Options

#### Figma Tokens Export

```
Figma Tokens Format:
- Token structure: Nested (recommended) or Flat
- Naming convention: Figma-style (color.primary.500)
- Include metadata: Yes/No
- Plugin compatibility: Tokens Studio, Figma Tokens

Output: figma-tokens.json
```

Example structure:
```json
{
  "colors": {
    "primary": {
      "50": { "value": "#F0F9FF", "type": "color" },
      "100": { "value": "#E0F2FE", "type": "color" }
    }
  },
  "typography": {
    "fontFamily": {
      "display": { "value": "Inter", "type": "fontFamily" }
    }
  }
}
```

#### Sketch Export

```
Sketch Format:
- Variable collections
- Color swatches
- Text styles
- Layer styles

Output: sketch-variables.json
```

#### Style Dictionary Export

```
Style Dictionary Configuration:
- Platform targets: web, ios, android
- Transform groups: web (css), ios (swift), android (xml)
- Format: css/variables, scss/variables, json
- Build path: ./build/

Outputs:
- style-dictionary.config.js
- tokens/ directory with platform-specific builds
```

Example config:
```javascript
module.exports = {
  source: ['tokens/**/*.json'],
  platforms: {
    css: {
      transformGroup: 'css',
      buildPath: 'build/css/',
      files: [{
        destination: 'variables.css',
        format: 'css/variables'
      }]
    },
    scss: {
      transformGroup: 'scss',
      buildPath: 'build/scss/',
      files: [{
        destination: '_variables.scss',
        format: 'scss/variables'
      }]
    }
  }
};
```

#### Tailwind CSS Export

```
Tailwind Configuration:
- Extend default theme
- Replace default theme
- Include custom utilities
- TypeScript support

Output: tailwind.config.js (or .ts)
```

Example:
```javascript
module.exports = {
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#F0F9FF',
          100: '#E0F2FE',
          // ...
        }
      },
      fontFamily: {
        display: ['Inter', 'sans-serif'],
        body: ['Inter', 'sans-serif']
      },
      spacing: {
        xs: '4px',
        sm: '8px',
        md: '16px',
        // ...
      }
    }
  }
};
```

#### CSS/SCSS Variables Export

```
CSS Variables:
- Scope: :root (global) or custom selector
- Naming: --prefix-name or custom pattern
- Include fallbacks: Yes/No
- Group by category: Yes/No

Output: variables.css or _variables.scss
```

Example CSS:
```css
:root {
  /* Colors */
  --color-primary-50: #F0F9FF;
  --color-primary-100: #E0F2FE;

  /* Typography */
  --font-display: Inter, sans-serif;
  --font-size-xs: 0.75rem;

  /* Spacing */
  --spacing-xs: 4px;
  --spacing-sm: 8px;
}
```

#### JSON/YAML Export

```
Plain Export:
- Format: JSON or YAML
- Structure: Nested or flat
- Include metadata: Yes/No
- Pretty print: Yes (recommended)

Output: tokens.json or tokens.yaml
```

### Step 5: Transform and Validate

For each selected format:

1. **Transform tokens** to target format structure
   - Map token names to format conventions
   - Convert values to required types
   - Add format-specific metadata

2. **Validate output**
   - Check format compliance
   - Verify all tokens converted
   - Ensure no data loss
   - Validate value formats (colors, units, etc.)

3. **Generate files**
   - Create output directory if needed
   - Write formatted files
   - Include any additional files (README, types, etc.)

**Validation Checklist:**
- ✓ All source tokens represented in export
- ✓ Color values valid for target format
- ✓ Typography values properly formatted
- ✓ Naming conventions match target platform
- ✓ File structure correct for format
- ✓ No syntax errors in output

### Step 6: Write Output Files

Create organized output structure:

```
exports/
├── figma/
│   └── figma-tokens.json
├── sketch/
│   └── sketch-variables.json
├── style-dictionary/
│   ├── style-dictionary.config.js
│   └── tokens/
│       ├── colors.json
│       ├── typography.json
│       └── spacing.json
├── tailwind/
│   └── tailwind.config.js
├── css/
│   └── variables.css
├── scss/
│   └── _variables.scss
├── json/
│   └── tokens.json
└── yaml/
    └── tokens.yaml
```

Or allow custom output paths:
```
Output directory: [User specifies, default: ./exports/]
File naming: [Format-specific defaults or custom]
```

### Step 7: Summary and Usage Instructions

For each exported format, provide:

1. **File locations** - Where files were created
2. **Usage instructions** - How to use the exported tokens
3. **Integration steps** - How to integrate with tools/projects
4. **Next steps** - Recommended actions

**Example summary:**

```
✅ Design tokens exported successfully!

Exported Formats:
---
📦 FIGMA TOKENS
File: ./exports/figma/figma-tokens.json
Usage:
1. Open Figma
2. Install "Tokens Studio" plugin
3. Load tokens from file
4. Apply to your design

📦 TAILWIND CSS
File: ./exports/tailwind/tailwind.config.js
Usage:
1. Copy to your project root
2. Import in your Tailwind setup
3. Use classes: bg-primary-500, text-lg, p-md

📦 CSS VARIABLES
File: ./exports/css/variables.css
Usage:
1. Import in your HTML: <link rel="stylesheet" href="variables.css">
2. Use variables: color: var(--color-primary-500)
3. Works in any CSS framework

📦 STYLE DICTIONARY
Files: ./exports/style-dictionary/
Usage:
1. cd exports/style-dictionary
2. npm install style-dictionary
3. npm run build
4. Use platform-specific outputs

Next Steps:
- Test exported tokens in target applications
- Set up automated export in CI/CD pipeline
- Document token usage for your team
- Keep source tokens as single source of truth
```

## Format-Specific Transformations

### Color Transformations

Different formats require different color representations:

- **Figma/Sketch**: Hex colors (#RRGGBB or #RRGGBBAA)
- **CSS**: Hex, rgb(), hsl(), or CSS color names
- **iOS**: UIColor (RGB 0-1 range)
- **Android**: XML color resources (#AARRGGBB)
- **Style Dictionary**: Flexible, often hex

Example transformation:
```javascript
// Source
{ "color": { "primary": "#0066CC" } }

// Figma
{ "color": { "primary": { "value": "#0066CC", "type": "color" } } }

// iOS
let primary = UIColor(red: 0.0, green: 0.4, blue: 0.8, alpha: 1.0)

// Android
<color name="primary">#FF0066CC</color>
```

### Typography Transformations

Font definitions vary by platform:

- **Web**: font-family strings, px/rem sizes
- **Figma**: Font family + weight + size objects
- **iOS**: Font names + point sizes
- **Android**: Font family XML references + sp sizes

### Spacing Transformations

- **Web**: px, rem, em values
- **iOS**: CGFloat point values
- **Android**: dp (density-independent pixels)
- **Tailwind**: Numeric scale (1, 2, 4, etc.)

## Edge Cases and Error Handling

### Unsupported Token Types

```
⚠ Warning: Token type "gradient" not supported in Figma format
Tokens affected: 3 gradient definitions

Options:
1. Skip these tokens in export
2. Convert to closest supported type
3. Include as custom metadata
```

### Naming Conflicts

```
⚠ Naming Conflict:
Token "spacing-3xl" conflicts with Tailwind's default "3xl" spacing

Options:
1. Use prefix: "custom-3xl"
2. Rename to: "spacing-xxxl"
3. Overwrite default (not recommended)
```

### Missing Dependencies

For Style Dictionary export:

```
⚠ Style Dictionary not installed

To use Style Dictionary exports:
1. Install: npm install -g style-dictionary
2. Or add to project: npm install --save-dev style-dictionary

Alternatively:
- Export to other formats that don't require dependencies
- I can create the config files for later use
```

### Invalid Token Values

```
❌ Invalid color value: "primary-blue"

Token: colors.accent
Value: "primary-blue" (not a valid color)

Valid formats:
- Hex: #0066CC
- RGB: rgb(0, 102, 204)
- HSL: hsl(210, 100%, 40%)

Please correct the source token or skip this token.
```

## Batch Export

Export to multiple formats at once:

```
Select formats to export:
☑ Figma Tokens
☑ Tailwind CSS
☑ CSS Variables
☐ Sketch
☐ Style Dictionary

Exporting to 3 formats...
✓ Figma Tokens → ./exports/figma/
✓ Tailwind CSS → ./exports/tailwind/
✓ CSS Variables → ./exports/css/

All exports completed successfully!
```

## Advanced Features

### Custom Transformations

Allow custom transformation rules:

```javascript
// Custom transform config
{
  "transforms": {
    "color": {
      "type": "color",
      "transformer": "hex-to-rgba"
    },
    "spacing": {
      "type": "dimension",
      "transformer": "px-to-rem",
      "baseFontSize": 16
    }
  }
}
```

### Platform-Specific Builds

Generate separate builds for different platforms:

```
Platform Builds:
- Web: CSS variables, Tailwind config
- iOS: Swift constants, UIKit extensions
- Android: XML resources, Compose theme
- React Native: JavaScript theme object
```

### Export Presets

Save common export configurations:

```javascript
// export-preset.json
{
  "name": "full-stack-export",
  "formats": ["figma", "tailwind", "css", "ios", "android"],
  "outputDir": "./dist/tokens",
  "transforms": { /* ... */ }
}

// Use preset
npx design-system-export --preset full-stack-export
```

### Token Filtering

Export only specific token categories:

```
Export Options:
- All tokens
- Colors only
- Typography only
- Spacing and layout
- Custom selection

Selected: Colors + Typography
Output: Reduced token set with only selected categories
```

## Important Notes

- **Keep source tokens canonical** - Exported files are generated outputs, not sources
- **Automate exports** - Set up export commands in package.json scripts
- **Version control** - Track source tokens, optionally ignore generated exports
- **Document usage** - Include README files in export directories
- **Test outputs** - Verify exported tokens work in target applications
- **Update regularly** - Re-export when source tokens change

## Example Interactions

**Example 1: Export to Figma**

```
User: "Export my design tokens to Figma format"

Response:
1. Locate tokens: ./brands/acme/design-tokens.json
2. Read 87 tokens (colors, typography, spacing)
3. Transform to Figma Tokens Studio format
4. Validate: ✓ All tokens compatible
5. Write: ./exports/figma/figma-tokens.json
6. Instructions:
   - Install Tokens Studio plugin in Figma
   - Load tokens from figma-tokens.json
   - Apply to your design system
```

**Example 2: Batch export for development**

```
User: "I need to export my tokens for both Tailwind and CSS variables"

Response:
1. Locate tokens: ./design-system/tokens.json
2. Select formats: Tailwind CSS + CSS Variables
3. Transform and validate both formats
4. Write outputs:
   - ./exports/tailwind/tailwind.config.js
   - ./exports/css/variables.css
5. Provide usage instructions for both
6. Suggest: Add npm scripts for future exports
```

**Example 3: Style Dictionary for multi-platform**

```
User: "Set up Style Dictionary to build tokens for web, iOS, and Android"

Response:
1. Read source tokens
2. Create Style Dictionary config with 3 platforms
3. Set up transform groups:
   - web → CSS variables
   - ios → Swift constants
   - android → XML resources
4. Write config and token files
5. Instructions to run: npm run build-tokens
6. Show output structure for each platform
```

## Tips for Best Results

1. **Source token structure**: Keep source tokens well-organized with clear categories for easier transformation

2. **Naming conventions**: Use consistent, semantic names that work across platforms (avoid platform-specific terms)

3. **Value formats**: Store colors in hex, dimensions in pixels - transformations will handle platform-specific conversions

4. **Documentation**: Include comments or descriptions in source tokens to carry context through exports

5. **Validation**: Always validate exports in target applications to ensure correct transformation

6. **Automation**: Set up export commands in package.json for easy re-export:
   ```json
   {
     "scripts": {
       "export:figma": "design-system-export --format figma",
       "export:all": "design-system-export --format all"
     }
   }
   ```

7. **CI/CD Integration**: Automate token exports in your build pipeline to keep design tools in sync with code
