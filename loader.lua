-- Potassium Login Screen
local VALID_USERNAME = "admin"
local VALID_PASSWORD = "password123"

-- Create GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PotassiumLogin"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 360, 0, 400)
frame.Position = UDim2.new(0.5, -180, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

-- Top Bar (for dragging)
local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 45)
topBar.BackgroundTransparency = 1
topBar.Parent = frame

-- Close Button
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 8)
closeBtn.BackgroundTransparency = 1
closeBtn.Text = "×"
closeBtn.TextColor3 = Color3.fromRGB(150, 150, 160)
closeBtn.TextSize = 20
closeBtn.Font = Enum.Font.Gotham
closeBtn.Parent = topBar
closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- K Icon
local iconBg = Instance.new("Frame")
iconBg.Size = UDim2.new(0, 44, 0, 44)
iconBg.Position = UDim2.new(0.5, -22, 0, 5)
iconBg.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
iconBg.BorderSizePixel = 0
iconBg.Parent = topBar

local iconCorner = Instance.new("UICorner")
iconCorner.CornerRadius = UDim.new(0, 8)
iconCorner.Parent = iconBg

local iconText = Instance.new("TextLabel")
iconText.Size = UDim2.new(1, 0, 1, 0)
iconText.BackgroundTransparency = 1
iconText.Text = "K"
iconText.TextColor3 = Color3.fromRGB(255, 255, 255)
iconText.TextSize = 24
iconText.Font = Enum.Font.GothamBold
iconText.Parent = iconBg

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 52)
title.BackgroundTransparency = 1
title.Text = "Potassium"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 26
title.Font = Enum.Font.GothamBold
title.Parent = frame

-- Welcome Back
local welcome = Instance.new("TextLabel")
welcome.Size = UDim2.new(1, 0, 0, 22)
welcome.Position = UDim2.new(0, 0, 0, 84)
welcome.BackgroundTransparency = 1
welcome.Text = "Welcome Back"
welcome.TextColor3 = Color3.fromRGB(160, 160, 170)
welcome.TextSize = 15
welcome.Font = Enum.Font.Gotham
welcome.Parent = frame

-- Sign in text
local signIn = Instance.new("TextLabel")
signIn.Size = UDim2.new(1, 0, 0, 20)
signIn.Position = UDim2.new(0, 0, 0, 108)
signIn.BackgroundTransparency = 1
signIn.Text = "Sign in to continue to Potassium"
signIn.TextColor3 = Color3.fromRGB(130, 130, 140)
signIn.TextSize = 12
signIn.Font = Enum.Font.Gotham
signIn.Parent = frame

-- Username Label
local userLabel = Instance.new("TextLabel")
userLabel.Size = UDim2.new(0.85, 0, 0, 18)
userLabel.Position = UDim2.new(0.075, 0, 0, 140)
userLabel.BackgroundTransparency = 1
userLabel.Text = "Username"
userLabel.TextColor3 = Color3.fromRGB(180, 180, 190)
userLabel.TextSize = 12
userLabel.TextXAlignment = Enum.TextXAlignment.Left
userLabel.Font = Enum.Font.Gotham
userLabel.Parent = frame

-- Username Input
local userInput = Instance.new("TextBox")
userInput.Size = UDim2.new(0.85, 0, 0, 38)
userInput.Position = UDim2.new(0.075, 0, 0, 160)
userInput.BackgroundColor3 = Color3.fromRGB(28, 28, 34)
userInput.TextColor3 = Color3.fromRGB(230, 230, 240)
userInput.TextSize = 14
userInput.Font = Enum.Font.Gotham
userInput.Text = ""
userInput.ClearTextOnFocus = false
userInput.Parent = frame

local userCorner = Instance.new("UICorner")
userCorner.CornerRadius = UDim.new(0, 6)
userCorner.Parent = userInput

local userBorder = Instance.new("Frame")
userBorder.Size = UDim2.new(0.85, 0, 0, 38)
userBorder.Position = UDim2.new(0.075, 0, 0, 160)
userBorder.BackgroundTransparency = 1
userBorder.BorderSizePixel = 1
userBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
userBorder.Parent = frame

local userBorderCorner = Instance.new("UICorner")
userBorderCorner.CornerRadius = UDim.new(0, 6)
userBorderCorner.Parent = userBorder

-- Password Label
local passLabel = Instance.new("TextLabel")
passLabel.Size = UDim2.new(0.85, 0, 0, 18)
passLabel.Position = UDim2.new(0.075, 0, 0, 210)
passLabel.BackgroundTransparency = 1
passLabel.Text = "Password"
passLabel.TextColor3 = Color3.fromRGB(180, 180, 190)
passLabel.TextSize = 12
passLabel.TextXAlignment = Enum.TextXAlignment.Left
passLabel.Font = Enum.Font.Gotham
passLabel.Parent = frame

