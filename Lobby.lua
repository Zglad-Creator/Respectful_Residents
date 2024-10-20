-- Create a new tab for the lobbies
local LobbiesTab = Window:CreateTab("Available Lobbies")

-- Get the ScrollingFrame and its children
local scrollingFrame = game:GetService("Players").LocalPlayer.PlayerGui.AvailableLobbies.Background.ScrollingFrame
local children = scrollingFrame:GetChildren()

-- Iterate through each child to create a toggle (excluding UI elements)
for _, child in pairs(children) do
    if child:IsA("GuiObject") then
        LobbiesTab:CreateToggle({
            Name = child.Name,
            CurrentValue = false,
            Callback = function(Value)
                if Value then
                    spawn(function()
                        while Value do
                            wait(0.05)
                            local args = {
                                [1] = game:GetService("ReplicatedStorage"):WaitForChild("Lobbies"):WaitForChild(child.Name)
                            }
                            game:GetService("ReplicatedStorage"):WaitForChild("JoiningLobby"):InvokeServer(unpack(args))
                        end
                    end)
                end
            end,
        })
    end
end
