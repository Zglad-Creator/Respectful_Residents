
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
            wait(240)
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
})
SpecialControlsTab:CreateToggle({
    Name = "Auto Respawn",
    CurrentValue = false,
    Callback = function(Value)
        while Value do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Respawn"):FireServer()
            wait(300) 
        end
    end,
})
local GiveStuffTab = Window:CreateTab("Give Stuff")
GiveStuffTab:CreateButton({
    Name = "Give 200 of everything",
    Callback = function()
        local replicatedStorage = game:GetService("ReplicatedStorage")
        local players = game:GetService("Players")
        local localPlayer = players.LocalPlayer
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
        local function purchaseItem(productID)
            for i = 1, 200 do
                event:FireServer(productID)
            end
        end
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
local SpecialControlsTab = Window:CreateTab("Special Controls")
local weaponNames = {"Syringe", "Wrench", "PowerFist", "Crowbar", "SkeletonMace"}
local function acquireWeapon(weaponName)
    local args = {[1] = weaponName}
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("StartVote"):FireServer(unpack(args))
end
for _, weapon in ipairs(weaponNames) do
    SpecialControlsTab:CreateButton({
        Name = "Get " .. weapon,
        Callback = function()
            acquireWeapon(weapon)
        end,
    })
end
SpecialControlsTab:CreateButton({
    Name = "Give All Weapons",
    Callback = function()
        for _, weapon in ipairs(weaponNames) do
            acquireWeapon(weapon)
        end
    end,
})
local ItemsControlTab = Window:CreateTab("Items Control")
local function adjustItemAmount(itemName, amount)
    local args = {
        [1] = "Pay Virus Requested Amount",
        [2] = itemName,
        [3] = amount
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("StartVote"):FireServer(unpack(args))
end
for _, item in pairs(workspace.Basement.Important.Items:GetChildren()) do
    local itemName = item.Name 
    ItemsControlTab:CreateInput({
        Name = "Adjust " .. itemName,
        PlaceholderText = "Enter amount to add (positive) or remove (negative)",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            local amount = tonumber(Text)
            if amount then
                adjustItemAmount(itemName, -amount)
            end
        end,
    })

    ItemsControlTab:CreateButton({
        Name = "Add 300 " .. itemName,
        Callback = function()
            adjustItemAmount(itemName, -300)
        end,
    })
    ItemsControlTab:CreateButton({
        Name = "Remove 300 " .. itemName,
        Callback = function()
            adjustItemAmount(itemName, 300)
        end,
    })
end
ItemsControlTab:CreateButton({
    Name = "Give 999 of All Items",
    Callback = function()
        for _, item in pairs(workspace.Basement.Important.Items:GetChildren()) do
            local itemName = item.Name 
            adjustItemAmount(itemName, -999) 
        end
    end,
})
