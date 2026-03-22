---
name: design-system-preview
description: Quick preview and comparison of design systems in the browser. Use when the user wants to preview design systems, view example pages, compare multiple brands side-by-side, take screenshots, or visually inspect design tokens. Trigger when they mention "preview design system", "show example", "open in browser", "compare brands", "screenshot design", or "view design system".
---

# Design System Preview

Preview design systems in the browser with options for comparison and screenshot export.

## What This Skill Does

1. **Locate and open** example.html files in the browser
2. **Compare multiple brands** side-by-side in split view
3. **Take screenshots** of design systems for documentation
4. **Quick visual inspection** of design tokens in action
5. **Export views** for presentations or sharing

## When to Use This Skill

- Preview a newly generated design system
- Quick visual check after editing design tokens
- Compare design variations or brand options
- Create screenshots for documentation or presentations
- Show design system to stakeholders
- Verify design token changes visually
- Export design previews for brand guidelines

## Core Workflow

### Step 1: Locate Design System

Ask the user which design system to preview:

```
Which design system would you like to preview?
- Brand name (e.g., "TechCorp")
- Path to example.html
- List all available design systems
```

If they have design systems created by brand-generate, they're typically in:
`./brands/{brand-name}/example.html`

Search common locations:
- `./brands/*/example.html`
- `./design-systems/*/example.html`
- `./output/*/example.html`

### Step 2: Open in Browser

**Single Preview**

Open the example.html file in the default browser:

```bash
# macOS
open ./brands/techcorp/example.html

# Linux
xdg-open ./brands/techcorp/example.html

# Windows
start ./brands/techcorp/example.html
```

Confirm:
```
✓ Opened: TechCorp Design System
  Path: ./brands/techcorp/example.html

Browser should now show:
- Color palette
- Typography specimens
- Component examples
- Spacing system
```

**Multiple Previews (Comparison)**

If user wants to compare multiple brands:

```
Would you like to compare multiple brands?
1. Side-by-side (2 brands)
2. Grid view (4+ brands)
3. Tabbed view (switch between)
```

For comparison, open multiple browser tabs or windows:

```bash
# Open multiple tabs
open ./brands/brand-a/example.html
open ./brands/brand-b/example.html
open ./brands/brand-c/example.html
```

Or create a temporary comparison HTML file:

```html
<!DOCTYPE html>
<html>
<head>
  <title>Brand Comparison</title>
  <style>
    body { margin: 0; display: grid; grid-template-columns: repeat(auto-fit, minmax(500px, 1fr)); gap: 0; }
    iframe { width: 100%; height: 100vh; border: 1px solid #ccc; }
  </style>
</head>
<body>
  <iframe src="./brands/brand-a/example.html"></iframe>
  <iframe src="./brands/brand-b/example.html"></iframe>
</body>
</html>
```

### Step 3: Interactive Options

After opening the preview, offer:

**What would you like to do?**
1. **Screenshot** - Capture current view
2. **Compare** - Add another brand for comparison
3. **Export** - Save preview as image or PDF
4. **Inspect** - View design tokens in DevTools
5. **Share** - Generate shareable link or file

### Step 4: Take Screenshots

Use built-in screenshot tools or automate with browser tools:

**Manual (User-guided)**
```
To take a screenshot:

macOS:
- Full page: Cmd+Shift+3
- Selection: Cmd+Shift+4
- Window: Cmd+Shift+4, then Spacebar

Windows:
- Snipping Tool or Win+Shift+S

Browser DevTools:
1. Open DevTools (F12 or Cmd+Opt+I)
2. Cmd+Shift+P (Mac) or Ctrl+Shift+P (Windows)
3. Type "screenshot"
4. Select "Capture full size screenshot"
```

**Automated (using Playwright/Puppeteer)**

If available, automate screenshots:

```javascript
const { chromium } = require('playwright');

async function screenshot(htmlPath, outputPath) {
  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.goto(`file://${htmlPath}`);
  await page.screenshot({
    path: outputPath,
    fullPage: true
  });
  await browser.close();
}

