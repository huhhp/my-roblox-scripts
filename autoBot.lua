local AutoBot = {}

AutoBot.Enabled = false
AutoBot.Delay = 1

function AutoBot.start()
    AutoBot.Enabled = true
    task.spawn(function()
        while AutoBot.Enabled do
            -- ตัวอย่าง AutoFarm: หาวัตถุที่ชื่อ "Fruit" ใน Workspace แล้วเก็บ
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj.Name == "Fruit" and obj:IsA("Part") then
                    local plr = game.Players.LocalPlayer
                    if plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                        -- โค้ดสำหรับ teleport และเก็บไอเทม
                        plr.Character.HumanoidRootPart.CFrame = obj.CFrame
                        task.wait(0.2)
                        firetouchinterest(plr.Character.HumanoidRootPart, obj, 0)
                        task.wait(0.2)
                        firetouchinterest(plr.Character.HumanoidRootPart, obj, 1)
                        break -- เก็บแล้วก็หยุดเพื่อไปหาชิ้นต่อไป
                    end
                end
            end
            task.wait(AutoBot.Delay)
        end
    end)
end

function AutoBot.stop()
    AutoBot.Enabled = false
end

return AutoBot
