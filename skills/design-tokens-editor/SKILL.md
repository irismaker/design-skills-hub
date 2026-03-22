---
name: design-tokens-editor
description: Edit and update existing brand design tokens (colors, typography, spacing). Use when the user wants to modify design tokens, update brand colors, change fonts, adjust spacing, or regenerate a design system from modified tokens. Also trigger when they mention "edit tokens", "update design system", "change brand colors", "modify tokens", or "regenerate CSS".
---

# Design Tokens Editor

Edit existing brand design tokens and regenerate the complete design system with updated values.

## What This Skill Does

1. **Read existing design tokens** from design-tokens.json
2. **Interactive editing** of colors, typography, spacing, and other tokens
3. **Validate changes** (hex colors, accessibility, consistency)
4. **Regenerate design system** with updated tokens
5. **Preview changes** before finalizing

## When to Use This Skill

- Update brand colors for an existing design system
- Change typography (font family, sizes, weights)
- Adjust spacing scale or grid system
- Fine-tune design tokens based on feedback
- Migrate design tokens to new values
- Fix accessibility issues in existing tokens

## Core Workflow

### Step 1: Locate Design Tokens

Ask the user for the path to their design-tokens.json file:

```
"Where is your design-tokens.json file?"
- ./brands/brand-name/design-tokens.json
- ./design-system/tokens.json
- Custom path
```

If they have a design system created by brand-generate, it's typically in:
`./brands/{brand-name}/design-tokens.json`

### Step 2: Read and Display Current Tokens

Read the design-tokens.json file and show a summary:

```json
{
  "brand": {
    "name": "TechCorp",
    "domain": "techcorp.io",
    "primaryColor": "#0066CC"
  },
  "colors": {
    "primary": {
      "50": "#E6F0FF",
      "100": "#CCE0FF",
      ...
    }
  },
  "typography": {
    "fontFamily": {
      "display": "Inter",
      "body": "Inter"
    },
    "fontSize": { ... }
  },
  "spacing": { ... }
}
```

Display:
- Current primary color
- Font families
- Key spacing values
- Any custom tokens

### Step 3: Interactive Editing

Present editing options:

**What would you like to edit?**
1. **Colors** - Change primary color, update palette
2. **Typography** - Change fonts, adjust sizes
3. **Spacing** - Modify spacing scale
4. **Custom tokens** - Add or edit custom values
5. **Multiple changes** - Edit several tokens at once

#### Editing Colors

```
Current primary color: #0066CC
New primary color: [user input, e.g., #6366F1]

✓ Validate hex format
✓ Generate new color palette
✓ Check accessibility (contrast ratios)
```

For palette generation, use the same logic as brand-generate:
- Generate shades from 50 to 900
- Ensure WCAG AA compliance for text colors
- Maintain consistent hue relationships

#### Editing Typography

```
Current fonts:
- Display: Inter
- Body: Inter

What would you like to change?
1. Change display font → [user input]
2. Change body font → [user input]
3. Adjust font sizes → Show current scale, let user modify
4. Update font weights → Adjust weight mappings
```

Validate font selections:
- Check if it's a web-safe font or Google Font
- Suggest font pairings if changing one font
- Ensure readability (body font should have good legibility)

#### Editing Spacing

```
Current spacing scale (base: 8px):
- xs: 4px
- sm: 8px
- md: 16px
- lg: 24px
- xl: 32px
...

Change base unit? [4px, 8px, 16px]
Or modify individual values?
```

### Step 4: Validate Changes

Before applying:

**Validation Checklist:**
- ✓ Hex colors are valid format
- ✓ Color contrast meets WCAG AA (4.5:1 for text, 3:1 for large text)
- ✓ Font names are valid
- ✓ Spacing values are consistent
- ✓ No breaking changes to token structure

If validation fails, show errors and ask user to fix:
```
⚠ Issues found:
- Color #XYZ has insufficient contrast with white background (2.1:1, needs 4.5:1)
- Font "CustomFont" may not be available; suggest web-safe alternative?
```

### Step 5: Preview Changes

Show a summary of what will change:

```
Changes to apply:
---
PRIMARY COLOR
  Old: #0066CC → New: #6366F1

COLOR PALETTE
  primary-50: #E6F0FF → #EEF2FF
  primary-100: #CCE0FF → #E0E7FF
  ...

TYPOGRAPHY
  No changes

SPACING
  No changes
---

This will update:
- design-tokens.json
- {brand-name}-design-system.css (regenerated)
- example.html (with new styles)
```

Ask: **Apply these changes?** [Yes / No / Modify]

### Step 6: Apply Changes and Regenerate

1. **Backup original** (optional but recommended):
   ```bash
   cp design-tokens.json design-tokens.backup.json
   ```

2. **Update design-tokens.json** with new values

