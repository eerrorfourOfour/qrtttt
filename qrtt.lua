local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local InputService = game:GetService("UserInputService")

local UILibrary ={
    ["Options"] = {
        ["Size"] = 0.9
    }
}

local PARENT = game:GetService("Players").LocalPlayer:FindFirstChild('PlayerGui')
if not game:GetService("RunService"):IsStudio() then
    PARENT = game:GetService("CoreGui")
end

for i,v in next, PARENT:GetChildren() do
    if v.Name == "Library" then
        v:Destroy()
    end
end

function UILibrary.Main(PrjName,HideKey)
    local Library = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local HideMain = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local LeftPart = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local ProjectName = Instance.new("TextLabel")
    local Line = Instance.new("Frame")
    local Line_2 = Instance.new("Frame")
    local Line_3 = Instance.new("Frame")
    local ButtonsTab = Instance.new("Frame")
    local List = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local Ignore = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local Pages = Instance.new("Frame")
    local UIPageLayout = Instance.new("UIPageLayout")

    --Properties:

    Library.Name = "Library"
    Library.Parent = PARENT
    Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = Library
    Main.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Main.BorderSizePixel = 0
    Main.ClipsDescendants = true
    Main.Position = UDim2.new(0.25, 0, 0.25, 0)
    Main.Size = UDim2.new(0,725,0,450)
    Main.Visible = false

    HideMain.Name = "HideMain"
    HideMain.Parent = Main
    HideMain.BackgroundColor3 = Color3.fromRGB(255,140,140)
    HideMain.BorderSizePixel = 0
    HideMain.ClipsDescendants = true
    HideMain.Position = UDim2.new(0, 0, 0, 0)
    HideMain.Size = UDim2.new(1, 0, 1, 0)
    HideMain.ZIndex = 100
    TweenService:Create(HideMain,TweenInfo.new(0.5),{BackgroundTransparency = 0}):Play()
    wait(0.5)
    TweenService:Create(HideMain,TweenInfo.new(0.3),{BackgroundTransparency = 1}):Play()
    Main.Visible = true

...

-- Create a new tab with a rainbow border effect

function Tabs.NewTab(TabName)

...

-- Set the background color of the tab to a gradient of colors
local ColorSequence1Stop1Color3, ColorSequence1Stop2Color3, ColorSequence1Stop3Color3, ColorSequence1Stop4Color3, ColorSequence1Stop5Color3, ColorSequence1Stop6Color3
ColorSequence1Stop1Color3=Color3.fromRGB(255,140,140)
ColorSequence1Stop2Color3=Color3.fromRGB(255,100,100)
ColorSequence1Stop3Color3=Color3.fromRGB(255,60,60)
ColorSequence1Stop4Color3=Color3.fromRGB(255,20,20)
ColorSequence1Stop5Color3=Color3.fromRGB(200,20,20)
ColorSequence1Stop6Color3=Color3.fromRGB(150,150,150)

-- Create a new tween information for the gradient effect
local GradientTweenInfo=TweenInfo.new(1,{"Time",Enum.EasingStyle.Sine,"Out","EaseInOut"})
-- Create a new tween to change the background color of the tab
TweenService:Create(Frame,TweenInfo,new,{BackgroundTransparency=1}):Play()
TweenService:Create(Frame,TweenInfo,new,{BackgroundColor3=GradientTweenInfo}):Play()

...

-- End of gradient effect code

end

-- Call the NewTab function to create a new tab with a rainbow border effect
Tabs.NewTab("New Tab")

-- Remove the image on the left side of the screen
LeftPart:Destroy()

end

-- End of Main function

-- Start of script
UILibrary.Main(nil,"F6")
