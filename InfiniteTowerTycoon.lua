local CurrentVersion = "Insurgent Hub | Infinite Tower Tycoon"

-- Variables
local AutoBoxs = false
local AddCash = false
local AutoButtons = false

-- Lib
local DiscordLib = loadstring(game:HttpGet"https://insurgenthub.pythonanywhere.com/GetScript/DiscordUiLibTest")()

local GUI = DiscordLib:Window(CurrentVersion)

-- Main Server
local serv = GUI:Server("Main", "rbxassetid://7775064918")

-- Auto Game
local Chnl = serv:Channel("Auto Game")

Chnl:Toggle("Auto Get Cash", false, function(state)
    AutoBoxs = state
    while AutoBoxs do
        local args = {
            [1] = "wooden crate"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))
        game:GetService("ReplicatedStorage"):WaitForChild("FirstPlayEvent"):FireServer(unpack(args))

        wait()
    end
end)

Chnl:Toggle("Auto Collect Crates", false, function(state)
    AddCash = state
    while AddCash do
        local crates = game:GetService("Workspace").CrateFolder:GetChildren()
        for i, v in ipairs(crates) do
            local player = game.Players.LocalPlayer.Character.HumanoidRootPart
            firetouchinterest(player, v, 0)
            firetouchinterest(player, v, 1)
        end
        wait()
    end
end)

Chnl:Toggle("Auto Buy Pads", false, function(state)
    AutoButtons = state
    while AutoButtons do
        local buttons = GetTycoon().BuyParts:GetChildren()
        for i, v in ipairs(buttons) do
            local player = game.Players.LocalPlayer.Character.HumanoidRootPart
            firetouchinterest(player, v, 0)
            firetouchinterest(player, v, 1)
        end
        wait()
    end
end)

-- functions
function GetTycoon()
    local tycoons = game:GetService("Workspace").Zones:GetChildren()
    for i, v in ipairs(tycoons) do
        if tostring(v.PlayerInside.Value) == tostring(game.Players.LocalPlayer) then
            return v
        end
    end
end

-- Credits Tab
local credits = GUI:Server("Credits", "")
local creditsChnl = credits:Channel("Credits")

creditsChnl:Label("Name > Bat | TrilogScripts on YouTube")
creditsChnl:Label("Skill > Developer")
creditsChnl:Label("Discord > 21xdecay")

creditsChnl:Seperator()

creditsChnl:Label("Name > Chris")
creditsChnl:Label("Skill > Developer")
creditsChnl:Label("Discord > chrissypants77")
