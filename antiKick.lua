local AntiKick = {}

local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local newNamecall

function AntiKick.init()
    setreadonly(mt, false)
    newNamecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        local args = {...}

        if method == "Kick" then
            print("Kick blocked.")
            return
        end

        if tostring(self) == "KickEvent" then
            print("Kick event blocked.")
            return
        end

        return oldNamecall(self, unpack(args))
    end)
    mt.__namecall = newNamecall
    setreadonly(mt, true)
end

return AntiKick
