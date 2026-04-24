-- Venzz Hub Ultimate Edition (Updated)
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

-- TAB: SCRIPT HUB
local ScriptTab = Window:Tab({ Title = "Script Hub" })
ScriptTab:Button({ Title = "FPS Booster", Callback = function() loadstring(game:HttpGet("https://pastefy.app/WiFxsh46/raw"))() end })
ScriptTab:Button({ Title = "Steal a Brainrot", Color = Color3.fromHex("#ff0000"), Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/irishhub-scriptzzz/Irish-hub-free-lagger/refs/heads/main/Irish%20Hub%20Free%20Lagger"))() end })
ScriptTab:Button({ Title = "Freeze All", Color = Color3.fromHex("#ff00ff"), Callback = function() for _,v in pairs(game.Players:GetPlayers()) do if v ~= game.Players.LocalPlayer and v.Character then v.Character.HumanoidRootPart.Anchored = true end end end })
ScriptTab:Button({ Title = "Unfreeze All", Color = Color3.fromHex("#00ffff"), Callback = function() for _,v in pairs(game.Players:GetPlayers()) do if v.Character then v.Character.HumanoidRootPart.Anchored = false end end end })

-- TAB: TROLL TOOLS
local TrollTab = Window:Tab({ Title = "Troll Tools" })
local TargetPlayer = nil
local PlayersList = {}
local function UpdatePlayers()
    PlayersList = {}
    for _, v in pairs(game.Players:GetPlayers()) do if v ~= game.Players.LocalPlayer then table.insert(PlayersList, v.Name) end end
    return PlayersList
end

TrollTab:Dropdown({ Title = "Select Target", Options = UpdatePlayers(), Callback = function(v) TargetPlayer = v end })
TrollTab:Button({ Title = "Refresh List", Callback = function() TrollTab:UpdateDropdown("Select Target", UpdatePlayers()) end })
TrollTab:Button({ Title = "Fling Target", Color = Color3.fromHex("#ff9900"), Callback = function() if TargetPlayer then local t = game.Players[TargetPlayer].Character local lp = game.Players.LocalPlayer.Character lp.HumanoidRootPart.CFrame = t.HumanoidRootPart.CFrame wait(0.1) local bv = Instance.new("BodyVelocity", lp.HumanoidRootPart) bv.Velocity = Vector3.new(9000, 9000, 9000) wait(0.5) bv:Destroy() end end })
TrollTab:Button({ Title = "Explode Target (FE)", Color = Color3.fromHex("#ff0000"), Callback = function() if TargetPlayer then local t = game.Players[TargetPlayer].Character local exp = Instance.new("Explosion", t) exp.Position = t.HumanoidRootPart.Position end end })

-- TAB: UNIVERSAL TOOLS
local UniTab = Window:Tab({ Title = "Universal Tools" })
UniTab:Slider({ Title = "WalkSpeed", Min = 16, Max = 200, Default = 16, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end })
UniTab:Slider({ Title = "JumpPower", Min = 50, Max = 500, Default = 50, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end })
UniTab:Toggle({ Title = "NoClip", Callback = function(state) game:GetService("RunService").RenderStepped:Connect(function() if state and game.Players.LocalPlayer.Character then for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end end) end })
UniTab:Toggle({ Title = "Overhead ESP", Callback = function(state) for _,v in pairs(game.Players:GetPlayers()) do if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") then if state then local bg = Instance.new("BillboardGui", v.Character.Head) bg.Name = "EspTag" bg.Size = UDim2.new(0, 100, 0, 50) bg.StudsOffset = Vector3.new(0, 2, 0) bg.AlwaysOnTop = true local tl = Instance.new("TextLabel", bg) tl.Text = v.Name tl.Size = UDim2.new(1, 0, 1, 0) tl.BackgroundTransparency = 1 tl.TextColor3 = Color3.new(1, 1, 1) else if v.Character.Head:FindFirstChild("EspTag") then v.Character.Head.EspTag:Destroy() end end end end end })

-- TAB: GAMES
local ListTab = Window:Tab({ Title = "Games" })
ListTab:Button({ Title = "MM2 Script", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/script-9209/roblox/refs/heads/main/mm2-keyless-auto"))() end })
ListTab:Button({ Title = "Violence District", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/numerouno2/eugunewupremium/refs/heads/main/main.lua"))() end })
ListTab:Button({ Title = "99 Night Forest", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptsomega/99nightforforest/refs/heads/main/BronxWare"))() end })
ListTab:Button({ Title = "Blade Ball", Callback = function() loadstring(game:HttpGet("https://rawscripts.net/raw/NEW-Blade-Ball-Aim-Trainer-SP-Hub-New-Uptade-33836"))() end })
ListTab:Button({ Title = "Sambung Kata", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/rush-xyz/Sambung-Kata/refs/heads/main/script"))() end })

-- TAB: SETTINGS
local SettingsTab = Window:Tab({ Title = "Settings" })
SettingsTab:Button({ Title = "Destroy UI", Color = Color3.fromHex("#ff4830"), Callback = function() Window:Destroy() end })
