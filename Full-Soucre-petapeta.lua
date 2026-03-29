local _Players = game:GetService('Players')
local _TweenService = game:GetService('TweenService')
local _Workspace = game:GetService('Workspace')
local _RunService = game:GetService('RunService')
local _Lighting = game:GetService('Lighting')
local _LocalPlayer = _Players.LocalPlayer
local _BlurEffect = Instance.new('BlurEffect', _Lighting)

_BlurEffect.Size = 0

_TweenService:Create(_BlurEffect, TweenInfo.new(0.8, Enum.EasingStyle.Cubic), {Size = 24}):Play()

local _ScreenGui = Instance.new('ScreenGui', _LocalPlayer:WaitForChild('PlayerGui'))

_ScreenGui.Name = 'AstraluxLoader'
_ScreenGui.ResetOnSpawn = false
_ScreenGui.IgnoreGuiInset = true

local _Frame = Instance.new('Frame', _ScreenGui)

_Frame.Size = UDim2.new(1, 0, 1, 0)
_Frame.BackgroundTransparency = 1

local _Frame2 = Instance.new('Frame', _Frame)

_Frame2.Size = UDim2.new(1, 0, 1, 0)
_Frame2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
_Frame2.BackgroundTransparency = 1
_Frame2.ZIndex = 0

local _UIGradient = Instance.new('UIGradient', _Frame2)

_UIGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 0, 0)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(40, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 0, 0)),
})
_UIGradient.Rotation = 45

_TweenService:Create(_Frame2, TweenInfo.new(0.8, Enum.EasingStyle.Cubic), {BackgroundTransparency = 0}):Play()

for _ = 1, 20 do
    local _Frame3 = Instance.new('Frame', _Frame2)

    _Frame3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    _Frame3.Size = UDim2.new(0, math.random(2, 4), 0, math.random(2, 4))
    _Frame3.Position = UDim2.new(math.random(), 0, math.random(), 0)
    _Frame3.BackgroundTransparency = 0.8
    _Frame3.ZIndex = 1
    Instance.new('UIGradient', _Frame3).Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 50, 50)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
    })

    spawn(function()
        while _Frame3.Parent do
            local v13 = math.random(2, 4)
            local v14 = math.random()
            local v15 = math.random()

            _TweenService:Create(_Frame3, TweenInfo.new(v13, Enum.EasingStyle.Linear), {
                Position = UDim2.new(v14, 0, v15, 0),
                BackgroundTransparency = math.random(70, 90) / 100,
            }):Play()
            wait(v13)
        end
    end)
end
for _ = 1, 8 do
    local _Frame4 = Instance.new('Frame', _Frame2)

    _Frame4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    _Frame4.Size = UDim2.new(1, 0, 0, 1)
    _Frame4.Position = UDim2.new(0, 0, math.random(), 0)
    _Frame4.BackgroundTransparency = 0.9
    _Frame4.ZIndex = 1

    local _UIGradient2 = Instance.new('UIGradient', _Frame4)

    _UIGradient2.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 50, 50)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
    })
    _UIGradient2.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 1),
        NumberSequenceKeypoint.new(0.5, 0.7),
        NumberSequenceKeypoint.new(1, 1),
    })

    spawn(function()
        local v18 = 0

        while _Frame4.Parent do
            _TweenService:Create(_UIGradient2, TweenInfo.new(2, Enum.EasingStyle.Linear), {
                Offset = Vector2.new(v18, 0),
            }):Play()

            local v19 = v18 + 1

            v18 = v19 >= 1 and 0 or v19

            wait(2)
        end
    end)
end

local _ImageLabel = Instance.new('ImageLabel', _Frame)

_ImageLabel.Size = UDim2.new(0, 800, 0, 200)
_ImageLabel.Position = UDim2.new(0.5, -400, 0.5, -100)
_ImageLabel.BackgroundTransparency = 1
_ImageLabel.Image = 'rbxassetid://87122722614578'
_ImageLabel.ImageColor3 = Color3.fromRGB(255, 0, 0)
_ImageLabel.ImageTransparency = 1
_ImageLabel.ZIndex = 1

_TweenService:Create(_ImageLabel, TweenInfo.new(1, Enum.EasingStyle.Cubic), {ImageTransparency = 0.7}):Play()
spawn(function()
    while _ImageLabel.Parent do
        _TweenService:Create(_ImageLabel, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
            Size = UDim2.new(0, 850, 0, 220),
        }):Play()
        wait(1)
        _TweenService:Create(_ImageLabel, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
            Size = UDim2.new(0, 800, 0, 200),
        }):Play()
        wait(1)
    end
end)

local v21 = 'ASTRALUX'
local u22 = {}

local function v32()
    local v23 = _Frame2
    local v24, v25, v26 = pairs(v23:GetChildren())

    while true do
        local v27

        v26, v27 = v24(v25, v26)

        if v26 == nil then
            break
        end
        if v27:IsA('Frame') then
            _TweenService:Create(v27, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
        end
    end

    _TweenService:Create(_ImageLabel, TweenInfo.new(0.5), {ImageTransparency = 1}):Play()

    local v28, v29, v30 = ipairs(u22)

    while true do
        local v31

        v30, v31 = v28(v29, v30)

        if v30 == nil then
            break
        end

        _TweenService:Create(v31, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
            TextTransparency = 1,
            TextSize = 20,
            Position = v31.Position + UDim2.new(0, 0, 0.2, 0),
        }):Play()
        wait(0.05)
    end

    _TweenService:Create(_Frame2, TweenInfo.new(0.8), {BackgroundTransparency = 1}):Play()
    _TweenService:Create(_BlurEffect, TweenInfo.new(0.8), {Size = 0}):Play()
    wait(0.8)
    _ScreenGui:Destroy()
    _BlurEffect:Destroy()
end

local v33 = u22

for v34 = 1, #v21 do
    local v35 = v34
    local v36 = v21:sub(v35, v35)
    local _TextLabel = Instance.new('TextLabel')

    _TextLabel.Text = v36
    _TextLabel.Font = Enum.Font.GothamBold
    _TextLabel.TextColor3 = Color3.new(1, 1, 1)
    _TextLabel.TextStrokeTransparency = 0.5
    _TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
    _TextLabel.TextTransparency = 1
    _TextLabel.TextScaled = false
    _TextLabel.TextSize = 20
    _TextLabel.Size = UDim2.new(0, 65, 0, 65)
    _TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    _TextLabel.Position = UDim2.new(0.5, (v35 - (#v21 / 2 + 0.5)) * 70, 0.5, 50)
    _TextLabel.BackgroundTransparency = 1
    _TextLabel.ZIndex = 2
    _TextLabel.Parent = _Frame

    local _UIGradient3 = Instance.new('UIGradient')

    _UIGradient3.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 50, 50)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 100, 100)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 30, 30)),
    })
    _UIGradient3.Rotation = 90
    _UIGradient3.Parent = _TextLabel

    local _Position = _TextLabel.Position

    _TextLabel.Position = _TextLabel.Position + UDim2.new(0, 0, -0.5, 0)

    local v40 = {
        TextTransparency = 0,
        TextSize = 60,
        Position = _Position,
    }

    _TweenService:Create(_TextLabel, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, v35 * 0.1), v40):Play()
    spawn(function()
        while _TextLabel.Parent do
            _TweenService:Create(_TextLabel, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Position = _Position + UDim2.new(0, 0, 0, math.random(-3, 3)),
            }):Play()
            wait(1)
        end
    end)
    spawn(function()
        local v41 = 90

        while _TextLabel.Parent do
            _UIGradient3.Rotation = v41

            local v42 = v41 + 1

            v41 = v42 >= 360 and 0 or v42

            wait(0.05)
        end
    end)
    table.insert(v33, _TextLabel)
    wait(0.1)
