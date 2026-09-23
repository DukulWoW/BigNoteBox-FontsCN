-- BigNoteBox Fonts CN
-- Chinese (Simplified) font pack for BigNoteBox. ## Dependencies: BigNoteBox,
-- so BigNoteBox is guaranteed loaded before this runs.
--
-- Preview strings are UTF-8 byte escapes (not literal characters) so this file
-- stays plain ASCII on disk, matching BigNoteBox/UI/Fonts.lua's KNOWN_PACKS block.
-- The escaped bytes spell "\228\184\173\230\150\135\229\173\151\228\189\147" = "中文字体" (Chinese font).
--
-- OFL Reserved Font Names: subsetting or repackaging makes each font a Modified
-- Version, which may not use a Reserved Font Name. Renamed in every record of the
-- font's name table and in the label below:
--   LXGW WenKai GB (reserved: "LXGW", "霞鹜"/"落霞孤鹜") -> "WenKai SC"
--   YueYuan        (reserved: "yueyuan", "LXGW", "Dongle") -> "Round Moon SC"
-- Not renamed (no upstream Reserved Font Name found for the name actually used):
--   LXGW Neo XiHei / Neo ZhiSong are IPA Font License 1.0, not OFL - that licence
--   instead bans "IPA" appearing in a derived name, which neither uses.
--   Zhuque Fangsong (technical preview) reserves nothing itself; its Latin/Cyrillic/
--   Greek component (Alegreya) reserves "Alegreya"/"Alegreya SC", neither of which
--   appears in this name either. The "(technical preview)" suffix was dropped as a
--   cosmetic trim only.
-- The README credits every original, which each licence allows.

local BASE = "Interface\\AddOns\\BigNoteBox_FontsCN\\Fonts\\"
local PREVIEW = "\228\184\173\230\150\135\229\173\151\228\189\147 Aa Bb"

-- RegisterFontPack first shipped in BigNoteBox 1.9.0. On an older BigNoteBox,
-- say so once in chat instead of raising a Lua error on every login.
if not (BigNoteBox and BigNoteBox.RegisterFontPack) then
    local msg = (GetLocale() == "zhCN")
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
-- Neo ZhiSong, Zhuque Fangsong and Round Moon SC, per a Chinese user's font
-- recommendations (ALL-44). ZCOOL KuaiLe and Ma Shan Zheng stay as the display
-- ("fun") slot. LXGW WenKai TC ships alongside these files once BigNoteBox's
-- zhTW font set exists (ALL-44 next step) - not registered here yet.
local FONTS = {
    { id = "wenkaisc", label = "WenKai SC",
      regular = BASE .. "WenKaiSC-Regular.ttf",
      bold    = BASE .. "WenKaiSC-Regular.ttf",
      preview = PREVIEW },
    { id = "neoxihei", label = "Neo XiHei",
      regular = BASE .. "NeoXiHei-Regular.ttf",
      bold    = BASE .. "NeoXiHei-Regular.ttf",
      preview = PREVIEW },
    { id = "neozhisong", label = "Neo ZhiSong",
      regular = BASE .. "NeoZhiSong-Regular.ttf",
      bold    = BASE .. "NeoZhiSong-Regular.ttf",
      preview = PREVIEW },
    { id = "zhuquefangsong", label = "Zhuque Fangsong",
      regular = BASE .. "ZhuqueFangsong-Regular.ttf",
      bold    = BASE .. "ZhuqueFangsong-Regular.ttf",
      preview = PREVIEW },
    { id = "roundmoonsc", label = "Round Moon SC",
      regular = BASE .. "RoundMoonSC-Regular.ttf",
      bold    = BASE .. "RoundMoonSC-Regular.ttf",
      preview = PREVIEW },
    { id = "zcoolkuaile", label = "ZCOOL KuaiLe",
      regular = BASE .. "ZCOOLKuaiLe-Regular.ttf",
      bold    = BASE .. "ZCOOLKuaiLe-Regular.ttf",
      preview = PREVIEW },
    { id = "mashanzheng", label = "Ma Shan Zheng",
      regular = BASE .. "MaShanZheng-Regular.ttf",
      bold    = BASE .. "MaShanZheng-Regular.ttf",
      preview = PREVIEW },
}

BigNoteBox.RegisterFontPack({
    id    = "fontscn",
    addon = "BigNoteBox_FontsCN",
    set   = "hans",
    fonts = FONTS,
})

-- Also register with LibSharedMedia-3.0, LibStub-guarded, so other addons
-- (BigChatBox, WeakAuras, etc.) can use these fonts too. No hard dependency:
-- if LSM is not present, this is skipped. BNB's own lsmFonts opt-in dedupes
-- against bundled font paths, so these do not appear twice in BNB's picker.
local LSM = LibStub and LibStub("LibSharedMedia-3.0", true)
if LSM then
    for _, def in ipairs(FONTS) do
        LSM:Register("font", def.label, def.regular)
    end
end
