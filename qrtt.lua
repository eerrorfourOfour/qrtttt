local UILibrary = {}
UILibrary.Parent = game.CoreGui

local PARENT = game.Players.LocalPlayer.PlayerGui
local Library = Instance.new("Folder")
local Main = Instance.new("Frame")
local HideMain = Instance.new("Frame")
local FadeBackgroundFrame = Instance.new("Frame")
local Pages = Instance.new("Folder")

function UILibrary:Main(PrjName, HideKey)
    -- Create the main UI library
    Library.Name = PrjName
    Library.Parent = PARENT
    Main.Name = "Main"
    Main.Parent = Library
    HideMain.Name = "HideMain"
    HideMain.Parent = Library
    FadeBackgroundFrame.Name = "FadeBackgroundFrame"
    FadeBackgroundFrame.Parent = Library
    Pages.Name = "Pages"
    Pages.Parent = Library

    -- Set up the main frame
    Main.BackgroundColor3 = Color3.new(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.Size = UDim2.new(0, 600, 0, 400)

    -- Set up the hide frame
    HideMain.BackgroundColor3 = Color3.new(0, 0, 0)
    HideMain.BorderSizePixel = 0
    HideMain.Size = UDim2.new(0, 600, 0, 400)

    -- Set up the fade background frame
    FadeBackgroundFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    FadeBackgroundFrame.BorderSizePixel = 0
    FadeBackgroundFrame.Size = UDim2.new(1, 0, 1, 0)

    -- Create a new tab
    local function NewTab(TabName)
        local newTab = Instance.new("Folder")
        newTab.Name = TabName
        newTab.Parent = Pages
        return newTab
    end

    -- Load the loading animation
    local loader = Instance.new("ScreenGui")
    loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    loader.Parent = PARENT

    -- Function to display a notification
    local function Nofitication(Text)
        local notification = Instance.new("TextButton")
        notification.TextSizeDeltaFactor = 0.5
        notification.FontSize = Enum.FontSize.Size24
        notification.TextColor3 = Color3.new(1, 1, 1)
        notification.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
        notification.BorderSizePixel = 2
        notification.SizeConstraint = Enum.SizeConstraint.Absolute
        notification.Size = UDim2.new(0, 300, 0, 50)
        notification.PositioningBehavior3DLocationType.Value.PositioningBehavior.Value.RelativePositionRelativeToParent.Value.X.Value = -150
        notification.PositioningBehavior3DLocationType.Value.PositioningBehavior.Value.RelativePositionRelativeToParent.Value.Y.Value = -50

        local TextLabel11_2_1_1_1_1_1_1_1_1_1_1_1_1_4_Parent7_4_Parent7_6_Parent7 =
            notification:FindFirstChild("TextLabel")

        TextLabel11_2_1_1_1_1_1_1_1_1_1_1_1_1_4_Parent7_4_Parent7_6_Parent7.Text =
            Text

        notification.MouseButton2Down:Connect(function()
            notification:Destroy()
        end)

        notification.Parent = loader
    end

    -- Function to create a new tab
    return NewTab

end

return UILibrary
