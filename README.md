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
- `robots.txt` — crawl policy for search engines and AI crawlers
- `CNAME` — custom GitHub Pages domain

## Search engines and AI crawlers

Jekyll renders `robots.txt` as plain text at `/robots.txt`, with the canonical
sitemap URL derived from `url` and `baseurl` in `_config.yml`. The existing
`jekyll-sitemap` plugin generates `/sitemap.xml` for both English and Vietnamese
pages and respects this custom robots file.

The `User-agent: *` policy allows all public pages and rendering assets to be
crawled, including by Googlebot, Bingbot, OpenAI's OAI-SearchBot, Anthropic's
Claude-SearchBot, and PerplexityBot. It preserves the site's existing open crawl
policy, including access for training crawlers. AI search and model-training
controls are distinct; any future training opt-out should preserve access for
search crawlers.

After publishing, verify `/robots.txt` returns HTTP 200 as `text/plain`, and
`/sitemap.xml` returns valid XML with canonical `https://markiee.co/` URLs.
The sitemap can also be submitted in Google Search Console and Bing Webmaster
Tools. Crawl access enables discovery; indexing, ranking, and AI citations are
determined by each service.

References: [Google's robots.txt specification](https://developers.google.com/crawling/docs/robots-txt/create-robots-txt),
[OpenAI crawlers](https://developers.openai.com/api/docs/bots),
[Anthropic crawlers](https://support.claude.com/en/articles/8896518-does-anthropic-crawl-data-from-the-web-and-how-can-site-owners-block-the-crawler),
[Perplexity crawlers](https://docs.perplexity.ai/docs/resources/perplexity-crawlers).

## Publishing

GitHub Pages publishes the repository root on `main`. Keep `CNAME` set to `markiee.co`.

The workspace policy requires Git history and remote updates to be performed by the repository owner.
