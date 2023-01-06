local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local RS = game:GetService('RunService')
local UIS = game:GetService('UserInputService')
local TS = game:GetService('TweenService')

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

local function Resize(part, new, _delay)
	_delay = _delay or 0.5
	local tweenInfo = TweenInfo.new(_delay, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local tween = TS:Create(part, tweenInfo, new)
	tween:Play()
end

local function gMouse()
	return Vector2.new(UIS:GetMouseLocation().X + 1, UIS:GetMouseLocation().Y - 35)
end

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

                function groupbox_data:Checkbox(checkbox_options, callback)
                    local CheckboxSetting = Instance.new("Frame")
                    local Check = Instance.new("TextButton")
                    local CheckLabel = Instance.new("TextLabel")

                    CheckboxSetting.Name = "CheckboxSetting"
                    CheckboxSetting.Parent = BoxScrollFrame
                    CheckboxSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    CheckboxSetting.BackgroundTransparency = 1.000
                    CheckboxSetting.BorderSizePixel = 0
                    CheckboxSetting.Size = UDim2.new(0, 186, 0, 23)
                    
                    Check.Name = "Check"
                    Check.Parent = CheckboxSetting
                    Check.BackgroundColor3 = Color3.fromRGB(31, 31, 41) -- enabled : 0, 119, 255
                    Check.BorderColor3 = Color3.fromRGB(53, 53, 63)
                    Check.Position = UDim2.new(0.0215053763, 0, 0.222222328, 0)
                    Check.Size = UDim2.new(0, 15, 0, 15)
                    Check.Font = Enum.Font.SourceSans
                    Check.Text = ""
                    Check.TextColor3 = Color3.fromRGB(0, 0, 0)
                    Check.TextSize = 14.000
                    
                    CheckLabel.Name = "CheckLabel"
                    CheckLabel.Parent = CheckboxSetting
                    CheckLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    CheckLabel.BackgroundTransparency = 1.000
                    CheckLabel.Position = UDim2.new(0.139784947, 0, 0.222222224, 0)
                    CheckLabel.Size = UDim2.new(0, 160, 0, 15)
                    CheckLabel.Font = Enum.Font.Arial
                    CheckLabel.Text = checkbox_options.title
                    CheckLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    CheckLabel.TextSize = 16.000
                    CheckLabel.TextStrokeTransparency = 0.500
                    CheckLabel.TextXAlignment = Enum.TextXAlignment.Left

                    local toggled = checkbox_options.default

                    toggles[checkbox_options.id] = {};
                    toggles[checkbox_options.id].value = toggled

                    if toggled then
                        Check.BackgroundColor3 = Color3.fromRGB(0, 119, 255)
                    else
                        Check.BackgroundColor3 = Color3.fromRGB(31, 31, 41)
                    end

                    Check.MouseButton1Click:Connect(function(x, y)
                        toggled = not toggled
                        toggles[checkbox_options.id].value = toggled
                        if toggled then
                            Check.BackgroundColor3 = Color3.fromRGB(0, 119, 255)
                        else
                            Check.BackgroundColor3 = Color3.fromRGB(31, 31, 41)
                        end

                        if callback then
                            callback(toggled)
                        end
                    end)

                    return toggles[checkbox_options.id]
                end

                function groupbox_data:Slider(slider_options, callback)
                    local SliderSetting = Instance.new("Frame")
                    local SliderLabel = Instance.new("TextLabel")
                    local SliderFrame = Instance.new("Frame")
                    local SliderBar = Instance.new('Frame')
                    local SliderAmount = Instance.new("TextLabel")

                    SliderSetting.Name = "SliderSetting"
                    SliderSetting.Parent = BoxScrollFrame
                    SliderSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    SliderSetting.BackgroundTransparency = 1.000
                    SliderSetting.BorderSizePixel = 0
                    SliderSetting.Position = UDim2.new(0, 0, 0.0858895704, 0)
                    SliderSetting.Size = UDim2.new(0, 186, 0, 36)

                    SliderLabel.Name = "SliderLabel"
                    SliderLabel.Parent = SliderSetting
                    SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    SliderLabel.BackgroundTransparency = 1.000
                    SliderLabel.Position = UDim2.new(0.0215053763, 0, 0, 0)
                    SliderLabel.Size = UDim2.new(0, 182, 0, 21)
                    SliderLabel.Font = Enum.Font.Arial
                    SliderLabel.Text = slider_options.title
                    SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    SliderLabel.TextSize = 16.000
                    SliderLabel.TextStrokeTransparency = 0.500
                    SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

                    SliderFrame.Name = "SliderFrame"
                    SliderFrame.Parent = SliderSetting
                    SliderFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 41)
                    SliderFrame.BorderColor3 = Color3.fromRGB(53, 53, 63)
                    SliderFrame.Position = UDim2.new(0.0215053763, 0, 0.699999988, 0)
                    SliderFrame.Size = UDim2.new(0, 182, 0, 7)

                    SliderBar.Name = "SliderBar"
                    SliderBar.Parent = SliderSetting
                    SliderBar.BackgroundColor3 = Color3.fromRGB(0, 137, 211)
                    SliderBar.BorderColor3 = Color3.fromRGB(53, 53, 63)
                    SliderBar.BorderSizePixel = 0
                    SliderBar.Position = UDim2.new(0.0215053763, 0, 0.699999988, 0)
                    SliderBar.Size = UDim2.new(0, 0, 0, 7) -- max is 182

                    SliderAmount.Name = "SliderAmount"
                    SliderAmount.Parent = SliderSetting
                    SliderAmount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    SliderAmount.BackgroundTransparency = 1.000
                    SliderAmount.Position = UDim2.new(0.559139788, 0, 0, 0)
                    SliderAmount.Size = UDim2.new(0, 82, 0, 21)
                    SliderAmount.Font = Enum.Font.Arial
                    SliderAmount.Text = tostring(slider_options.default or 0) .. "%"
                    SliderAmount.TextColor3 = Color3.fromRGB(163, 163, 163)
                    SliderAmount.TextSize = 16.000
                    SliderAmount.TextStrokeTransparency = 0.500
                    SliderAmount.TextXAlignment = Enum.TextXAlignment.Right

                    sliders[slider_options.id] = {};
                    sliders[slider_options.id].value = slider_options.default or 0

                    do -- slider stuff (put in do function cuz many codes ;)
                        local MouseEntered = false

                        SliderFrame.MouseEnter:Connect(function(x, y)
                            MouseEntered = true
                        end)

                        SliderFrame.MouseLeave:Connect(function(x, y)
                            MouseEntered = false
                        end)

                        local Held = false
                        UIS.InputBegan:Connect(function(input, gameProcessedEvent)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                Held = true

                                spawn(function()
                                    if MouseEntered then
                                        while Held do
                                            local mouse_location = gMouse()
                                            local x = (SliderFrame.AbsoluteSize.X - (SliderFrame.AbsoluteSize.X - ((mouse_location.X - SliderFrame.AbsolutePosition.X)) + 1)) / SliderFrame.AbsoluteSize.X
                                            -- ^ the fuck is this line LOL
                                            local min = 0
                                            local max = 1

                                            local size = min
                                            if x >= min and x <= max then
                                                size = x
                                            elseif x < min then
                                                size = min
                                            elseif x > max then
                                                size = max
                                            end

                                            SliderBar.Size = UDim2.new(size or min, 0, 0, 7)

                                            local p = math.floor((size or min) * 100)

                                            local maxv = slider_options.max
                                            local minv = slider_options.min
                                            local diff = maxv - minv

                                            local sel_value = math.floor(((diff / 100) * p) + minv)

                                            sliders[slider_options.id].value = sel_value
                                            SliderAmount.Text = tostring(sel_value) .. '%'
                                            if callback then
                                                callback(sel_value)
                                            end

                                            -- Resize(SliderBar, {Size = UDim2.new(size or min, 0, 0, 7)})

                                            RS.Heartbeat:Wait()
                                        end
                                    end
                                end)
                            end
                        end)

                        UIS.InputEnded:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                Held = false
                            end
                        end)
                    end
                end

                function groupbox_data:Combo(combo_options, callback)
                    local ComboSetting = Instance.new("Frame")
                    local ComboSelector = Instance.new("TextButton")
                    local ComboItem = Instance.new("TextLabel")
                    local ComboIndicator = Instance.new("TextLabel")
                    local ComboTitle = Instance.new("TextLabel")
                    
                    if not combo_options.items or #combo_options.items == 0 then error('empty combo created. id: ' .. combo_options.id) return end

					combos[combo_options.id] = {};

					local DefaultIndex = 0
					local valid_default = false
					for _, item in pairs(combo_options.items) do
						if item == combo_options.default then
							valid_default = true
							combos[combo_options.id].index = _
						end
					end
					if not valid_default then
						error('invalid default value in combo. id: ' .. combo_options.id)
						return
					end
					combos[combo_options.id].items = combo_options.items
					combos[combo_options.id].value = combo_options.default or ''

                    ComboSetting.Name = "ComboSetting"
                    ComboSetting.Parent = BoxScrollFrame
                    ComboSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ComboSetting.BackgroundTransparency = 1.000
                    ComboSetting.BorderSizePixel = 0
                    ComboSetting.Position = UDim2.new(0, 0, 0.628834367, 0)
                    ComboSetting.Size = UDim2.new(0, 186, 0, 74)

                    ComboSelector.Name = "ComboSelector"
                    ComboSelector.Parent = ComboSetting
                    ComboSelector.BackgroundColor3 = Color3.fromRGB(31, 31, 41)
                    ComboSelector.BorderColor3 = Color3.fromRGB(53, 53, 63)
                    ComboSelector.Position = UDim2.new(0.0166236553, 0, 0.408497334, 0)
                    ComboSelector.Size = UDim2.new(0, 182, 0, 32)
                    ComboSelector.Font = Enum.Font.SourceSans
                    ComboSelector.Text = ""
                    ComboSelector.TextColor3 = Color3.fromRGB(0, 0, 0)
                    ComboSelector.TextSize = 14.000

                    ComboItem.Name = "ComboItem"
                    ComboItem.Parent = ComboSetting
                    ComboItem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ComboItem.BackgroundTransparency = 1.000
                    ComboItem.Position = UDim2.new(0.0645161271, 0, 0.408497334, 0)
                    ComboItem.Size = UDim2.new(0, 150, 0, 31)
                    ComboItem.Font = Enum.Font.Arial
                    ComboItem.Text = combo_options.default or ''
                    ComboItem.TextColor3 = Color3.fromRGB(255, 255, 255)
                    ComboItem.TextSize = 16.000
                    ComboItem.TextStrokeTransparency = 0.500
                    ComboItem.TextWrapped = true
                    ComboItem.TextXAlignment = Enum.TextXAlignment.Left

                    ComboIndicator.Name = "ComboIndicator"
                    ComboIndicator.Parent = ComboSetting
                    ComboIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ComboIndicator.BackgroundTransparency = 1.000
                    ComboIndicator.Position = UDim2.new(0.833333313, 0, 0.408497334, 0)
                    ComboIndicator.Rotation = 90.000
                    ComboIndicator.Size = UDim2.new(0, 30, 0, 31)
                    ComboIndicator.Font = Enum.Font.Arial
                    ComboIndicator.Text = "| | |"
                    ComboIndicator.TextColor3 = Color3.fromRGB(112, 112, 112)
                    ComboIndicator.TextSize = 12.000
                    ComboIndicator.TextWrapped = true

                    ComboTitle.Name = "ComboTitle"
                    ComboTitle.Parent = ComboSetting
                    ComboTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ComboTitle.BackgroundTransparency = 1.000
                    ComboTitle.Position = UDim2.new(0.0215053745, 0, -0.0059171021, 0)
                    ComboTitle.Size = UDim2.new(0, 150, 0, 31)
                    ComboTitle.Font = Enum.Font.Arial
                    ComboTitle.Text = combo_options.title
                    ComboTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                    ComboTitle.TextSize = 16.000
                    ComboTitle.TextStrokeTransparency = 0.500
                    ComboTitle.TextWrapped = true
                    ComboTitle.TextXAlignment = Enum.TextXAlignment.Left

					ComboSelector.MouseButton1Click:Connect(function()						
						if combos[combo_options.id].index < #combo_options.items then
							combos[combo_options.id].index += 1
                            combos[combo_options.id].value = combo_options.items[combos[combo_options.id].index]
							ComboItem.Text = combo_options.items[combos[combo_options.id].index]
							-- print('added: ' .. combos[combo_options.id].index .. ' value: ' .. combos[combo_options.id].value)
                            if callback then
                                callback(combos[combo_options.id].value)
                            end
						end
					end)

                    ComboSelector.MouseButton2Click:Connect(function()
                        if combos[combo_options.id].index > 1 then
							combos[combo_options.id].index -= 1
                            combos[combo_options.id].value = combo_options.items[combos[combo_options.id].index]
							ComboItem.Text = combo_options.items[combos[combo_options.id].index]
							-- print('removed: ' .. combos[combo_options.id].index .. ' value: ' .. combos[combo_options.id].value)
                            if callback then
                                callback(combos[combo_options.id].value)
                            end
						end
                    end)

                    return combos[combo_options.id]
                end

                function groupbox_data:Textbox(textbox_options, callback)
                    local TextBoxSetting = Instance.new("Frame")
                    local TextBoxObject = Instance.new("TextBox")
                end

                return groupbox_data
            end

            return tab_data
        end

        return window_data
    end
end

return library;
