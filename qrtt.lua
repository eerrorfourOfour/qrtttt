local GUI_LIBRARY = {}

local userInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

local guiFrame = Instance.new("ScreenGui")
guiFrame.Parent = player.PlayerGui

local function createTab(label, frame)
    local tab = Instance.new("Frame")
    tab.Name = label
    tab.Size = UDim2.new(0, 128, 0, 24)
    tab.Position = UDim2.new(0, 0, 0, 0)
    tab.BackgroundTransparency = 1
    frame:AddChild(tab)
    
    local tabLabel = Instance.new("TextLabel")
    tabLabel.Parent = tab
    tabLabel.Text = label
    tabLabel.FontSize = Enum.FontSize.Size14
    tabLabel.Font = Enum.Font.Antenna
    tabLabel.TextColor3 = Color3.new(1, 1, 1)
end

local function createList(frame)
    local listLayout = Instance.new("UIListLayout")
    listLayout.Parent = frame
    
    return listLayout
end

local function createNotification(text)
    local notificationFrame = Instance.new("Frame")
    notificationFrame.Size = UDim2.new(0, 200, 0, 20)
    notificationFrame.Position = UDim2.new(0, -100, 0, -50)
    notificationFrame.BackgroundTransparency = 0.5
    
    local notificationText = Instance.new("TextLabel")
    notificationText.Parent = notificationFrame
    notificationText.Text = text
    notificationText.FontSize = Enum.FontSize.Size14
    notificationText.Font = Enum.Font.Antenna
    notificationText.TextColor3 = Color3.new(1, 1, 1)
    
    return notificationFrame
end

GUI_LIBRARY.Visible = false

userInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode["Backslash"] then
        GUI_LIBRARY.Visible = not GUI_LIBRARY.Visible
    end
end)

function GUI_LIBRARY:Load()
    
end

return GUI_LIBRARY
