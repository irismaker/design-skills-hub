# Brand Visual Identity Example

This example demonstrates using the brand-visual-generator skill to create comprehensive visual identity guidelines.

## Scenario

**Company:** NexusFlow
**Industry:** SaaS / Productivity Tools
**Stage:** Established product, refreshing visual identity
**Goal:** Create consistent visual guidelines for web, mobile, and marketing

## Requirements

- Modern, professional visual identity
- Typography system for digital and print
- Accessible color palette
- Spacing and grid system
- Logo usage guidelines

## Solution

### Step 1: Use the brand-visual-generator skill

In Claude Code:
```
/brand-visual-generator

We're refreshing the visual identity for NexusFlow, a productivity SaaS tool.
We need comprehensive guidelines covering:
- Typography (web and mobile)
- Color palette (primary: #6366F1 indigo)
- Spacing system
- Logo usage rules

Target: Professional tech audience, emphasize clarity and efficiency.
```

### Step 2: Review Generated Guidelines

The skill generates complete visual identity documentation including:

#### Typography System
- **Display Font:** Inter (headings, UI elements)
- **Body Font:** Inter (body text, descriptions)
- **Type Scale:** 1.25 ratio (Major Third)
- **Hierarchy:** Hero (48px), H1 (36px), H2 (28px), H3 (22px), Body (16px), Caption (14px)

#### Color Palette
- **Primary:** #6366F1 (Indigo) - main brand color
- **Secondary:** #8B5CF6 (Purple) - accents
- **Success:** #10B981 (Green)
- **Warning:** #F59E0B (Amber)
- **Error:** #EF4444 (Red)
- **Background:** #FFFFFF, #F9FAFB, #111827
- **Text:** #111827, #6B7280, #9CA3AF

All colors meet WCAG AA accessibility standards (4.5:1 contrast ratio).

#### Spacing System
- **Base unit:** 8px
- **Scale:** 4px, 8px, 16px, 24px, 32px, 48px, 64px, 96px
- **Grid:** 12-column responsive grid
- **Margins:** Desktop 120px, Tablet 48px, Mobile 24px

#### Logo Usage
- **Clear space:** Minimum 32px around logo
- **Minimum size:** 120px width for digital, 1 inch for print
- **Color variants:** Full color, monochrome, white on dark
- **Don'ts:** No distortion, no custom colors, no shadows

### Step 3: Apply to Projects

```css
/* CSS Variables */
:root {
  /* Colors */
  --color-primary: #6366F1;
  --color-secondary: #8B5CF6;
  --color-success: #10B981;

  /* Typography */
  --font-display: 'Inter', system-ui, sans-serif;
  --font-body: 'Inter', system-ui, sans-serif;
  --font-size-hero: 3rem;
  --font-size-h1: 2.25rem;
  --font-size-body: 1rem;

  /* Spacing */
  --spacing-xs: 0.25rem;
  --spacing-sm: 0.5rem;
  --spacing-md: 1rem;
  --spacing-lg: 1.5rem;
  --spacing-xl: 2rem;
  --spacing-2xl: 3rem;
}
```

## Results

✅ **Complete visual identity in under 10 minutes**
- Consistent typography across all touchpoints
- Accessible color palette with WCAG AA compliance
- Scalable spacing system
- Clear logo usage rules
- Ready-to-implement design tokens

## Next Steps

1. **Export to design tools** - Import colors and typography into Figma/Sketch
2. **Create component library** - Build UI components using these guidelines
3. **Document edge cases** - Add brand-specific exceptions if needed
4. **Train team** - Share guidelines with designers and developers

## Time Savings

| Traditional Approach | With brand-visual-generator |
|---------------------|----------------------------|
| 1-2 weeks | 10 minutes |
| Multiple design meetings | Single session |
| Inconsistent documentation | Standardized format |
| Manual accessibility checks | Built-in WCAG compliance |

---

**Related Examples:**
- [Startup Branding](../startup-branding/)
- [Brand Strategy](../brand-strategy/)
