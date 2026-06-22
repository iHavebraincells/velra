-- PSM Potassium Login - 1:1 Perfect Copy
local VALID_USERNAME = "admin"
local VALID_PASSWORD = "password123"

-- ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PSM"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame - Exact size and position
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 340, 0, 380)
frame.Position = UDim2.new(0.5, -170, 0.5, -190)
frame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
frame.BackgroundTransparency = 0
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Parent = screenGui

-- Main Corner
local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 12)
mainCorner.Parent = frame

-- Drop Shadow
local shadow = Instance.new("Frame")
shadow.Size = UDim2.new(1, 8, 1, 8)
shadow.Position = UDim2.new(0, -4, 0, -4)
shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
shadow.BackgroundTransparency = 0.6
shadow.BorderSizePixel = 0
shadow.Parent = frame

local shadowCorner = Instance.new("UICorner")
shadowCorner.CornerRadius = UDim.new(0, 12)
shadowCorner.Parent = shadow

-- Top Bar (Draggable)
local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 40)
topBar.Position = UDim2.new(0, 0, 0, 0)
topBar.BackgroundTransparency = 1
topBar.Parent = frame

-- Close Button
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 28, 0, 28)
closeBtn.Position = UDim2.new(1, -36, 0, 6)
closeBtn.BackgroundTransparency = 1
closeBtn.Text = "✕"
closeBtn.TextColor3 = Color3.fromRGB(150, 150, 160)
closeBtn.TextSize = 14
closeBtn.Font = Enum.Font.SourceSans
closeBtn.Parent = topBar
closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- K Icon
local iconFrame = Instance.new("Frame")
iconFrame.Size = UDim2.new(0, 44, 0, 44)
iconFrame.Position = UDim2.new(0.5, -22, 0, 4)
iconFrame.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
iconFrame.BackgroundTransparency = 0
iconFrame.BorderSizePixel = 0
iconFrame.Parent = topBar

local iconCorner = Instance.new("UICorner")
iconCorner.CornerRadius = UDim.new(0, 10)
iconCorner.Parent = iconFrame

local iconText = Instance.new("TextLabel")
iconText.Size = UDim2.new(1, 0, 1, 0)
iconText.Position = UDim2.new(0, 0, 0, 0)
iconText.BackgroundTransparency = 1
iconText.Text = "K"
iconText.TextColor3 = Color3.fromRGB(255, 255, 255)
iconText.TextSize = 26
iconText.Font = Enum.Font.SourceSansBold
iconText.Parent = iconFrame

-- Title "Potassium"
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 32)
title.Position = UDim2.new(0, 0, 0, 54)
title.BackgroundTransparency = 1
title.Text = "Potassium"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 30
title.Font = Enum.Font.SourceSansBold
title.Parent = frame

-- "Welcome Back" subtitle
local welcomeText = Instance.new("TextLabel")
welcomeText.Size = UDim2.new(1, 0, 0, 24)
welcomeText.Position = UDim2.new(0, 0, 0, 88)
welcomeText.BackgroundTransparency = 1
welcomeText.Text = "Welcome Back"
welcomeText.TextColor3 = Color3.fromRGB(160, 160, 170)
welcomeText.TextSize = 16
welcomeText.Font = Enum.Font.SourceSans
welcomeText.Parent = frame

-- "Sign in to continue to Potassium"
local signInText = Instance.new("TextLabel")
signInText.Size = UDim2.new(1, 0, 0, 20)
signInText.Position = UDim2.new(0, 0, 0, 114)
signInText.BackgroundTransparency = 1
signInText.Text = "Sign in to continue to Potassium"
signInText.TextColor3 = Color3.fromRGB(130, 130, 140)
signInText.TextSize = 12
signInText.Font = Enum.Font.SourceSans
signInText.Parent = frame

-- "Username" label
local usernameLabel = Instance.new("TextLabel")
usernameLabel.Size = UDim2.new(0.8, 0, 0, 18)
usernameLabel.Position = UDim2.new(0.1, 0, 0, 148)
usernameLabel.BackgroundTransparency = 1
usernameLabel.Text = "Username"
usernameLabel.TextColor3 = Color3.fromRGB(180, 180, 190)
usernameLabel.TextSize = 12
usernameLabel.TextXAlignment = Enum.TextXAlignment.Left
usernameLabel.Font = Enum.Font.SourceSans
usernameLabel.Parent = frame

-- Username Input
local usernameInput = Instance.new("TextBox")
usernameInput.Size = UDim2.new(0.8, 0, 0, 38)
usernameInput.Position = UDim2.new(0.1, 0, 0, 168)
usernameInput.BackgroundColor3 = Color3.fromRGB(28, 28, 34)
usernameInput.BackgroundTransparency = 0
usernameInput.TextColor3 = Color3.fromRGB(230, 230, 240)
usernameInput.TextSize = 14
usernameInput.Font = Enum.Font.SourceSans
usernameInput.Text = ""
usernameInput.ClearTextOnFocus = false
usernameInput.Parent = frame

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 6)
inputCorner.Parent = usernameInput

local inputBorder = Instance.new("Frame")
inputBorder.Size = UDim2.new(0.8, 0, 0, 38)
inputBorder.Position = UDim2.new(0.1, 0, 0, 168)
inputBorder.BackgroundTransparency = 1
inputBorder.BorderSizePixel = 1
inputBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
inputBorder.Parent = frame

