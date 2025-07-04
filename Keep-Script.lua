repeat 
	task.wait()
until game:IsLoaded() and game:GetService("Players") and game:GetService("Players").LocalPlayer

if game.PlaceId == 126884695634066 then
	loadstring(game:HttpGet("https://github.com/96soul/Utilities/blob/main/GrowAGarden/GAG?raw=true", true))()
elseif game.PlaceId == 126509999114328 then
	loadstring(game:HttpGet("https://github.com/96soul/Utilities/blob/main/99night/main?raw=true", true))()
elseif game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
	loadstring(game:HttpGet("https://github.com/96soul/Utilities/blob/main/Bloxfruit/main?raw=true", true))()
end
