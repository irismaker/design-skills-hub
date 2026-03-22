# Brand Compare Skill

## Overview
Compare multiple brand design systems side-by-side, analyze token differences, identify inconsistencies, and generate comprehensive comparison reports.

## Skill Metadata
- **Name**: `brand-compare`
- **Version**: 1.0.0
- **Category**: Brand Management

## Description
Enables side-by-side comparison of multiple brand design systems, highlighting differences in design tokens, visual properties, and accessibility standards. Generates detailed comparison reports in multiple formats.

## Trigger Patterns
This skill activates when users mention:
- "compare brands"
- "diff design systems"
- "brand differences"
- "compare tokens"
- "brand comparison"
- "design system diff"
- "token differences"

## Workflow

### 1. Select Brands
- Choose 2 or more brand design systems to compare
- Load brand configuration files
- Validate brand data structure

### 2. Analyze Tokens
- Extract design tokens from each brand
- Normalize token formats
- Identify comparable properties
- Detect unique tokens per brand

### 3. Show Differences
- Display side-by-side token comparison
- Highlight value differences
- Show visual representation of color/spacing differences
- Flag missing tokens in each system

### 4. Generate Report
- Create comparison summary
- Export in markdown or HTML format
- Include visual examples
- Provide recommendations for alignment

## Features

### Token Diff View
- Side-by-side token comparison table
- Color-coded difference highlighting
- Value delta calculations
- Missing token indicators

### Visual Comparison
- Color palette comparison with swatches
- Typography specimen comparison
- Spacing scale visualization
- Component appearance diff

### Accessibility Comparison
- Contrast ratio analysis across brands
- WCAG compliance comparison
- Accessible color pair identification
- Touch target size comparison

### Report Generation
- Markdown format for documentation
- HTML format with interactive elements
- Summary statistics
- Actionable recommendations

## Comparison Types

### Colors
- Primary, secondary, accent palettes
- Semantic colors (success, error, warning)
- Neutral scales
- Contrast ratios

### Typography
- Font families and fallbacks
- Font size scales
- Font weights
- Line heights and letter spacing

### Spacing
- Spacing scales (base unit, multipliers)
- Layout spacing values
- Component spacing
- Grid systems

### Full System
- Complete token comparison
- Cross-reference analysis
- Dependency mapping
- Brand consistency score

## Usage Examples

```bash
# Compare two brands
brand-compare --brands="acme,globex"

# Compare specific token categories
brand-compare --brands="acme,globex" --category="colors"

# Generate HTML report
brand-compare --brands="acme,globex,initech" --output="html" --file="comparison.html"

# Show only differences
brand-compare --brands="acme,globex" --diff-only
```

## Output Format

### Console Output
- Tabular diff view
- Color-coded differences
- Summary statistics

### Markdown Report
- Structured comparison tables
- Token value listings
- Recommendations section

### HTML Report
- Interactive comparison interface
- Visual token previews
- Filterable results
- Exportable findings

## Integration Points
- Works with `brand-generate` for system creation
- Compatible with `brand-validate` for consistency checks
- Supports standard design token formats
- Extensible for custom token structures

## Error Handling
- Validates brand existence before comparison
- Handles missing token gracefully
- Provides clear error messages for malformed data
- Suggests corrections for common issues

## Performance Considerations
- Efficient token diffing algorithms
- Lazy loading for large brand systems
- Caching of comparison results
- Progressive report generation

## Future Enhancements
- Visual regression testing
- Component comparison
- Animation/transition comparison
- Export to design tool formats (Figma, Sketch)
- API endpoint for programmatic access
