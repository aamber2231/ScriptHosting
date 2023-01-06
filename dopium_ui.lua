local library = {};

local tabs = {};
local toggles = {};
local sliders = {};
local combos = {};
local textboxes = {};
local groupboxes = {};

getgenv().tabs = tabs;
getgenv().toggles = toggles;
getgenv().sliders = sliders;
getgenv().combos = combos;
getgenv().textboxes = textboxes;
getgenv().groupboxes = groupboxes;

function library:CreateWindow(window_options)
    local MainFrame = Instance.new("Frame")
    local TopBar = Instance.new("Frame")
    local HackTitle = Instance.new("TextLabel")
    local Line = Instance.new("Frame")
    local UIGradient = Instance.new("UIGradient")
    local TabsList = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local SettingsList = Instance.new("Frame")
    local SettingsListLayout = Instance.new("UIListLayout")

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 32)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.29349187, 0, 0.244389027, 0)
    MainFrame.Size = UDim2.new(0, 659, 0, 410)

    TopBar.Name = "TopBar"
    TopBar.Parent = MainFrame
    TopBar.BackgroundColor3 = Color3.fromRGB(41, 41, 52)
    TopBar.BorderSizePixel = 0
    TopBar.Position = UDim2.new(0, 0, -0.00182470924, 0)
    TopBar.Size = UDim2.new(0, 659, 0, 28)

    HackTitle.Name = "HackTitle"
    HackTitle.Parent = TopBar
    HackTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HackTitle.BackgroundTransparency = 1.000
    HackTitle.Position = UDim2.new(0.0106221549, 0, 0, 0)
    HackTitle.Size = UDim2.new(0, 652, 0, 23)
    HackTitle.Font = Enum.Font.Arial
    HackTitle.Text = window_options.title
    HackTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    HackTitle.TextSize = 16.000
    HackTitle.TextStrokeTransparency = 0.500
    HackTitle.TextXAlignment = Enum.TextXAlignment.Left

    Line.Name = "Line"
    Line.Parent = TopBar
    Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Line.BorderSizePixel = 0
    Line.Position = UDim2.new(0, 0, 0.84814781, 0)
    Line.Size = UDim2.new(0, 659, 0, 4)

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(32, 83, 177)), ColorSequenceKeypoint.new(0.08, Color3.fromRGB(68, 137, 255)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(68, 137, 255)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(68, 137, 255)), ColorSequenceKeypoint.new(0.55, Color3.fromRGB(68, 137, 255)), ColorSequenceKeypoint.new(0.96, Color3.fromRGB(60, 126, 221)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(39, 98, 130))}
    UIGradient.Parent = Line

    TabsList.Name = "TabsList"
    TabsList.Parent = MainFrame
    TabsList.BackgroundColor3 = Color3.fromRGB(31, 31, 41)
    TabsList.BorderSizePixel = 0
    TabsList.Position = UDim2.new(0, 7, 0.0658536553, 7)
    TabsList.Size = UDim2.new(0, 178, 0, 369)

    UIListLayout.Parent = TabsList
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    SettingsList.Name = "SettingsList"
    SettingsList.Parent = MainFrame
    SettingsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SettingsList.BackgroundTransparency = 1.000
    SettingsList.Position = UDim2.new(0.28072837, 7, 0.0829268321, 0)
    SettingsList.Size = UDim2.new(0, 460, 0, 369)

    SettingsListLayout.Parent = SettingsList
    SettingsListLayout.FillDirection = Enum.FillDirection.Horizontal
    SettingsListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    SettingsListLayout.Padding = UDim.new(0, 5)

    local window_data = {};

    do -- ui stuff
        function window_data:AddTab(tab_options)
            local tab_data = {};

            local TabItem = Instance.new("TextButton")
            local TabTitle = Instance.new("TextLabel")
            local TabLine = Instance.new("Frame")
            local TabLineGradient = Instance.new("UIGradient")

            TabItem.Name = "TabItem"
            TabItem.Parent = TabsList
            TabItem.BackgroundColor3 = Color3.fromRGB(37, 37, 51)
            TabItem.BorderSizePixel = 0
            TabItem.Size = UDim2.new(0, 178, 0, 34)
            TabItem.Font = Enum.Font.SourceSans
            TabItem.Text = ""
            TabItem.TextColor3 = Color3.fromRGB(0, 0, 0)
            TabItem.TextSize = 14.000
            TabItem.TextXAlignment = Enum.TextXAlignment.Left
            
            TabTitle.Name = "TabTitle"
            TabTitle.Parent = TabItem
            TabTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TabTitle.BackgroundTransparency = 1.000
            TabTitle.Position = UDim2.new(0.078651689, 0, 0, 0)
            TabTitle.Size = UDim2.new(0, 164, 0, 34)
            TabTitle.Font = Enum.Font.Arial
            TabTitle.Text = tab_options.title
            TabTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            TabTitle.TextSize = 16.000
            TabTitle.TextStrokeTransparency = 0.500
            TabTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            TabLine.Name = "Line"
            TabLine.Parent = TabItem
            TabLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TabLine.BorderSizePixel = 0
            TabLine.Position = UDim2.new(0, 0, -0.00479305489, 0)
            TabLine.Size = UDim2.new(0, 6, 0, 33)
            TabLine.Visible = false
            
            TabLineGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(32, 83, 177)), ColorSequenceKeypoint.new(0.08, Color3.fromRGB(68, 137, 255)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(68, 137, 255)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(68, 137, 255)), ColorSequenceKeypoint.new(0.55, Color3.fromRGB(50, 104, 189)), ColorSequenceKeypoint.new(0.96, Color3.fromRGB(60, 126, 221)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(39, 98, 130))}
            TabLineGradient.Rotation = 180
            TabLineGradient.Parent = TabLine

            TabItem.MouseButton1Click:Connect(function()
                for _, tab in pairs(tabs) do
                    if _ ~= tab_options.id then
                        tab.toggled = false
                        tab.line.Visible = false
                    end
                end
                for _, groupbox in pairs(groupboxes) do
                    if groupbox.parent_id ~= tab_options.id then
                        groupbox.box.Visible = false
                    else
                        groupbox.box.Visible = true
                    end
                end
                tabs[tab_options.id].toggled = not tabs[tab_options.id].toggled
                TabLine.Visible = tabs[tab_options.id].toggled
            end)

            tabs[tab_options.id] = tab_data
            tabs[tab_options.id].line = TabLine

            function tab_data:AddGroupBox(groupbox_options)
                local groupbox_data = {};

                local SettingsBox = Instance.new("Frame")
                local BoxTopBar = Instance.new("Frame")
                local BoxTitle = Instance.new("TextLabel")
                local BoxLine = Instance.new("Frame")
                local LineGradient = Instance.new("UIGradient")
                local BoxScrollFrame = Instance.new("ScrollingFrame")
                local BoxScrollListLayout = Instance.new("UIListLayout")

                SettingsBox.Name = "SettingsBox"
                SettingsBox.Parent = SettingsList
                SettingsBox.BackgroundColor3 = Color3.fromRGB(31, 31, 41)
                SettingsBox.BorderSizePixel = 0
                SettingsBox.Position = UDim2.new(-0.0413043499, 7, -0.0189701896, 0)
                SettingsBox.Size = UDim2.new(0, 228, 0, 369)
                SettingsBox.Visible = false

                BoxTopBar.Name = "BoxTopBar"
                BoxTopBar.Parent = SettingsBox
                BoxTopBar.BackgroundColor3 = Color3.fromRGB(41, 41, 52)
                BoxTopBar.BorderSizePixel = 0
                BoxTopBar.Size = UDim2.new(0, 228, 0, 34)

                BoxTitle.Name = "BoxTitle"
                BoxTitle.Parent = BoxTopBar
                BoxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                BoxTitle.BackgroundTransparency = 1.000
                BoxTitle.Position = UDim2.new(0.0350877196, 0, 0, 0)
                BoxTitle.Size = UDim2.new(0, 220, 0, 28)
                BoxTitle.Font = Enum.Font.Arial
                BoxTitle.Text = groupbox_options.title
                BoxTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                BoxTitle.TextSize = 16.000
                BoxTitle.TextStrokeTransparency = 0.500
                BoxTitle.TextXAlignment = Enum.TextXAlignment.Left

                BoxLine.Name = "Line"
                BoxLine.Parent = BoxTopBar
                BoxLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                BoxLine.BorderSizePixel = 0
                BoxLine.Position = UDim2.new(0, 0, 0.848148108, 0)
                BoxLine.Size = UDim2.new(0, 228, 0, 4)

                LineGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(32, 83, 177)), ColorSequenceKeypoint.new(0.08, Color3.fromRGB(68, 137, 255)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(68, 137, 255)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(68, 137, 255)), ColorSequenceKeypoint.new(0.55, Color3.fromRGB(68, 137, 255)), ColorSequenceKeypoint.new(0.96, Color3.fromRGB(60, 126, 221)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(39, 98, 130))}
                LineGradient.Parent = BoxLine

                BoxScrollFrame.Parent = SettingsBox
                BoxScrollFrame.Active = true
                BoxScrollFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                BoxScrollFrame.BackgroundTransparency = 1.000
                BoxScrollFrame.BorderSizePixel = 0
                BoxScrollFrame.Position = UDim2.new(0, 4, 0.0920000002, 4)
                BoxScrollFrame.Size = UDim2.new(0, 219, 0, 326)
                BoxScrollFrame.CanvasPosition = Vector2.new(0, 0)
                BoxScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(84, 84, 84)
                BoxScrollFrame.ScrollBarImageTransparency = 0.5
                BoxScrollFrame.ScrollBarThickness = 5

                BoxScrollListLayout.Parent = BoxScrollFrame
                BoxScrollListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                BoxScrollListLayout.Padding = UDim.new(0, 5)

                groupboxes[groupbox_options.id] = groupbox_data
                groupboxes[groupbox_options.id].parent_id = tab_options.id
                groupboxes[groupbox_options.id].box = SettingsBox

                return groupbox_data
            end

            return tab_data
        end

        return window_data
    end
end

return library;
