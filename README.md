# Markiee corporate site

Corporate homepage for [markiee.co](https://markiee.co), published from this repository with GitHub Pages.

## Local development

```bash
docker compose up --build
```

Open [http://localhost:4000](http://localhost:4000). Jekyll live reload is available on port `35729`.

## Site structure

- `index.html` — corporate homepage
- `_layouts/` — shared page shells
- `_includes/` — metadata, navigation, footer, and JavaScript
- `style.css` — complete responsive visual system
- `assets/brand/` — Markiee SVG wordmark and favicon
- `privacy-policy.md`, `terms-of-use.md` — legal pages
- `CNAME` — custom GitHub Pages domain

## Publishing

GitHub Pages publishes the repository root on `main`. Keep `CNAME` set to `markiee.co`.

The workspace policy requires Git history and remote updates to be performed by the repository owner.
