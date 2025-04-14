local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local character = Player.Character or Player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local gui = Player.PlayerGui
local screenGui = gui.ScreenGui
local isUlted = character:GetAttribute("Ulted")

-- sounds start

local HttpService = game:GetService("HttpService")

local S1 = Instance.new("Sound", character)
local S2 = Instance.new("Sound", character)
local S3 = Instance.new("Sound", character)
local S4 = Instance.new("Sound", character)
local SU = Instance.new("Sound", character)
local SD = Instance.new("Sound", character)
local ULT = Instance.new("Sound", character)
local ULT2 = Instance.new("Sound", character)

local url1 = "https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/SFX/Effects/AltWoosh.mp3"
local url2 = "https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/SFX/Effects/AltWoosh2.mp3"
local url3 = "https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/SFX/Effects/AltWoosh3.mp3"
local url4 = "https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/SFX/Effects/AltWoosh.mp3"
local urlSU = "https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/SFX/Effects/Slam2.mp3"
local urlSD = "https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/SFX/Effects/SlamHard1.mp3"
local urlULT = "https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/SFX/Effects/LeatherCrunch.mp3"
local urlULT2 = "https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/SFX/Voice/500.mp3"

writefile("AltWoosh.mp3", game:HttpGet(url1))
writefile("AltWoosh2.mp3", game:HttpGet(url2))
writefile("AltWoosh3.mp3", game:HttpGet(url3))
writefile("Slam2.mp3", game:HttpGet(urlSU))
writefile("SlamHard1.mp3", game:HttpGet(urlSD))
writefile("LeatherCrunch.mp3", game:HttpGet(urlULT))
writefile("500.mp3", game:HttpGet(urlULT2))

S1.SoundId = getcustomasset('AltWoosh.mp3') 
S2.SoundId = getcustomasset('AltWoosh2.mp3')
S3.SoundId = getcustomasset('AltWoosh3.mp3')
S4.SoundId = getcustomasset('AltWoosh.mp3')
SU.SoundId = getcustomasset('Slam2.mp3')
SD.SoundId = getcustomasset('SlamHard1.mp3')
ULT.SoundId = getcustomasset('LeatherCrunch.mp3')
ULT2.SoundId = getcustomasset('500.mp3')


--sounds end

local idle = Instance.new("Animation")
idle.AnimationId = "rbxassetid://17124061663"

local IdleTrack = humanoid:LoadAnimation(idle)
IdleTrack.Looped = true
IdleTrack.Priority = Enum.AnimationPriority.Action
local function playAnimation()
	IdleTrack:Play()
end

