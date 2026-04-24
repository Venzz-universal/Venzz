-- Venzz Hub Full Clean (No Icons)
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua" .. "?v=" .. tick()))()

local Window = WindUI:CreateWindow({
    Title = "Venzz Hub",
    Folder = "VenzzHub",
    HideSearchBar = false,
    OpenButton = { Title = "Venzz Hub", Enabled = true, Draggable = true, Scale = 0.5 },
})

-- TAB: HOME
local HomeTab = Window:Tab({ Title = "Home" })
HomeTab:Button({
    Title = "Copy Discord Link",
    Callback = function()
        setclipboard("https://discord.gg/Vn2Zg7ZvV")
        WindUI:Notify({Title = "Venzz Hub", Content = "Discord link copied!"})
    end,
})

-- TAB: SCRIPT HUB
local ScriptTab = Window:Tab({ Title = "Script Hub" })

ScriptTab:Button({
    Title = "FPS Booster",
    Color = Color3.fromHex("#ffcc00"),
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/WiFxsh46/raw"))()
        WindUI:Notify({Title = "Venzz Hub", Content = "FPS Booster Executed!"})
    end,
})

-- TAB: LIST GAMES SCRIPT
local ListTab = Window:Tab({ Title = "List Games Script" })

ListTab:Button({
    Title = "MM2 Script",
    Color = Color3.fromHex("#a2ff30"),
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/script-9209/roblox/refs/heads/main/mm2-keyless-auto"))()
        WindUI:Notify({Title = "Venzz Hub", Content = "MM2 Script Executed!"})
    end,
})

ListTab:Button({
    Title = "Violence District Script",
    Color = Color3.fromHex("#ff30a2"),
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/numerouno2/eugunewupremium/refs/heads/main/main.lua"))()
        WindUI:Notify({Title = "Venzz Hub", Content = "VD Script Executed!"})
    end,
})

-- TAB: SETTINGS
local SettingsTab = Window:Tab({ Title = "Settings" })
SettingsTab:Button({
    Title = "Destroy UI",
    Color = Color3.fromHex("#ff4830"),
    Callback = function() Window:Destroy() end,
})
