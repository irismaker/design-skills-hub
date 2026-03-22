# 🎨 Design Skills Hub

A collection of powerful Claude Code skills for designers and developers to streamline brand design system creation and management.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Skills-blue)](https://docs.anthropic.com/claude/docs)

## 🚀 Quick Start

### Installation

**Option 1: Direct install from GitHub (recommended)**

Install all skills with one command:
```bash
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-generate && \
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-visual && \
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/branding
```

Or install individual skills:
```bash
# Brand design system generator
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-generate

# Visual identity guidelines
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/brand-visual

# Brand strategy and positioning
claude skill install https://github.com/irismaker/design-skills-hub/tree/main/skills/branding
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
```

## 📦 Available Skills

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
**Status:** 🚧 Coming Soon
**Command:** `/design-tokens-editor`

Edit and update existing design tokens with real-time preview.

### 5. Brand Colors Palette
**Status:** 🚧 Coming Soon
**Command:** `/brand-colors-palette`

Generate complete color palettes from a single brand color with accessibility validation.

### 6. Brand Compare
**Status:** 🚧 Coming Soon
**Command:** `/brand-compare`

Compare multiple brand design systems side-by-side.

### 7. Design System Export
**Status:** 🚧 Coming Soon
**Command:** `/design-system-export`

Export design systems to Figma, Sketch, or other formats.

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
