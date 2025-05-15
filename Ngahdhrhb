repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
-- Ui
getgenv().troi = "None or not update"
spawn(function()
    function MainWindow()
        function INIT()
            -- // GUI TO LUA \\ --
    
            -- // INSTANCES: 17 | SCRIPTS: 0 | MODULES: 0 \\ --
    
            local UI = {}
            local ts = game:GetService("TweenService")
            -- // StarterGui.ScreenGui \\ --
            UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
            UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
    
            -- // StarterGui.ScreenGui.Frame \\ --
            UI["2"] = Instance.new("Frame", UI["1"])
            UI["2"]["BorderSizePixel"] = 0
            UI["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
            UI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
            UI["2"]["Size"] = UDim2.new(0, 1262, 0, 826)
            UI["2"]["Position"] = UDim2.new(0.5, 0, 0.4997, 0)
            UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
            UI["2"]["BackgroundTransparency"] = 1
    
            -- // StarterGui.ScreenGui.Frame.CanvasGroup.UIStroke \\ --
            UI["5"] = Instance.new("UIStroke", UI["3"])
            UI["5"]["Color"] = Color3.fromRGB(0, 116, 255)
    
            -- // StarterGui.ScreenGui.Frame.CanvasGroup.Frame \\ --
            UI["6"] = Instance.new("Frame", UI["3"])
            UI["6"]["BorderSizePixel"] = 0
            UI["6"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46)
            UI["6"]["Size"] = UDim2.new(0, 388, 0, 47)
            UI["6"]["Position"] = UDim2.new(0, 0, 0.812, 0)
            UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    
            -- // StarterGui.ScreenGui.Frame.CanvasGroup.Frame.Frame \\ --
            UI["7"] = Instance.new("Frame", UI["6"])
            UI["7"]["BorderSizePixel"] = 0
            UI["7"]["BackgroundColor3"] = Color3.fromRGB(92, 92, 92)
            UI["7"]["AnchorPoint"] = Vector2.new(0, 1)
            UI["7"]["Size"] = UDim2.new(0, 388, 0, 2)
            UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    
            -- // StarterGui.ScreenGui.Frame.CanvasGroup.Frame.ImageLabel \\ --
            UI["8"] = Instance.new("ImageLabel", UI["6"])
            UI["8"]["BorderSizePixel"] = 0
            UI["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
            UI["8"]["Image"] = [[https://www.roblox.com/headshot-thumbnail/image?userId=]] .. tostring(game.Players.LocalPlayer.UserId) .. "&width=420&height=420&format=png"
            UI["8"]["Size"] = UDim2.new(0, 35, 0, 35)
            UI["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
            UI["8"]["BackgroundTransparency"] = 1
            UI["8"]["Position"] = UDim2.new(0.04897, 0, 0.12766, 0)
    

            -- // StarterGui.ScreenGui.Frame.CanvasGroup.Frame.ImageLabel.UICorner \\ --
            UI["9"] = Instance.new("UICorner", UI["8"])
  

            -- // StarterGui.ScreenGui.Frame.CanvasGroup.data \\ --
            UI["b"] = Instance.new("Folder", UI["3"])
            UI["b"]["Name"] = [[data]]
  
            _G.ISTOGGLING = false
            local IsToggle = UI["3"].Visible
            UI["10"].MouseButton1Down:Connect(function()
                if not _G.ISTOGGLING then
                    _G.ISTOGGLING = true
                    if IsToggle then
                        local troi = ts:Create(UI["3"], TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {
                            Size = UDim2.new(0,0,0,0)
                        })
                        troi:Play()
                        troi.Completed:Wait()
                        UI["3"].Visible = false
                    else
                        UI["3"].Visible = true
                        local troi = ts:Create(UI["3"], TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {
                            Size = UDim2.new(0, 388, 0, 250)
                        })
                        troi:Play()
                        troi.Completed:Wait()
                    end
                    IsToggle = not IsToggle
                    _G.ISTOGGLING = false
                end
            end)
    
            return setmetatable({}, {
                __index = function(ar, i)
                    if i == "bt" then
                        return function(v)
                            UI["c"]["Text"] = "Bounty: " .. tostring(v)
                        end
                    elseif i == "bte" then
                        return function(v)
                            UI["d"].Text = "Bounty Earned: " .. tostring(v)
                        end
                    elseif i == "tg" then
                        return function(a)
                            UI["e"].Text = "Is Targeting: " .. tostring(a)
                        end
                    elseif i == "t" then
                        return function(troi)
                            UI["f"].Text = "Time: " .. tostring(troi)
                        end
                    end
                end,
            })
        end
        local Window = INIT()
        local now = tick()
        if not isfolder("Mscuaz Hub") then
            makefolder("Mscuaz Hub")
        end
        if not isfile("./Mscuaz Hub/data_save.json") then
            writefile("./Mscuaz Hub/data_save.json", "{}")
        end
        local _i = game:GetService("HttpService")
        local o_ = readfile("./Mscuaz Hub/data_save.json")
        local _o = _i:JSONDecode(dt)
        local _v = {
            ["bounty"] = {
                ["set"] = function(v)
                    local dt = readfile("./Mscuaz Hub/data_save.json")
                    local troi = _i:JSONDecode(dt)
                    troi["data"]["Mscuaz"] = v
                    writefile("./Mscuaz Hub/data_save.json", _i:JSONEncode(troi))
                end,
                ["get"] = function()
                    local dt = readfile("./Mscuaz Hub/data_save.json")
                    local troi = _i:JSONDecode(dt)
                    return troi["data"]["Mscuaz"]
                end
            },
            ["time"] = {
                ["get"] = function(v)
                    local dt = readfile("./Mscuaz Hub/data_save.json")
                    local troi = _i:JSONDecode(dt)
                    troi["data"]["time"] = v
                    writefile("./Mscuaz Hub/data_save.json", _i:JSONEncode(troi))
                end,
                ["set"] = function()
                    local dt = readfile("./Mscuaz Hub/data_save.json")
                    local troi = _i:JSONDecode(dt)
                    return troi["data"]["time"]
                end
            }
        }
        if _o["data"] and _o["data"]["Mscuaz "] and _o["data"]["time"] then
            local ge = 0
            spawn(function()
                while wait(0.1) do
                    if ge ~= game.Players.LocalPlayer.leaderstats["Mscauz"].Value then
                        local gg = _v["Mscuaz"]["get"]()
                        _v["Mscuaz"]["set"](gg + (game.Players.LocalPlayer.leaderstats["Mscuaz"].Value - ge))
                        ge = game.Players.LocalPlayer.leaderstats["Mscuaz"].Value
                    end
                end
            end)
        else
            local gg = {
                ["data"] = {
                    ["Mscuaz"] = 0,
                    ["time"] = 0
                }
            }
            writefile("./Mscuaz Hub/data_save.json", _i:JSONEncode(gg))
        end

        spawn(function()
            while wait() do
                Window.t(math.floor(tostring(tick() - now)) .. "s")
                Window.bte(_v["Mscuaz"]["get"]())
                Window.bt(game.Players.LocalPlayer.leaderstats["Mscuaz"].Value)
                Window.tg(getgenv().troi or "None or Not Update")
            end
        end)
    end
    local UI = {}
    local ts = game:GetService("TweenService")
    local prod = game.Workspace.Camera.ViewportSize
    -- // StarterGui.ScreenGui \\ --
    UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
    UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
    
    -- // StarterGui.ScreenGui.Frame \\ --
    UI["2"] = Instance.new("Frame", UI["1"])
    UI["2"]["ZIndex"] = 0
    UI["2"]["BorderSizePixel"] = 0
    UI["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    UI["2"]["Size"] = UDim2.new(0, 1262, 0, 826)
    UI["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
    UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    UI["2"]["BackgroundTransparency"] = 1
    local vv = UI["2"]["Position"]
    UI["2"]["Position"] = UDim2.new(0, prod.X / 2 - vv.X.Offset / 2, 0, prod.Y / 2 - vv.Y.Offset / 2 - 50)
    -- // StarterGui.ScreenGui.Frame.CanvasGroup \\ --
    UI["3"] = Instance.new("CanvasGroup", UI["2"])
    UI["3"]["BorderSizePixel"] = 0
    UI["3"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30)
    UI["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    UI["3"]["Size"] = UDim2.new(0, 529, 0, 365)
    UI["3"]["Position"] = UDim2.new(0.49921, 0, 0.49939, 0)
    UI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.UICorner \\ --
    UI["4"] = Instance.new("UICorner", UI["3"])
    UI["4"]["CornerRadius"] = UDim.new(0, 30)
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.ImageLabel \\ --
    UI["5"] = Instance.new("ImageLabel", UI["3"])
    UI["5"]["BorderSizePixel"] = 0
    UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["5"]["Image"] = [[rbxassetid://113512402072192]]
    UI["5"]["Size"] = UDim2.new(0, 375, 0, 313)
    UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    UI["5"]["BackgroundTransparency"] = 1
    UI["5"]["Position"] = UDim2.new(0.4, 0, 0, 0)
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.TextLabel \\ --
    UI["6"] = Instance.new("TextLabel", UI["3"])
    UI["6"]["BorderSizePixel"] = 0
    UI["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["6"]["TextSize"] = 60
    UI["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["6"]["BackgroundTransparency"] = 1
    UI["6"]["Size"] = UDim2.new(0, 324, 0, 104)
    UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    UI["6"]["Text"] = [[Welcome]]
    UI["6"]["Position"] = UDim2.new(0, 0, 0.06301, 0)
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.TextLabel.TextLabel \\ --
    UI["7"] = Instance.new("TextLabel", UI["6"])
    UI["7"]["BorderSizePixel"] = 0
    UI["7"]["TextXAlignment"] = Enum.TextXAlignment.Right
    UI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["7"]["TextSize"] = 30
    UI["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    UI["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["7"]["BackgroundTransparency"] = 1
    UI["7"]["Size"] = UDim2.new(0, 200, 0, 50)
    UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    UI["7"]["Text"] = game.Players.LocalPlayer.DisplayName
    UI["7"]["Position"] = UDim2.new(0.34568, 0, 0.76923, 0)
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.TextLabel \\ --
    UI["8"] = Instance.new("TextLabel", UI["3"])
    UI["8"]["BorderSizePixel"] = 0
    UI["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["8"]["TextSize"] = 30
    UI["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Bangers.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["8"]["BackgroundTransparency"] = 1
    UI["8"]["Size"] = UDim2.new(0, 200, 0, 50)
    UI["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    UI["8"]["Text"] = [[Script]]
    UI["8"]["Position"] = UDim2.new(0.53875, 0, 0.63562, 0)
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.TextLabel \\ --
    UI["9"] = Instance.new("TextLabel", UI["3"])
    UI["9"]["BorderSizePixel"] = 0
    UI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["9"]["TextSize"] = 50
    UI["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Bangers.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["9"]["BackgroundTransparency"] = 1
    UI["9"]["Size"] = UDim2.new(0, 200, 0, 50)
    UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    UI["9"]["Text"] = [[BEST LOADER UI]]
    UI["9"]["Position"] = UDim2.new(0.53875, 0, 0.54521, 0)
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.TextLabel.UIStroke \\ --
    UI["a"] = Instance.new("UIStroke", UI["9"])
    
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.TextLabel.UIGradient \\ --
    UI["b"] = Instance.new("UIGradient", UI["9"])
    UI["b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(239, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(6, 81, 255))}
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.TextLabel \\ --
    UI["c"] = Instance.new("TextLabel", UI["3"])
    UI["c"]["BorderSizePixel"] = 0
    UI["c"]["TextXAlignment"] = Enum.TextXAlignment.Left
    UI["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["c"]["TextSize"] = 40
    UI["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["c"]["BackgroundTransparency"] = 1
    UI["c"]["Size"] = UDim2.new(0, 146, 0, 50)
    UI["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    UI["c"]["Text"] = [[To ]]
    UI["c"]["Position"] = UDim2.new(0.571, 0,0.499, 0)
    UI["c"].AnchorPoint = Vector2.new(0.5, 0.5)
    
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.Control \\ --
    UI["d"] = Instance.new("Folder", UI["3"])
    UI["d"]["Name"] = [[Control]]
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.Control.TextLabel \\ --
    UI["e"] = Instance.new("TextButton", UI["d"])
    UI["e"]["BorderSizePixel"] = 0
    UI["e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    UI["e"]["TextSize"] = 14
    UI["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    UI["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["e"]["Size"] = UDim2.new(0, 218, 0, 50)
    UI["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    UI["e"]["Text"] = [[Click Here To Coninue]]
    UI["e"]["Position"] = UDim2.new(0.0775, 0, 0.66301, 0)
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.Control.TextLabel.UICorner \\ --
    UI["f"] = Instance.new("UICorner", UI["e"])
    UI["f"]["CornerRadius"] = UDim.new(1, 0)
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.Control.TextLabel.UIStroke \\ --
    UI["10"] = Instance.new("UIStroke", UI["e"])
    UI["10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
    UI["10"]["Thickness"] = 2
    UI["10"]["Color"] = Color3.fromRGB(255, 255, 255)
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.Control.TextLabel.UIStroke.UIGradient \\ --
    UI["11"] = Instance.new("UIGradient", UI["10"])
    UI["11"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(226, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(2, 49, 255))}
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.UIStroke \\ --
    UI["12"] = Instance.new("UIStroke", UI["3"])
    UI["12"]["Color"] = Color3.fromRGB(255, 255, 255)
    
    -- // StarterGui.ScreenGui.Frame.CanvasGroup.message \\ --
    UI["13"] = Instance.new("TextLabel", UI["3"])
    UI["13"]["TextWrapped"] = true
    UI["13"]["BorderSizePixel"] = 0
    UI["13"]["TextXAlignment"] = Enum.TextXAlignment.Left
    UI["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    UI["13"]["TextSize"] = 14
    UI["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    UI["13"]["BackgroundTransparency"] = 1
    UI["13"]["Size"] = UDim2.new(0, 475, 0, 50)
    UI["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    UI["13"]["Text"] = [[Message: Click to continue or Will auto Start after 5 second.]]
    UI["13"]["Name"] = [[message]]
    UI["13"]["Position"] = UDim2.new(0.05104, 0, 0.83288, 0)
    
    
    for i, v in pairs(UI["1"]:GetDescendants()) do
        if v:IsA("TextButton") then
            v.AutoButtonColor = false
        end
    end
    _G.OKOKOKO = false
    _G.ISANIMATIONSTART = false
    _G.OITROI = false
    _G.TROIDAT = false
    function START(thua)
        spawn(function()
            if not _G.OKOKOKO then
                _G.OKOKOKO = true
                local a = "Thank For Using Mscuaz Script"
                UI["e"].Text = ""
                for i = 1, #a do
                    UI["e"].Text = UI["e"].Text .. string.sub(a, i, i)
                    wait(0.05)
                end
                _G.OKOKOKO = false
            end
        end)
        if not _G.ISANIMATIONSTART  then
            _G.ISANIMATIONSTART = true
            
            -- {-0.612, 0},{0.074, 0}
            local welcome = ts:Create(UI["6"], TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                Position = UDim2.new(-0.612, 0,0.074, 0)
            })
            welcome:Play()
            -- {1.051, 0},{0.545, 0}
            local bestscript = ts:Create(UI["9"], TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                Position = UDim2.new(1.051, 0,0.545, 0)
            })
            bestscript:Play()
            local to = ts:Create(UI["c"], TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
                TextSize = 0
            })
            to:Play()
            to.Completed:Connect(function()
                UI["c"]:Destroy()
            end)
            spawn(function()
                if not _G.OITROI then
                    _G.OITROI = true
                    for i = 1, #UI["8"].Text do
                        UI["8"].Text = string.sub(UI["8"].Text, 1, #UI["8"].Text - i)
                        wait(0.1)
                    end
                    _G.OITROI = false
                end
            end)
            local Mscuaz = ts:Create(UI["5"], TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                ImageTransparency = 1
            })
            Mscuaz:Play()
            spawn(function()
                if not _G.TROIDAT then
                    _G.TROIDAT = true
                    local a = "Message: Thank For Using Mscuaz Script"
                    UI["13"].Text = ""
                    for i = 1, #a do
                        UI["13"].Text = UI["13"].Text .. string.sub(a, i, i)
                        wait(0.05)
                    end
                    _G.TROIDAT = false
                end
            end)
            wait(2)
            local troi = ts:Create(UI["3"], TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {
                Size = UDim2.new(0, 0,0,0)
            })
            troi:Play()
            troi.Completed:Wait()
            UI["1"]:Destroy()
            pcall(thua)
        end
    end
    UI["e"].MouseButton1Down:Connect(function()
        START(function()
            MainWindow()
        end)
    end)
    local troi = 5
    wait(1)
    for i = 1, 5 do
        if _G.ISANIMATIONSTART then
            break
        end
        troi = troi - 1
        UI["13"]["Text"] = string.format("Message: Click to continue or Will auto Start after %s second.", tostring(troi))
        wait(1)
    end
    if not _G.ISANIMATIONSTART then
        START(function()
            MainWindow()
        end)
    end
end)



--// Edit Gui
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