end

wait(2.5)
v32()

local u43 = loadstring(game:HttpGet('https://raw.githubusercontent.com/LanFouWyne/Astralux/refs/heads/main/Library/Ui/AstraluxUI.lua'))():Window({
    Title = 'PetaPeta by Astralux',
    Desc = 'Semi-automatic',
    Icon = 105059922903197,
    Theme = 'Dark',
    Config = {
        Keybind = Enum.KeyCode.LeftControl,
        Size = UDim2.new(0, 580, 0, 460),
    },
    CloseUIButton = {
        Enabled = true,
        Text = 'Astralux',
    },
})
local v44 = u43
local v45 = u43.Tab(v44, {
    Title = 'Main',
    Icon = 'star',
})

local function u47(p46)
    u43:Notify({
        Title = p46.Title,
        Desc = p46.Content,
        Time = p46.Duration or 3,
    })
end
local function u51(p48, p49)
    if not p48:FindFirstChildOfClass('Highlight') then
        local _Highlight = Instance.new('Highlight')

        _Highlight.FillColor = p49
        _Highlight.FillTransparency = 0.2
        _Highlight.OutlineTransparency = 1
        _Highlight.Parent = p48
    end
end

local u52 = false
local u53 = true
local u54 = true

v45:Section({
    Title = 'General',
})

local u55 = false
local u56 = {}
local u57 = {
    Default = {
        Color = Color3.fromRGB(255, 100, 100),
        Transparency = 0.4,
        TextColor = Color3.fromRGB(255, 255, 255),
        TextSize = 14,
        MaxDistance = 1000,
        FixedSize = true,
        BaseSize = UDim2.new(0, 100, 0, 40),
    },
}

local function u59(p58)
    if p58:IsA('Model') then
        return p58:FindFirstChild('HumanoidRootPart') or (p58.PrimaryPart or p58:FindFirstChildWhichIsA('BasePart'))
    end
    if p58:IsA('BasePart') then
        return p58
    end
end
local function u68(p60, p61, p62)
    if u56[p60] or not (p60 and p60:IsDescendantOf(_Workspace)) then
        return
    else
        local v63 = u59(p60)

        if v63 then
            local _BillboardGui = Instance.new('BillboardGui')

            _BillboardGui.Name = 'ESP'
            _BillboardGui.Adornee = v63
            _BillboardGui.Size = u57.Default.BaseSize
            _BillboardGui.AlwaysOnTop = true
            _BillboardGui.LightInfluence = 0
            _BillboardGui.MaxDistance = u57.Default.MaxDistance
            _BillboardGui.Parent = v63

            local _Frame5 = Instance.new('Frame')

            _Frame5.Size = UDim2.new(1, 0, 1, 0)
            _Frame5.BackgroundColor3 = p62 or u57.Default.Color
            _Frame5.BackgroundTransparency = u57.Default.Transparency
            _Frame5.BorderSizePixel = 0
            _Frame5.Parent = _BillboardGui

            local _UIStroke = Instance.new('UIStroke')

            _UIStroke.Color = p62 or u57.Default.Color
            _UIStroke.Thickness = 2
            _UIStroke.Parent = _Frame5

            local _TextLabel2 = Instance.new('TextLabel')

            _TextLabel2.Size = UDim2.new(1, 0, 1, 0)
            _TextLabel2.BackgroundTransparency = 1
            _TextLabel2.TextColor3 = u57.Default.TextColor
            _TextLabel2.TextStrokeTransparency = 0.4
            _TextLabel2.TextStrokeColor3 = Color3.new(0, 0, 0)
            _TextLabel2.Font = Enum.Font.GothamBold
            _TextLabel2.Text = p61 or p60.Name
            _TextLabel2.TextScaled = true
            _TextLabel2.Parent = _Frame5
            u56[p60] = _BillboardGui
        end
    end
end
local function u70(p69)
    if u56[p69] then
        u56[p69]:Destroy()

        u56[p69] = nil
    end
end
local function u75()
    local v71, v72, v73 = pairs(u56)

    while true do
        local v74

        v73, v74 = v71(v72, v73)

        if v73 == nil then
            break
        end
        if v74 then
            v74:Destroy()
        end
    end

    u56 = {}
end
local function u96()
    if u55 then
        u75()

        local v76 = {}
        local _Server = _Workspace:FindFirstChild('Server')

        if _Server and _Server:FindFirstChild('SpawnedItems') then
            local v78, v79, v80 = pairs(_Server.SpawnedItems:GetChildren())

            while true do
                local v81

                v80, v81 = v78(v79, v80)

                if v80 == nil then
                    break
                end

                table.insert(v76, v81)
            end
        end

        local _Client = _Workspace:FindFirstChild('Client')

        if _Client then
            _Client = _Workspace.Client:FindFirstChild('Enemy')
        end
        if _Client then
            local v83, v84, v85 = pairs(_Client:GetChildren())

            while true do
                local v86

                v85, v86 = v83(v84, v85)

                if v85 == nil then
                    break
                end

                table.insert(v76, v86)
            end
        end

        local v87 = _Workspace
        local v88, v89, v90 = ipairs(v87:GetDescendants())

        while true do
            local v91

            v90, v91 = v88(v89, v90)

            if v90 == nil then
                break
            end
            if (v91:IsA('Model') or v91:IsA('BasePart')) and (v91.Name:match('Doll') or (v91.Name == 'Safe' or (v91.Name == 'Key' or (v91.Name == 'HintPaper' or v91.Name == 'BoxBottom')))) then
                table.insert(v76, v91)
            end
        end

        local v92, v93, v94 = ipairs(v76)

        while true do
            local v95

            v94, v95 = v92(v93, v94)

            if v94 == nil then
                break
            end

            u68(v95, v95.Name)
        end
    end
end

