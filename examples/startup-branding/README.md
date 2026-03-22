# Startup Branding Example

This example demonstrates how to use Design Skills Hub to quickly create a complete brand design system for a startup.

## Scenario

**Company:** TechFlow
**Industry:** SaaS / Technology
**Stage:** Pre-launch, need to establish brand identity
**Timeline:** 1 day

## Requirements

- Modern, tech-focused brand identity
- Primary brand color: Blue (#0EA5E9)
- Clean, professional typography
- Complete design system for web and marketing materials

## Solution

### Step 1: Generate Base Design System

Use the brand-generate skill:

```
/brand-generate

Brand Name: TechFlow
Primary Color: #0EA5E9
Domain: techflow.io
Slogan: "Workflow automation made simple"
Font: Inter
```

### Step 2: Review Generated Assets

The skill generates:

```
./brands/techflow/
├── design-tokens.json       # Design tokens
├── techflow-design-system.css  # CSS variables
├── example.html            # Preview page
└── README.md              # Documentation
```

### Step 3: Integrate with Your Project

```bash
# Copy to your project
cp ./brands/techflow/* ./src/styles/

# Import in your CSS
@import './styles/techflow-design-system.css';

# Or use design tokens in your build
import tokens from './styles/design-tokens.json';
```

## Results

✅ **Complete design system in under 5 minutes**
- Consistent color palette with accessibility validation
- Typography scale optimized for digital products
- Spacing system based on 4px grid
- Dark mode support included
- Ready-to-use CSS custom properties

## Files Generated

See the [output/](./output/) directory for example generated files.

## Next Steps

1. **Customize colors** - Adjust shades in design-tokens.json
2. **Add components** - Build UI components using the tokens
3. **Create brand guide** - Document usage patterns
4. **Share with team** - Export to Figma/Sketch (coming soon)

## Time Savings

| Traditional Approach | With Design Skills Hub |
|---------------------|----------------------|
| 2-3 days setup | 5 minutes |
| Manual token creation | Automated |
| Inconsistent naming | Standardized |
| Limited documentation | Comprehensive docs |

---

**Related Examples:**
- [Product Redesign](../product-redesign/)
- [Multi-Brand System](../multi-brand/)