// Usage
screenshot(
  './brands/techcorp/example.html',
  './brands/techcorp/preview.png'
);
```

Save screenshots to:
- `./brands/{brand-name}/preview.png`
- `./screenshots/{brand-name}-{timestamp}.png`

### Step 5: Comparison View

**Side-by-Side Comparison**

Create a comparison HTML file:

```html
<!DOCTYPE html>
<html>
<head>
  <title>Brand Comparison: TechCorp vs StellarCo</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      display: grid;
      grid-template-columns: 1fr 1fr;
      height: 100vh;
      font-family: system-ui;
    }
    .panel {
      overflow-y: auto;
      border-right: 2px solid #ddd;
    }
    .panel:last-child { border-right: none; }
    .header {
      position: sticky;
      top: 0;
      background: #f5f5f5;
      padding: 12px 20px;
      border-bottom: 1px solid #ddd;
      font-weight: 600;
    }
    iframe {
      width: 100%;
      height: calc(100vh - 45px);
      border: none;
    }
  </style>
</head>
<body>
  <div class="panel">
    <div class="header">TechCorp</div>
    <iframe src="./brands/techcorp/example.html"></iframe>
  </div>
  <div class="panel">
    <div class="header">StellarCo</div>
    <iframe src="./brands/stellarco/example.html"></iframe>
  </div>
</body>
</html>
```

Save as: `./comparison-{brand-a}-vs-{brand-b}.html`

Open:
```bash
open ./comparison-techcorp-vs-stellarco.html
```

**Grid Comparison (4+ brands)**

For comparing many brands:

```html
<style>
  body {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-auto-rows: 50vh;
    gap: 1px;
    background: #ccc;
  }
  iframe {
    width: 100%;
    height: 100%;
    border: none;
  }
</style>

<iframe src="./brands/brand-a/example.html"></iframe>
<iframe src="./brands/brand-b/example.html"></iframe>
<iframe src="./brands/brand-c/example.html"></iframe>
<iframe src="./brands/brand-d/example.html"></iframe>
```

### Step 6: Export Options

**Export as Image**
- Full page screenshot (PNG)
- Cropped sections (colors, typography, components)
- High-res for print (300 DPI)

**Export as PDF**
```
Browser: Print → Save as PDF
Settings:
- Layout: Portrait or Landscape
- Margins: None
- Background graphics: Yes
```

**Export for Sharing**
- Save comparison HTML file
- Zip design system folder
- Create shareable link (if using web server)

### Step 7: Summary and Next Steps

```
✓ Design system preview ready!

Opened:
- TechCorp Design System (./brands/techcorp/example.html)

Actions available:
1. Screenshot: Use browser DevTools or system screenshot tool
2. Compare: Add another brand for side-by-side comparison
3. Export: Save as PDF or image
4. Inspect: Open DevTools to view CSS variables
5. Share: Share HTML file or screenshots

Next steps:
- Review design tokens visually
- Compare with other brand variations
- Share preview with stakeholders
- Export screenshots for documentation
```

## Edge Cases and Error Handling

### Example.html Not Found

```
❌ Error: example.html not found for TechCorp

Searched:
- ./brands/techcorp/example.html ✗
- ./design-systems/techcorp/example.html ✗

Available design systems:
- StellarCo (./brands/stellarco/)
- NovaTech (./brands/novatech/)

Would you like to:
1. Search for all example.html files
2. Provide custom path
3. Generate design system first
```

### Browser Not Opening

```
⚠ Warning: Could not open browser automatically

Please open manually:
Path: ./brands/techcorp/example.html

Or copy this file:// URL:
file:///Users/username/project/brands/techcorp/example.html
```

### Multiple Matches

```
Found multiple design systems matching "tech":
1. TechCorp (./brands/techcorp/)
2. TechWave (./brands/techwav/)
3. NovaTech (./brands/novatech/)

Which one would you like to preview? [1-3]
```

### No Design Systems Found

```
No design systems found in common locations:
- ./brands/
- ./design-systems/
- ./output/

Would you like to:
1. Generate a new design system (use brand-generate skill)
2. Provide custom search path
3. List all HTML files in project
```

## Advanced Features

### Live Reload

Set up live preview with auto-reload on token changes:

```bash
# Using Python's simple HTTP server
cd ./brands/techcorp
python3 -m http.server 8000

