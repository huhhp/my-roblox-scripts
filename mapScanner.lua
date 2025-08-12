local MapScanner = {}

function MapScanner.scan()
    local report = {}

    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") and part.CanCollide == false then
            table.insert(report, "Non-collidable part: "..part.Name)
        end
    end

    print("Map Scan Report:")
    for _, line in pairs(report) do
        print(line)
    end
end

return MapScanner
