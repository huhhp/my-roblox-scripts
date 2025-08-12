local AdminAuth = {}

local allowedUserIds = {
    14036267, -- UserId ของคุณ (เปลี่ยนเป็นจริงตามที่เคยส่ง)
}

function AdminAuth.isAdmin(player)
    for _, id in pairs(allowedUserIds) do
        if player.UserId == id then return true end
    end
    return false
end

return AdminAuth