_RunService.RenderStepped:Connect(function()
    if u55 then
        local v97, v98, v99 = pairs(u56)

        while true do
            local v100

            v99, v100 = v97(v98, v99)

            if v99 == nil then
                break
            end
            if not v99:IsDescendantOf(_Workspace) then
                u70(v99)
            end
        end
    end
end)
v45:Toggle({
    Title = 'ESP',
    Desc = 'Toggle ESP untuk semua objek (Zeni, Musuh, Item, dll)',
    Value = false,
    Callback = function(p101)
        u55 = p101

        if p101 then
            u96()
        else
            u75()
        end
    end,
})
v45:Toggle({
    Title = 'Bypass Proximity Prompt',
    Desc = 'Skip Proximity Prompt',
    Value = false,
    Callback = function(p102)
        u53 = p102

        if u53 then
            local v103, v104, v105 = ipairs(workspace:GetDescendants())

            while true do
                local v106

                v105, v106 = v103(v104, v105)

                if v105 == nil then
                    break
                end
                if v106:IsA('ProximityPrompt') then
                    if not v106:GetAttribute('OriginalHoldDuration') then
                        v106:SetAttribute('OriginalHoldDuration', v106.HoldDuration)
                    end

                    v106.HoldDuration = 0
                end
            end

            local v108 = workspace.DescendantAdded:Connect(function(p107)
                if p107:IsA('ProximityPrompt') and u53 then
                    if not p107:GetAttribute('OriginalHoldDuration') then
                        p107:SetAttribute('OriginalHoldDuration', p107.HoldDuration)
                    end

                    p107.HoldDuration = 0
                end
            end)

            getgenv().ProximityBypassConnection = v108

            u47({
                Title = 'Bypass Proximity',
                Content = 'Proximity prompt bypass activated',
                Duration = 3,
            })
        else
            local v109, v110, v111 = ipairs(workspace:GetDescendants())

            while true do
                local v112

                v111, v112 = v109(v110, v111)

                if v111 == nil then
                    break
                end
                if v112:IsA('ProximityPrompt') then
                    v112.HoldDuration = v112:GetAttribute('OriginalHoldDuration') or 1

                    v112:SetAttribute('OriginalHoldDuration', nil)
                end
            end

            if getgenv().ProximityBypassConnection then
                getgenv().ProximityBypassConnection:Disconnect()

                getgenv().ProximityBypassConnection = nil
            end

            u47({
                Title = 'Bypass Proximity',
                Content = 'Proximity prompt bypass deactivated',
                Duration = 3,
            })
        end
    end,
})
v45:Toggle({
    Title = 'Follow Enemy (Hold Ofuda)',
    Desc = 'Teleport player to enemy (requires holding Ofuda)',
    Value = false,
    Callback = function(p113)
        u54 = p113

        if u54 then
            u47({
                Title = 'Follow Enemy',
                Content = 'Enemy following activated',
                Duration = 3,
            })
            task.wait(0.1)

            local _Character = game.Players.LocalPlayer.Character
            local v115 = false

            if _Character then
                local v116, v117, v118 = ipairs(_Character:GetChildren())

                while true do
                    local v119

                    v118, v119 = v116(v117, v118)

                    if v118 == nil then
                        break
                    end
                    if v119:IsA('Tool') and (string.match(v119.Name:lower(), 'ofuda') or string.match(v119.Name:lower(), 'talisman')) then
                        v115 = true

                        break
                    end
                end
            end
            if not v115 then
                u47({
                    Title = 'Follow Enemy',
                    Content = 'You need to equip an Ofuda!',
                    Duration = 3,
                })
            end

            local v152 = game:GetService('RunService').Heartbeat:Connect(function()
                local _Character2 = game.Players.LocalPlayer.Character
                local v121

                if _Character2 then
                    v121 = _Character2:FindFirstChild('HumanoidRootPart')
                else
                    v121 = _Character2
                end
                if not (_Character2 and (_Character2.Parent and (v121 and v121.Parent))) then
                    return
                end

                local v122, v123, v124 = ipairs(_Character2:GetChildren())
                local v125 = false

                while true do
                    local v126

                    v124, v126 = v122(v123, v124)

                    if v124 == nil then
                        break
                    end
                    if v126:IsA('Tool') and (string.match(v126.Name:lower(), 'ofuda') or string.match(v126.Name:lower(), 'talisman')) then
                        v125 = true

                        break
                    end
                end

                if not v125 then
                    return
                end

                local v127 = workspace.Client.Enemy.ClientEnemy:FindFirstChild('EnemyModel') or workspace.Server.Enemy:FindFirstChild('Enemy') or (workspace:FindFirstChild('EnemyModel', true) or workspace:FindFirstChild('EnemyModels', true))

                if v127 then
                    local v128 = nil
                    local v129 = nil
                    local v130 = 0

                    if v127:FindFirstChild('HumanoidRootPart') then
                        local _HumanoidRootPart = v127.HumanoidRootPart

                        v128 = _HumanoidRootPart.Position
                        v129 = _HumanoidRootPart.CFrame.LookVector

                        local _Humanoid = v127:FindFirstChildOfClass('Humanoid')

                        if _Humanoid then
                            v130 = _Humanoid.HipHeight * 2
                        end
                    elseif typeof(v127.GetPivot) ~= 'function' then
                        if v127:IsA('BasePart') then
                            v128 = v127.Position
                            v129 = v127.CFrame.LookVector
                            v130 = v127.Size.Y / 2
                        else
                            local v133, v134, v135 = pairs(v127:GetDescendants())

                            while true do
                                local v136

                                v135, v136 = v133(v134, v135)

                                if v135 == nil then
                                    break
                                end
                                if v136:IsA('BasePart') and v136.Name:lower():find('head') then
                                    v128 = v136.Position
                                    v129 = v136.CFrame.LookVector
                                    v130 = v136.Size.Y * 0.8

                                    break
                                end
                                if v136:IsA('BasePart') and (v136.Name:lower():find('torso') or v136.Name:lower():find('upper')) then
                                    v128 = v136.Position
                                    v129 = v136.CFrame.LookVector
                                    v130 = v136.Size.Y

                                    break
                                end
                                if v136:IsA('BasePart') and v136.Name:lower():find('root') then
                                    v128 = v136.Position
                                    v129 = v136.CFrame.LookVector

                                    break
                                end
                            end

                            if not v128 then
                                local v137, v138, v139 = pairs(v127:GetDescendants())

                                while true do
                                    local v140

                                    v139, v140 = v137(v138, v139)

                                    if v139 == nil then
                                        break
                                    end
                                    if v140:IsA('BasePart') then
                                        v128 = v140.Position
                                        v129 = v140.CFrame.LookVector
                                        v130 = v140.Size.Y / 2

                                        break
                                    end
                                end
                            end
                        end
                    else
                        local v141 = v127:GetPivot()

                        v128 = v141.Position
                        v129 = v141.LookVector

                        if v127:IsA('Model') then
                            v130 = v127:GetExtentsSize().Y / 2
                        end
                    end

                    local v142 = v130 < 1 and 5 or v130

                    if v128 and v129 then
                        local _OfudaBox2 = workspace.Server.SpawnedItems:FindFirstChild('OfudaBox2')
                        local v144 = true

                        if _OfudaBox2 then
                            local v145 = nil

                            if typeof(_OfudaBox2.GetPivot) ~= 'function' then
                                if _OfudaBox2:IsA('BasePart') then
                                    v145 = _OfudaBox2.Position
                                else
                                    local v146, v147, v148 = pairs(_OfudaBox2:GetDescendants())

                                    while true do
                                        local v149

                                        v148, v149 = v146(v147, v148)

                                        if v148 == nil then
                                            break
                                        end
                                        if v149:IsA('BasePart') then
                                            v145 = v149.Position

                                            break
                                        end
                                    end
                                end
                            else
                                v145 = _OfudaBox2:GetPivot().Position
                            end
                            if v145 and (v128 - v145).Magnitude < 20 then
                                v144 = false

                                if not getgenv().WarningShown then
                                    u47({
                                        Title = 'Warning',
                                        Content = 'PetaPeta is near the Ofuda Box. Waiting for the enemy to move away from the Ofuda Box Room',
                                        Duration = 3,
                                    })

                                    getgenv().WarningShown = true

                                    task.delay(5, function()
                                        getgenv().WarningShown = false
                                    end)
                                end
                            end
                        end
                        if v144 then
                            local v150 = v128 - v129 * -25
                            local v151 = Vector3.new(v150.X, v128.Y + v142 * 0.67, v150.Z)

                            v121.CFrame = CFrame.new(v151, v128)

                            task.wait(0.03)
                        end
                    end
                end
            end)

            getgenv().EnemyFollowLoop = v152
        else
            if getgenv().EnemyFollowLoop then
                getgenv().EnemyFollowLoop:Disconnect()

                getgenv().EnemyFollowLoop = nil
            end

            u47({
                Title = 'Follow Enemy',
                Content = 'Enemy following deactivated',
                Duration = 3,
            })
        end
    end,
})
v45:Section({
    Title = 'Player Settings',
})
workspace.DescendantAdded:Connect(function(p153)
    if u52 then
        if p153:IsA('Model') and (p153.Name == 'EnemyModel' or p153.Name == 'EnemyModels') then
            u51(p153, Color3.fromRGB(255, 100, 100))
        elseif p153:IsA('Model') then
            if p153.Name ~= 'DollBlackHead' then
                if p153.Name ~= 'DollBlue' then
                    if p153.Name ~= 'DollRed' then
                        if p153.Name ~= 'DollYellow' then
                            if p153.Name ~= 'DollWhite' then
                                if p153.Name == 'DollHouseGimic' then
                                    u51(p153, Color3.fromRGB(255, 192, 203))
                                end
                            else
                                u51(p153, Color3.fromRGB(255, 255, 255))
                            end
                        else
                            u51(p153, Color3.fromRGB(210, 212, 52))
                        end
                    else
                        u51(p153, Color3.fromRGB(177, 46, 46))
                    end
                else
                    u51(p153, Color3.fromRGB(59, 72, 255))
                end
            else
                u51(p153, Color3.fromRGB(23, 22, 77))
            end
        elseif p153:IsA('BasePart') then
            if p153.Name ~= 'BoxBottom' then
                if p153.Name ~= 'Meshes/safe_Safe' then
                    if p153.Name ~= 'Key' then
                        if p153.Name == 'HintPaper' then
                            u51(p153, Color3.fromRGB(80, 229, 255))
                        end
                    else
                        u51(p153, Color3.fromRGB(255, 215, 0))
                    end
                else
                    u51(p153, Color3.fromRGB(255, 0, 212))
                end
            else
                u51(p153, Color3.fromRGB(100, 255, 100))
            end
        end
    end
end)

