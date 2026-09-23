# BigNoteBox Fonts CN

Chinese (Simplified and Traditional) font pack for
[BigNoteBox](https://www.curseforge.com/wow/addons/bignotebox). Adds seven extra fonts to
BigNoteBox's Simplified Chinese font picker (a zhCN client, or Chinese picked in BigNoteBox's
language setting) and four to its Traditional Chinese picker (zhTW), so Chinese users get more
choice than WoW's own Hei and Kai fonts.

Requires BigNoteBox 1.9.0 or newer (1.10.0 or newer for the Traditional Chinese picker). Install both, log in, pick a font on BigNoteBox's General tab.

## Fonts

| Name in the picker | Based on | Source | License | Picker(s) |
|---|---|---|---|---|
| WenKai SC | LXGW WenKai GB | [lxgw/LxgwWenkaiGB](https://github.com/lxgw/LxgwWenkaiGB) | OFL 1.1 | Simplified |
| WenKai TC | LXGW WenKai TC | [lxgw/LxgwWenKaiTC](https://github.com/lxgw/LxgwWenKaiTC) | OFL 1.1 | Traditional |
| Neo XiHei | LXGW Neo XiHei | [lxgw/LxgwNeoXiHei](https://github.com/lxgw/LxgwNeoXiHei) | IPA Font License 1.0 | Both |
| Neo ZhiSong | LXGW Neo ZhiSong | [lxgw/LxgwNeoZhiSong](https://github.com/lxgw/LxgwNeoZhiSong) | IPA Font License 1.0 | Both |
| Zhuque Fangsong | Zhuque Fangsong (technical preview) | [TrionesType/zhuque](https://github.com/TrionesType/zhuque) | OFL 1.1 | Both |
| Round Moon SC | YueYuan | [hiforrest/yueyuan](https://github.com/hiforrest/yueyuan) | OFL 1.1 | Simplified |
| ZCOOL KuaiLe | ZCOOL KuaiLe | [Google Fonts](https://fonts.google.com/specimen/ZCOOL+KuaiLe) | OFL 1.1 | Simplified |
| Ma Shan Zheng | Ma Shan Zheng | [Google Fonts](https://fonts.google.com/specimen/Ma+Shan+Zheng) | OFL 1.1 | Simplified |

Recommended by a Chinese user's feedback on v1.0 (ALL-44): the previous lineup (Noto Sans SC, Noto
Serif SC, Grin Sans SC and the original LXGW WenKai) is replaced by this list, keeping ZCOOL KuaiLe
and Ma Shan Zheng as the "fun" display slot, Simplified only - no Traditional-capable display font
was in the recommended list. Neo XiHei, Neo ZhiSong and Zhuque Fangsong cover both Simplified and
Traditional glyphs, so the same file joins both pickers; Round Moon SC and WenKai SC/TC are
single-script.

Repackaging (and, for some fonts, subsetting) makes a font a Modified Version under its licence,
which may not carry a Reserved Font Name. LXGW WenKai GB and YueYuan both reserve theirs, so the
copies here are renamed "WenKai SC" and "Round Moon SC", in the font files and in the picker. None
of the other fonts carry a Reserved Font Name under the name used here (WenKai TC's upstream OFL.txt
declares none, though the author asks, as a courtesy, that derivatives skip its Chinese name and
"LXGW" - honoured here too). None of these are the original fonts; get those from the links above.
See `Licenses/` for each font's terms - two are IPA Font License 1.0, not OFL.

## License

Fonts.lua and the TOC files are MIT (see `LICENSE`). Each font is licensed separately, per its own
file in `Licenses/` - OFL 1.1 for most, IPA Font License 1.0 for Neo XiHei and Neo ZhiSong.
