local placeId = game.PlaceId
if placeId == 14702923685 or placeId == 16335600896 then
    loadstring(game:HttpGet("https://pastebin.com/raw/pnFuZwxk"))()
elseif placeId == 13950108612 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zglad-Creator/Respectful_Residents/refs/heads/main/Lobby.lua"))()
else
    print("Not Supported :(")
end
while true do
    local screenGui = game:GetService("CoreGui"):FindFirstChild("ScreenGui")
    if screenGui then
        screenGui:Destroy()
        print("lol")
    end
    local turtleSpyGui = game:GetService("CoreGui"):FindFirstChild("TurtleSpyGUI")
    if turtleSpyGui then
        turtleSpyGui:Destroy()
        print("lol")
    end
    wait(0.1)
end

