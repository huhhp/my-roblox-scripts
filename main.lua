-- GrowAGardenPro v1.0
local Player = game.Players.LocalPlayer

local AdminAuth = require(script.modules.adminAuth)
local AntiKick = require(script.modules.antiKick)
local AutoBot = require(script.modules.autoBot)
local UI = require(script.modules.ui)
local MapScanner = require(script.modules.mapScanner)

-- โค้ดตรวจสอบสิทธิ์ admin ถูกลบออกไป เพื่อให้สคริปต์ทำงานต่อได้เลย

-- เริ่มระบบ AntiKick
AntiKick.init()

-- เรียก UI
UI.init({
    AutoBot = AutoBot,
    MapScanner = MapScanner,
})

print("GrowAGardenPro Loaded.")
