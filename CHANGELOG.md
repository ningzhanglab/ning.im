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
