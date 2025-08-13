-- GrowAGardenPro v1.0
local Player = game.Players.LocalPlayer
local PlayerService = game:GetService("Players")

-- ตรวจสอบว่าสคริปต์กำลังรันในสภาพแวดล้อมที่ถูกต้องหรือไม่
if not Player or not PlayerService then
    warn("Script is not running in a valid Roblox environment.")
    return
end

-- เรียกใช้โมดูลที่จำเป็นทั้งหมด
-- ใช้ WaitForChild เพื่อให้แน่ใจว่าโมดูลถูกโหลดก่อนนำไปใช้
local AdminAuth = require(script.Parent:WaitForChild("modules"):WaitForChild("adminAuth"))
local AntiKick = require(script.Parent:WaitForChild("modules"):WaitForChild("antiKick"))
local AutoBot = require(script.Parent:WaitForChild("modules"):WaitForChild("autoBot"))
local UI = require(script.Parent:WaitForChild("modules"):WaitForChild("ui"))
local MapScanner = require(script.Parent:WaitForChild("modules"):WaitForChild("mapScanner"))

-- ส่วนนี้ถูกลบออกไปเพื่อให้ทุกคนสามารถใช้สคริปต์ได้
-- (หากคุณต้องการเปิดใช้งานการตรวจสอบ admin อีกครั้ง สามารถเพิ่มโค้ดนี้กลับเข้าไปได้)
-- [[
-- if not AdminAuth.isAdmin(Player) then
--     warn("You are not authorized to use this script.")
--     return
-- end
-- ]]

-- เริ่มระบบ AntiKick
AntiKick.init()

-- เรียก UI
UI.init({
    AutoBot = AutoBot,
    MapScanner = MapScanner,
})

print("GrowAGardenPro Loaded.")
