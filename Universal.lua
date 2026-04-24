local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Venzz Hub | Universal",
    Folder = "VenzzHub",
    Icon = "solar:folder-2-bold-duotone",
    HideSearchBar = false,
    OpenButton = { Title = "Venzz Hub", Enabled = true, Draggable = true, Scale = 0.5 },
})

-- TAB: UNIVERSAL (Fitur yang jalan di semua game)
local UniversalTab = Window:Tab({ Title = "all script", Icon = "solar:home-2-bold", Border = true })
UniversalTab:Section({ Title = "Global Features" })
UniversalTab:Button({
    Title = "Copy Discord Link",
    Callback = function()
        setclipboard("https://discord.gg/Vn2Zg7ZvV")
        WindUI:Notify({Title = "Venzz Hub", Content = "Link Discord dicopy!"})
    end,
})

-- TAB: GAME SPECIFIC (Ini tempat lo naruh script per game)
local GameTab = Window:Tab({ Title = "games script", Icon = "solar:gamepad-bold", Border = true })
GameTab:Section({ Title = "Auto Detect Game Script" })

GameTab:Button({
    Title = "Execute Script For This Game",
    Color = Color3.fromHex("#a2ff30"),
    Callback = function()
        local CurrentID = game.PlaceId
        
        -- DI BAWAH INI TEMPAT LO TARUH PLACE ID DAN LINK-NYA
        if CurrentID == 142823291 then -- GANTI ID MM2
            loadstring(game:HttpGet("https://raw.githubusercontent.com/script-9209/roblox/refs/heads/main/mm2-keyless-auto"))()
        
        elseif CurrentID == 93978595733734 then -- GANTI ID GAME LAIN
            loadstring(game:HttpGet("https://raw.githubusercontent.com/numerouno2/eugunewupremium/refs/heads/main/main.lua"))()
            
        else
            WindUI:Notify({
                Title = "Venzz Hub", 
                Content = "Script tidak ditemukan untuk PlaceID: " .. CurrentID
            })
        end
    end,
})

-- TAB: SETTINGS
local SettingsTab = Window:Tab({ Title = "Settings", Icon = "solar:settings-bold", Border = true })
SettingsTab:Button({
    Title = "Destroy UI",
    Color = Color3.fromHex("#ff4830"),
    Callback = function() Window:Destroy() end,
})
