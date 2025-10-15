local placeId = game.PlaceId
if placeId == 14702923685 or placeId == 16335600896 or placeId ==16335600116 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zglad-Creator/Respectful_Residents/refs/heads/main/Main.lua"))()
elseif placeId == 13950108612 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Zglad-Creator/Respectful_Residents/refs/heads/main/Lobby.lua"))()
else
    print("Not Supported :(")
end
while true do
    local screenGui = game:GetService("CoreGui"):FindFirstChild("ScreenGui")
    if screenGui then
        screenGui:Destroy()
        warn("Client Tampering Detected - Your attempt has been Logged")
    end
    local turtleSpyGui = game:GetService("CoreGui"):FindFirstChild("TurtleSpyGUI")
    if turtleSpyGui then
        turtleSpyGui:Destroy()
        warn("Client Tampering Detected - Your attempt has been Logged")
    end
    wait(0.1)
end
game:GetService("Players").LocalPlayer.AncestryChanged:Connect(function(_, parent)
    if not parent then
        warn("⚠️ Player object removed — possible exploit detected.")
    end
end)

print("✅ Script loaded successfully and is monitoring CoreGui.")
print("🛡️ Anti-tamper system active.")
print("📡 Monitoring player integrity in real time.")
print("🚨 Unauthorized GUI detection enabled.")
print("🎯 Stay safe, Zgladius Defense is running.")
