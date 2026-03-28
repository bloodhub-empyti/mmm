local u1 = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local v2 = u1
local v3 = {
    Name = 'MNM HUB | TSB',
    Icon = 87122722614578,
    LoadingTitle = 'Loading......',
    LoadingSubtitle = 'by 303',
    ShowText = 'Menu thập cẩm',
    Theme = 'Serenity',
    ToggleUIKeybind = 'K',
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = 'MNMHUB',
        FileName = 'Config',
    },
    Discord = {
        Enabled = false,
        Invite = 'noinvitelink',
        RememberJoins = true,
    },
    KeySystem = false,
    KeySettings = {
        Title = 'Untitled',
        Subtitle = 'Key System',
        Note = 'No method of obtaining the key is provided',
        FileName = 'Key',
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {
            'Hello',
        },
    },
}
local v4 = u1.CreateWindow(v2, v3)
local _Tech = v4:CreateTab('Tech', 4483362458)
local _FixLag = v4:CreateTab('Fix Lag', 4483362458)
local _Moveset = v4:CreateTab('Moveset', 4483362458)
local _TrollPlayer = v4:CreateTab('Troll Player', 4483362458)
local _ScriptTSB = v4:CreateTab('Script TSB', 4483362458)
local _Credits = v4:CreateTab('Credits', 4483362458)

