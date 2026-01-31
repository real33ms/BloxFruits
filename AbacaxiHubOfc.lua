-- GUI Script Off
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")

-- Parent
ScreenGui.Parent = game:GetService("CoreGui")

-- Frame
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.5, -200, 0.5, -100)
Frame.Size = UDim2.new(0, 400, 0, 200)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true

-- Text
TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 10, 0, 20)
TextLabel.Size = UDim2.new(1, -20, 0, 120)
TextLabel.TextWrapped = true
TextLabel.TextScaled = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Script off now,\nDiscord for more informations:\nhttps://discord.gg/8HEEPX3JU"

-- Close Button
CloseButton.Parent = Frame
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.Position = UDim2.new(0.5, -50, 1, -50)
CloseButton.Size = UDim2.new(0, 100, 0, 35)
CloseButton.Text = "Close"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextScaled = true

-- Button Function
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
