
-- First, load Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create a Window
local Window = Rayfield:CreateWindow({
    Name = "Radiant Residents: Zgladius",
    LoadingTitle = "Zgladius",
    LoadingSubtitle = "Please wait...",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "DefenseConfig",
        FileName = "Settings"
    }
})

-- Notify on load
Rayfield:Notify({
    Title = "Enjoy!",
    Content = "Made By Zgladius",
    Duration = 6.5,
    Image = 4483362458,
    Actions = {
        Ignore = {
            Name = "Thanks!",
            Callback = function()
                print("NP bro")
            end
        }
    }
})

-- Defense Tab
local DefenseTab = Window:CreateTab("Defense Controls")

DefenseTab:CreateButton({
    Name = "Skip Cutscene",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SkippedCutscene"):FireServer()
    end,
})


DefenseTab:CreateToggle({
    Name = "Auto Charge Bunker Defences",
    CurrentValue = false,
    Callback = function(Value)
        while Value do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SecurityCamera"):WaitForChild("ChangingHealth"):FireServer()
            wait(0.4)
        end
    end,
})
DefenseTab:CreateToggle({
    Name = "Auto Charge Antivirus",
    CurrentValue = false,
    Callback = function(Value)
        local args = {[1] = "Healed"}
        while Value do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Virus"):FireServer(unpack(args))
            wait(5)
        end
    end,
})
DefenseTab:CreateToggle({
    Name = "Auto Charge Generator",
    CurrentValue = false,
    Callback = function(Value)
        while Value do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ChangingGeneratorHealth"):FireServer()
            wait(5)
        end
    end,
})
DefenseTab:CreateToggle({
    Name = "Auto Heal",
    CurrentValue = false,
    Callback = function(Value)
        while Value do
            local args = {[1] = -500, [2] = true}
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ChangingPlayerHealth"):FireServer(unpack(args))
            wait(0.1)
        end
    end,
})