3. **Regenerate design system** using build.js:
   ```bash
   node /path/to/design-system-starter/build.js \
     ./design-tokens.json \
     ./output-directory
   ```

   Or if using as a module:
   ```javascript
   const { build } = require('@irismaker/brand-design-system-template');
   await build('./design-tokens.json', './output');
   ```

4. **Verify output**:
   - Check that CSS variables updated
   - Confirm example.html reflects changes
   - Validate no errors in regeneration

### Step 7: Summary and Next Steps

```
✅ Design tokens updated successfully!

Updated files:
- design-tokens.json
- techcorp-design-system.css
- example.html

Changes:
- Primary color: #0066CC → #6366F1
- Color palette regenerated (9 shades)

Next steps:
1. Preview: Open example.html in browser
2. Review: Check that colors look good
3. Deploy: Use updated CSS in your project
4. Rollback: Restore from design-tokens.backup.json if needed
```

## Edge Cases and Error Handling

### Design Tokens File Not Found

```
❌ Error: design-tokens.json not found at ./brands/techcorp/

Did you mean:
- ./brands/stellarco/design-tokens.json
- ./design-system/tokens.json

Or provide the correct path.
```

### Invalid Color Format

```
⚠ Invalid color: "blue" is not a valid hex code

Please provide hex format:
- #0066CC ✓
- #6366F1 ✓
- blue ✗
- rgb(255, 0, 0) ✗
```

Suggest using a color picker or referencing brand guidelines.

### Accessibility Violations

```
⚠ Accessibility Warning:
Primary color #FFFF00 (yellow) has poor contrast with white background.

Contrast ratio: 1.2:1 (needs 4.5:1 for WCAG AA)

Suggestions:
- Darken to #B8B800 (4.6:1) ✓
- Use dark background instead
- Accept warning (not recommended)
```

### Missing Dependencies

If design-system-starter is not available:

```
⚠ design-system-starter package not found

To regenerate the design system, you need:
1. Clone: git clone https://github.com/irismaker/design-system-starter.git
2. Or install: npm install @irismaker/brand-design-system-template

Alternatively, I can:
- Update only design-tokens.json (manual CSS regeneration needed)
- Show you the token changes without regenerating
```

### Conflicting Changes

If user wants to change multiple things that conflict:

```
⚠ Conflict detected:
You want to change primary color to #6366F1 (indigo)
But your color naming style is "nature" (greens, earth tones)

Suggestions:
1. Change to nature-compatible color (e.g., #10B981 green)
2. Switch color naming style to "tech"
3. Keep changes (may result in inconsistent naming)
```

## Advanced Features

### Batch Updates

Allow editing multiple tokens at once via JSON or config:

```json
{
  "updates": {
    "brand.primaryColor": "#6366F1",
    "typography.fontFamily.display": "Poppins",
    "spacing.base": "8px"
  }
}
```

### Token Migration

Help migrate tokens from one version to another:

```
Migrating tokens v1.0 → v2.0

Changes:
- color.primary → colors.primary.500 (restructured)
- font.body → typography.fontFamily.body
...

Backup created: design-tokens.v1.backup.json
```

### Diff View

Show before/after comparison:

```diff
{
  "brand": {
    "name": "TechCorp",
-   "primaryColor": "#0066CC"
+   "primaryColor": "#6366F1"
  }
}
```

## Important Notes

- **Always validate** changes before applying, especially colors for accessibility
- **Backup original** tokens before making changes
- **Regenerate all outputs** (CSS, HTML) when tokens change to maintain consistency
- **Test thoroughly** after changes, especially if tokens are used in production
- **Keep token structure** consistent with the original design system format

## Example Interaction

```
User: "I want to change my brand color from blue to purple"

Response:
Let me help you update your brand color.

1. First, where is your design-tokens.json file?
   [User provides path: ./brands/techcorp/design-tokens.json]

2. Reading current tokens...
   Current primary color: #0066CC (blue)

3. What purple color would you like? (provide hex code)
   [User: #8B5CF6]

4. Validating #8B5CF6...
   ✓ Valid hex format
   ✓ Contrast with white: 4.8:1 (WCAG AA compliant)
   ✓ Contrast with dark: 7.2:1 (excellent)

5. Generating new color palette from #8B5CF6...
   ✓ 9 shades created (50-900)
   ✓ All meet accessibility standards

6. Preview of changes:
   - Primary color: #0066CC → #8B5CF6
   - All palette shades updated
   - CSS variables will be regenerated

   Apply these changes? [Yes]

7. Applying changes...
   ✓ Backed up: design-tokens.backup.json
   ✓ Updated: design-tokens.json
   ✓ Regenerated: techcorp-design-system.css
   ✓ Updated: example.html

Done! Your brand color is now purple (#8B5CF6).
Preview: Open ./brands/techcorp/example.html
```