local Dash = "12772543293" 
local Dash2 = "17838006839" 
local m1 = "13491635433" 
local m2 = "17325522388"
local m3 = "14001963401"
local m4 = "15162694192"
local ult = "80518687127249"
local slam = "16571909908"
local upper = "10503381238"
pcall(function() getgenv().dash:Disconnect() end)
getgenv().dash = humanoid.AnimationPlayed:Connect(function(animationTrack)
	if animationTrack.Animation.AnimationId == "rbxassetid://10479335397" then
		local anim1 = Instance.new("Animation")
		local anim2 = Instance.new("Animation")
		anim1.AnimationId = "rbxassetid://" .. Dash
		anim2.AnimationId = "rbxassetid://" .. Dash2
		local loadedAnim1 = humanoid:LoadAnimation(anim1)
		local loadedAnim2 = humanoid:LoadAnimation(anim2)

		loadedAnim1.Priority = Enum.AnimationPriority.Action3
		loadedAnim2.Priority = Enum.AnimationPriority.Action3
		loadedAnim1:Play()
		loadedAnim1.TimePosition = 2
		loadedAnim1:AdjustSpeed(-1.2)
		task.wait(0.2)
		loadedAnim2:Play()
		loadedAnim2:AdjustSpeed(1)
		task.wait(0.1)
		loadedAnim1:Stop()
		task.wait(0.4)
		loadedAnim2:Stop()
		playAnimation()
	end
end)
getgenv().two = humanoid.AnimationPlayed:Connect(function(animationTrack)
	if animationTrack.Animation.AnimationId == "rbxassetid://10469630950" then
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://" .. m2
		local loadedAnim = humanoid:LoadAnimation(anim)

		loadedAnim.Priority = Enum.AnimationPriority.Action2
		loadedAnim:Play()
		loadedAnim:AdjustSpeed(1.5)
	end
end)
pcall(function() getgenv().one:Disconnect() end)
getgenv().one = humanoid.AnimationPlayed:Connect(function(animationTrack)
	if animationTrack.Animation.AnimationId == "rbxassetid://10469493270" then
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://" .. m1
		local loadedAnim = humanoid:LoadAnimation(anim)
		S1:Play()
		loadedAnim.Priority = Enum.AnimationPriority.Action2
		loadedAnim:Play()
		loadedAnim:AdjustSpeed(1.5)
	end
end)
pcall(function() getgenv().two:Disconnect() end)
getgenv().two = humanoid.AnimationPlayed:Connect(function(animationTrack)
	if animationTrack.Animation.AnimationId == "rbxassetid://10469630950" then
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://" .. m2
		local loadedAnim = humanoid:LoadAnimation(anim)
		S2:Play()
		loadedAnim.Priority = Enum.AnimationPriority.Action2
		loadedAnim:Play()
		loadedAnim:AdjustSpeed(1.5)
	end
end)
pcall(function() getgenv().three:Disconnect() end)
getgenv().three = humanoid.AnimationPlayed:Connect(function(animationTrack)
	if animationTrack.Animation.AnimationId == "rbxassetid://10469639222" then
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://" .. m3
		local loadedAnim = humanoid:LoadAnimation(anim)
		S3:Play()
		loadedAnim.Priority = Enum.AnimationPriority.Action2
		loadedAnim:Play()
		loadedAnim:AdjustSpeed(1.7)
	end
end)
pcall(function() getgenv().four:Disconnect() end)
getgenv().four = humanoid.AnimationPlayed:Connect(function(animationTrack)
	if animationTrack.Animation.AnimationId == "rbxassetid://10469643643" then
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://" .. m4
		local loadedAnim = humanoid:LoadAnimation(anim)
		S4:Play()
		loadedAnim.Priority = Enum.AnimationPriority.Action2
		loadedAnim:Play()
		loadedAnim:AdjustSpeed(1.5)
	end
end)
pcall(function() getgenv().ult:Disconnect() end)
getgenv().ult = humanoid.AnimationPlayed:Connect(function(animationTrack)
	if animationTrack.Animation.AnimationId == "rbxassetid://12447707844" then
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://" .. ult
		local loadedAnim = humanoid:LoadAnimation(anim)
		ULT:Play()
		ULT2:Play()
		loadedAnim.Priority = Enum.AnimationPriority.Action2
		loadedAnim:Play()
		loadedAnim:AdjustSpeed(.8)
	end
end)
pcall(function() getgenv().slam:Disconnect() end)
getgenv().ult = humanoid.AnimationPlayed:Connect(function(animationTrack)
	if animationTrack.Animation.AnimationId == "rbxassetid://10470104242" then
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://" .. slam
		local loadedAnim = humanoid:LoadAnimation(anim)
		local S = Instance.new("Sound", character)
		SD:Play()
		loadedAnim.Priority = Enum.AnimationPriority.Action2
		loadedAnim:Play()
		loadedAnim.TimePosition = 1.65
		loadedAnim:AdjustSpeed(2)
	end
end)
pcall(function() getgenv().upper:Disconnect() end)
getgenv().upper = humanoid.AnimationPlayed:Connect(function(animationTrack)
	if animationTrack.Animation.AnimationId == "rbxassetid://10503381238" then
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://" .. upper
		local loadedAnim = humanoid:LoadAnimation(anim)
		SU:Play()
		loadedAnim.Priority = Enum.AnimationPriority.Action2
		loadedAnim:Play()
		loadedAnim:AdjustSpeed(1.1)
	end
end)
