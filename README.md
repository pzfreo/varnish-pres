# Violin Varnish Presentation

A Marp presentation on Violin Varnish: Chemistry, Colophony, and Color.

## Setup

Install dependencies:

```bash
npm install
```

## Building

### Using npm scripts:

```bash
npm run build        # Build HTML
npm run build:pdf    # Build PDF
npm run build:all    # Build both HTML and PDF
npm run watch        # Watch for changes
npm run preview      # Preview with Marp server
```

### Using Make:

```bash
make              # Build HTML (default)
make html         # Build HTML presentation
make pdf          # Build PDF presentation
make build        # Build both HTML and PDF
make watch        # Watch for changes and rebuild
make preview      # Build and open in browser
make clean        # Remove output directory
make help         # Show help message
```

## GitHub Pages Deployment

The presentation is automatically deployed to GitHub Pages when you push to the `main` branch.

### First-time setup:

1. Go to your repository Settings
2. Navigate to Pages (under "Code and automation")
3. Under "Source", select "GitHub Actions"
4. Push your changes to the `main` branch

The presentation will be available at: `https://<username>.github.io/<repository-name>/`

## Development

Edit `varnish.md` and use `npm run watch` or `make watch` to see changes in real-time.

## Output

Built files are saved in the `output/` directory:
- `output/index.html` - HTML presentation
- `output/varnish.pdf` - PDF presentation (when built)
