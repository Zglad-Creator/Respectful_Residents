local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create a Window
local Window = Rayfield:CreateWindow({
    Name = "Lobby by Zgladius",
    LoadingTitle = "Loading Lobby Gui by Zgladius...",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "SanityConfig",
        FileName = "SanitySettings"
    }
})
--Sanity controlz tab
local SanityTab = Window:CreateTab("Sanity Control")
local Label = SanityTab:CreateLabel("Made By Zgladius")
SanityTab:CreateInput({
    Name = "Add Custom Sanity",
    PlaceholderText = "Enter amount of sanity",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        local amount = tonumber(Text)
        if amount then
            game:GetService("ReplicatedStorage").BuyTheme:InvokeServer(-amount, "Luxury")
            print("Added " .. amount .. " Sanity.")
        else
            print("Invalid input. Please enter a number.")
        end
    end,
})

--remove all sanity
SanityTab:CreateButton({
    Name = "Remove All Sanity Points",
    Callback = function()
        local sanityPoints = game:GetService("Players").LocalPlayer.leaderstats["Sanity Points"].Value
        game:GetService("ReplicatedStorage").BuyTheme:InvokeServer(sanityPoints, "Luxury")
        print("Removed " .. sanityPoints .. " Sanity Points.")
    end,
})

--bunker list
local bunkers = {
    "Aquarium", "Artificial Happiness", "Asylum", "BBQ", "Birthday Party", 
    "Christmas", "Cozy Cabin", "Dollhouse", "Fallout", "Halloween", 
    "Japan", "Lab", "Luxury", "Overgrown", "Raiders", 
    "Realistic Basement", "Space", "Survivor", "Void"
}

-- Add a button to buy all bunkers for 0 sanity points
SanityTab:CreateButton({
    Name = "Buy All Bunkers for 0 Sanity",
    Callback = function()
        for _, bunker in ipairs(bunkers) do
            game:GetService("ReplicatedStorage").BuyTheme:InvokeServer(0, bunker)
            print("Purchased bunker: " .. bunker .. " for 0 Sanity Points.")
        end
    end,

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

-- Create a function to refresh lobby buttons
local function refreshLobbies()
    -- Clear previous buttons
    SanityTab:Clear()

    -- Create buttons for each lobby
    for _, lobby in pairs(ReplicatedStorage.Lobbies:GetChildren()) do
        -- Get the player's UserId (assuming the child name is their UserId)
        local userId = tonumber(lobby.Name)
        if userId then
            -- Get the player's username from UserId
            local success, playerName = pcall(function()
                return Players:GetNameFromUserIdAsync(userId)
            end)

            -- Check if successful
            if success then
                SanityTab:CreateButton({
                    Name = "Join " .. playerName .. "'s Lobby",
                    Callback = function()
                        local args = {
                            [1] = lobby
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("JoiningLobby"):InvokeServer(unpack(args))
                        print("Attempting to join lobby: " .. playerName)
                    end,
                })
            else
                print("Failed to get username for UserId: " .. lobby.Name)
            end
        end
    end
end

-- Check and refresh every 3 seconds
while true do
    refreshLobbies()
    wait(3)
end

