-- BigNoteBox Fonts CN
-- Chinese (Simplified + Traditional) font pack for BigNoteBox. ## Dependencies:
-- BigNoteBox, so BigNoteBox is guaranteed loaded before this runs.
--
-- Preview strings are UTF-8 byte escapes (not literal characters) so this file
-- stays plain ASCII on disk, matching BigNoteBox/UI/Fonts.lua's KNOWN_PACKS block.
-- PREVIEW_SC spells "\228\184\173\230\150\135\229\173\151\228\189\147" = "中文字体"
-- (Chinese font, Simplified). PREVIEW_TC spells the Traditional form "中文字體".
--
-- OFL Reserved Font Names: subsetting or repackaging makes each font a Modified
-- Version, which may not use a Reserved Font Name. Renamed in every record of the
-- font's name table and in the label below:
--   LXGW WenKai GB (reserved: "LXGW", "霞鹜"/"落霞孤鹜") -> "WenKai SC"
--   YueYuan        (reserved: "yueyuan", "LXGW", "Dongle") -> "Round Moon SC"
-- Not renamed (no Reserved Font Name found for the name actually used):
--   LXGW WenKai TC declares no Reserved Font Name in its OFL.txt (the author asks,
--   as a courtesy, that derivatives skip "霞鶩"/"LXGW"/"落霞孤鶩", which this does).
--   LXGW Neo XiHei / Neo ZhiSong are IPA Font License 1.0, not OFL - that licence
--   instead bans "IPA" appearing in a derived name, which neither uses.
--   Zhuque Fangsong (technical preview) reserves nothing itself; its Latin/Cyrillic/
--   Greek component (Alegreya) reserves "Alegreya"/"Alegreya SC", neither of which
--   appears in this name either. The "(technical preview)" suffix was dropped as a
--   cosmetic trim only.
-- The README credits every original, which each licence allows.
--
-- Two sets, two RegisterFontPack calls: BigNoteBox.RegisterFontPack is one set per
-- call and font ids must be unique across BNB, so the three dual-script fonts
-- (Neo XiHei, Neo ZhiSong, Zhuque Fangsong) are registered twice under different
-- ids, once per set, both times pointing at the same file - there is only one
-- physical copy of each on disk.

local BASE = "Interface\\AddOns\\BigNoteBox_FontsCN\\Fonts\\"
local PREVIEW_SC = "\228\184\173\230\150\135\229\173\151\228\189\147 Aa Bb"
local PREVIEW_TC = "\228\184\173\230\150\135\229\173\151\233\171\148 Aa Bb"

-- RegisterFontPack first shipped in BigNoteBox 1.9.0. On an older BigNoteBox,
-- say so once in chat instead of raising a Lua error on every login.
if not (BigNoteBox and BigNoteBox.RegisterFontPack) then
    local msg = (GetLocale() == "zhCN" or GetLocale() == "zhTW")
        -- "BigNoteBox Chinese font pack needs BigNoteBox 1.9.0 or newer, please update BigNoteBox."
        and "BigNoteBox \228\184\173\230\150\135\229\173\151\228\189\147\229\140\133\233\156\128\232\166\129 BigNoteBox 1.9.0 \230\136\150\230\155\180\233\171\152\231\137\136\230\156\172\239\188\140\232\175\183\230\155\180\230\150\176 BigNoteBox\227\128\130"
        or "BigNoteBox Fonts CN needs BigNoteBox 1.9.0 or newer. Please update BigNoteBox."
    local f = CreateFrame("Frame")
    f:RegisterEvent("PLAYER_LOGIN")
    f:SetScript("OnEvent", function()
        print("|cff66bb6aBigNoteBox Fonts CN:|r " .. msg)
    end)
    return
end