-- Password Input
local passInput = Instance.new("TextBox")
passInput.Size = UDim2.new(0.85, 0, 0, 38)
passInput.Position = UDim2.new(0.075, 0, 0, 230)
passInput.BackgroundColor3 = Color3.fromRGB(28, 28, 34)
passInput.TextColor3 = Color3.fromRGB(230, 230, 240)
passInput.TextSize = 14
passInput.Font = Enum.Font.Gotham
passInput.Text = ""
passInput.ClearTextOnFocus = false
passInput.Password = true
passInput.Parent = frame

local passCorner = Instance.new("UICorner")
passCorner.CornerRadius = UDim.new(0, 6)
passCorner.Parent = passInput

local passBorder = Instance.new("Frame")
passBorder.Size = UDim2.new(0.85, 0, 0, 38)
passBorder.Position = UDim2.new(0.075, 0, 0, 230)
passBorder.BackgroundTransparency = 1
passBorder.BorderSizePixel = 1
passBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
passBorder.Parent = frame

local passBorderCorner = Instance.new("UICorner")
passBorderCorner.CornerRadius = UDim.new(0, 6)
passBorderCorner.Parent = passBorder

-- Login Button
local loginBtn = Instance.new("TextButton")
loginBtn.Size = UDim2.new(0.85, 0, 0, 42)
loginBtn.Position = UDim2.new(0.075, 0, 0, 285)
loginBtn.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
loginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
loginBtn.TextSize = 16
loginBtn.Font = Enum.Font.GothamBold
loginBtn.Text = "Login"
loginBtn.Parent = frame

local loginCorner = Instance.new("UICorner")
loginCorner.CornerRadius = UDim.new(0, 8)
loginCorner.Parent = loginBtn

-- Status Label
local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, 0, 0, 20)
status.Position = UDim2.new(0, 0, 0, 335)
status.BackgroundTransparency = 1
status.TextColor3 = Color3.fromRGB(255, 100, 100)
status.TextSize = 12
status.Font = Enum.Font.Gotham
status.Text = ""
status.Parent = frame

-- Dragging
local dragStart, startPos, dragging

topBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position
    end
end)

topBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Input focus
userInput.Focused:Connect(function()
    userBorder.BorderColor3 = Color3.fromRGB(100, 80, 255)
end)

userInput.FocusLost:Connect(function()
    userBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
end)

passInput.Focused:Connect(function()
    passBorder.BorderColor3 = Color3.fromRGB(100, 80, 255)
end)

passInput.FocusLost:Connect(function()
    passBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
end)

-- Button hover
loginBtn.MouseEnter:Connect(function()
    loginBtn.BackgroundColor3 = Color3.fromRGB(120, 100, 255)
end)

loginBtn.MouseLeave:Connect(function()
    loginBtn.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
end)

-- Login function
local function attemptLogin()
    local username = userInput.Text
    local password = passInput.Text
    
    if username == "" or password == "" then
        status.Text = "Please fill in all fields"
        status.TextColor3 = Color3.fromRGB(255, 200, 100)
        return
    end
    
    if username == VALID_USERNAME and password == VALID_PASSWORD then
        status.Text = "Welcome back!"
        status.TextColor3 = Color3.fromRGB(100, 255, 150)
        loginBtn.Text = "Logging in..."
        loginBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
        loginBtn.Active = false
        
        task.wait(0.5)
        screenGui:Destroy()
        
        -- Load your script
        if game.PlaceId == 13822889 then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavebraincells/velra-lt2/main/main.lua"))()
        elseif game.GameId == 155615604 then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavebraincells/velra-prisonlife/refs/heads/main/main.lua"))()
        end
    else
        status.Text = "Invalid username or password"
        status.TextColor3 = Color3.fromRGB(255, 100, 100)
        passInput.Text = ""
        passInput:CaptureFocus()
        
        -- Shake
        local ogX = frame.Position.X.Offset
        for i = 1, 6 do
            frame.Position = UDim2.new(0.5, ogX + (i % 2 == 0 and 6 or -6), 0.5, -200)
            task.wait(0.03)
        end
        frame.Position = UDim2.new(0.5, ogX, 0.5, -200)
    end
end

loginBtn.MouseButton1Click:Connect(attemptLogin)

passInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        attemptLogin()
    end
end)

userInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        passInput:CaptureFocus()
    end
end)

-- Auto focus
task.wait(0.1)
userInput:CaptureFocus()
