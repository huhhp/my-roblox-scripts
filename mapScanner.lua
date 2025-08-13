-- mapScanner.lua
local MapScanner = {}

function MapScanner.scan()
    local mapItems = {}
    print("Scanning map for items...")
    
    -- วนลูปผ่านทุกอย่างใน workspace
    for _, item in ipairs(game.Workspace:GetChildren()) do
        -- ตัวอย่าง: ตรวจสอบว่า item มีชื่อเฉพาะเจาะจงหรือไม่
        if string.find(item.Name, "Farmable") then
            table.insert(mapItems, item)
        end
    end
    print("Found", #mapItems, "items on the map.")
    return mapItems
end

return MapScanner
