-- Roblox ESP script
local function createESP(player)
    local espBox = Instance.new("BoxHandleAdornment")
    espBox.Size = player.Size
    espBox.Adornee = player
    espBox.AlwaysOnTop = true
    espBox.ZIndex = 5
    espBox.Color3 = Color3.new(1, 0, 0) -- Red color for visibility

    espBox.Parent = player
end

-- Loop through all players to create ESP
for _, player in pairs(game:GetService("Players"):GetPlayers()) do
    createESP(player)
end

-- Handle new players joining
game:GetService("Players").PlayerAdded:Connect(function(player)
    createESP(player)
end)
