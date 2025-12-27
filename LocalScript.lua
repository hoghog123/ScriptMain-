local ply = game:GetService("Players")
local GetSer = game:GetService("ReplicatedStorage")
local plyr = ply.kuroebi1gou
local char = plyr.Character or plyr.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local part1 = Instance.new("Part")
part1.Size = Vector3.new(4.318, 6.695, 0.119)
part1.Parent = char
part1.CanCollide = false
part1.Transparency = 1
part1.Position = hrp.Position + Vector3.new(-11.714, 3.546, 1.761)
part1.CanTouch = false
part1.Name = "Part1"

local Motor1 = Instance.new("Motor6D")
Motor1.Part0 = hrp
Motor1.Part1 = part1
Motor1.C0 = CFrame.new(0, 0, 2.3)
Motor1.C1 = CFrame.Angles(math.rad(0), 0, 0)
Motor1.Parent = part1

local part2 = Instance.new("Part")
part2.Size = Vector3.new(4.318, 6.695, 0.119)
part2.Parent = char
part2.CanCollide = false
part2.Transparency = 1
part2.Position = hrp.Position + Vector3.new(-9.703, 3.543, -0.602)
part2.Name = "Part2"

local Motor2 = Instance.new("Motor6D")
Motor2.Part0 = hrp
Motor2.Part1 = part2
Motor2.C0 = CFrame.new(0, 0, -2.3)
Motor2.C1 = CFrame.Angles(math.rad(0), 0, 0)
Motor2.Parent = part2

local part3 = Instance.new("Part")
part3.Size = Vector3.new(0.039, 6.695, 4.698)
part3.Position = hrp.Position + Vector3.new(-13.878, 3.555, -0.602)
part3.Parent = char
part3.CanCollide = false
part3.Transparency = 1
part3.Name = "Part3"

local Motor3 = Instance.new("Motor6D")
Motor3.Part0 = hrp
Motor3.Part1 = part3
Motor3.C0 = CFrame.new(2.15, 0, 0)
Motor3.C1 = CFrame.Angles(math.rad(0), 0, 0)
Motor3.Parent = part3

local part4 = Instance.new("Part")
part4.Size = Vector3.new(0.039, 6.695, 4.698)
part4.Position = hrp.Position + Vector3.new(-11.801, 3.542, -2.881)
part4.Parent = char
part4.CanCollide = false
part4.Transparency = 1
part4.Name = "Part4"

local Motor4 = Instance.new("Motor6D")
Motor4.Part0 = hrp
Motor4.Part1 = part4
Motor4.C0 = CFrame.new(-2.15, 0, 0)
Motor4.C1 = CFrame.Angles(math.rad(0), 0, 0)
Motor4.Parent = part4

local part5 = Instance.new("Part")
part5.Size = Vector3.new(4.326, 0.104, 4.698)
part5.Position = hrp.Position + Vector3.new(-11.74, 6.856, -0.602)
part5.Parent = char
part5.CanCollide = false
part5.Transparency = 1
part5.Name = "Part5"

local Motor5 = Instance.new("Motor6D")
Motor5.Part0 = hrp
Motor5.Part1 = part5
Motor5.C0 = CFrame.new(0, 3.3, 0)
Motor5.C1 = CFrame.Angles(math.rad(0), 0, 0)
Motor5.Parent = part5

local Base = Instance.new("ScreenGui")
Base.Parent = plyr.PlayerGui
Base.IgnoreGuiInset = true
Base.ResetOnSpawn = false
Base.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Base1 = Instance.new("Frame")
Base1.Parent = Base
Base1.Size = UDim2.new(0, 300, 0, 300)
Base1.Position = UDim2.new(0, 0, 0, 0)
Base1.BackgroundTransparency = 1
Base1.Visible = true

local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0, 45, 0, 45)
btn.Position = UDim2.new(0, 50, 0, 0)
btn.Text = "Click On!"
btn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
btn.Parent = Base1
btn.Visible = true

local btn01 = Instance.new("TextButton")
btn01.Size = UDim2.new(0, 45, 0, 45)
btn01.Position = UDim2.new(0, 50, 0, 0)
btn01.Text = "Click Off!"
btn01.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
btn01.Parent = Base1
btn01.Visible = false

local Drag = Instance.new("UIDragDetector")
Drag.Parent = Base1

local ChangeColor = Instance.new("TextButton")
ChangeColor.Size = UDim2.new(0, 45, 0, 45)
ChangeColor.Position = UDim2.new(0, 0, 0, 0)
ChangeColor.Text = "Change"
ChangeColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChangeColor.Parent = Base1
ChangeColor.TextColor3 = Color3.fromRGB(0, 0, 0)
ChangeColor.Visible = false

local ChangeColor1 = Instance.new("TextButton")
ChangeColor1.Size = UDim2.new(0, 45, 0, 45)
ChangeColor1.Position = UDim2.new(0, 0, 0, 0)
ChangeColor1.Text = "Stop"
ChangeColor1.BackgroundColor3 = Color3.fromRGB(108, 0, 0)
ChangeColor1.Parent = Base1
ChangeColor1.Visible = false
ChangeColor1.TextColor3 = Color3.fromRGB(255, 255, 255)
ChangeColor1.ZIndex = 2

local function ChangeTheColor()
	ChangeColor1.Visible = true
	part1.BrickColor = BrickColor.new("Dark red")
	part2.BrickColor = BrickColor.new("Dark red")
	part3.BrickColor = BrickColor.new("Dark red")
	part4.BrickColor = BrickColor.new("Dark red")
	part5.BrickColor = BrickColor.new("Dark red")
	part1.Transparency = 0.5
	part2.Transparency = 0.5
	part3.Transparency = 0.5
	part4.Transparency = 0.5
	part5.Transparency = 0.5
end

local function ChangeNotColor()
	ChangeColor1.Visible = false
	part1.Transparency = 1
	part2.Transparency = 1
	part3.Transparency = 1
	part4.Transparency = 1
	part5.Transparency = 1
end

local function on()
	part1.CanCollide = true
	part2.CanCollide = true
	part3.CanCollide = true
	part4.CanCollide = true
	part5.CanCollide = true
	btn01.Visible = true
	btn.Visible = false
	ChangeColor.Visible = true
end

local function off()
	part1.Transparency = 1
	part2.Transparency = 1
	part3.Transparency = 1
	part4.Transparency = 1
	part5.Transparency = 1
	part1.CanCollide = false
	part2.CanCollide = false
	part3.CanCollide = false
	part4.CanCollide = false
	part5.CanCollide = false
	btn01.Visible = false
	ChangeColor.Visible = false
	btn01.Visible = false
	btn.Visible = true
end

btn.MouseButton1Down:Connect(on)
btn01.MouseButton1Down:Connect(off)
ChangeColor.MouseButton1Down:Connect(ChangeTheColor)
ChangeColor1.MouseButton1Down:Connect(ChangeNotColor)