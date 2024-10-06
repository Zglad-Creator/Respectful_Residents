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
    "Aquarium", "Artificial Happiness","Alien", "Asylum", "BBQ", "Birthday Party", 
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
})

SanityTab:CreateButton({
    Name = "Delete Duplicate Bunker Themes",
    Callback = function()
        local bunkerThemes = game:GetService("Players").LocalPlayer:WaitForChild("BunkerThemes"):GetChildren()
        local seenThemes = {}

        for _, theme in pairs(bunkerThemes) do
            if not seenThemes[theme.Name] then
                seenThemes[theme.Name] = true  -- Mark theme as seen
            else
                theme:Destroy()  -- Destroy duplicate theme
                print("Deleted duplicate theme: " .. theme.Name)
            end
        end

        print("Completed deletion of duplicate bunker themes.")
    end,
})


-- Button to first clear sanity to zero, then add 7 sanity every 0.00001 seconds
SanityTab:CreateButton({
    Name = "Reset Sanity and Add 7 Every 0.00001 Seconds",
    Callback = function()
        -- Remove all sanity points
        local sanityPoints = game:GetService("Players").LocalPlayer.leaderstats["Sanity Points"].Value
        game:GetService("ReplicatedStorage").BuyTheme:InvokeServer(sanityPoints, "Luxury")
        print("Removed " .. sanityPoints .. " Sanity Points.")

        -- Start adding 7 sanity every 0.00001 seconds
        spawn(function()
            while true do
                game:GetService("ReplicatedStorage").BuyTheme:InvokeServer(-957, "Luxury")
            end
        end)
    end,
})






