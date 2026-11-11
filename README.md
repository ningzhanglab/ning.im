# ning.im

Personal website of Ning Zhang, <https://ning.im>. Built with [Hugo](https://gohugo.io)
**0.110.0 (extended)** and the vendored `hugo-ivy` theme.

## Layout

| Path | Purpose |
|------|---------|
| `config.yaml` | Site config: menu, permalinks, params |
| `content/` | Markdown sources: `en/`, `cn/`, `CV/` |
| `layouts/` | Site-level overrides of the theme (comments, menu, head, ...) |
| `static/` | Copied as-is: `css/custom.css`, `images/`, `folder/CV.pdf`, `favicon.ico`, `_redirects` |
| `static/{about,cn,en}/...` | Older duplicate pages kept on purpose so their URLs keep working |
| `themes/hugo-ivy/` | Theme (vendored copy) |
| `R/`, `.Rprofile`, `blog.Rproj` | RStudio / blogdown project files |
| `.github/workflows/build.yml` | Build check on `dev` and PRs |
| `wrangler.jsonc`, `build.sh` | Cloudflare Worker config and build script |

## Writing

Add a Markdown file, e.g. `content/cn/my-post.md`:

```
---
title: Post title
date: '2026-11-10'
---

Body text.
```

Preview with RStudio (blogdown "Serve Site") or `hugo server`.
`hugo` writes the site to `public/` (git-ignored).

## Deployment

Hosted on a **Cloudflare Worker** (`ning-im`, static assets only), connected to this repo
with Workers Builds:

- Build command: `bash build.sh` (installs Hugo 0.110.0 if needed, writes `public/`)
- Deploy command: `npx wrangler deploy` (reads `wrangler.jsonc`)

`static/_redirects` is copied into `public/` and applied by Cloudflare.
