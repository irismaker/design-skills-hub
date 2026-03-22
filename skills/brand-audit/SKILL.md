---
name: brand-audit
description: Audit design system quality by checking color contrast, validating naming consistency, finding missing tokens, and verifying accessibility compliance. Use when the user wants to audit their design system, check accessibility, validate tokens, find missing colors, or review design system quality. Also trigger when they mention "design system audit", "check WCAG compliance", "validate design tokens", or "find design system issues".
---

# Brand Design System Audit

Comprehensive audit tool for design systems that checks accessibility, naming consistency, token completeness, and adherence to best practices.

## What This Skill Does

1. **Read design system files** (design-tokens.json, CSS variables)
2. **Run comprehensive checks** across multiple quality dimensions
3. **Report issues** with severity levels and clear descriptions
4. **Provide actionable fixes** for each identified issue
5. **Generate audit report** with summary and recommendations

## When to Use This Skill

- Audit design system before production deployment
- Check WCAG accessibility compliance
- Validate token naming consistency
- Find missing or incomplete tokens
- Review design system quality
- Identify accessibility violations
- Ensure best practices are followed
- Generate quality assurance reports

## Core Workflow

### Step 1: Locate Design System

Ask the user for their design system location:

```
"Where is your design system?"
- ./brands/brand-name/design-tokens.json
- ./design-system/tokens.json
- Custom path
```

Typical design system structure:
```
./brands/brand-name/
  ├── design-tokens.json
  ├── brand-name-design-system.css
  ├── config.json
  └── example.html
```

### Step 2: Load and Parse Design System

Read the design system files:

1. **design-tokens.json** - Core token definitions
2. **design-system.css** - CSS variables and utilities
3. **config.json** - Brand configuration (optional)

Parse and extract:
- Color palette (primary, secondary, semantic colors)
- Typography tokens (font families, sizes, weights)
- Spacing scale
- Custom tokens
- CSS variable mappings

### Step 3: Run Audit Checks

Execute comprehensive checks across multiple categories:

#### 1. Accessibility Checks

**Color Contrast (WCAG 2.1 AA/AAA)**
- Check contrast ratios for all color combinations
- Text on backgrounds (4.5:1 for normal text, 3:1 for large text)
- Interactive elements (3:1 minimum)
- UI components against their backgrounds

```
Checking: primary-600 (#0066CC) on white background
- Contrast ratio: 6.8:1
- WCAG AA: ✓ Pass (needs 4.5:1)
- WCAG AAA: ✓ Pass (needs 7:1)
```

**Color Blindness Simulation**
- Deuteranopia (red-green)
- Protanopia (red-green)
- Tritanopia (blue-yellow)
- Check if critical information relies only on color

**Focus Indicators**
- Verify focus states are visible
- Check focus indicator contrast (3:1 minimum)

**Typography Accessibility**
- Minimum font sizes (16px for body text)
- Line height ratios (1.5 minimum for body)
- Font weight contrast (400 vs 700 distinguishable)

#### 2. Naming Consistency Checks

**Color Token Naming**
- Consistent shade numbering (50, 100, 200...900)
- Semantic naming conventions (primary, secondary, success, warning, error)
- No ambiguous names (avoid "blue-ish", "dark-1")

```
✓ primary-50 through primary-900 (complete)
✗ secondary-100, secondary-300, secondary-500 (missing 200, 400, 600-900)
⚠ custom-accent-1 (non-standard naming)
```

**Typography Token Naming**
- Consistent size scale (xs, sm, md, lg, xl, 2xl...)
- Weight naming (light, regular, medium, semibold, bold)
- Family categorization (display, body, mono)

**Spacing Token Naming**
- Consistent scale naming
- Predictable progression (2, 4, 8, 16, 24, 32...)

#### 3. Token Completeness Checks

**Required Tokens**
- ✓ Primary color palette (minimum: 500, dark, light)
- ✓ Semantic colors (success, warning, error, info)
- ✓ Neutral/gray scale
- ✓ Background colors (surface, background, elevated)
- ✓ Text colors (primary, secondary, disabled)
- ✓ Border colors
- ✓ Font families (at least one)
- ✓ Font sizes (base hierarchy: sm, md, lg)
- ✓ Spacing scale (basic: xs, sm, md, lg, xl)