-- Utility Operations Tab
local UtilityTab = Window:CreateTab("Utility Operations")
UtilityTab:CreateToggle({
    Name = "Auto Clean Toilet",
    CurrentValue = false,
    Callback = function(Value)
        while Value do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CleanedToilet"):FireServer()
            wait(10)
        end
    end,
})
UtilityTab:CreateToggle({
    Name = "Auto Clean Trash",
    CurrentValue = false,
    Callback = function(Value)
        while Value do
            for count = 1, 20 do
                local args = {[1] = "Trash" .. count}
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PickingUpTrash"):FireServer(unpack(args))
            end
            wait(6)
        end
    end,
})
UtilityTab:CreateToggle({
    Name = "Auto Fix Pipes",
    CurrentValue = false,
    Callback = function(Value)
        while Value do
            for i = 1, 7 do
                local pipeName = "Pipe" .. i
                local args = {
                    [1] = workspace:WaitForChild("Basement"):WaitForChild("Important"):WaitForChild("Pipes"):WaitForChild(pipeName)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FixingPipes"):FireServer(unpack(args))
            end
            wait(10)
        end
    end,
})
UtilityTab:CreateToggle({
    Name = "Auto Repair Water Leaks",
    CurrentValue = false,
    Callback = function(Value)
        while Value do
            for i = 1, 7 do
                local pointName = "WaterLeakPoint" .. i
                local args = {
                    [1] = workspace:WaitForChild("Basement"):WaitForChild("Important"):WaitForChild("WaterDropletSpawnpoint"):WaitForChild(pointName)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FixWaterLeak"):FireServer(unpack(args))
            end
            wait(7)
        end
    end,
})
UtilityTab:CreateToggle({
    Name = "Auto Sleep",
    CurrentValue = false,
    Callback = function(Value)
        while Value do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SleepVote"):FireServer()
            wait(240) -- Wait 4 minutes
        end
    end,
})

-- Special Controls Tab
local SpecialControlsTab = Window:CreateTab("Special Controls")
SpecialControlsTab:CreateButton({
    Name = "Respawn",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Respawn"):FireServer()
    end,
})

SpecialControlsTab:CreateButton({
    Name = "Start BBQ ending",
    Callback = function()
        local args = {
            [1] = true
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("StoryRandomEventsFolder"):WaitForChild("BBQ"):WaitForChild("Events"):WaitForChild("StartEnding"):FireServer(unpack(args))
    end,
})  -- This comma was missing

-- Toggle for Auto Respawn
SpecialControlsTab:CreateToggle({
    Name = "Auto Respawn",
    CurrentValue = false,
    Callback = function(Value)
        while Value do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Respawn"):FireServer()
            wait(300) -- Wait 5 minutes (300 seconds)
        end
    end,
})


-- "Give Stuff" Tab
local GiveStuffTab = Window:CreateTab("Give Stuff")

-- Button for giving 200 of everything
GiveStuffTab:CreateButton({
    Name = "Give 200 of everything",
    Callback = function()
        local replicatedStorage = game:GetService("ReplicatedStorage")
        local players = game:GetService("Players")
        local localPlayer = players.LocalPlayer
        
        -- Assuming this is the structure of your GUI and item IDs
        local gui = localPlayer.PlayerGui.BasementItemGUIs.Computer.Background.Market
        local productIDs = {
            Battery = gui.ProductIDs.Battery,
            BugSpray = gui.ProductIDs.BugSpray,
            Water = gui.ProductIDs.Water,
            CannedFood = gui.ProductIDs.CannedFood,
            DuctTape = gui.ProductIDs.DuctTape,
            Medkit = gui.ProductIDs.Medkit,
            Soap = gui.ProductIDs.Soap,
            Toolbox = gui.ProductIDs.Toolbox
        }
        
        local event = replicatedStorage.Events.BoughtProductFromMarket
        
        -- Function to purchase a specific item 200 times
        local function purchaseItem(productID)
            for i = 1, 200 do
                event:FireServer(productID)
            end
        end
        
        -- Trigger purchases for all items
        for itemName, id in pairs(productIDs) do
            purchaseItem(id)
        end
    end
})

local itemNames = {"Battery", "BugSpray", "Water", "CannedFood", "DuctTape", "Medkit", "Soap", "Toolbox"}
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local replicatedStorage = game:GetService("ReplicatedStorage")

for _, itemName in ipairs(itemNames) do
    GiveStuffTab:CreateInput({
        Name = itemName,
        PlaceholderText = "Enter amount for " .. itemName,
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            local amount = tonumber(Text)
            if amount then
                local productID = localPlayer.PlayerGui:FindFirstChild("BasementItemGUIs", true).Computer.Background.Market.ProductIDs[itemName]
                if productID then
                    for i = 1, amount do
                        replicatedStorage.Events.BoughtProductFromMarket:FireServer(productID)
                    end
                else
                    warn("Product ID for " .. itemName .. " not found")
                end
            else
                warn("Invalid amount entered for " .. itemName)
            end
        end,
    })
end


-- Special Controls Tab
local SpecialControlsTab = Window:CreateTab("Special Controls")

-- List of all weapons
local weaponNames = {"Syringe", "Wrench", "PowerFist", "Crowbar", "SkeletonMace"}

-- Function to acquire a weapon
local function acquireWeapon(weaponName)
    local args = {[1] = weaponName}
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("StartVote"):FireServer(unpack(args))
end

-- Create a button for each weapon
for _, weapon in ipairs(weaponNames) do
    SpecialControlsTab:CreateButton({
        Name = "Get " .. weapon,
        Callback = function()
            acquireWeapon(weapon)
        end,
    })
end

-- Create a button to give all weapons
SpecialControlsTab:CreateButton({
    Name = "Give All Weapons",
    Callback = function()
        for _, weapon in ipairs(weaponNames) do
            acquireWeapon(weapon)
        end
    end,
})
-- New Items Control Tab
local ItemsControlTab = Window:CreateTab("Items Control")







-- Function to adjust item amounts
local function adjustItemAmount(itemName, amount)
    local args = {
        [1] = "Pay Virus Requested Amount",
        [2] = itemName,
        [3] = amount
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("StartVote"):FireServer(unpack(args))
end

-- Iterate through each item in the folder
for _, item in pairs(workspace.Basement.Important.Items:GetChildren()) do
    local itemName = item.Name -- Assume the item name is the folder's name

    -- Create input for adding or removing items
    ItemsControlTab:CreateInput({
        Name = "Adjust " .. itemName,
        PlaceholderText = "Enter amount to add (positive) or remove (negative)",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            local amount = tonumber(Text)
            if amount then
                adjustItemAmount(itemName, -amount) -- Negative to add items due to script specifics
            end
        end,
    })

    -- Create a button for quick adding of items
    ItemsControlTab:CreateButton({
        Name = "Add 300 " .. itemName,
        Callback = function()
            adjustItemAmount(itemName, -300) -- Adds 300 items
        end,
    })

    -- Create a button for quick removal of items
    ItemsControlTab:CreateButton({
        Name = "Remove 300 " .. itemName,
        Callback = function()
            adjustItemAmount(itemName, 300) -- Removes 300 items
        end,
    })
end



-- Add button to give 999 of all items
ItemsControlTab:CreateButton({
    Name = "Give 999 of All Items",
    Callback = function()
        for _, item in pairs(workspace.Basement.Important.Items:GetChildren()) do
            local itemName = item.Name -- Assumes item names are the folder's names
            adjustItemAmount(itemName, -999) -- Adds 999 items since negative amounts are used to add items
        end
    end,
})


-- Function to remove exact amount of each item
local function removeExactAmount(itemName, amount)
    local args = {
        [1] = "Pay Virus Requested Amount",
        [2] = itemName,
        [3] = amount  -- Positive number to remove the exact amount held
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("StartVote"):FireServer(unpack(args))
end

-- Create a button to remove all supplies based on the exact amounts taken
ItemsControlTab:CreateButton({
    Name = "Remove Taken Supplies",
    Callback = function()
        for _, item in pairs(workspace.GameInfo.TakenItems:GetChildren()) do
            local itemName = item.Name -- Assumes item names are the folder's names
            local currentAmount = item.Value -- Assuming each child has a Value property with the number held
            if currentAmount > 0 then
                removeExactAmount(itemName, currentAmount)
            end
        end
    end,
})


-- Create a new tab called 'Extra'
local ExtraTab = Window:CreateTab("Extra")

-- Create a text input in the 'Extra' tab
ExtraTab:CreateInput({
    Name = "Enter Value",
    PlaceholderText = "Type here and press enter...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        local args = {
            [1] = Text,  -- First parameter from input
            [2] = Text   -- Second parameter from input
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("StartVote"):FireServer(unpack(args))
    end,
})


ExtraTab:CreateButton({
    Name = "Vote for Myself x4",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local args = {player, true}
        local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ActiveVoteCounting")
        
        for i = 1, 4 do
            event:FireServer(unpack(args))
        end
    end,
})

-- 'Upgrade Weapons' tab
local UpgradeWeaponsTab = Window:CreateTab("Upgrade Weapons")
local weapons = game:GetService("ReplicatedStorage").Weapons.Tools:GetChildren()

-- Function to upgrade a weapon
local function upgradeWeapon(weaponName)
    local args = {
        [1] = "Upgrade Weapon: " .. weaponName,
        [2] = weaponName
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("StartVote"):FireServer(unpack(args))
end

-- Create a Button for Each weapon
for _, weapon in pairs(weapons) do
    UpgradeWeaponsTab:CreateButton({
        Name = "Upgrade " .. weapon.Name,
        Callback = function()
            upgradeWeapon(weapon.Name)
        end,
    })
end

-- Create a button to upgrade all weapons 8 times
UpgradeWeaponsTab:CreateButton({
    Name = "Upgrade All Weapons 8 Times",
    Callback = function()
        for _, weapon in pairs(weapons) do
            for i = 1, 8 do
                upgradeWeapon(weapon.Name)
            end
        end
    end,
})


