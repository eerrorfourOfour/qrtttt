-- GUI Library

-- Constants
local HIDE_KEY = "GUI_Hide"
local GUI_LIBRARY = script

-- Services
local userInputService = game:GetService("UserInputService")

-- Functions

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

local function hideGUI()
    GUI_LIBRARY.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode["Backslash"] then
            GUI_LIBRARY.Visible = not GUI_LIBRARY.Visible
        end
    end)
end

-- Create GUI Frame
local guiFrame = Instance.new("ScreenGui")
guiFrame.Name = "GUI"
guiFrame.Parent = game.Players.LocalPlayer.PlayerGui

-- Create Tabs Frame
local tabsFrame = Instance.new("Folder")
tabsFrame.Name = "Tabs"
tabsFrame.Parent = guiFrame

-- Create List Frame
local listFrame = Instance.new("Folder")
listFrame.Name = "List"
listFrame.Parent = guiFrame

-- Create Notification Frame
local notificationFrameParent = Instance.new("Folder")
notificationFrameParent.Name = "Notifications"
notificationFrameParent.Parent = guiFrame

-- Create Tabs and List
createTab("Tab 1", tabsFrame)
createTab("Tab 2", tabsFrame)

local listLayout = createList(listFrame)

-- Create Notification popup
local notificationPopupParentedToNotificationFrame

-- Set GUI Visible by default to false and add event listener to show/hide when pressing backslash key
GUI_LIBRARY.Visible = false

hideGUI()

-- Load GUI into the game (can be called when needed)
function GUI_LIBRARY:Load()
    
end

return GUI_LIBRARY
