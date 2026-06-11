local genv = getgenv()
local fenv = getfenv()

local msg = Instance.new("Message", workspace)

game:IsLoaded()

local camera = workspace.CurrentCamera

msg:Destroy()

fenv.urlGet = function(url)
    local source = game:HttpGet(url, true)

    source:gsub("\n", "")
          :gsub("\t", "")
          :gsub("\r", "")
          :gsub(" ", "")

    return source
end

fenv.urlLoad = function(url, ...)
    local source = game:HttpGet(url, true)

    source:gsub("\n", "")
          :gsub("\t", "")
          :gsub("\r", "")
          :gsub(" ", "")

    return loadstring(source)(...)
end

genv.FireHubLoaded = true

local player = game:GetService("Players").LocalPlayer

local libSource = game:HttpGet(
    "https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Fire-Lib/Main.lua",
    true
)

libSource:gsub("\n", "")
         :gsub("\t", "")
         :gsub("\r", "")
         :gsub(" ", "")

local FireLib = loadstring(libSource)()

FireLib.Notifications:Notification({
    Text = "NullFire Initilization begun!\nDoing some base checks & getting data...",
    Title = "NullFire Initilization"
})

local playerDataSource = game:HttpGet(
    "https://raw.githubusercontent.com/bloodhub-empyti/mmm/refs/heads/main/PlayerData.json",
    true
)

playerDataSource:gsub("\n", "")
                :gsub("\t", "")
                :gsub("\r", "")
                :gsub(" ", "")

local playerData = game.HttpService:JSONDecode(playerDataSource)

genv.PersonalPlayerData = playerData

local myData = playerData[tostring(player.UserId)]

if myData and myData.Admin then
    FireLib.Notifications:Notification({
        Text = "Ooh, you're an admin, cool!",
        Title = "NullFire Initilization"
    })
end

local supportedGames = game.HttpService:JSONDecode(
    game:HttpGet(
        "https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Data/SupportedGames.json"
    )
)

FireLib.Notifications:Notification({
    Text = "Searching for the game...",
    Title = "NullFire Initilization"
})

for gameName, gameData in pairs(supportedGames) do
    if type(gameData) == "table" and table.find(gameData, game.PlaceId) then

        genv.GameName = gameName

        local loaderUrl =
            "https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Loaders/"
            .. gameName ..
            "/Main.lua"

        FireLib.Notifications:Notification({
            Text =
                "NullFire Initilization done!\nLoading script for: "
                .. gameName
                .. "\n\n("
                .. loaderUrl
                .. ")",
            Title = "NullFire Initilization"
        })

        local gameScript = game:HttpGet(loaderUrl, true)

        gameScript:gsub("\n", "")
                  :gsub("\t", "")
                  :gsub("\r", "")
                  :gsub(" ", "")

        return loadstring(gameScript)()
    end
end 
