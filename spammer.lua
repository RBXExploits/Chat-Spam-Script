local ChatSpam = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local cooldown = Instance.new("TextBox")
local msg = Instance.new("TextBox")
local start = Instance.new("TextButton")
local topbar = Instance.new("Frame")
local title = Instance.new("TextLabel")
ChatSpam.Name = "ChatSpam"
ChatSpam.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ChatSpam.Enabled = true
ChatSpam.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.Name = "main"
main.Parent = ChatSpam
main.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
main.BorderColor3 = Color3.fromRGB(255, 0, 0)
main.BorderSizePixel = 3
main.Position = UDim2.new(0.0386579335, 0, 0.0538555682, 0)
main.Size = UDim2.new(0, 422, 0, 159)
cooldown.Name = "cooldown"
cooldown.Parent = main
cooldown.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
cooldown.BorderSizePixel = 0
cooldown.Position = UDim2.new(0.0331753567, 0, 0.249181837, 0)
cooldown.Size = UDim2.new(0, 393, 0, 36)
cooldown.Font = Enum.Font.SciFi
cooldown.PlaceholderColor3 = Color3.fromRGB(167, 167, 167)
cooldown.PlaceholderText = "Cooldown"
cooldown.Text = ""
cooldown.TextColor3 = Color3.fromRGB(255, 255, 255)
cooldown.TextSize = 28.000
cooldown.TextWrapped = true
cooldown.TextXAlignment = Enum.TextXAlignment.Left
msg.Name = "msg"
msg.Parent = main
msg.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
msg.BorderSizePixel = 0
msg.Position = UDim2.new(0.0331753567, 0, 0.513332784, 0)
msg.Size = UDim2.new(0, 393, 0, 36)
msg.Font = Enum.Font.SciFi
msg.PlaceholderColor3 = Color3.fromRGB(167, 167, 167)
msg.PlaceholderText = "Text to spam"
msg.Text = ""
msg.TextColor3 = Color3.fromRGB(255, 255, 255)
msg.TextSize = 28.000
msg.TextWrapped = true
msg.TextXAlignment = Enum.TextXAlignment.Left
start.Name = "start"
start.Parent = main
start.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
start.BorderColor3 = Color3.fromRGB(255, 0, 0)
start.BorderSizePixel = 2
start.Position = UDim2.new(0.0331753567, 0, 0.779874206, 0)
start.Size = UDim2.new(0, 393, 0, 27)
start.Font = Enum.Font.SourceSans
start.Text = "Spam"
start.TextColor3 = Color3.fromRGB(255, 255, 255)
start.TextSize = 16.000
topbar.Name = "topbar"
topbar.Parent = main
topbar.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
topbar.BorderColor3 = Color3.fromRGB(255, 0, 0)
topbar.BorderSizePixel = 0
topbar.Position = UDim2.new(0, 0, -0.000326717593, 0)
topbar.Size = UDim2.new(0, 421, 0, 27)
title.Name = "title"
title.Parent = topbar
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Size = UDim2.new(0, 421, 0, 27)
title.Font = Enum.Font.SciFi
title.Text = "Chat Spam By : mov5#5020"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 17.000
title.TextWrapped = true
local function GMZS_fake_script() -- start.txtlawl 
	local script = Instance.new('LocalScript', start)

	game:GetService("RunService").RenderStepped:Connect(function()
		if msg.Text == '' then
			
		else
			start.Text = 'Spam "'.. msg.Text.. '"'
		end
	end)
end
coroutine.wrap(GMZS_fake_script)()
local function NAQLO_fake_script() -- main.main 
	local script = Instance.new('LocalScript', main)

	start.MouseButton1Click:Connect(function()
	
		local text = msg.Text
		local kooldown = cooldown.Text
		
	while wait(kooldown) do
		local args = {
			[1] = text,
			[2] = "All"
		}
	
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			
		end
	end)
end
coroutine.wrap(NAQLO_fake_script)()
local function BSTDLJT_fake_script() -- ChatSpam.LocalScript 
	local script = Instance.new('LocalScript', ChatSpam)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = main
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(BSTDLJT_fake_script)()
