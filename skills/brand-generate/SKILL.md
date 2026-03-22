---
name: brand-generate
description: Generate complete brand design systems with design tokens, CSS variables, React components, and example pages. Use when the user wants to create a new brand identity, design system, brand guidelines, or needs design tokens/component libraries. Also trigger when they mention brand colors, typography systems, or want to scaffold a design system project. Supports interactive generation, JSON config files, or quick one-line commands.
---

# Brand Design System Generator

Generate complete, production-ready brand design systems using the @irismaker/brand-design-system-template toolkit. This skill helps create comprehensive design systems including semantic color naming, design tokens, CSS variables, React components, and brand identity guidelines.

## What This Skill Does

When invoked, this skill will:

1. **Understand the user's intent** - Detect whether they want interactive generation, config-based generation, or quick generation
2. **Collect brand information** - Gather brand name, domain, slogan, primary color, and typography preferences
3. **Set up the project** - Install dependencies if needed and verify the environment
4. **Generate the design system** - Create all design system files using the template
5. **Preview and summarize** - Show what was created and suggest next steps

## When to Use This Skill

Use this skill when the user wants to:
- Create a new brand design system from scratch
- Generate design tokens for a brand
- Build a component library with brand styling
- Create brand identity guidelines
- Set up CSS variables and semantic color naming
- Scaffold a design system project structure

## Core Workflow

### Step 1: Detect Generation Mode

Automatically detect which mode the user wants:

**Interactive Mode** - When the user:
- Says "create a brand design system" without details
- Asks "help me generate a brand"
- Wants to be guided through the process

**Config File Mode** - When the user:
- Provides or references a JSON config file
- Says "use this config to generate..."
- Has a configuration file path in their message

**Quick Mode** - When the user provides all info in one message:
- "Create Acme brand with blue (#0066CC) and Inter font"
- "Generate TechCorp design system, domain techcorp.io, slogan 'Build the future'"

### Step 2: Collect Brand Information

Gather the following information (adapt based on mode):

**Required:**
- **Brand Name** - The official brand name (e.g., "Acme Inc")
- **Primary Color** - Hex code for the main brand color (e.g., "#0066CC")

**Recommended:**
- **Domain** - Brand website domain (e.g., "acme.com")
- **Slogan** - Brand tagline or slogan
- **Font Family** - Primary typography choice (suggest: Inter, Roboto, Poppins, Montserrat)

**Optional:**
- **Color Naming Style** - Choose from: tech, nature, finance, creative (default: tech)
- **Output Path** - Custom output directory (default: `./brands/{brand-name-slug}/`)

