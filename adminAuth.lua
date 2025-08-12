local AdminAuth = {}

local allowedUserIds = {
    152152624, -- UserId ของคุณ
}

function AdminAuth.isAdmin(player)
    for _, id in pairs(allowedUserIds) do
        if player.UserId == id then
            return true
        end
    end
    return false
end

return AdminAuth
