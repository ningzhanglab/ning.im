# Change log

## 2026-11-10 — Repository cleanup

### Removed
- Junk files: `.DS_Store`, `.Rhistory`, `css/.Rhistory`, `folder/.DS_Store`
- Stray template file `2023-02-07-mu-ban.md`
- Duplicate `images/favicon.ico` (identical to root `favicon.ico`)
- Unreferenced `images/logo-tinytex.png` and root `logo.png`

### Changed
- `_redirects`: dropped the yihui.org rules; now only `/logo.png` -> `/images/logo.png`
- `cv/index.html`: fixed RSS link `/CV/index.xml` -> `/cv/index.xml`

### Added
- `.gitignore`, `README.md`, this `CHANGELOG.md`

### Kept on purpose
- Duplicate pages (`/about/`, `/en/1/01/about/`, `/cn/1/01/`, `/cn/2016/05/about/`,
  `/cn/about/2016/05/about/`) are left in place.

## 2026-11-10 — `dev` branch: Hugo source project

- Replaced the committed HTML output with the Hugo source (`config.yaml`, `content/`,
  `layouts/`, `static/`, vendored `themes/hugo-ivy/`).
- Built with Hugo 0.110.0: output matches `main` file for file, byte for byte.
- `layouts/partials/menu_extra.html`: RSS link now lower-cased (`/cv/index.xml`).
- Removed `Rhistory` / `.DS_Store` files, `public/`, `resources/`, `config copy.txt`.
- Duplicate pages from `main` are kept under `static/`.
- Removed Netlify files (`netlify.toml`, `_redirects`): the site is served by GitHub Pages.
- Added GitHub Actions: build check for `dev`/PRs and a Pages deploy workflow for `main`.
- Hosting moves to Cloudflare Pages: removed the GitHub Pages deploy workflow and
  restored `static/_redirects` (`/logo.png` -> `/images/logo.png`).
