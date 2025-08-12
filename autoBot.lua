local AutoBot = {}

AutoBot.Enabled = false
AutoBot.Delay = 1

function AutoBot.start()
    AutoBot.Enabled = true
    spawn(function()
        while AutoBot.Enabled do
            -- ตัวอย่าง AutoFarm: หาวัตถุที่ชื่อ "Fruit" ใน Workspace แล้วเก็บ
            for _, obj in pairs(workspace:GetChildren()) do
                if obj.Name == "Fruit" and obj:IsA("Part") then
                    local plr = game.Players.LocalPlayer
                    if plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                        plr.Character.HumanoidRootPart.CFrame = obj.CFrame
                        wait(0.2)
                        firetouchinterest(plr.Character.HumanoidRootPart, obj, 0)
                        wait(0.2)
                        firetouchinterest(plr.Character.HumanoidRootPart, obj, 1)
                    end
                end
            end
            wait(AutoBot.Delay)
        end
    end)
end

function AutoBot.stop()
    AutoBot.Enabled = false
end

return AutoBot