**Missing Tokens Detection**
```
⚠ Missing tokens found:
- colors.error (no error state color defined)
- colors.warning (no warning state color defined)
- typography.fontSize.xs (small text size missing)
- spacing.2xl (large spacing value missing)
```

**Palette Completeness**
```
Primary palette: ✓ Complete (50-900)
Secondary palette: ⚠ Incomplete (missing 200, 400, 600, 700, 800)
Success palette: ✗ Missing (only has success-500)
```

#### 4. Best Practice Checks

**Color Palette Best Practices**
- ✓ Sufficient color variety (not too few or too many)
- ✓ Consistent hue relationships across shades
- ✓ Appropriate lightness progression
- ✗ Overly saturated colors (>90% saturation)

**Typography Best Practices**
- ✓ Font stack includes fallbacks
- ✓ Web-safe fonts or Google Fonts
- ✓ Readable font sizes (minimum 14px)
- ✓ Modular scale (consistent size progression)

**Spacing Best Practices**
- ✓ Base unit (4px or 8px recommended)
- ✓ Consistent multiples (powers of 2 or Fibonacci)
- ✓ Sufficient range (cover common layout needs)

**CSS Variable Best Practices**
- ✓ Kebab-case naming
- ✓ Namespaced (e.g., --brand-color-primary)
- ✓ Semantic variables reference base tokens
- ✗ Hardcoded values in semantic variables

#### 5. CSS Validation Checks

**Variable Definition**
- All tokens have corresponding CSS variables
- No undefined variables referenced
- No duplicate variable names

**Variable Usage**
- CSS variables are actually used
- No orphaned variables (defined but never used)

**Syntax Validation**
- Valid hex colors
- Valid CSS units
- No malformed declarations

### Step 4: Assign Severity Levels

Categorize each issue by severity:

**Critical (🔴)**
- WCAG AA violations (contrast ratios below 4.5:1)
- Missing essential tokens (primary color, base font)
- Broken CSS variables (undefined references)

**Warning (🟡)**
- WCAG AAA not met (but AA passes)
- Incomplete token sets (missing optional tokens)
- Non-standard naming conventions
- Best practice violations

**Info (🔵)**
- Suggestions for improvement
- Optimization opportunities
- Nice-to-have tokens

### Step 5: Generate Audit Report

Create comprehensive report with:

**Executive Summary**
```
Design System Audit Report
Brand: TechCorp
Date: 2026-03-22
Overall Score: 78/100

Issues Found:
- Critical: 2
- Warnings: 8
- Info: 5
```

**Detailed Findings**

Group by category:

```
🎨 ACCESSIBILITY (Score: 70/100)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🔴 Critical Issues (2)
  1. Color Contrast: primary-400 on white
     - Current: 2.8:1
     - Required: 4.5:1 (WCAG AA)
     - Fix: Use primary-600 instead (6.8:1)

  2. Color Contrast: error-300 on white
     - Current: 3.1:1
     - Required: 4.5:1
     - Fix: Darken to #C41E3A (4.6:1)

🟡 Warnings (3)
  1. Focus indicator contrast low
     - Current: 2.9:1
     - Recommended: 3:1 minimum
     - Fix: Increase border width or use darker color

  2. Small font size used (12px)
     - Recommended minimum: 14px
     - Fix: Use font-size-sm (14px) instead

  3. Line height insufficient (1.2)
     - Recommended: 1.5 minimum
     - Fix: Update to --line-height-normal (1.5)

📝 NAMING CONSISTENCY (Score: 85/100)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🟡 Warnings (2)
  1. Inconsistent color naming
     - Found: accent-color-1, accent-color-2
     - Expected: accent-100, accent-200, accent-300...
     - Fix: Rename to standard scale

  2. Missing shade numbers
     - primary: Has 500, missing 50-400, 600-900
     - Fix: Generate complete palette

✅ TOKEN COMPLETENESS (Score: 75/100)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🔴 Critical Issues (0)

🟡 Warnings (3)
  1. Missing semantic colors
     - warning (no warning state)
     - info (no info state)
     - Fix: Add warning and info color palettes

  2. Incomplete spacing scale
     - Missing: 2xl, 3xl
     - Fix: Add larger spacing values

  3. No monospace font defined
     - Recommended for code blocks
     - Fix: Add typography.fontFamily.mono
```