_Tech:CreateButton({
    Name = 'Kiba Tech V4(By Merebennie)',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MerebennieOfficial/ExoticJn/refs/heads/main/Kibav4'))()
    end,
})
_Tech:CreateButton({
    Name = 'Side Dash',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Cyborg883/FakeDash/refs/heads/main/Protected_5833389828844912.lua'))()
    end,
})
_Tech:CreateButton({
    Name = 'Side Dash (By Merebennie)',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MerebennieOfficial/ExoticJn/refs/heads/main/SidedashAssist'))()
    end,
})
_Tech:CreateButton({
    Name = 'Kiba Tech V3(By YQANTG)',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/yqantg-pixel/Find/refs/heads/main/Protected_1593573630798166.lua.txt'))()
    end,
})
_Tech:CreateButton({
    Name = 'YQANTG V3.3',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/yqantg-pixel/Find/refs/heads/main/Protected_3334988263341522.lua.txt'))()
    end,
})
_Tech:CreateButton({
    Name = 'Merebennie HUB V1.1',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MerebennieOfficial/ExoticJn/refs/heads/main/MerebennieHUB!'))()
    end,
})
_Tech:CreateButton({
    Name = 'Auto Kyoto Combo',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MerebennieOfficial/Links/refs/heads/main/Auto%20Kyoto'))()
    end,
})
_Tech:CreateButton({
    Name = 'MinhNhat HUB',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/MinhNhat-HUB-BY-YQANTG-/refs/heads/main/obfuscated_script-1757419791312.lua.txt'))()
    end,
})
_Tech:CreateButton({
    Name = 'The Fish X(Dash)',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/TheFishX/refs/heads/main/obfuscated_script-1757331576860.lua.txt'))()
    end,
})
_Tech:CreateButton({
    Name = 'Auto UPPERCUT',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Nova2ezz/AutoUp/refs/heads/main/Protected_7487729880325869.lua'))()
    end,
})
_Tech:CreateButton({
    Name = 'Oreo Tech',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Cyborg883/OreoTech/refs/heads/main/Protected_6856895483929371.lua'))()
    end,
})
_Tech:CreateButton({
    Name = 'Lethal Dash',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Cyborg883/InstantLethal/refs/heads/main/Protected_5983112998592296.lua'))()
    end,
})
_Tech:CreateButton({
    Name = 'Hokalaza',
    Callback = function()
        u1:Notify({
            Title = 'Key : CRAZY BATTLEGROUND',
            Content = '\u{fffd}ang m\u{1edf} menu Hokalaza',
            Duration = 5,
            Image = 4483362458,
            Actions = {},
        })
        loadstring(game:HttpGet('https://raw.githubusercontent.com/hehehe9028/THE-strongest-battleground/refs/heads/main/HOKALAZA%20The%20strongest%20battleground'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Fps Boost V3(By Joshzz)',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/JoshzzAlteregooo/JoshzzFpsBoosterVersion3/refs/heads/main/JoshzzNewFpsBooster'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Bloxstrap',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/qwertyui-is-back/Bloxstrap/main/Initiate.lua'), 'lol')()
    end,
})
_FixLag:CreateButton({
    Name = 'Fps Booster V1(By Merebennie)',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MerebennieOfficial/ExoticJn/refs/heads/main/FpsBooster'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Fps Booster V2(By Merebennie)',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MerebennieOfficial/ExoticJn/refs/heads/main/Fpsboosterv2'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Fps Boost (By ItLouisPlay)',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/ItsLouisPlay-Fps-Booster/refs/heads/main/TSB'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Fps Boost (By Vikichard)',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/VikiChardd/AntiLag_TSB/main/Protect_MeowTBS1999.lua.txt'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Low GFX',
    Callback = function()
        loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-Low-GFX-38613'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Turbo Lite',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Fps Boost',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Fps-boost/refs/heads/main/029298383'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Fix Lag',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Fix-Lag/refs/heads/main/Made%20By%20MinhNhat'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Remove Skill',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/louismich4el/ItsLouisPlayz-Scripts/main/TSB%20Anti%20Lag.lua'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Fix Lag TSB V2',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Fix-Lag-TSB-V2/refs/heads/main/MinhNhat'))()
    end,
})
_FixLag:CreateButton({
    Name = 'Fix lag (By Mumya)',
    Callback = function()
        loadstring(game:HttpGet('https://pastefy.app/dhiPeX7H/raw'))()
    end,
})
_FixLag:CreateButton({
    Name = 'MinhNhat FONT',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/MinhNhat-FONT/refs/heads/main/MINHNHAT%20STUDIO'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Sung Su Ho',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/sparksnaps/Sung-Suho/refs/heads/main/Lua'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Sukuna V2',
    Callback = function()
        loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-The-Strongest-Battleground-heian-sukuna-Moveset-30680'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Gojo V2',
    Callback = function()
        loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-The-Strongest-Battleground-Gojo-manga-Tsb-30660'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Yuta',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/nullrush0/Yuta/refs/heads/main/Lua'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Anti Spiral',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/sparksnaps/Anti-Spiral./refs/heads/main/Lua'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Goku',
    Callback = function()
        getgenv().DBZEnvEnabled = true
        getgenv().GokuSSJFit = true

        loadstring(game:HttpGet('https://raw.githubusercontent.com/Nova2ezz/GokuNamekSSJ/refs/heads/main/SSJ.lua'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Beru',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/sparksnaps/Beru/refs/heads/main/Lua'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Sancho',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Sancho-Moveset/refs/heads/main/TSB'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Yuri Itadori',
    Callback = function()
        loadstring(game:HttpGet('https://pastefy.app/QBXdwRC1/raw'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Moveset Garou',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Moveset-All/refs/heads/main/obfuscated_script-1757333419474.lua.txt'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Kiryu Kayuma',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/KIRYU-KAYUMA/refs/heads/main/TSB'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Skin Dummy',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Skin-dummy/refs/heads/main/TSB'))()
    end,
})
_Moveset:CreateButton({
    Name = 'Moveset Dash',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Moveset-Dash/refs/heads/main/obfuscated_script-1757334000481.lua.txt'))()
    end,
})
_TrollPlayer:CreateButton({
    Name = 'Fling All',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Fling-All-3/refs/heads/main/TSB'))()
    end,
})
_TrollPlayer:CreateButton({
    Name = 'Fling Player',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Fling-Player/refs/heads/main/TSB'))()
    end,
})
_TrollPlayer:CreateButton({
    Name = 'Fling All',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Fling-All-1/refs/heads/main/292929292929'))()
    end,
})
_TrollPlayer:CreateButton({
    Name = 'Fling All By MinhNhat',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Fling-all-by-minhnhat-/refs/heads/main/220200339'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Trash Can',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/Trashcan%20Man', true))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Aimlock Universal',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MerebennieOfficial/Bestaimbot/refs/heafs/main/Merebennie'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Auto Block V11',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Cyborg883/CombatGUI/refs/heads/main/TSBCombatGUI'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'SpeedHub',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua', true))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Phantasm Hub',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ATrainz/Phantasm/refs/heads/main/Games/TSB.lua'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Napoleon Hub',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/raydjs/napoleonHub/refs/heads/main/src.lua'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'YetaHub V4',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Yetazyyy/YETAHUB/refs/heads/main/TSBV4.lua'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Aimlock',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MerebennieOfficial/ExoticJn/refs/heads/main/AIMLOCK'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Arch-Vault',
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/R2N7cb9z'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Farm Kill V2',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Farm-Kill-V2/refs/heads/main/TSB'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Vexon Hub',
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DiosDi/VexonHub/refs/heads/main/VexonHub"))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'merebennie hub',
    Callback = function()
        loadstring(game:HttpGet("https://api.getpolsec.com/scripts/hosted/2753546c83053761e44664d36ffe5035d6e20fc8aee1d19f0eb7b933974ae537.lua"))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Auto Farm',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/nullrush0/Auto-Farm/refs/heads/main/Lua'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Kenniel Ware',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Kenniel123/Universal-Loader/refs/heads/main/MultiGame'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Infinite Yield',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/minhnhatdepzai8-cloud/Infinite-Yield/refs/heads/main/MinhNhat%20HUB'))()
    end,
})
_ScriptTSB:CreateButton({
    Name = 'Nameless Hub',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
    end,
})
_Credits:CreateButton({
    Name = 'Join Discord/nbruh',
    Callback = function()
        setclipboard('https://discord.gg/hFjByZETdx')
        u1:Notify({
            Title = 'Link Copied!',
            Content = 'Discord link has been copied to clipboard!',
            Duration = 8,
        })
    end,
})
 
