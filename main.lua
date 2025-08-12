-- GrowAGardenPro v1.0
local Player = game.Players.LocalPlayer

local AdminAuth = require(script.modules.adminAuth)
local AntiKick = require(script.modules.antiKick)
local AutoBot = require(script.modules.autoBot)
local UI = require(script.modules.ui)
local MapScanner = require(script.modules.mapScanner)

-- ตรวจสิทธิ์ก่อนใช้งาน
if not AdminAuth.isAdmin(Player) then
    warn("You are not authorized to use this script.")
    return
end

-- เริ่มระบบ AntiKick
AntiKick.init()

-- เรียก UI
UI.init({
    AutoBot = AutoBot,
    MapScanner = MapScanner,
})

print("GrowAGardenPro Loaded.")
