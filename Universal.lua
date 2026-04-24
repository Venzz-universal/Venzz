-- Venzz Hub Ultimate (Final Edition)
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua" .. "?v=" .. tick()))()

local Window = WindUI:CreateWindow({
    Title = "Venzz Hub",
    Folder = "VenzzHub",
    HideSearchBar = false,
    OpenButton = { Title = "Venzz Hub", Enabled = true, Draggable = true, Scale = 0.5 },
})

-- TAB: HOME
local HomeTab = Window:Tab({ Title = "Home" })
HomeTab:Button({ Title = "Copy Discord Link", Callback = function() setclipboard("https://discord.gg/Vn2Zg7ZvV") end })

-- FITUR NOTE / CREDITS
HomeTab:Label({
    Title = "Credits & Disclaimer",
})
HomeTab:Label({
    Title = "All scripts featured in this hub are not my own creation. I am only providing the credits to the original developers.",
})
HomeTab:Label({
    Title = "Semua script yg ada di sini bukan buatan ku yah, aku cuma kasih credit.",
})

-- TAB: TROLL TOOLS
local TrollTab = Window:Tab({ Title = "Troll Tools" })
local TargetName = ""
TrollTab:Input({
    Title = "Target Username",
    Placeholder = "Ketik username target...",
    Callback = function(v) TargetName = v end,
})
TrollTab:Button({
    Title = "Fling Target",
    Color = Color3.fromHex("#ff9900"),
    Callback = function()
        local t = game.Players:FindFirstChild(TargetName)
        if t and t.Character then
            local lp = game.Players.LocalPlayer.Character
            lp.HumanoidRootPart.CFrame = t.Character.HumanoidRootPart.CFrame
            wait(0.2)
            local bv = Instance.new("BodyVelocity", lp.HumanoidRootPart)
            bv.Velocity = Vector3.new(10000, 10000, 10000)
            wait(0.5) bv:Destroy()
        end
    end,
})
TrollTab:Button({
    Title = "Explode Target (FE)",
    Color = Color3.fromHex("#ff0000"),
    Callback = function()
        local t = game.Players:FindFirstChild(TargetName)
        if t and t.Character then
            local exp = Instance.new("Explosion", t.Character)
            exp.Position = t.Character.HumanoidRootPart.Position
        end
    end,
})

-- TAB: UNIVERSAL TOOLS
local UniTab = Window:Tab({ Title = "Universal Tools" })
local flying = false
UniTab:Toggle({
    Title = "Fly (E to Toggle)",
    Callback = function(state)
        flying = state
        local lp = game.Players.LocalPlayer
        if flying then
            local bv = Instance.new("BodyVelocity", lp.Character.HumanoidRootPart)
            bv.Name = "FlyVelocity"
            bv.MaxForce = Vector3.new(1, 1, 1) * 1e6
            bv.Velocity = Vector3.new(0, 0, 0)
            game:GetService("RunService").RenderStepped:Connect(function()
                if flying then bv.Velocity = (game.Workspace.CurrentCamera.CFrame.LookVector * 50) end
            end)
        else
            if lp.Character.HumanoidRootPart:FindFirstChild("FlyVelocity") then
                lp.Character.HumanoidRootPart.FlyVelocity:Destroy()
            end
        end
    end,
})
UniTab:Toggle({ Title = "NoClip", Callback = function(state) game:GetService("RunService").RenderStepped:Connect(function() if state and game.Players.LocalPlayer.Character then for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end end) end })

-- TAB: SCRIPT HUB
local ScriptTab = Window:Tab({ Title = "Script Hub" })
ScriptTab:Button({ Title = "Steal a Brainrot", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/irishhub-scriptzzz/Irish-hub-free-lagger/refs/heads/main/Irish%20Hub%20Free%20Lagger"))() end })
ScriptTab:Button({ Title = "Sambung Kata", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/rush-xyz/Sambung-Kata/refs/heads/main/script"))() end })

-- TAB: GAMES
local ListTab = Window:Tab({ Title = "Games" })
ListTab:Button({ Title = "MM2 Script", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/script-9209/roblox/refs/heads/main/mm2-keyless-auto"))() end })
ListTab:Button({ Title = "Blade Ball", Callback = function() loadstring(game:HttpGet("https://rawscripts.net/raw/NEW-Blade-Ball-Aim-Trainer-SP-Hub-New-Uptade-33836"))() end })

-- TAB: SETTINGS
local SettingsTab = Window:Tab({ Title = "Settings" })
SettingsTab:Button({ Title = "Destroy UI", Callback = function() Window:Destroy() end })
