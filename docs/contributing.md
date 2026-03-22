# Contributing to Design Skills Hub

Thank you for your interest in contributing! This document provides guidelines for contributing to the Design Skills Hub project.

## 🌟 Ways to Contribute

1. **Add New Skills** - Create skills for design workflows
2. **Improve Existing Skills** - Enhance functionality or documentation
3. **Fix Bugs** - Report or fix issues
4. **Write Documentation** - Improve guides and examples
5. **Share Feedback** - Suggest improvements or new features

## 🚀 Getting Started

### 1. Fork and Clone

```bash
# Fork the repository on GitHub
# Then clone your fork
git clone https://github.com/irismaker/design-skills-hub.git
cd design-skills-hub
```

### 2. Create a Branch

```bash
git checkout -b feature/your-feature-name
# or
git checkout -b fix/your-bug-fix
```

### 3. Make Your Changes

Follow the guidelines below for your type of contribution.

## 📝 Skill Development Guidelines

### Skill Structure

Each skill should follow this structure:

```
skills/your-skill-name/
├── SKILL.md          # Main skill definition (required)
├── README.md         # User-facing documentation
├── evals/           # Test cases
│   └── evals.json
├── scripts/         # Helper scripts (optional)
│   └── helper.py
└── references/      # Reference docs (optional)
    └── api-docs.md
```

### SKILL.md Requirements

Your `SKILL.md` must include:

```markdown
---
name: your-skill-name
description: Clear, concise description of what the skill does and when to use it
---

# Skill Name

## What This Skill Does
[Clear explanation]

## When to Use This Skill
[Specific use cases]

## Core Workflow
[Step-by-step process]
```

### Best Practices

1. **Keep it Generic** - No brand-specific information
2. **Clear Instructions** - Explain the "why" not just the "what"
3. **Handle Edge Cases** - Anticipate and handle errors gracefully
4. **Test Thoroughly** - Include test cases in `evals/`
5. **Document Well** - Clear examples and usage patterns

### Testing Your Skill

Before submitting:

```bash
# Test your skill locally
claude skill install ./skills/your-skill-name

# Try it in Claude Code
/your-skill-name
```

## 📋 Pull Request Process

### 1. Commit Your Changes

```bash
git add .
git commit -m "feat: add your-skill-name skill"

# Commit message format:
# feat: new feature
# fix: bug fix
# docs: documentation
# refactor: code refactoring
# test: testing
# chore: maintenance
```

### 2. Push and Create PR

```bash
git push origin feature/your-feature-name
```

Then create a Pull Request on GitHub with:
- Clear title describing the change
- Detailed description of what and why
- Screenshots/examples if applicable
- Reference any related issues

### 3. Code Review

- Address reviewer feedback promptly
- Keep discussions respectful and constructive
- Update your PR based on feedback

## 🐛 Reporting Bugs

Use the [Issue Tracker](https://github.com/irismaker/design-skills-hub/issues) with:

```markdown
**Skill Name:** [which skill]
**Claude Code Version:** [version]
**OS:** [macOS/Linux/Windows]

**Description:**
[Clear description of the bug]

**Steps to Reproduce:**
1. [First step]
2. [Second step]
...

**Expected Behavior:**
[What should happen]

**Actual Behavior:**
[What actually happened]

**Screenshots/Logs:**
[If applicable]
```

## 💡 Feature Requests

Suggest new skills or features:

```markdown
**Skill Idea:** [skill name]
**Use Case:** [who needs this and why]
**Description:** [what it should do]
**Example Usage:** [how it would work]
```

## 📚 Documentation Guidelines

### Writing Style

- Use clear, simple language
- Provide practical examples
- Include code snippets
- Add visual aids (screenshots, diagrams)

### Documentation Structure

```markdown
# Title

## Overview
[What is this about]

## Prerequisites
[What you need]

## Step-by-Step Guide
1. [First step]
2. [Second step]

## Examples
[Real-world examples]

## Troubleshooting
[Common issues and solutions]
```

## 🔒 Security

If you discover a security issue:
1. **Do NOT** open a public issue
2. Email [security contact] with details
3. Wait for confirmation before disclosing

## 📜 Code of Conduct

### Our Standards

- Be respectful and inclusive
- Welcome newcomers
- Accept constructive criticism
- Focus on what's best for the community
- Show empathy toward others

### Unacceptable Behavior

- Harassment or discriminatory language
- Trolling or insulting comments
- Public or private harassment
- Publishing others' private information
- Unethical or unprofessional conduct

## 🎖️ Recognition

Contributors will be:
- Listed in README.md
- Credited in release notes
- Featured in project announcements

## 📞 Questions?

- Open a [Discussion](https://github.com/irismaker/design-skills-hub/discussions)
- Comment on related issues
- Reach out to maintainers

---

Thank you for making Design Skills Hub better! 🎨✨
