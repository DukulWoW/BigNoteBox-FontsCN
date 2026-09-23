-- BigNoteBox Fonts CN
-- Chinese (Simplified) font pack for BigNoteBox. ## Dependencies: BigNoteBox,
-- so BigNoteBox is guaranteed loaded before this runs.
--
-- Preview strings are UTF-8 byte escapes (not literal characters) so this file
-- stays plain ASCII on disk, matching BigNoteBox/UI/Fonts.lua's KNOWN_PACKS block.
-- The escaped bytes spell "\228\184\173\230\150\135\229\173\151\228\189\147" = "中文字体" (Chinese font).
--
-- OFL Reserved Font Names: subsetting makes each font a Modified Version, which
-- may not use a Reserved Font Name. Two upstream fonts carry one, so both were
-- renamed, in every record of the font's name table and in the label below:
--   LXGW WenKai  (reserved: "LXGW" and its Chinese names) -> "WenKai SC"
--   Smiley Sans  (reserved: "Smiley" and its Chinese name) -> "Grin Sans SC"
-- The README credits the originals, which the license allows.

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

local FONTS = {
    { id = "wenkaisc", label = "WenKai SC",
      regular = BASE .. "WenKaiSC-Regular.ttf",
      bold    = BASE .. "WenKaiSC-Regular.ttf",
      preview = PREVIEW },
    { id = "notosanssc", label = "Noto Sans SC",
      regular = BASE .. "NotoSansSC-Regular.ttf",
      bold    = BASE .. "NotoSansSC-Bold.ttf",
      preview = PREVIEW },
    { id = "grinsanssc", label = "Grin Sans SC",
      regular = BASE .. "GrinSansSC-Regular.ttf",
      bold    = BASE .. "GrinSansSC-Regular.ttf",
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