**Actionable Fixes**

For each issue, provide specific fixes:

```json
{
  "issue": "primary-400 contrast violation",
  "severity": "critical",
  "category": "accessibility",
  "description": "Color primary-400 (#66A3FF) has insufficient contrast with white background (2.8:1, needs 4.5:1)",
  "fix": {
    "type": "color_replacement",
    "from": "#66A3FF",
    "to": "#0066CC",
    "location": "colors.primary.400",
    "newContrast": "6.8:1"
  }
}
```

### Step 6: Offer Automated Fixes

Present options to user:

```
Audit complete. Found 2 critical issues, 8 warnings, 5 suggestions.

Would you like to:
1. Apply all critical fixes automatically
2. Apply specific fixes (choose which ones)
3. Export report only (no changes)
4. Show detailed fix instructions
```

**Automated Fix Workflow**

If user chooses automated fixes:

1. **Backup original files**
   ```bash
   cp design-tokens.json design-tokens.pre-audit.json
   ```

2. **Apply fixes** to design-tokens.json
   - Update color values for contrast violations
   - Add missing tokens
   - Rename inconsistent tokens
   - Fix CSS variable references

3. **Regenerate design system**
   ```bash
   npx brand-build ./design-tokens.json ./output
   ```

4. **Verify fixes**
   - Re-run audit checks
   - Confirm all critical issues resolved

5. **Show results**
   ```
   ✅ Applied 2 critical fixes
   ✅ Applied 5 warning fixes

   Remaining issues:
   - 3 warnings (require manual review)
   - 5 suggestions (optional improvements)

   Updated files:
   - design-tokens.json
   - techcorp-design-system.css
   ```

### Step 7: Export Audit Report

Generate exportable report in multiple formats:

**Markdown Report**
```markdown
# Design System Audit Report

**Brand:** TechCorp
**Date:** 2026-03-22
**Overall Score:** 78/100

## Summary
- ✅ Passed: 45 checks
- ⚠️ Warnings: 8 issues
- 🔴 Failed: 2 critical issues

## Critical Issues
1. [Accessibility] Color contrast violation...
2. [Accessibility] Error color contrast...

## Recommendations
...
```

**JSON Report** (for CI/CD integration)
```json
{
  "brand": "TechCorp",
  "date": "2026-03-22",
  "score": 78,
  "issues": [
    {
      "severity": "critical",
      "category": "accessibility",
      "description": "...",
      "fix": {...}
    }
  ]
}
```

**HTML Report** (visual, shareable)
Generate standalone HTML file with:
- Visual representations of color issues
- Interactive contrast checker
- Before/after comparisons

## Edge Cases and Error Handling

### Design Tokens Not Found

```
❌ Error: design-tokens.json not found at ./brands/techcorp/

Please provide the correct path to your design system files.
Typically located at:
- ./brands/brand-name/design-tokens.json
- ./design-system/tokens.json
```

### Malformed Token File

```
❌ Error: Invalid JSON in design-tokens.json

JSON parse error at line 42:
- Expected comma or closing brace
- Found: 'undefined'

Please fix the JSON syntax before running the audit.
```

### Incomplete Design System

```
⚠ Warning: Design system appears incomplete

Missing files:
- design-system.css (CSS variables not found)
- config.json (brand configuration missing)

Audit will run with limited checks based on design-tokens.json only.
Continue? [Yes / No]
```

### No Issues Found

```
🎉 Excellent! Your design system passed all checks.

✅ Accessibility: 100/100
✅ Naming Consistency: 100/100
✅ Token Completeness: 100/100
✅ Best Practices: 100/100

Overall Score: 100/100

Your design system is production-ready!
```

## Advanced Features

### CI/CD Integration

Export audit as JSON for automated checks:

