# BigNoteBox Fonts CN

Chinese (Simplified) font pack for [BigNoteBox](https://www.curseforge.com/wow/addons/bignotebox).
Adds six extra fonts to BigNoteBox's font picker whenever BigNoteBox's language is Simplified
Chinese (a zhCN client, or Chinese picked in BigNoteBox's language setting), so Chinese users get
more choice than WoW's own Hei and Kai fonts.

Requires BigNoteBox 1.9.0 or newer. Install both, log in, pick a font on BigNoteBox's General tab.

## Fonts

| Name in the picker | Based on | Source | License |
|---|---|---|---|
| WenKai SC | LXGW WenKai | [lxgw/LxgwWenKai](https://github.com/lxgw/LxgwWenKai) | OFL 1.1 |
| Noto Sans SC | Noto Sans SC | [Google Fonts](https://fonts.google.com/noto/specimen/Noto+Sans+SC) | OFL 1.1 |
| Grin Sans SC | Smiley Sans | [atelier-anchor/smiley-sans](https://github.com/atelier-anchor/smiley-sans) | OFL 1.1 |
| ZCOOL KuaiLe | ZCOOL KuaiLe | [Google Fonts](https://fonts.google.com/specimen/ZCOOL+KuaiLe) | OFL 1.1 |
| Ma Shan Zheng | Ma Shan Zheng | [Google Fonts](https://fonts.google.com/specimen/Ma+Shan+Zheng) | OFL 1.1 |
| Noto Serif SC | Noto Serif SC | [Google Fonts](https://fonts.google.com/noto/specimen/Noto+Serif+SC) | OFL 1.1 |

Each font is subsetted to GBK (WenKai SC, Noto Sans SC) or GB2312 (the rest) coverage, plus the
em dash and middle dot, to keep the download size down. Noto Sans SC and Noto Serif SC are static
instances cut from the upstream variable fonts.

Subsetting makes each font a Modified Version under the OFL, which may not carry a Reserved Font
Name. LXGW WenKai and Smiley Sans both reserve theirs, so the modified copies here are renamed
"WenKai SC" and "Grin Sans SC", in the font files and in the picker. They are not the original
fonts; get those from the links above. See `Licenses/` for each font's terms.

## License

Fonts.lua and the TOC files are MIT (see `LICENSE`). Each font is SIL Open Font License 1.1, per
its own file in `Licenses/`.
