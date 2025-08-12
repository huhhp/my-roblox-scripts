-- URL พื้นฐานของโมดูล (แก้เป็นของคุณ)
local baseURL = "https://raw.githubusercontent.com/huhhp/my-roblox-scripts/main/modules/"

-- ฟังก์ชันโหลดโมดูลจาก GitHub
local function loadModule(filename)
    local url = baseURL .. filename
    local success, result = pcall(function()
        return game:HttpGet(url)
    end)
    if success then
        return loadstring(result)()
    else
        warn("Failed to load module: " .. filename)
        return nil
    end
end

-- โหลดโมดูลที่ต้องการ
local AdminAuth = loadModule("adminAuth.lua")
local AntiKick = loadModule("antiKick.lua")
local AutoBot = loadModule("autoBot.lua")
local UI = loadModule("ui.lua")
local MapScanner = loadModule("mapScanner.lua")

-- เรียกใช้งานโมดูลหรือเริ่มระบบได้เลย
print("All modules loaded!")

-- ตัวอย่างเรียกฟังก์ชันใน AdminAuth
if AdminAuth and AdminAuth.isAdmin(game.Players.LocalPlayer) then
    print("You are an admin!")
else
    print("You are NOT an admin.")
end

-- เริ่ม UI
if UI and UI.Init then
    UI.Init()
end

-- เรียกใช้โมดูลอื่นๆ ตามที่ต้องการต่อได้เลย
