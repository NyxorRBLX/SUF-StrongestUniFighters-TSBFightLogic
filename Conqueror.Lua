local Players = game:GetService("Players")
local function playRespawnSequence(character)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/Vilpart1.lua"))()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/Vilpart2.lua"))()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/Vilpart3.lua"))()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/CONQUEROR-Complete/Vilpart4.lua"))()
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        playRespawnSequence(character)
    end)
end)

for _, player in Players:GetPlayers() do
    if player.Character then
        playRespawnSequence(player.Character)
    end
    player.CharacterAdded:Connect(function(character)
        playRespawnSequence(character)
    end)
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/FlightSysTemp/AirCombatFOV.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/FlightSysTemp/AirCombatLockOn.Lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NyxorRBLX/SUF-StrongestUniFighters-TSBFightLogic/refs/heads/main/FlightSysTemp/AirCombatFlightV0.5.lua"))()
