# ning.im

Personal website of Ning Zhang, served at <https://ning.im>.

This repository holds the **built output** of a Hugo (hugo-lithium theme) / blogdown
site, deployed as-is. The Hugo source (`content/`, `config`, theme) is not stored here.

## Layout

| Path | Purpose |
|------|---------|
| `index.html`, `index.xml` | Home page and RSS feed |
| `en/` | English blog (`en/about/`, `en/2017/01/papers/`) |
| `cn/` | Chinese blog (`cn/about/`) |
| `cv/` | CV page; PDF lives in `folder/CV.pdf` |
| `categories/`, `tags/` | Taxonomy pages |
| `css/` | `style.css` (theme), `fonts.css`, `custom.css` (site overrides) |
| `images/` | `logo.png` |
| `layouts/partials/comments.html` | Giscus comments partial (Hugo template source, not served) |
| `404.html`, `sitemap.xml`, `robots.txt`, `favicon.ico` | Site-level files |
| `_redirects` | Redirect rules |
| `CHANGELOG.md` | Log of structural changes |

Editing the generated HTML directly will be overwritten on the next Hugo build;
change the source project instead.
