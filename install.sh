#!/bin/bash

# Design Skills Hub - Installation Script
# This script installs all design skills to Claude Code

set -e

SKILLS_DIR="./skills"
INSTALLED_COUNT=0
FAILED_COUNT=0

echo "🎨 Design Skills Hub - Installation"
echo "===================================="
echo ""

# Check if claude command exists
if ! command -v claude &> /dev/null; then
    echo "❌ Error: Claude Code CLI not found"
    echo "Please install Claude Code first: https://www.anthropic.com/claude/code"
    exit 1
fi

echo "📦 Installing skills..."
echo ""

# Install each skill
for skill_path in "$SKILLS_DIR"/*; do
    if [ -d "$skill_path" ]; then
        skill_name=$(basename "$skill_path")
        echo "Installing: $skill_name"

        if claude skill install "$skill_path" 2>/dev/null; then
            echo "  ✅ $skill_name installed successfully"
            ((INSTALLED_COUNT++))
        else
            echo "  ❌ Failed to install $skill_name"
            ((FAILED_COUNT++))
        fi
        echo ""
    fi
done

echo "===================================="
echo "Installation complete!"
echo ""
echo "📊 Summary:"
echo "  ✅ Installed: $INSTALLED_COUNT skill(s)"
if [ $FAILED_COUNT -gt 0 ]; then
    echo "  ❌ Failed: $FAILED_COUNT skill(s)"
fi
echo ""
echo "🚀 Get started:"
echo "  Type '/brand-generate' in Claude Code to create your first design system"
echo ""
echo "📖 Documentation: https://github.com/irismaker/design-skills-hub"
