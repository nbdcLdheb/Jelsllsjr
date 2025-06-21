if game.CoreGui:FindFirstChild("WeldButton") == nil then
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "WeldButton"
gui.Enabled = false

local Frame1 = Instance.new("Frame")
Frame1.Name = "Frame1"
Frame1.Size = UDim2.new(0, 50, 0, 50)
Frame1.Position = UDim2.new(0.9, 0, 0.3, 0)
Frame1.BackgroundColor3 = Color3.new(0, 0, 0)
Frame1.BorderColor3 = Color3.new(0, 0, 0)
Frame1.BorderSizePixel = 1
Frame1.Active = true
Frame1.BackgroundTransparency = 0.85
Frame1.Draggable = false
Frame1.Parent = gui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Frame1

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Position = UDim2.new(0, 0, 0, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 1
TextButton.Text = "Weld"
TextButton.TextSize = 18
TextButton.FontFace = Font.new("rbxassetid://12187372175", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextButton.BackgroundTransparency = 0.5
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Parent = Frame1
TextButton.MouseButton1Click:Connect(function()
if workspace:FindFirstChild("RuntimeItems") then
for i, v in pairs(workspace.RuntimeItems:GetChildren()) do
if v.ClassName == "Model" and v.PrimaryPart ~= nil then
if v.PrimaryPart:FindFirstChild("DragAlignPosition") then
for j, x in pairs(workspace:GetChildren()) do
if x:IsA("Model") and x:FindFirstChild("RequiredComponents") and x.RequiredComponents:FindFirstChild("Base") then
if v.PrimaryPart:FindFirstChild("DragWeldConstraint") == nil then
game:GetService("ReplicatedStorage").Shared.Network.RemoteEvent.RequestWeld:FireServer(v, x.RequiredComponents:FindFirstChild("Base"))
end
end
end
end
end
end
end
end)

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = TextButton

local UICorner = Instance.new("UIStroke")
UICorner.Color = Color3.new(0, 0, 0)
UICorner.Thickness = 2.5
UICorner.Parent = Frame1

local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	Frame1.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

TextButton.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = false
		dragStart = input.Position
		startPos = Frame1.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

TextButton.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging then
		update(input)
	end
end)
end

function TweenWalk(Part)
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil then
local bv = Instance.new("BodyVelocity")
bv.Name = "VelocityHandler"
bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bv.MaxForce = Vector3.new(100000, 100000, 100000)
bv.Velocity = Vector3.new(0, 0, 0)
end
local TweenService = game:GetService("TweenService")
local Tween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Part).Magnitude / 16, Enum.EasingStyle.Linear), {CFrame = CFrame.new(Part)})
Tween:Play()
Tween.Completed:Wait()
Tween:Cancel()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
end
end
end
_G.CharacterToYour = {["Head"] = (game.Players.LocalPlayer.Character:FindFirstChild("Head").Size)}



if game.CoreGui:FindFirstChild("WeldButton") then
game.CoreGui:FindFirstChild("WeldButton").Enabled = Value
end
    end
})