local borderCorner = Instance.new("UICorner")
borderCorner.CornerRadius = UDim.new(0, 6)
borderCorner.Parent = inputBorder

-- "Password" label
local passwordLabel = Instance.new("TextLabel")
passwordLabel.Size = UDim2.new(0.8, 0, 0, 18)
passwordLabel.Position = UDim2.new(0.1, 0, 0, 218)
passwordLabel.BackgroundTransparency = 1
passwordLabel.Text = "Password"
passwordLabel.TextColor3 = Color3.fromRGB(180, 180, 190)
passwordLabel.TextSize = 12
passwordLabel.TextXAlignment = Enum.TextXAlignment.Left
passwordLabel.Font = Enum.Font.SourceSans
passwordLabel.Parent = frame

-- Password Input
local passwordInput = Instance.new("TextBox")
passwordInput.Size = UDim2.new(0.8, 0, 0, 38)
passwordInput.Position = UDim2.new(0.1, 0, 0, 238)
passwordInput.BackgroundColor3 = Color3.fromRGB(28, 28, 34)
passwordInput.BackgroundTransparency = 0
passwordInput.TextColor3 = Color3.fromRGB(230, 230, 240)
passwordInput.TextSize = 14
passwordInput.Font = Enum.Font.SourceSans
passwordInput.Text = ""
passwordInput.ClearTextOnFocus = false
passwordInput.Password = true
passwordInput.Parent = frame

local passCorner = Instance.new("UICorner")
passCorner.CornerRadius = UDim.new(0, 6)
passCorner.Parent = passwordInput

local passBorder = Instance.new("Frame")
passBorder.Size = UDim2.new(0.8, 0, 0, 38)
passBorder.Position = UDim2.new(0.1, 0, 0, 238)
passBorder.BackgroundTransparency = 1
passBorder.BorderSizePixel = 1
passBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
passBorder.Parent = frame

local passBorderCorner = Instance.new("UICorner")
passBorderCorner.CornerRadius = UDim.new(0, 6)
passBorderCorner.Parent = passBorder

-- Login Button
local loginBtn = Instance.new("TextButton")
loginBtn.Size = UDim2.new(0.8, 0, 0, 44)
loginBtn.Position = UDim2.new(0.1, 0, 0, 296)
loginBtn.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
loginBtn.BackgroundTransparency = 0
loginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
loginBtn.TextSize = 16
loginBtn.Font = Enum.Font.SourceSansBold
loginBtn.Text = "Login"
loginBtn.Parent = frame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 8)
btnCorner.Parent = loginBtn

-- Status Label
local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, 0, 0, 20)
statusLabel.Position = UDim2.new(0, 0, 0, 348)
statusLabel.BackgroundTransparency = 1
statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
statusLabel.TextSize = 12
statusLabel.Font = Enum.Font.SourceSans
statusLabel.Text = ""
statusLabel.Parent = frame

-- DRAGGING FUNCTIONALITY
local dragStart, startPos, isDragging

topBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        dragStart = input.Position
        startPos = frame.Position
    end
end)

topBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- FOCUS EFFECTS
usernameInput.Focused:Connect(function()
    inputBorder.BorderColor3 = Color3.fromRGB(100, 80, 255)
end)

usernameInput.FocusLost:Connect(function()
    inputBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
end)

passwordInput.Focused:Connect(function()
    passBorder.BorderColor3 = Color3.fromRGB(100, 80, 255)
end)

passwordInput.FocusLost:Connect(function()
    passBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
end)

-- BUTTON HOVER
loginBtn.MouseEnter:Connect(function()
    loginBtn.BackgroundColor3 = Color3.fromRGB(120, 100, 255)
end)

loginBtn.MouseLeave:Connect(function()
    loginBtn.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
end)

-- LOGIN FUNCTION
local function handleLogin()
    local username = usernameInput.Text
    local password = passwordInput.Text
    
    if username == "" or password == "" then
        statusLabel.Text = "Please fill in all fields"
        statusLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
        return
    end
    
    if username == VALID_USERNAME and password == VALID_PASSWORD then
        statusLabel.Text = "Welcome back!"
        statusLabel.TextColor3 = Color3.fromRGB(100, 255, 150)
        loginBtn.Text = "Logging in..."
        loginBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
        loginBtn.Active = false
        
        task.wait(0.5)
        screenGui:Destroy()
        
        -- Load your scripts
        if game.PlaceId == 13822889 then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavebraincells/velra-lt2/main/main.lua"))()
        elseif game.GameId == 155615604 then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavebraincells/velra-prisonlife/refs/heads/main/main.lua"))()
        end
    else
        statusLabel.Text = "Invalid username or password"
        statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        passwordInput.Text = ""
        passwordInput:CaptureFocus()
        
        -- Shake animation
        local ogX = frame.Position.X.Offset
        for i = 1, 8 do
            frame.Position = UDim2.new(0.5, ogX + (i % 2 == 0 and 8 or -8), 0.5, -190)
            task.wait(0.02)
        end
        frame.Position = UDim2.new(0.5, ogX, 0.5, -190)
    end
end

loginBtn.MouseButton1Click:Connect(handleLogin)

passwordInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        handleLogin()
    end
end)

usernameInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        passwordInput:CaptureFocus()
    end
end)

-- Auto focus on username
task.wait(0.1)
usernameInput:CaptureFocus()
