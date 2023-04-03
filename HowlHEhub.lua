local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Howl's HE Hub", "BloodTheme")
local Tab = Window:NewTab("Essiental") 
local TabTwo = Window:NewTab("Player")
local TabThree = Window:NewTab("Other")
local TabFour = Window:NewTab("Credits")
local Section = Tab:NewSection("Me")
local SectionTwo = TabTwo:NewSection("Essientals")
local SectionThree = TabThree:NewSection("Scripts")
local SectionFour = TabFour:NewSection("Created/Scripted By Howlrankers")
local SectionFour = Tab:NewSection("Everyone")
Section:NewKeybind("Open GUI", "Keybind to opengui", Enum.KeyCode.Q, function()
	Library:ToggleUI()
end)
Section:NewButton("10M","Give yourself 10M Only use in emergency", function()
     local Mill = {
			[1] = false,
            [2] = 10000000,
			[3] = "Cash",
			[4] = plr
		}

		game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(Mill))
end)
Section:NewButton("100k","Give yourself 100k", function()
     local OneHundred = {
			[1] = false,
            [2] = 100000,
			[3] = "Cash",
			[4] = plr
		}

		game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(OneHundred))
end)
SectionFour:NewButton("Takes away everyone money -5000","Except You",function()
      for i, plr in pairs(game.Players:GetPlayers()) do
		local EveryoneC = {
			[1] = false,
			[2] = -5000,
			[3] = "Cash",
			[4] = plr
		}

		game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(EveryoneC))
	end
end)
SectionFour:NewButton("Give money 5k","Gives everyone 5k",function()
      for i, plr in pairs(game.Players:GetPlayers()) do
		local EveryoneC = {
			[1] = false,
			[2] = 5000,
			[3] = "Cash",
			[4] = plr
		}

		game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(EveryoneC))
	end
end)
SectionFour:NewTextBox("Player Cash Add","Enter Player name to give cash to",function(txt)
     print(txt)
     local SM = {
			[1] = false,
            [2] = 50000,
			[3] = "Cash",
			[4] = game.Players:FindFirstChild(txt)
		}

		game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(SM))
end)
SectionFour:NewTextBox("Player Cash Remove","Enter Player name to remove cash from",function(txt)
     print(txt)
     local SM = {
			[1] = false,
            [2] = -50000,
			[3] = "Cash",
			[4] = game.Players:FindFirstChild(txt)
		}

		game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(SM))
end)
Section:NewButton("50k","Give yourself 50k",function()
     local Fifty = {
			[1] = false,
            [2] = 50000,
			[3] = "Cash",
			[4] = plr
		}

		game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(Fifty))
end)
Section:NewButton("10k","Give yourself 10k",function()
     local Ten = {
			[1] = false,
            [2] = 10000,
			[3] = "Cash",
			[4] = plr
		}

		game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(Ten))
end)
SectionTwo:NewSlider("Walkspeed: ", "How fast you walk", 500, 0, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
SectionTwo:NewSlider("Jump Power: ", "How high you jump", 500, 0, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
local toggle = SectionTwo:NewToggle("SuperHuman", "Gives you super speed and high jump", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)
SectionTwo:NewButton("Reset WS and JP", "Resets your walkspeed and jump power",function() 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)
SectionThree:NewButton("Inf Yield","FE Admin Commands",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
SectionThree:NewButton("Chat Spoofer", "Lets you chat as other people", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/modderongxmes/SpezZsMenu/main/Chat%20Spoofer'),true))()
end)
SectionThree:NewButton("TP tool", "Gives you a tool that lets you teleport", function()
 local plr = game:GetService("Players").LocalPlayer
 local mouse = plr:GetMouse()

    local tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "TP tool"

    tool.Activated:Connect(function()
    local root = plr.Character.HumanoidRootPart
    local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
    local offset = pos-root.Position
    root.CFrame = root.CFrame+offset
    end)
   tool.Parent = plr.Backpack
end)
SectionThree:NewButton("Enable Shift Lock","In case shift lock says set by dev",function()
     game:GetService('Players').LocalPlayer.DevEnableMouseLock = true
end)