```bash
# Run audit in CI pipeline
npx design-audit ./design-tokens.json --format=json --fail-on=critical

# Exit code 1 if critical issues found
# Exit code 0 if pass
```

### Custom Audit Rules

Allow users to define custom checks:

```json
{
  "customRules": [
    {
      "name": "brand-color-usage",
      "check": "primary color must be used in at least 3 components",
      "severity": "warning"
    }
  ]
}
```

### Historical Tracking

Track audit scores over time:

```
Design System Quality Trends
━━━━━━━━━━━━━━━━━━━━━━━━━━━━
2026-01-15: 65/100 (baseline)
2026-02-10: 72/100 (+7)
2026-03-22: 78/100 (+6)

📈 Trend: Improving
🎯 Target: 90/100
```

### Comparison Audit

Compare two design systems:

```
Comparing: design-system-v1 vs design-system-v2

Improvements:
+ Added missing warning colors
+ Fixed 3 contrast violations
+ Improved naming consistency (85% → 95%)

Regressions:
- Removed spacing-2xl token
- Changed primary color (may affect brand recognition)
```

## Important Notes

- **Non-destructive:** Audit never modifies files without explicit user consent
- **Backup first:** Always create backups before applying automated fixes
- **Context matters:** Some "violations" may be intentional design decisions
- **Manual review:** Not all fixes should be automated; some require designer input
- **Accessibility priority:** Always prioritize critical accessibility fixes
- **Test after fixes:** Re-run audit and test UI after applying fixes

## Example Interaction

```
User: "Audit my design system for accessibility issues"

Response:
I'll run a comprehensive audit of your design system.

1. Where is your design-tokens.json file?
   [User: ./brands/techcorp/design-tokens.json]

2. Loading design system...
   ✓ design-tokens.json loaded
   ✓ techcorp-design-system.css loaded
   ✓ config.json loaded

3. Running audit checks...
   ✓ Accessibility checks (28 tests)
   ✓ Naming consistency (15 tests)
   ✓ Token completeness (12 tests)
   ✓ Best practices (20 tests)

4. Audit Results:
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   Overall Score: 78/100

   🔴 Critical: 2 issues
   🟡 Warnings: 8 issues
   🔵 Info: 5 suggestions
   ✅ Passed: 60 checks

5. Critical Issues:

   🔴 Color Contrast Violation
      primary-400 (#66A3FF) on white background
      Current: 2.8:1 | Required: 4.5:1
      Fix: Use primary-600 (#0066CC) instead → 6.8:1

   🔴 Color Contrast Violation
      error-300 (#FF6B6B) on white background
      Current: 3.1:1 | Required: 4.5:1
      Fix: Darken to #C41E3A → 4.6:1

6. Would you like to:
   1. Apply all critical fixes automatically ✨
   2. Review each fix before applying
   3. Export detailed report only
   4. Show all warnings and suggestions

   [User: 1]

7. Applying critical fixes...
   ✓ Backed up: design-tokens.pre-audit.json
   ✓ Updated primary-400: #66A3FF → #0066CC
   ✓ Updated error-300: #FF6B6B → #C41E3A
   ✓ Regenerated: techcorp-design-system.css

8. Re-running audit...
   ✓ All critical issues resolved!

   New Score: 92/100
   - Critical: 0 (fixed 2)
   - Warnings: 6 (2 auto-fixed)

✅ Audit complete! Your design system is much more accessible.

Remaining issues:
- 6 warnings (optional improvements)
- 5 suggestions (nice-to-have features)

Full report exported to: ./audit-report-2026-03-22.md
```

## Tips for Best Results

1. **Run regularly:** Audit design systems periodically, especially before major releases

2. **Prioritize accessibility:** Always fix critical accessibility issues first

3. **Understand context:** Some "violations" may be intentional (e.g., disabled state colors)

4. **Test visually:** After fixes, preview the design system to ensure it looks right

5. **Team review:** Share audit reports with designers and developers for consensus

6. **Automate in CI:** Integrate audits into your build pipeline to catch issues early

7. **Track progress:** Monitor audit scores over time to measure design system quality

8. **Balance automation:** Use automated fixes for clear-cut issues; manual review for subjective ones
