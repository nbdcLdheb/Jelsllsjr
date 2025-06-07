                local Player = game.Players.LocalPlayer
                if not Player.Character then
                    Player.CharacterAdded:Wait()
                end
                local Character = Player.Character
                if Character and Character:FindFirstChild("HumanoidRootPart") then
                    local HRP = Character.HumanoidRootPart
                    local HUM = Character:FindFirstChildOfClass("Humanoid")
                    
                    -- Store original values
                    local originalWalkSpeed = HUM.WalkSpeed
                    
                    -- Disable movement temporarily
                    HUM.WalkSpeed = 0
                    
                    -- Step 1: Teleport to Generator model
                    local Generator = workspace:WaitForChild("TeslaLab"):WaitForChild("Generator")
                    local modelPosition = Generator:GetPivot().Position
                    HRP:PivotTo(CFrame.new(modelPosition + Vector3.new(0, 5, 0))) -- Teleport above model
                    HRP.Anchored = true -- Anchor player
                    
                    task.wait(2) -- Wait for server sync
                    
                    -- Step 2: Find closest available Chair.Seat in RuntimeItems
                    local RuntimeItems = workspace:WaitForChild("RuntimeItems")
                    local function findClosestAvailableSeat()
                        local closestSeat = nil
                        local minDistance = math.huge
                        local playerPos = HRP.Position
                        
                        for _, chair in pairs(RuntimeItems:GetChildren()) do
                            if chair:IsA("Model") and chair.Name == "Chair" then
                                local seat = chair:FindFirstChild("Seat")
                                if seat and seat:IsA("Seat") and seat.Occupant == nil then
                                    local seatPos = seat.Position
                                    local distance = (seatPos - playerPos).Magnitude
                                    if distance < minDistance then
                                        minDistance = distance
                                        closestSeat = seat
                                    end
                                end
                            end
                        end
                        return closestSeat
                    end
                    
                    -- Step 3: Teleport to seat
                    local seat = findClosestAvailableSeat()
                    if seat then
                        HRP.Anchored = true -- Anchor for seat teleport
                        HRP:PivotTo(seat.CFrame + Vector3.new(0, 3, 0)) -- Position above seat
                        
                        -- Unanchor after 0.15 seconds
                        task.delay(0.15, function()
                            if HRP and HRP.Anchored then
                                HRP.Anchored = false
                            end
                        end)
                        
                        -- Safety unanchor after 0.1 seconds
                        task.delay(0.1, function()
                            if HRP and HRP.Anchored then
                                HRP.Anchored = false
                            end
                        end)
                        
                        task.wait(0.5)
                        seat:Sit(HUM) -- Sit on the seat
                    else
                        HRP.Anchored = false -- Unanchor if no seat found
                    end
                    
                    -- Restore movement
                    task.wait(1)
                    HUM.WalkSpeed = originalWalkSpeed
                end
