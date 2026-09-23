-- BigNoteBox Fonts CN
-- Chinese (Simplified) font pack for BigNoteBox. ## Dependencies: BigNoteBox,
-- so BigNoteBox and BNB.RegisterFontPack are guaranteed loaded before this runs.
--
-- Preview strings are UTF-8 byte escapes (not literal characters) so this file
-- stays plain ASCII on disk, matching BigNoteBox/UI/Fonts.lua's KNOWN_PACKS block.
-- The escaped bytes spell "\228\184\173\230\150\135\229\173\151\228\189\147" = "中文字体" (Chinese font).

local BASE = "Interface\\AddOns\\BigNoteBox_FontsCN\\Fonts\\"
local PREVIEW = "\228\184\173\230\150\135\229\173\151\228\189\147 Aa Bb"

BigNoteBox.RegisterFontPack({
    id    = "fontscn",
    addon = "BigNoteBox_FontsCN",
    set   = "hans",
    fonts = {
        -- LXGW WenKai. Upstream Reserved Font Name is "LXGW"; this subset's
        -- internal name table was renamed to "WenKai SC" to stay OFL-compliant
        -- (subsetting is a Modified Version, and this isn't the license's
        -- web-font-delivery carve-out for keeping the reserved name).
        { id = "wenkaisc", label = "LXGW WenKai",
          regular = BASE .. "WenKaiSC-Regular.ttf",
          bold    = BASE .. "WenKaiSC-Regular.ttf",
          preview = PREVIEW },
        { id = "notosanssc", label = "Noto Sans SC",
          regular = BASE .. "NotoSansSC-Regular.ttf",
          bold    = BASE .. "NotoSansSC-Bold.ttf",
          preview = PREVIEW },
        { id = "smileysans", label = "Smiley Sans",
          regular = BASE .. "SmileySans-Regular.ttf",
          bold    = BASE .. "SmileySans-Regular.ttf",
          preview = PREVIEW },
        { id = "zcoolkuaile", label = "ZCOOL KuaiLe",
          regular = BASE .. "ZCOOLKuaiLe-Regular.ttf",
          bold    = BASE .. "ZCOOLKuaiLe-Regular.ttf",
          preview = PREVIEW },
        { id = "mashanzheng", label = "Ma Shan Zheng",
          regular = BASE .. "MaShanZheng-Regular.ttf",
          bold    = BASE .. "MaShanZheng-Regular.ttf",
          preview = PREVIEW },
        { id = "notoserifsc", label = "Noto Serif SC",
          regular = BASE .. "NotoSerifSC-Regular.ttf",
          bold    = BASE .. "NotoSerifSC-Regular.ttf",
          preview = PREVIEW },
    },
})
