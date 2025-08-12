local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local UI = {}

local AutoBot, MapScanner

function UI.init(deps)
    AutoBot = deps.AutoBot
    MapScanner = deps.MapScanner

    local Window = OrionLib:MakeWindow({
        Name = "GrowAGardenPro v1.0",
        HidePremium = true,
        IntroText = "GrowAGardenPro",
        SaveConfig = true,
        ConfigFolder = "GrowAGardenProConfig"
    })

    local mainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    mainTab:AddToggle({
        Name = "Enable AutoBot",
        Default = false,
        Flag = "AutoBotEnabled",
        Callback = function(value)
            if value then
                AutoBot.start()
            else
                AutoBot.stop()
            end
        end
    })

    mainTab:AddButton({
        Name = "Scan Map",
        Callback = function()
            MapScanner.scan()
        end
    })

    mainTab:AddButton({
        Name = "Save Config",
        Callback = function()
            OrionLib:SaveConfig()
        end
    })

    local settingsTab = Window:MakeTab({
        Name = "Settings",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    settingsTab:AddSlider({
        Name = "AutoBot Delay",
        Min = 0.1,
        Max = 5,
        Default = 1,
        Increment = 0.1,
        Flag = "AutoBotDelay",
        Callback = function(value)
            AutoBot.Delay = value
        end
    })

    settingsTab:AddToggle({
        Name = "Enable AntiKick",
        Default = true,
        Flag = "AntiKickEnabled",
        Callback = function(value)
            if value then
                -- เราเรียก AntiKick.init() จาก main.lua อยู่แล้ว
            else
                -- ใส่โค้ดปิดระบบถ้ามีในอนาคต
            end
        end
    })

    OrionLib:Init()
end

return UI
