# Frequently Asked Questions

## General Questions

### What is Design Skills Hub?

Design Skills Hub is a collection of Claude Code skills that help designers and developers create and manage brand design systems more efficiently.

### Who is this for?

- **Startups** needing quick brand identity
- **Design agencies** streamlining client work
- **Developers** implementing design systems
- **Design teams** maintaining consistency

### Do I need design experience?

No! The skills guide you through the process and generate professional results automatically.

## Installation & Setup

### How do I install Claude Code?

Visit [Claude Code website](https://www.anthropic.com/claude/code) for installation instructions.

### How do I install these skills?

```bash
# Install all skills
git clone https://github.com/YOUR_USERNAME/design-skills-hub.git
cd design-skills-hub
./install.sh

# Or install individually
claude skill install ./skills/brand-generate
```

### Can I use these skills offline?

Some features require internet (like installing dependencies), but core functionality works offline once set up.

## Using the Skills

### How do I use brand-generate?

Three ways:

1. **Command**: Type `/brand-generate` in Claude Code
2. **Natural**: "Create a design system for MyBrand with blue color"
3. **Config**: Provide a JSON config file

### What output formats are supported?

Currently:
- Design Tokens (JSON)
- CSS Custom Properties
- CSS Stylesheets
- HTML Examples

Coming soon:
- Figma Variables
- Sketch Libraries
- Tailwind Config
- Style Dictionary

### Can I customize the generated design system?

Yes! All generated files are editable. Modify design-tokens.json and regenerate, or edit CSS directly.

### What's the difference between quick mode and interactive mode?

- **Quick mode**: Provide all info in one line, fast generation
- **Interactive mode**: Step-by-step guided prompts
- **Config mode**: Use JSON file for automation

## Technical Questions

### What dependencies are required?

For brand-generate:
- Node.js 16+ (optional, for npx commands)
- Git (for cloning design-system-starter)

Most skills work with just Claude Code installed.

### Where are generated files saved?

By default: `./brands/{brand-name}/`

You can specify custom output paths.

### Can I integrate with existing projects?

Yes! Import the generated CSS or use design tokens in your build system:

```js
import tokens from './design-tokens.json';
```

### Does it work with TypeScript?

Yes! Design tokens are JSON, easily imported in TypeScript projects.

### Can I use this in production?

Yes! Generated design systems are production-ready. Review and test as you would any code.

## Customization & Extension

### Can I modify existing skills?

Yes! Skills are open source. Fork, modify, and contribute back.

### How do I create my own skill?

See [Contributing Guide](./contributing.md) for skill development guidelines.

### Can I add my own brand guidelines?

Yes! Edit the generated brand-identity files or create custom templates.

## Troubleshooting

### Skill not found after installation

```bash
# Verify installation
claude skill list

# Reinstall if needed
claude skill install ./skills/brand-generate
```

### "Package not found" error

The design-system-starter package isn't on npm yet. The skill will automatically clone from GitHub.

### Generated colors don't look right

Check that your hex color is valid (#RRGGBB format). The skill generates a palette based on your primary color.

### Permission denied on install.sh

```bash
chmod +x install.sh
./install.sh
```

### Can't write to output directory

Check permissions or specify a different output path:

```
Output path: /tmp/brands/mybrand/
```

## Contributing

### How can I contribute?

- Add new skills
- Improve existing skills
- Write documentation
- Report bugs
- Share examples

See [CONTRIBUTING.md](./contributing.md) for details.

### I found a bug, what should I do?

[Open an issue](https://github.com/YOUR_USERNAME/design-skills-hub/issues) with:
- Skill name
- Claude Code version
- Steps to reproduce
- Expected vs actual behavior

### Can I request a new skill?

Yes! [Open a discussion](https://github.com/YOUR_USERNAME/design-skills-hub/discussions) describing your use case.

## Licensing & Usage

### What license is this under?

MIT License - free for personal and commercial use.

### Can I use this for client work?

Yes! No attribution required, though appreciated.

### Can I sell design systems created with this?

Yes! You own all generated output.

## Support

### Where can I get help?

1. Check this FAQ
2. Search [existing issues](https://github.com/YOUR_USERNAME/design-skills-hub/issues)
3. Open a [discussion](https://github.com/YOUR_USERNAME/design-skills-hub/discussions)
4. Join our community (link coming soon)

### How often is this updated?

We release updates regularly. Star the repo for notifications.

### Is there a roadmap?

Yes! Check [ROADMAP.md](./roadmap.md) for planned features.

---

**Still have questions?** [Open a discussion](https://github.com/YOUR_USERNAME/design-skills-hub/discussions)