local u154 = 28

local function u157(p155)
    local _LocalPlayer2 = game.Players.LocalPlayer

    if _LocalPlayer2.Character and _LocalPlayer2.Character:FindFirstChild('Humanoid') then
        _LocalPlayer2.Character.Humanoid.WalkSpeed = p155
    end
end

v45:Slider({
    Title = 'Speed Mods',
    Desc = 'Change player walkspeed',
    Value = 28,
    Min = 16,
    Max = 100,
    Rounding = 0,
    Callback = function(p158)
        u154 = p158

        u157(p158)
    end,
})
game.Players.LocalPlayer.CharacterAdded:Connect(function(p159)
    local _Humanoid2 = p159:WaitForChild('Humanoid')

    u157(u154)

    local v161 = _Humanoid2

    _Humanoid2.GetPropertyChangedSignal(v161, 'WalkSpeed'):Connect(function()
        if _Humanoid2.WalkSpeed ~= u154 then
            _Humanoid2.WalkSpeed = u154
        end
    end)
end)

local u162 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid')

if u162 then
    u157(u154)
    u162:GetPropertyChangedSignal('WalkSpeed'):Connect(function()
        if u162.WalkSpeed ~= u154 then
            u162.WalkSpeed = u154
        end
    end)
end

v45:Section({
    Title = '\u{26a0}\u{fe0f} Note',
})
v45:Button({
    Title = 'Info',
    Desc = '- ESP feature may be unstable\n- ESP only shown at stage 2\n- You need to equip Ofuda manually after using AutoComplete Feature',
    Callback = function() end,
})
v45:Section({
    Title = 'Auto Complete Stage 1',
})
v45:Button({
    Title = 'Auto Complete Stage 1',
    Desc = 'Complete all quests in stage 1',
    Callback = function()
        local _LocalPlayer3 = game.Players.LocalPlayer
        local _Character3 = _LocalPlayer3.Character
        local u165

        if _Character3 then
            u165 = _Character3:FindFirstChild('HumanoidRootPart')
        else
            u165 = _Character3
        end
        if not (_Character3 and u165) then
            u47({
                Title = 'Failed',
                Content = 'Player character not found',
                Duration = 3,
            })

            return
        end

        local function v180(p166, p167, p168)
            local v169 = p168 or 5

            if not p166 then
                return false
            end

            local v170

            if p166:IsA('ProximityPrompt') then
                v170 = p166
            else
                local _ProximityPrompt = p166:FindFirstChildOfClass('ProximityPrompt')

                if _ProximityPrompt then
                    v170 = _ProximityPrompt
                else
                    local v172, v173, v174 = pairs(p166:GetDescendants())

                    while true do
                        v174, v170 = v172(v173, v174)

                        if v174 == nil then
                            v170 = _ProximityPrompt

                            break
                        end
                        if v170:IsA('ProximityPrompt') then
                            break
                        end
                    end
                end
            end
            if v170 then
                local _Parent = v170.Parent
                local v176 = nil

                if _Parent:IsA('BasePart') then
                    v176 = _Parent.Position
                else
                    local _BasePart = _Parent:FindFirstChildWhichIsA('BasePart')

                    if _BasePart then
                        v176 = _BasePart.Position
                    end
                end
                if v176 and (u165.Position - v176).Magnitude > v170.MaxActivationDistance then
                    u165.CFrame = CFrame.new(v176 + Vector3.new(0, 2, 0))

                    task.wait(0.2)
                end

                for _ = 1, v169 do
                    fireproximityprompt(v170)
                    task.wait(0.1)

                    if p167 == 'key' then
                        local v178 = not _LocalPlayer3.Backpack:FindFirstChild('Key') and _Character3

                        if v178 then
                            v178 = _Character3:FindFirstChild('Key')
                        end
                        if v178 then
                            return true
                        end
                    elseif p167 == 'ofudaBox' then
                        if p166:FindFirstChild('Ofuda') or workspace.Server.SpawnedItems:FindFirstChild('Ofuda') then
                            return true
                        end
                    else
                        if p167 ~= 'ofuda' then
                            return true
                        end

                        local v179 = not _LocalPlayer3.Backpack:FindFirstChild('Ofuda') and _Character3

                        if v179 then
                            v179 = _Character3:FindFirstChild('Ofuda')
                        end
                        if v179 then
                            return true
                        end
                    end
                end
            end

            return false
        end

        u47({
            Title = 'Stage 1',
            Content = 'Step 1: Finding and collecting the key...',
            Duration = 2,
        })

        local _Key = workspace.Server.SpawnedItems:FindFirstChild('Key')

        if not _Key then
            u47({
                Title = 'Failed',
                Content = 'Key not found in the world',
                Duration = 3,
            })

            return
        end

        u165.CFrame = CFrame.new(_Key:GetPivot().Position + Vector3.new(0, 2, 0))

        task.wait(0.1)
        u47({
            Title = 'Stage 1',
            Content = 'Step 2: Collecting key...',
            Duration = 2,
        })

        if not v180(_Key, 'key') then
            u47({
                Title = 'Failed',
                Content = 'Failed to collect key. Please collect it manually',
                Duration = 3,
            })

            return
        end

        task.wait(0.1)
        u47({
            Title = 'Stage 1',
            Content = 'Step 2.5: Equipping key...',
            Duration = 2,
        })

        local _Key2 = _LocalPlayer3.Backpack:FindFirstChild('Key')

        if not _Key2 then
            for _ = 1, 10 do
                task.wait(0.2)

                _Key2 = _LocalPlayer3.Backpack:FindFirstChild('Key')

                if _Key2 then
                    break
                end
            end
        end

        local v183 = _Character3
        local v184 = _Character3.FindFirstChildOfClass(v183, 'Humanoid')

        if _Key2 and v184 then
            v184:UnequipTools()
            task.wait(0.2)

            _Key2.Parent = _Character3

            task.wait(0.1)

            local v185 = _Character3

            if not _Character3.FindFirstChild(v185, 'Key') then
                v184:EquipTool(_Key2)
                task.wait(0.1)
            end

            local v186 = _Character3

            if _Character3.FindFirstChild(v186, 'Key') then
                u47({
                    Title = 'Stage 1 Auto',
                    Content = 'Key successfully equipped!',
                    Duration = 1,
                })
            else
                u47({
                    Title = 'Warning',
                    Content = 'Failed to equip key automatically. Please equip manually',
                    Duration = 3,
                })
            end
        else
            u47({
                Title = 'Warning',
                Content = 'Key not found in backpack for equipping',
                Duration = 3,
            })
        end

        u47({
            Title = 'Stage 1 Auto',
            Content = 'Step 3: Moving to Ofuda box...',
            Duration = 2,
        })

        local _OfudaBox22 = workspace.Server.SpawnedItems:FindFirstChild('OfudaBox2')

        if not _OfudaBox22 then
            u47({
                Title = 'Failed',
                Content = 'Ofuda box not found',
                Duration = 3,
            })

            return
        end

        local _Position2 = _OfudaBox22:GetPivot().Position
        local v189 = _Position2 + _OfudaBox22:GetPivot().LookVector * -3

        u165.CFrame = CFrame.new(v189, _Position2)

        task.wait(0.1)
        u47({
            Title = 'Stage 1 Auto',
            Content = 'Step 4: Opening Ofuda box...',
            Duration = 2,
        })

        if not v180(_OfudaBox22, 'ofudaBox') then
            u47({
                Title = 'Failed',
                Content = "Failed to open Ofuda box. Make sure key is equipped and you're close enough",
                Duration = 3,
            })

            return
        end

        task.wait(0.1)
        u47({
            Title = 'Stage 1 Auto',
            Content = 'Step 5: Locating and collecting Ofuda...',
            Duration = 2,
        })

        local v190 = nil

        for _ = 1, 10 do
            local v191 = workspace.Server.SpawnedItems:FindFirstChild('Ofuda') or (workspace.Server.SpawnedItems:FindFirstChild('Ofuda Onya') or workspace.Server.SpawnedItems:FindFirstChild('Talisman'))

            if v191 then
                v190 = v191
            else
                local v192, v193, v194 = pairs(workspace.Server.SpawnedItems:GetChildren())

                while true do
                    v194, v190 = v192(v193, v194)

                    if v194 == nil then
                        v190 = v191

                        break
                    end
                    if string.match(v190.Name:lower(), 'ofuda') or string.match(v190.Name:lower(), 'talisman') then
                        break
                    end
                end
            end
            if v190 then
                break
            end

            task.wait(0.1)
        end

        if v190 then
            u165.CFrame = CFrame.new(v190:GetPivot().Position + Vector3.new(0, 2, 0))

            task.wait(0.1)

            if v180(v190, 'ofuda') then
                task.wait(0.1)
                u47({
                    Title = 'Stage 1 Auto',
                    Content = 'Step 6: Equipping Ofuda...',
                    Duration = 2,
                })

                local _Tool = _LocalPlayer3.Backpack:FindFirstChildOfClass('Tool', function(p195)
                    return string.match(p195.Name:lower(), 'ofuda') or string.match(p195.Name:lower(), 'talisman')
                end)

                if _Tool then
                    local _Name = _Tool.Name

                    _Tool.Parent = _Character3

                    task.wait(0.1)

                    if not _Character3:FindFirstChild(_Name) then
                        local _Humanoid3 = _Character3:FindFirstChildOfClass('Humanoid')

                        if _Humanoid3 then
                            _Humanoid3:EquipTool(_Tool)
                            task.wait(0.1)
                        end
                        if not _Character3:FindFirstChild(_Name) then
                            for v199 = 1, 9 do
                                game:GetService('VirtualInputManager'):SendKeyEvent(true, Enum.KeyCode[tostring(v199)], false, game)
                                task.wait(0.1)
                                game:GetService('VirtualInputManager'):SendKeyEvent(false, Enum.KeyCode[tostring(v199)], false, game)
                                task.wait(0.1)

                                if _Character3:FindFirstChild(_Name) then
                                    break
                                end
                            end
                        end
                    end

                    local v200 = _Character3

                    if _Character3.FindFirstChild(v200, _Name) then
                        u47({
                            Title = 'Stage 1 Auto',
                            Content = 'Ofuda successfully equipped!',
                            Duration = 1,
                        })
                    else
                        u47({
                            Title = 'Warning',
                            Content = 'Failed to equip Ofuda automatically. Please equip manually',
                            Duration = 2,
                        })
                    end
                else
                    u47({
                        Title = 'Warning',
                        Content = 'Ofuda not found in backpack after collection',
                        Duration = 2,
                    })
                end

                local v201 = _Character3

                if _Character3.FindFirstChildOfClass(v201, 'Tool', function(p202)
                    return string.match(p202.Name:lower(), 'ofuda') or string.match(p202.Name:lower(), 'talisman')
                end) then
                    u47({
                        Title = 'Stage 1 Auto',
                        Content = 'Stage 1 Auto Complete: Success! Key and Ofuda secured',
                        Duration = 3,
                    })
                else
                    u47({
                        Title = 'Stage 1 Auto',
                        Content = 'Stage 1 Auto Complete: Steps completed, but Ofuda may not be equipped',
                        Duration = 3,
                    })
                end
            else
                u47({
                    Title = 'Failed',
                    Content = 'Failed to collect Ofuda',
                    Duration = 3,
                })
            end
        else
            u47({
                Title = 'Failed',
                Content = 'Ofuda not found after opening box',
                Duration = 3,
            })

            return
        end
    end,
})
v45:Section({
    Title = 'Auto Complete Stage 2 and 3',
})
v45:Button({
    Title = 'Auto Complete Stage 2/3',
    Desc = 'Stable version that adapts to map stage changes',
    Callback = function()
        local _LocalPlayer4 = game.Players.LocalPlayer
        local _Character4 = _LocalPlayer4.Character
        local v205

        if _Character4 then
            v205 = _Character4:FindFirstChildOfClass('Humanoid')
        else
            v205 = _Character4
        end

        local u206

        if _Character4 then
            u206 = _Character4:FindFirstChild('HumanoidRootPart')
        else
            u206 = _Character4
        end
        if _Character4 and (v205 and u206) then
            local function v210(_, p207, p208)
                local v209 = 0

                repeat
                    task.wait(0.2)

                    v209 = v209 + 0.2
                until p207() or (p208 or 10) <= v209

                return p207()
            end
            local function v221(p211, p212, p213)
                local v214 = p213 or 5

                if not p211 then
                    return false
                end

                local _ProximityPrompt2 = p211:FindFirstChildOfClass('ProximityPrompt')
                local v216

                if _ProximityPrompt2 then
                    v216 = _ProximityPrompt2
                else
                    local v217, v218, v219 = pairs(p211:GetDescendants())

                    while true do
                        v219, v216 = v217(v218, v219)

                        if v219 == nil then
                            v216 = _ProximityPrompt2

                            break
                        end
                        if v216:IsA('ProximityPrompt') then
                            break
                        end
                    end
                end
                if not v216 then
                    return false
                end

                local v220 = v216.Parent:IsA('BasePart') and v216.Parent.Position or (v216.Parent:FindFirstChildWhichIsA('BasePart') or {}).Position

                if v220 and (u206.Position - v220).Magnitude > v216.MaxActivationDistance then
                    u206.CFrame = CFrame.new(v220 + Vector3.new(0, 2, 0))

                    task.wait(0.1)
                end

                for _ = 1, v214 do
                    fireproximityprompt(v216)
                    task.wait(0.1)

                    if p212 == 'key' and (_LocalPlayer4.Backpack:FindFirstChild('Key') or _Character4:FindFirstChild('Key')) then
                        return true
                    end
                    if p212 == 'ofuda' and (_LocalPlayer4.Backpack:FindFirstChildWhichIsA('Tool') or _Character4:FindFirstChildWhichIsA('Tool')) then
                        return true
                    end
                    if p212 == 'ofudaBox' then
                        if workspace.Server.SpawnedItems:FindFirstChild('Ofuda') then
                            return true
                        end
                    end
                end

                return false
            end

            u47({
                Title = 'Stage 2',
                Content = 'Searching for safe...',
                Duration = 2,
            })

            local _safe = v210('safe', function()
                local v222, v223, v224 = pairs(workspace.Server.MapGenerated.Rooms:GetChildren())

                while true do
                    local v225

                    v224, v225 = v222(v223, v224)

                    if v224 == nil then
                        break
                    end
                    if v225:FindFirstChild('Props') and v225.Props:FindFirstChild('Safe') then
                        return v225.Props.Safe
                    end
                end

                return workspace:FindFirstChild('Safe', true)
            end)

            if _safe then
                u206.CFrame = CFrame.new(_safe:GetPivot().Position + _safe:GetPivot().LookVector * 3, _safe:GetPivot().Position)

                task.wait(0.1)

                if _safe:FindFirstChild('Unlocked') and _safe.Unlocked:IsA('BoolValue') then
                    _safe.Unlocked.Value = true

                    task.wait(0.1)
                end

                u47({
                    Title = 'Stage 2',
                    Content = 'Waiting for key to appear...',
                    Duration = 2,
                })

                local _key = v210('key', function()
                    local v227, v228, v229 = pairs(workspace.Server.MapGenerated.Rooms:GetChildren())

                    while true do
                        local v230

                        v229, v230 = v227(v228, v229)

                        if v229 == nil then
                            break
                        end
                        if v230:FindFirstChild('Props') and v230.Props:FindFirstChild('Safe') then
                            local _Key3 = v230.Props.Safe:FindFirstChild('Key')

                            if _Key3 then
                                return _Key3
                            end
                        end
                    end

                    return workspace.Server.SpawnedItems:FindFirstChild('Key')
                end, 10)

                if _key then
                    u206.CFrame = CFrame.new(_key:GetPivot().Position + Vector3.new(0, 2, 0))

                    task.wait(0.1)

                    if v221(_key, 'key') then
                        local _Key4 = _LocalPlayer4.Backpack:FindFirstChild('Key')

                        if _Key4 then
                            _Key4.Parent = _Character4

                            task.wait(0.3)
                        end

                        local _OfudaBox23 = workspace.Server.SpawnedItems:FindFirstChild('OfudaBox2')

                        if _OfudaBox23 then
                            u206.CFrame = CFrame.new(_OfudaBox23:GetPivot().Position + _OfudaBox23:GetPivot().LookVector * -3, _OfudaBox23:GetPivot().Position)

                            task.wait(0.1)
                            v221(_OfudaBox23, 'ofudaBox')
                            u47({
                                Title = 'Stage 2',
                                Content = 'Searching for Ofuda...',
                                Duration = 2,
                            })

                            local _ofuda = v210('ofuda', function()
                                return workspace.Server.SpawnedItems:FindFirstChild('Ofuda') or workspace.Server.SpawnedItems:FindFirstChild('Talisman')
                            end)

                            if _ofuda then
                                u206.CFrame = CFrame.new(_ofuda:GetPivot().Position + Vector3.new(0, 2, 0))

                                task.wait(0.1)

                                if v221(_ofuda, 'ofuda') then
                                    local _Tool2 = _LocalPlayer4.Backpack:FindFirstChildWhichIsA('Tool')

                                    if _Tool2 then
                                        _Tool2.Parent = _Character4
                                    end

                                    u47({
                                        Title = 'Stage',
                                        Content = 'Stage 2/3 Auto Complete finished!',
                                        Duration = 3,
                                    })
                                else
                                    u47({
                                        Title = 'Failed',
                                        Content = 'Failed to collect Ofuda',
                                        Duration = 3,
                                    })
                                end
                            else
                                u47({
                                    Title = 'Failed',
                                    Content = 'Ofuda not found',
                                    Duration = 3,
                                })

                                return
                            end
                        else
                            u47({
                                Title = 'Failed',
                                Content = 'Ofuda box not found',
                                Duration = 3,
                            })

                            return
                        end
                    else
                        u47({
                            Title = 'Failed',
                            Content = 'Failed to collect key',
                            Duration = 3,
                        })

                        return
                    end
                else
                    u47({
                        Title = 'Failed',
                        Content = 'Key not found',
                        Duration = 3,
                    })

                    return
                end
            else
                u47({
                    Title = 'Failed',
                    Content = 'Safe not found',
                    Duration = 3,
                })

                return
            end
        else
            u47({
                Title = 'Failed',
                Content = 'Player character not found',
                Duration = 3,
            })

            return
        end
    end,
})
v45:Section({
    Title = 'Stage 4 Completion',
})
v45:Button({
    Title = 'Auto Complete Stage 4',
    Desc = 'Combined doll settings + finish + OldPhoto collection + Ofuda collection',
    Callback = function()
        local _LocalPlayer5 = game.Players.LocalPlayer
        local _Character5 = _LocalPlayer5.Character
        local v239

        if _Character5 then
            v239 = _Character5:FindFirstChildOfClass('Humanoid')
        else
            v239 = _Character5
        end

        local u240

        if _Character5 then
            u240 = _Character5:FindFirstChild('HumanoidRootPart')
        else
            u240 = _Character5
        end
        if not (_Character5 and (v239 and u240)) then
            u47({
                Title = 'Failed',
                Content = 'Player character not found',
                Duration = 3,
            })

            return
        end

        local _Stage4 = game:GetService('ReplicatedStorage').GameStatus.Stage4
        local v242, v243, v244 = pairs({
            DollBlack = {
                'Finished',
                'Installed',
                'Obtained',
                'HeadConnect',
                'HeadObtained',
            },
            DollBlue = {
                'Finished',
                'Installed',
                'Obtained',
            },
            DollWhite = {
                'Finished',
                'Installed',
                'Obtained',
            },
            DollRed = {
                'Finished',
                'Installed',
                'Obtained',
            },
            DollYellow = {
                'Finished',
                'Installed',
                'Obtained',
            },
        })

        while true do
            local v245

            v244, v245 = v242(v243, v244)

            if v244 == nil then
                break
            end

            local v246, v247, v248 = ipairs(v245)
            local v249 = v244

            while true do
                local v250

                v248, v250 = v246(v247, v248)

                if v248 == nil then
                    break
                end

                local v251 = _Stage4:FindFirstChild(v249 .. v250)

                if v251 and v251:IsA('BoolValue') then
                    v251.Value = true
                end
            end
        end

        local _DollAllSet = _Stage4:FindFirstChild('DollAllSet')

        if _DollAllSet then
            _DollAllSet.Value = true
        end

        u47({
            Title = 'Stage 4',
            Content = 'All dolls configured and DollAllSet activated',
            Duration = 1,
        })

        local _DollAllSet2 = _Stage4:FindFirstChild('DollAllSet')

        if _DollAllSet2 and _DollAllSet2:IsA('BoolValue') then
            _DollAllSet2.Value = true

            u47({
                Title = 'Stage 4',
                Content = 'Doll sequence completed',
                Duration = 1,
            })
        end

        task.wait(0.1)

        local v254, v255, v256 = pairs(workspace.Server.MapGenerated.Rooms:GetChildren())
        local v257 = nil

        while true do
            local v258

            v256, v258 = v254(v255, v256)

            if v256 == nil then
                break
            end
            if v258:FindFirstChild('DollHouseGimic') then
                v257 = v258.DollHouseGimic

                break
            end
        end

        if v257 then
            local v259 = v257:GetPivot()
            local v260 = v259.Position + v259.LookVector * 10

            u240.CFrame = CFrame.new(v260, v259.Position)

            u47({
                Title = 'Teleport',
                Content = 'Successfully teleported to doll house',
                Duration = 2,
            })
        end

        task.wait(0.1)

        local function v268(p261)
            local v262 = nil

            for _ = 1, 20 do
                v262 = workspace.Server.SpawnedItems:FindFirstChild(p261)

                if v262 then
                    break
                end

                task.wait(0.1)
            end

            if v262 then
                u240.CFrame = CFrame.new(v262:GetPivot().Position + Vector3.new(0, 2, 0))

                task.wait(0.1)

                local _ProximityPrompt3 = v262:FindFirstChildOfClass('ProximityPrompt')
                local v264

                if _ProximityPrompt3 then
                    v264 = _ProximityPrompt3
                else
                    local v265, v266, v267 = ipairs(v262:GetDescendants())

                    while true do
                        v267, v264 = v265(v266, v267)

                        if v267 == nil then
                            v264 = _ProximityPrompt3

                            break
                        end
                        if v264:IsA('ProximityPrompt') then
                            break
                        end
                    end
                end
                if v264 then
                    for _ = 1, 8 do
                        fireproximityprompt(v264)
                        task.wait(0.1)

                        if not v262:IsDescendantOf(workspace) then
                            break
                        end
                    end

                    u47({
                        Title = 'Item',
                        Content = p261 .. ' successfully collected',
                        Duration = 1,
                    })

                    return true
                end

                u47({
                    Title = 'Failed',
                    Content = 'Prompt not found on ' .. p261,
                    Duration = 1,
                })
            else
                u47({
                    Title = 'Failed',
                    Content = p261 .. ' not found in SpawnedItems',
                    Duration = 1,
                })
            end

            return false
        end

        if v268('OldPhoto') then
            task.wait(0.1)

            if v268('Ofuda') or v268('Talisman') then
                local _Tool3 = _LocalPlayer5.Backpack:FindFirstChildWhichIsA('Tool')

                if _Tool3 then
                    _Tool3.Parent = _Character5

                    task.wait(0.1)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, Enum.KeyCode.Two, false, game)
                    task.wait(0.1)
                    game:GetService('VirtualInputManager'):SendKeyEvent(false, Enum.KeyCode.Two, false, game)
                    u47({
                        Title = 'Equip',
                        Content = 'Ofuda successfully equipped to slot 2',
                        Duration = 2,
                    })
                end
            else
                u47({
                    Title = 'Failed',
                    Content = 'Ofuda did not appear after OldPhoto',
                    Duration = 1,
                })
            end
        else
            return
        end
    end,
})
v45:Section({
    Title = 'Stage 5 Completion',
})
v45:Button({
    Title = 'Auto Complete Stage 5',
    Desc = 'Complete the stage 5',
    Callback = function()
        local _Stage5 = game:GetService('ReplicatedStorage').GameStatus.Stage5
        local v271 = {
            'DialOpened',
            'DishInstalled',
            'DishObtained',
            'LighterInstalled',
            'LighterObtained',
            'RopeInstalled',
            'RopeObtained',
            'StageEnd',
        }
        local v272 = #v271
        local v273, v274, v275 = ipairs(v271)
        local v276 = 0

        while true do
            local v277

            v275, v277 = v273(v274, v275)

            if v275 == nil then
                break
            end

            local v278 = _Stage5:FindFirstChild(v277)

            if v278 and v278:IsA('BoolValue') then
                v278.Value = true
                v276 = v276 + 1
            end
        end

        u47({
            Title = 'Stage 5 Status',
            Content = 'Set ' .. v276 .. '/' .. v272 .. ' stage values',
            Duration = 3,
        })
    end,
})
v45:Section({
    Title = 'Stage 6 Completion',
})
v45:Button({
    Title = 'Auto Complete Stage 6',
    Desc = 'Teleports you to the finish line',
    Callback = function()
        local _ShoeRack = workspace.Server.MapCore._1stFloor['1st_6'].Entrance:FindFirstChild('ShoeRack')

        if not _ShoeRack then
            local v280, v281, v282 = pairs(workspace.Server.MapGenerated.Rooms:GetChildren())

            while true do
                local v283

                v282, v283 = v280(v281, v282)

                if v282 == nil then
                    break
                end
                if v283:FindFirstChild('ShoeRack') then
                    _ShoeRack = v283.ShoeRack

                    break
                end
            end
        end
        if _ShoeRack and game.Players.LocalPlayer.Character then
            local _HumanoidRootPart2 = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

            if _HumanoidRootPart2 then
                local v285 = nil

                if typeof(_ShoeRack.GetPivot) ~= 'function' then
                    if _ShoeRack:IsA('BasePart') then
                        v285 = _ShoeRack.CFrame
                    elseif _ShoeRack:IsA('Model') then
                        local _PrimaryPart = _ShoeRack.PrimaryPart

                        if _PrimaryPart then
                            v285 = _PrimaryPart.CFrame
                        else
                            local v287, v288, v289 = pairs(_ShoeRack:GetChildren())

                            while true do
                                local v290

                                v289, v290 = v287(v288, v289)

                                if v289 == nil then
                                    break
                                end
                                if v290:IsA('BasePart') then
                                    v285 = v290.CFrame

                                    break
                                end
                            end
                        end
                    end
                else
                    v285 = _ShoeRack:GetPivot()
                end
                if v285 then
                    local v291 = v285 + v285.LookVector * -5

                    _HumanoidRootPart2.CFrame = CFrame.new(v291.Position, v285.Position)

                    u47({
                        Title = 'Teleported',
                        Content = 'Successfully teleported to Finish Line',
                        Duration = 3,
                    })
                else
                    u47({
                        Title = 'Teleport Failed',
                        Content = 'Could not determine Finish Line position',
                        Duration = 3,
                    })
                end
            end
        else
            u47({
                Title = 'Teleport Failed',
                Content = 'Could not find Finish Line in the specified path',
                Duration = 3,
            })
        end
    end,
})
v45:Section({
    Title = 'Teleport Options',
})
v45:Button({
    Title = 'Teleport to Key',
    Desc = 'Teleports you to the key location',
    Callback = function()
        local _Key5 = workspace.Server.SpawnedItems:FindFirstChild('Key')

        if _Key5 and game.Players.LocalPlayer.Character then
            local _HumanoidRootPart3 = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

            if _HumanoidRootPart3 then
                local _Position3 = _Key5:GetPivot().Position

                _HumanoidRootPart3.CFrame = CFrame.new(_Position3 + Vector3.new(0, 3, 0), _Position3)

                u47({
                    Title = 'Teleported',
                    Content = 'Successfully teleported to key',
                    Duration = 3,
                })
            end
        else
            u47({
                Title = 'Teleport Failed',
                Content = 'Key not found in SpawnedItems',
                Duration = 3,
            })
        end
    end,
})
v45:Button({
    Title = 'Teleport to Safe',
    Desc = 'Teleports you to the safe location',
    Callback = function()
        local v295, v296, v297 = pairs(workspace.Server.MapGenerated.Rooms:GetChildren())
        local v298 = nil

        while true do
            local v299

            v297, v299 = v295(v296, v297)

            local v300

            if v297 == nil then
                v300 = v298

                break
            end
            if v299:FindFirstChild('Props') then
                v300 = v299.Props:FindFirstChild('Safe')

                if v300 then
                    break
                end
            end
        end

        if v300 and game.Players.LocalPlayer.Character then
            local _HumanoidRootPart4 = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

            if _HumanoidRootPart4 then
                local v302 = nil

                if typeof(v300.GetPivot) ~= 'function' then
                    local v303, v304, v305 = pairs(v300:GetDescendants())

                    while true do
                        local v306

                        v305, v306 = v303(v304, v305)

                        if v305 == nil then
                            break
                        end
                        if v306:IsA('BasePart') then
                            v302 = v306.Position

                            break
                        end
                        if v306:IsA('Model') and v306.PrimaryPart then
                            v302 = v306.PrimaryPart.Position

                            break
                        end
                    end
                else
                    v302 = v300:GetPivot().Position
                end
                if v302 then
                    _HumanoidRootPart4.CFrame = CFrame.new(v302 + Vector3.new(0, 1, 2), v302)

                    u47({
                        Title = 'Teleported',
                        Content = 'Successfully teleported to safe',
                        Duration = 3,
                    })
                else
                    u47({
                        Title = 'Teleport Failed',
                        Content = 'Could not determine safe position reliably',
                        Duration = 3,
                    })
                end
            end
        else
            u47({
                Title = 'Teleport Failed',
                Content = 'Could not find safe in any room',
                Duration = 3,
            })
        end
    end,
})
v45:Button({
    Title = 'Teleport to Ofuda Box',
    Desc = 'Teleports you to the Ofuda Box location',
    Callback = function()
        local _OfudaBox24 = workspace.Server.SpawnedItems:FindFirstChild('OfudaBox2')

        if _OfudaBox24 and game.Players.LocalPlayer.Character then
            local _HumanoidRootPart5 = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

            if _HumanoidRootPart5 then
                local _Position4 = _OfudaBox24:GetPivot().Position

                _HumanoidRootPart5.CFrame = CFrame.new(_Position4 + Vector3.new(0, 3, 0), _Position4)

                u47({
                    Title = 'Teleported',
                    Content = 'Successfully teleported to Ofuda Box',
                    Duration = 3,
                })
            end
        else
            u47({
                Title = 'Teleport Failed',
                Content = 'Could not find Ofuda Box',
                Duration = 3,
            })
        end
    end,
})
u47({
    Title = 'Script Loaded',
    Content = 'Enjoy!',
    Duration = 5,
})

local v310 = u43

u43.SelectTab(v310, 1)
