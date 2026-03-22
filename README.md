# 🎨 Design Skills Hub

A comprehensive collection of **9 Claude Code skills** for designers and developers to create, manage, and maintain professional brand design systems—covering the complete design system lifecycle from creation to deployment.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Skills-blue)](https://docs.anthropic.com/claude/docs)
[![Skills: 9](https://img.shields.io/badge/Skills-9-success)](https://github.com/irismaker/design-skills-hub/tree/main/skills)

## 🏗️ Framework Overview

Design Skills Hub provides a **complete design system workflow** organized into three categories:

### 🎯 Core Brand Skills (3 skills)

Create and define your brand foundation

- **brand-generate** - Generate complete design systems with tokens, CSS, components
- **brand-visual** - Define visual identity (typography, colors, spacing, logo guidelines)
- **branding** - Create brand strategy (purpose, values, positioning, voice)

### 🛠️ Design System Tools (3 skills)

Edit, enhance, and visualize your design systems

- **design-tokens-editor** - Edit existing tokens and regenerate systems
- **brand-colors-palette** - Generate color palettes with accessibility validation
- **design-system-preview** - Preview and compare design systems visually

### 📊 Analysis & Export (3 skills)

Validate, compare, and distribute your design systems

- **brand-compare** - Compare multiple brand systems and identify differences
- **design-system-export** - Export to Figma, Sketch, Tailwind, and more
- **brand-audit** - Audit quality, accessibility, and consistency

## 🔄 Complete Workflow

```
1. CREATE           2. REFINE          3. VALIDATE        4. DEPLOY
   ↓                   ↓                  ↓                  ↓
brand-generate → design-tokens-    → brand-audit      → design-system-
brand-visual     editor             → brand-compare      export
branding         brand-colors-
                 palette
                 design-system-
                 preview
```

## ✨ Why Design Skills Hub?

- **🚀 10x Faster** - Create design systems in minutes, not weeks
- **♿ Accessibility Built-in** - WCAG AA/AAA validation by default
- **🎨 Professional Quality** - Industry-standard naming and structure
- **🔧 Full Lifecycle** - From creation to deployment, all tools included
- **📦 Framework Agnostic** - Export to any platform (Figma, Sketch, web, mobile)
- **🤖 AI-Powered** - Intelligent suggestions and automation via Claude

## 🚀 Quick Start

### Installation

**Option 1: Direct install from GitHub (recommended)**

Install all 9 skills with one command:
```bash
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-generate && \
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-visual && \
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/branding && \
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/design-tokens-editor && \
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-colors-palette && \
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/design-system-preview && \
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-compare && \
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/design-system-export && \
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-audit
```

Or install individual skills:
```bash
# Core Brand Skills
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-generate
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-visual
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/branding

# Design System Tools
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/design-tokens-editor
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-colors-palette
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/design-system-preview

# Analysis & Export
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-compare
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/design-system-export
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-audit
```

**Option 2: Clone and install locally**
```bash
git clone https://github.com/irismaker/design-skills-hub.git
cd design-skills-hub
./install.sh
```

### Usage

After installation, use skills in Claude Code:
```bash
/brand-generate
/brand-visual-generator
/branding
```

Or naturally in conversation:
```
"Create a design system for Aurora Labs with primary color #6366F1"
"Define brand visual identity with typography and color palette"
"Help me create brand strategy and positioning"
"Edit my brand colors to use purple instead of blue"
"Generate a complementary color palette for #6366F1"
"Export my design system to Figma tokens"
```

## 📦 Skills Overview

Quick reference table for all 9 skills:

| Skill | Category | Command | Purpose |
| ----- | -------- | ------- | ------- |
| **brand-generate** | 🎯 Core | `/brand-generate` | Generate complete design systems |
| **brand-visual** | 🎯 Core | `/brand-visual-generator` | Define visual identity guidelines |
| **branding** | 🎯 Core | `/branding` | Create brand strategy & positioning |
| **design-tokens-editor** | 🛠️ Tools | `/design-tokens-editor` | Edit existing design tokens |
| **brand-colors-palette** | 🛠️ Tools | `/brand-colors-palette` | Generate color palettes |
| **design-system-preview** | 🛠️ Tools | `/design-system-preview` | Preview & compare systems |
| **brand-compare** | 📊 Analysis | `/brand-compare` | Compare multiple brands |
| **design-system-export** | 📊 Analysis | `/design-system-export` | Export to multiple formats |
| **brand-audit** | 📊 Analysis | `/brand-audit` | Audit quality & accessibility |

## 📋 Detailed Skills Documentation

### 1. Brand Generate
**Status:** ✅ Ready
**Command:** `/brand-generate`

Generate complete brand design systems with design tokens, CSS variables, and component libraries.

**Features:**
- 🎨 Interactive brand information collection
- ⚡ Quick mode for fast generation
- 📄 Config file support for automation
- 🎯 Generates design-tokens.json, CSS, and documentation
- 🔧 Based on [design-system-starter](https://github.com/irismaker/design-system-starter)

**Example:**
```
/brand-generate

User: Create a design system for TechCorp
- Primary Color: #0066CC
- Domain: techcorp.io
- Slogan: "Innovation through technology"
```

**Output:**
```
./brands/techcorp/
├── design-tokens.json
├── techcorp-design-system.css
├── example.html
└── README.md
```

### 2. Brand Visual Identity
**Status:** ✅ Ready
**Command:** `/brand-visual-generator`

Define and audit visual identity including typography, colors, spacing, and logo usage guidelines.

**Features:**
- 🎨 Typography system (display + body font pairing)
- 🌈 Color palette structure with accessibility validation
- 📏 Spacing and grid systems
- 🎯 Logo usage guidelines
- 📋 Industry-specific color recommendations

**Use Cases:**
- Create comprehensive brand style guides
- Audit existing visual identity for consistency
- Define design tokens for implementation
- Ensure brand compliance across touchpoints

### 3. Branding Strategy
**Status:** ✅ Ready
**Command:** `/branding`

Define brand strategy, purpose, values, positioning, storytelling, and voice.

**Features:**
- 🎯 Brand purpose and values definition
- 📖 Brand storytelling and origin story
- 🗣️ Brand voice and tone guidelines
- 🎭 Brand archetypes and personality
- 📍 Positioning and differentiation strategy

**Use Cases:**
- Define brand strategy for new products
- Audit brand consistency across channels
- Create brand messaging guidelines
- Align team on brand narrative

### 4. Design Tokens Editor
**Status:** ✅ Ready
**Command:** `/design-tokens-editor`

Edit existing brand design tokens and regenerate the complete design system.

**Features:**
- ✏️ Interactive editing of colors, typography, spacing
- ✅ Validation and accessibility checks
- 🔄 Automatic design system regeneration
- 💾 Backup before changes
- 👁️ Preview changes before applying

**Use Cases:**
- Update brand colors for existing systems
- Change typography or spacing scales
- Fine-tune tokens based on feedback
- Fix accessibility issues

### 5. Brand Colors Palette
**Status:** ✅ Ready
**Command:** `/brand-colors-palette`

Generate professional color palettes from a single brand color.

**Features:**
- 🎨 Generate 9 shades (50-900) from any color
- 🌈 Smart color relationships (complementary, analogous, triadic)
- ♿ WCAG AA/AAA accessibility validation
- 📊 Multiple export formats (JSON, CSS, Tailwind)
- 🖼️ HTML preview with swatches

**Use Cases:**
- Create full palette from brand color
- Find complementary/accent colors
- Validate color accessibility
- Export to different platforms

### 6. Design System Preview
**Status:** ✅ Ready
**Command:** `/design-system-preview`

Quick preview and comparison of design systems.

**Features:**
- 🌐 Open example.html in browser
- 📱 Responsive preview (mobile/tablet/desktop)
- 🔄 Side-by-side brand comparison
- 📸 Screenshot and export capabilities
- 🌓 Dark mode toggle

**Use Cases:**
- Preview new design systems
- Compare multiple brands visually
- Take screenshots for documentation
- Share design system demos

### 7. Brand Compare
**Status:** ✅ Ready
**Command:** `/brand-compare`

Compare multiple brand design systems and identify differences.

**Features:**
- 🔍 Token-level diff view
- 📊 Visual comparison charts
- ♿ Accessibility comparison
- 📄 Generate comparison reports (MD/HTML)
- 🎯 Identify inconsistencies

**Use Cases:**
- Compare before/after updates
- Audit multi-brand consistency
- Document design system changes
- Migration planning

### 8. Design System Export
**Status:** ✅ Ready
**Command:** `/design-system-export`

Export design systems to multiple formats and platforms.

**Features:**
- 🎨 Figma Tokens format
- ✏️ Sketch variables
- 📦 Style Dictionary
- 🎯 Tailwind CSS config
- 💾 CSS/SCSS variables, JSON/YAML
- 📱 iOS/Android platform-specific

**Use Cases:**
- Export to design tools (Figma/Sketch)
- Generate platform-specific tokens
- Create Style Dictionary configs
- Batch export to multiple formats

### 9. Brand Audit
**Status:** ✅ Ready
**Command:** `/brand-audit`

Audit design system quality and accessibility compliance.

**Features:**
- ♿ WCAG 2.1 AA/AAA compliance checks
- 🎨 Color contrast validation
- 🏷️ Naming consistency verification
- 🔍 Missing tokens detection
- 🛠️ Automated fixes with suggestions
- 📊 Detailed audit reports

**Use Cases:**
- Ensure accessibility compliance
- Find design system gaps
- Validate token naming
- Generate quality reports

## 🎯 Use Cases

- **Startup Teams:** Quickly generate brand design systems for new products
- **Design Agencies:** Streamline client branding projects
- **Developers:** Get consistent design tokens for implementation
- **Design Systems Teams:** Maintain and evolve design systems efficiently

## 🛠️ Prerequisites

- [Claude Code](https://www.anthropic.com/claude/code) installed
- Node.js 16+ (for brand-generate)
- Git (for installation)

## 📖 Documentation

- [Installation Guide](./docs/installation.md)
- [Brand Generate Usage](./skills/brand-generate/SKILL.md)
- [Contributing Guide](./docs/contributing.md)
- [FAQ](./docs/faq.md)

## 🤝 Contributing

We welcome contributions! See [CONTRIBUTING.md](./docs/contributing.md) for guidelines.

### Adding a New Skill

1. Fork this repository
2. Create your skill in `skills/your-skill-name/`
3. Follow the [Skill Structure Guidelines](./docs/skill-structure.md)
4. Submit a pull request

### Skill Structure

```
skills/
└── your-skill-name/
    ├── SKILL.md          # Main skill definition (required)
    ├── README.md         # Skill documentation
    ├── evals/           # Test cases (optional)
    ├── scripts/         # Helper scripts (optional)
    └── references/      # Reference docs (optional)
```

## 🌟 Examples

See the [examples/](./examples/) directory for real-world usage examples:
- [Startup Branding](./examples/startup-branding/) - Generate complete design system for a startup
- [Brand Visual Identity](./examples/brand-visual-identity/) - Create visual guidelines for an established product
- [Brand Strategy](./examples/brand-strategy/) - Define brand positioning and messaging for a new product

## 📝 License

MIT License - feel free to use in personal and commercial projects.

## 🙏 Acknowledgments

- Built for [Claude Code](https://www.anthropic.com/claude/code) by Anthropic
- Powered by [design-system-starter](https://github.com/irismaker/design-system-starter)
- Inspired by the design systems community

## 📬 Contact

- **Issues:** [GitHub Issues](https://github.com/irismaker/design-skills-hub/issues)
- **Discussions:** [GitHub Discussions](https://github.com/irismaker/design-skills-hub/discussions)

---

⭐ **Star this repo** if you find it useful!

Made with ❤️ for designers and developers