**Color Format Validation:**
Primary color must be a valid hex code (e.g., #FF5733, #0066CC). If the user provides a color name like "blue" or "corporate blue", ask them to specify the exact hex code or suggest finding their brand color first.

### Step 3: Environment Setup

Before generating, check the project setup:

```bash
# Check if the package is installed globally
npm list -g @irismaker/brand-design-system-template

# Check if it's in the current project
npm list @irismaker/brand-design-system-template

# Check if we're in a cloned repo
ls -la generate-brand.js build.js 2>/dev/null
```

**If not installed:**
- Offer to install: `npm install -g @irismaker/brand-design-system-template`
- Or suggest cloning: `git clone https://github.com/irismaker/design-system-starter.git`
- Explain the user can choose between global install (accessible anywhere) or local project install

### Step 4: Choose Generation Method

Based on available tools and user preference:

**Method A: Interactive Generator (npx brand-generate)**
```bash
npx brand-generate
```
This will prompt for each field interactively. Use this when the user wants a guided experience.

**Method B: Config File Build (npx brand-build)**

First, create the config file at a sensible location (e.g., `./brand-config.json`):

```json
{
  "brandName": "Brand Name",
  "domain": "example.com",
  "slogan": "Your brand slogan",
  "primaryColor": "#0066CC",
  "fontFamily": "Inter",
  "colorNamingStyle": "tech"
}
```

Then build:
```bash
npx brand-build ./brand-config.json ./brands/brand-name
```

**Method C: Programmatic (if in a Node.js project)**
```javascript
const { build } = require('@irismaker/brand-design-system-template');
await build('./brand-config.json', './brands/brand-name');
```

**Smart Default for Output Path:**
Use `./brands/{brand-name-slug}/` where `{brand-name-slug}` is the lowercase, hyphenated version of the brand name (e.g., "Acme Inc" → "acme-inc"). This keeps multiple brands organized. The user can always override this.

### Step 5: Execute Generation

Run the chosen method. For interactive mode, the tool will handle the prompts. For config-based generation, create the config file first, then run the build command.

**Important:** The generation should create these files in the output directory:
- `config.json` - Brand configuration
- `design-tokens.json` - Design token definitions
- `design-system.css` - CSS variables and utilities
- `components.tsx` - React component library (if applicable)
- `example.html` - Example page demonstrating the system
- `brand-identity-outline.md` - Brand guidelines and documentation

### Step 6: Verify and Preview

After generation:

1. **Confirm files were created:**
```bash
ls -la ./brands/brand-name/
```

2. **Show a summary** of what was generated:
   - List all created files
   - Highlight the key files (design-tokens.json, design-system.css)
   - Show a snippet of the generated color palette or tokens

3. **Preview the design system** (optional):
   - Offer to open `example.html` in a browser
   - Display the design tokens or color palette
   - Show a sample component if applicable

### Step 7: Next Steps Guidance

Suggest relevant next steps:

**For developers:**
- Import the CSS: `<link rel="stylesheet" href="./brands/brand-name/design-system.css">`
- Use design tokens in your code
- Integrate components into your project

**For designers:**
- Review the brand identity outline
- Check the example page for visual reference
- Customize tokens and colors as needed

**For teams:**
- Share the design system directory
- Document component usage patterns
- Set up a component showcase or Storybook

## Edge Cases and Error Handling

### Missing Dependencies
If the package isn't installed and the user doesn't want to install it globally, guide them to:
1. Clone the repo locally: `git clone https://github.com/irismaker/design-system-starter.git`
2. Navigate to it: `cd design-system-starter`
3. Run from there: `node generate-brand.js`

### Invalid Color Format
If the user provides an invalid color (like "blue" instead of "#0066FF"), explain that you need a hex code and help them:
- Ask if they know their brand's hex color
- Suggest using a color picker tool
- Offer common brand colors as examples

### Output Directory Conflicts
If the output directory already exists, inform the user and ask:
- Overwrite the existing design system?
- Choose a different output path?
- Create a versioned directory (e.g., `brand-name-v2`)?

### Incomplete Information
If the user provides partial information (e.g., only brand name), gather the remaining required fields before proceeding. At minimum, you need:
- Brand name
- Primary color (hex code)

Domain, slogan, and font can be optional or use sensible defaults.

## Important Notes

- **Keep it generic:** Do not include any specific brand names (like "irisevo" or others) in the skill instructions or examples. Always use placeholder names like "Acme", "TechCorp", "Brand Name".
- **Validate inputs:** Always verify hex color format before generating
- **Respect user choices:** If they specify an output path, use it exactly as provided
- **Show, don't just tell:** After generation, display snippets of the created tokens or colors so the user can see results immediately
- **Path handling:** Use relative paths by default, and ensure the output directory parent exists before running the build command

## Example Interactions

**Example 1: Quick generation**
```
User: "Create a design system for Stellar Labs, primary color #6B4FBB, domain stellar-labs.io"

Response:
- Detect: Quick mode with all required info
- Create config with provided details
- Use default font (Inter) and output path (./brands/stellar-labs/)
- Run: npx brand-build ./stellar-labs-config.json ./brands/stellar-labs
- Preview: Show generated files and design tokens
```

**Example 2: Interactive generation**
```
User: "I want to create a brand design system"

Response:
- Detect: Interactive mode
- Check if package is installed
- Run: npx brand-generate
- Guide the user through the prompts
- Preview results after generation
```

**Example 3: Config file mode**
```
User: "Use this config file to generate my design system: ./my-brand.json"

Response:
- Detect: Config file mode
- Read the config file to understand the brand
- Ask for output path if not specified
- Run: npx brand-build ./my-brand.json ./brands/output-dir
- Verify and show results
```

## Tips for Best Results

1. **Color selection matters:** Help users choose accessible, on-brand colors. If they're unsure, suggest looking at their existing brand materials or website.

2. **Typography:** If the user doesn't specify a font, recommend Inter as a modern, versatile default. Other good options: Roboto (safe, readable), Poppins (friendly), Montserrat (geometric).

3. **Naming style:** The color naming style affects how semantic colors are named. "tech" is safe for most projects. "nature" works for eco/wellness brands, "finance" for professional services, "creative" for agencies.

4. **Organization:** Encourage using the `./brands/` directory structure to keep design systems organized, especially if they manage multiple brands.

5. **Iteration:** Design systems evolve. If the user needs to regenerate or tweak their system, they can edit the config file and rebuild quickly.