-- v1.1: replaced WenKai SC's upstream (old LXGW WenKai -> LXGW WenKai GB, same
-- rename), dropped Noto Sans SC / Noto Serif SC / Grin Sans SC, added Neo XiHei,
-- Neo ZhiSong, Zhuque Fangsong, Round Moon SC and WenKai TC, per a Chinese user's
-- font recommendations (ALL-44). ZCOOL KuaiLe and Ma Shan Zheng stay as the
-- display ("fun") slot, Simplified only - no Traditional-capable display font was
-- in the recommended list. Also adds BigNoteBox's "hant" (Traditional Chinese) set.
local FONTS_SC = {
    { id = "wenkaisc", label = "WenKai SC",
      regular = BASE .. "WenKaiSC-Regular.ttf",
      bold    = BASE .. "WenKaiSC-Regular.ttf",
      preview = PREVIEW_SC },
    { id = "neoxihei", label = "Neo XiHei",
      regular = BASE .. "NeoXiHei-Regular.ttf",
      bold    = BASE .. "NeoXiHei-Regular.ttf",
      preview = PREVIEW_SC },
    { id = "neozhisong", label = "Neo ZhiSong",
      regular = BASE .. "NeoZhiSong-Regular.ttf",
      bold    = BASE .. "NeoZhiSong-Regular.ttf",
      preview = PREVIEW_SC },
    { id = "zhuquefangsong", label = "Zhuque Fangsong",
      regular = BASE .. "ZhuqueFangsong-Regular.ttf",
      bold    = BASE .. "ZhuqueFangsong-Regular.ttf",
      preview = PREVIEW_SC },
    { id = "roundmoonsc", label = "Round Moon SC",
      regular = BASE .. "RoundMoonSC-Regular.ttf",
      bold    = BASE .. "RoundMoonSC-Regular.ttf",
      preview = PREVIEW_SC },
    { id = "zcoolkuaile", label = "ZCOOL KuaiLe",
      regular = BASE .. "ZCOOLKuaiLe-Regular.ttf",
      bold    = BASE .. "ZCOOLKuaiLe-Regular.ttf",
      preview = PREVIEW_SC },
    { id = "mashanzheng", label = "Ma Shan Zheng",
      regular = BASE .. "MaShanZheng-Regular.ttf",
      bold    = BASE .. "MaShanZheng-Regular.ttf",
      preview = PREVIEW_SC },
}

-- Same three dual-script files as FONTS_SC above (different ids, same paths) plus
-- WenKai TC, which has no Simplified glyphs so it only joins the "hant" set.
local FONTS_TC = {
    { id = "wenkaitc", label = "WenKai TC",
      regular = BASE .. "WenKaiTC-Regular.ttf",
      bold    = BASE .. "WenKaiTC-Regular.ttf",
      preview = PREVIEW_TC },
    { id = "neoxihei_tw", label = "Neo XiHei",
      regular = BASE .. "NeoXiHei-Regular.ttf",
      bold    = BASE .. "NeoXiHei-Regular.ttf",
      preview = PREVIEW_TC },
    { id = "neozhisong_tw", label = "Neo ZhiSong",
      regular = BASE .. "NeoZhiSong-Regular.ttf",
      bold    = BASE .. "NeoZhiSong-Regular.ttf",
      preview = PREVIEW_TC },
    { id = "zhuquefangsong_tw", label = "Zhuque Fangsong",
      regular = BASE .. "ZhuqueFangsong-Regular.ttf",
      bold    = BASE .. "ZhuqueFangsong-Regular.ttf",
      preview = PREVIEW_TC },
}

BigNoteBox.RegisterFontPack({
    id    = "fontscn",
    addon = "BigNoteBox_FontsCN",
    set   = "hans",
    fonts = FONTS_SC,
})

BigNoteBox.RegisterFontPack({
    id    = "fontscntw",
    addon = "BigNoteBox_FontsCN",
    set   = "hant",
    fonts = FONTS_TC,
})

-- Also register with LibSharedMedia-3.0, LibStub-guarded, so other addons
-- (BigChatBox, WeakAuras, etc.) can use these fonts too. No hard dependency:
-- if LSM is not present, this is skipped. BNB's own lsmFonts opt-in dedupes
-- against bundled font paths, so these do not appear twice in BNB's picker.
-- Registering the same label+path twice (once per set, for the dual-script fonts)
-- is harmless - LSM keys by name, so the second call just re-sets the same path.
local LSM = LibStub and LibStub("LibSharedMedia-3.0", true)
if LSM then
    for _, def in ipairs(FONTS_SC) do
        LSM:Register("font", def.label, def.regular)
    end
    for _, def in ipairs(FONTS_TC) do
        LSM:Register("font", def.label, def.regular)
    end
end