# Or Node's live-server
npx live-server ./brands/techcorp --port=8000
```

Visit: `http://localhost:8000/example.html`

When tokens change, the page auto-reloads.

### Responsive Preview

Show design system at different viewport sizes:

```html
<style>
  .viewport-preview {
    display: flex;
    gap: 20px;
    padding: 20px;
    background: #f5f5f5;
  }
  .device {
    background: white;
    border: 2px solid #333;
    border-radius: 8px;
    overflow: hidden;
  }
  .device iframe {
    border: none;
    display: block;
  }
  .mobile { width: 375px; height: 667px; }
  .tablet { width: 768px; height: 1024px; }
  .desktop { width: 1440px; height: 900px; }
</style>

<div class="viewport-preview">
  <div class="device mobile">
    <iframe src="./example.html"></iframe>
  </div>
  <div class="device tablet">
    <iframe src="./example.html"></iframe>
  </div>
  <div class="device desktop">
    <iframe src="./example.html"></iframe>
  </div>
</div>
```

### Dark Mode Toggle

If design system supports dark mode:

```javascript
// Add to example.html
const toggle = document.createElement('button');
toggle.textContent = '🌓 Toggle Dark Mode';
toggle.onclick = () => {
  document.documentElement.classList.toggle('dark');
};
document.body.prepend(toggle);
```

### Token Inspector

Add interactive token inspector overlay:

```javascript
// Inspect CSS variables on hover
document.addEventListener('mouseover', (e) => {
  const styles = getComputedStyle(e.target);
  const vars = Array.from(styles).filter(p => p.startsWith('--'));
  console.table(vars.map(v => ({
    token: v,
    value: styles.getPropertyValue(v)
  })));
});
```

## Screenshot Best Practices

**Full Page Screenshot**
- Use browser DevTools: Cmd+Shift+P → "Capture full size screenshot"
- Includes entire scrollable content
- Best for documentation

**Section Screenshots**
- Crop to specific sections (colors, typography, components)
- Use for focused comparisons
- Lighter file size

**High-Resolution Export**
- Set device pixel ratio to 2x or 3x for retina displays
- Use for print materials or presentations
- Larger file size

**Comparison Screenshots**
- Side-by-side brands in same image
- Annotate differences
- Use for decision-making

## Integration with Other Skills

- **brand-generate**: Preview newly generated design systems
- **design-tokens-editor**: Preview after editing tokens
- **brand-compare**: Visual comparison of brand variations
- **design-system-export**: Export previews along with CSS/tokens

## Example Interaction

```
User: "Show me the design system for TechCorp"

Response:
Let me open the TechCorp design system preview.

1. Locating example.html...
   ✓ Found: ./brands/techcorp/example.html

2. Opening in browser...
   ✓ Browser opened with TechCorp design system

What you should see:
- Color palette (primary #0066CC, secondary, etc.)
- Typography specimens (headings, body text)
- Component examples (buttons, cards, forms)
- Spacing system visualization

Would you like to:
1. Take a screenshot
2. Compare with another brand
3. Export as PDF
4. Inspect design tokens
```

```
User: "Compare TechCorp and StellarCo side by side"

Response:
Creating side-by-side comparison view...

1. Located design systems:
   ✓ TechCorp: ./brands/techcorp/example.html
   ✓ StellarCo: ./brands/stellarco/example.html

2. Generating comparison HTML...
   ✓ Created: ./comparison-techcorp-vs-stellarco.html

3. Opening comparison view...
   ✓ Browser opened with split view

Now you can:
- Scroll both panels simultaneously (or independently)
- Compare colors, typography, spacing
- Screenshot the comparison
- Add more brands to compare

Take a screenshot? [Yes/No]
```

## Important Notes

- **Always verify** example.html exists before attempting to open
- **Use absolute paths** when opening files in browser
- **Check browser default** on the system (Chrome, Firefox, Safari, etc.)
- **Respect user preferences** for comparison layout
- **Clean up** temporary comparison HTML files after use
- **Test on multiple browsers** if design system will be used cross-browser

## Related Skills

- **brand-generate**: Creates design systems with example.html files
- **design-tokens-editor**: Edit tokens, then preview changes
- **brand-compare**: Detailed brand comparison analysis
- **design-system-export**: Export design systems for distribution
