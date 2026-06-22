-- PSM (Potassium) Login Screen - 1:1 Copy
local loginSystem = {}

-- Set your credentials here
local VALID_USERNAME = "admin"
local VALID_PASSWORD = "password123"

-- Create the UI
local function createLoginUI()
    -- ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "PSMLogin"
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    screenGui.ResetOnSpawn = false
    
    -- Main Frame - Exact proportions
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 400, 0, 440)
    frame.Position = UDim2.new(0.5, -200, 0.5, -220)
    frame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
    frame.BackgroundTransparency = 0
    frame.BorderSizePixel = 0
    frame.ClipsDescendants = true
    frame.Parent = screenGui
    
    -- Corner radius
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = frame
    
    -- Drop shadow
    local shadow = Instance.new("Frame")
    shadow.Size = UDim2.new(1, 10, 1, 10)
    shadow.Position = UDim2.new(0, -5, 0, -5)
    shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    shadow.BackgroundTransparency = 0.5
    shadow.BorderSizePixel = 0
    shadow.Parent = frame
    
    local shadowCorner = Instance.new("UICorner")
    shadowCorner.CornerRadius = UDim.new(0, 12)
    shadowCorner.Parent = shadow
    
    -- Top bar (draggable area)
    local topBar = Instance.new("Frame")
    topBar.Size = UDim2.new(1, 0, 0, 50)
    topBar.Position = UDim2.new(0, 0, 0, 0)
    topBar.BackgroundTransparency = 1
    topBar.BorderSizePixel = 0
    topBar.Parent = frame
    
    -- Close button
    local closeBtn = Instance.new("TextButton")
    closeBtn.Size = UDim2.new(0, 32, 0, 32)
    closeBtn.Position = UDim2.new(1, -40, 0, 9)
    closeBtn.BackgroundTransparency = 1
    closeBtn.Text = "✕"
    closeBtn.TextColor3 = Color3.fromRGB(150, 150, 160)
    closeBtn.TextSize = 16
    closeBtn.Font = Enum.Font.Gotham
    closeBtn.Parent = topBar
    
    -- K Icon
    local icon = Instance.new("Frame")
    icon.Size = UDim2.new(0, 48, 0, 48)
    icon.Position = UDim2.new(0.5, -24, 0, 6)
    icon.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
    icon.BackgroundTransparency = 0
    icon.BorderSizePixel = 0
    icon.Parent = topBar
    
    local iconCorner = Instance.new("UICorner")
    iconCorner.CornerRadius = UDim.new(0, 10)
    iconCorner.Parent = icon
    
    local iconText = Instance.new("TextLabel")
    iconText.Size = UDim2.new(1, 0, 1, 0)
    iconText.Position = UDim2.new(0, 0, 0, 0)
    iconText.BackgroundTransparency = 1
    iconText.Text = "K"
    iconText.TextColor3 = Color3.fromRGB(255, 255, 255)
    iconText.TextSize = 28
    iconText.Font = Enum.Font.GothamBold
    iconText.Parent = icon
    
    -- Title
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 32)
    title.Position = UDim2.new(0, 0, 0, 58)
    title.BackgroundTransparency = 1
    title.Text = "Potassium"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 30
    title.Font = Enum.Font.GothamBold
    title.Parent = frame
    
    -- Welcome Back
    local welcomeBack = Instance.new("TextLabel")
    welcomeBack.Size = UDim2.new(1, 0, 0, 24)
    welcomeBack.Position = UDim2.new(0, 0, 0, 92)
    welcomeBack.BackgroundTransparency = 1
    welcomeBack.Text = "Welcome Back"
    welcomeBack.TextColor3 = Color3.fromRGB(160, 160, 170)
    welcomeBack.TextSize = 16
    welcomeBack.Font = Enum.Font.Gotham
    welcomeBack.Parent = frame
    
    -- Sign in text
    local signInText = Instance.new("TextLabel")
    signInText.Size = UDim2.new(1, 0, 0, 22)
    signInText.Position = UDim2.new(0, 0, 0, 118)
    signInText.BackgroundTransparency = 1
    signInText.Text = "Sign in to continue to Potassium"
    signInText.TextColor3 = Color3.fromRGB(130, 130, 140)
    signInText.TextSize = 13
    signInText.Font = Enum.Font.Gotham
    signInText.Parent = frame
    
    -- Username Label
    local usernameLabel = Instance.new("TextLabel")
    usernameLabel.Size = UDim2.new(0.85, 0, 0, 20)
    usernameLabel.Position = UDim2.new(0.075, 0, 0, 158)
    usernameLabel.BackgroundTransparency = 1
    usernameLabel.Text = "Username"
    usernameLabel.TextColor3 = Color3.fromRGB(180, 180, 190)
    usernameLabel.TextSize = 13
    usernameLabel.TextXAlignment = Enum.TextXAlignment.Left
    usernameLabel.Font = Enum.Font.Gotham
    usernameLabel.Parent = frame
    
    -- Username Input
    local usernameInput = Instance.new("TextBox")
    usernameInput.Size = UDim2.new(0.85, 0, 0, 44)
    usernameInput.Position = UDim2.new(0.075, 0, 0, 180)
    usernameInput.BackgroundColor3 = Color3.fromRGB(28, 28, 34)
    usernameInput.TextColor3 = Color3.fromRGB(230, 230, 240)
    usernameInput.TextSize = 15
    usernameInput.Font = Enum.Font.Gotham
    usernameInput.PlaceholderText = ""
    usernameInput.Text = ""
    usernameInput.ClearTextOnFocus = false
    usernameInput.Parent = frame
    
    local userCorner = Instance.new("UICorner")
    userCorner.CornerRadius = UDim.new(0, 8)
    userCorner.Parent = usernameInput
    
    -- Username Border
    local userBorder = Instance.new("Frame")
    userBorder.Size = UDim2.new(0.85, 0, 0, 44)
    userBorder.Position = UDim2.new(0.075, 0, 0, 180)
    userBorder.BackgroundTransparency = 1
    userBorder.BorderSizePixel = 1.5
    userBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
    userBorder.Parent = frame
    
    local userBorderCorner = Instance.new("UICorner")
    userBorderCorner.CornerRadius = UDim.new(0, 8)
    userBorderCorner.Parent = userBorder
    
    -- Password Label
    local passwordLabel = Instance.new("TextLabel")
    passwordLabel.Size = UDim2.new(0.85, 0, 0, 20)
    passwordLabel.Position = UDim2.new(0.075, 0, 0, 238)
    passwordLabel.BackgroundTransparency = 1
    passwordLabel.Text = "Password"
    passwordLabel.TextColor3 = Color3.fromRGB(180, 180, 190)
    passwordLabel.TextSize = 13
    passwordLabel.TextXAlignment = Enum.TextXAlignment.Left
    passwordLabel.Font = Enum.Font.Gotham
    passwordLabel.Parent = frame
    
    -- Password Input
    local passwordInput = Instance.new("TextBox")
    passwordInput.Size = UDim2.new(0.85, 0, 0, 44)
    passwordInput.Position = UDim2.new(0.075, 0, 0, 260)
    passwordInput.BackgroundColor3 = Color3.fromRGB(28, 28, 34)
    passwordInput.TextColor3 = Color3.fromRGB(230, 230, 240)
    passwordInput.TextSize = 15
    passwordInput.Font = Enum.Font.Gotham
    passwordInput.PlaceholderText = ""
    passwordInput.Text = ""
    passwordInput.ClearTextOnFocus = false
    passwordInput.Password = true
    passwordInput.Parent = frame
    
    local passCorner = Instance.new("UICorner")
    passCorner.CornerRadius = UDim.new(0, 8)
    passCorner.Parent = passwordInput
    
    -- Password Border
    local passBorder = Instance.new("Frame")
    passBorder.Size = UDim2.new(0.85, 0, 0, 44)
    passBorder.Position = UDim2.new(0.075, 0, 0, 260)
    passBorder.BackgroundTransparency = 1
    passBorder.BorderSizePixel = 1.5
    passBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
    passBorder.Parent = frame
    
    local passBorderCorner = Instance.new("UICorner")
    passBorderCorner.CornerRadius = UDim.new(0, 8)
    passBorderCorner.Parent = passBorder
    
    -- Login Button - ROUND and BOLD
    local loginBtn = Instance.new("TextButton")
    loginBtn.Size = UDim2.new(0.85, 0, 0, 48)
    loginBtn.Position = UDim2.new(0.075, 0, 0, 325)
    loginBtn.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
    loginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    loginBtn.TextSize = 18
    loginBtn.Font = Enum.Font.GothamBold
    loginBtn.Text = "Login"
    loginBtn.Parent = frame
    
    -- Round button corner (more rounded)
    local loginCorner = Instance.new("UICorner")
    loginCorner.CornerRadius = UDim.new(0, 12)
    loginCorner.Parent = loginBtn
    
    -- Status/Error Label
    local statusLabel = Instance.new("TextLabel")
    statusLabel.Size = UDim2.new(1, 0, 0, 24)
    statusLabel.Position = UDim2.new(0, 0, 0, 385)
    statusLabel.BackgroundTransparency = 1
    statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
    statusLabel.TextSize = 13
    statusLabel.Font = Enum.Font.Gotham
    statusLabel.Text = ""
    statusLabel.Parent = frame
    
    -- Dragging functionality
    local dragging = false
    local dragInput, dragStart, startPos
    
    local function updateInput(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    topBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    topBar.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            updateInput(input)
        end
    end)
    
    -- Close button
    closeBtn.MouseButton1Click:Connect(function()
        screenGui:Destroy()
    end)
    
    -- Button hover effects
    loginBtn.MouseEnter:Connect(function()
        loginBtn.BackgroundColor3 = Color3.fromRGB(120, 100, 255)
    end)
    
    loginBtn.MouseLeave:Connect(function()
        loginBtn.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
    end)
    
    -- Button press effect
    loginBtn.MouseButton1Down:Connect(function()
        loginBtn.Size = UDim2.new(0.83, 0, 0, 46)
        loginBtn.Position = UDim2.new(0.085, 0, 0, 326)
    end)
    
    loginBtn.MouseButton1Up:Connect(function()
        loginBtn.Size = UDim2.new(0.85, 0, 0, 48)
        loginBtn.Position = UDim2.new(0.075, 0, 0, 325)
    end)
    
    -- Input focus effects
    usernameInput.Focused:Connect(function()
        userBorder.BorderColor3 = Color3.fromRGB(100, 80, 255)
    end)
    
    usernameInput.FocusLost:Connect(function()
        userBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
    end)
    
    passwordInput.Focused:Connect(function()
        passBorder.BorderColor3 = Color3.fromRGB(100, 80, 255)
    end)
    
    passwordInput.FocusLost:Connect(function()
        passBorder.BorderColor3 = Color3.fromRGB(45, 45, 55)
    end)
    
    return screenGui, usernameInput, passwordInput, loginBtn, statusLabel, frame
end

-- Validate credentials
local function validateCredentials(username, password)
    return username == VALID_USERNAME and password == VALID_PASSWORD
end

-- Load main script
local function loadMainScript()
    if game.PlaceId == 13822889 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavebraincells/velra-lt2/main/main.lua"))()
    elseif game.GameId == 155615604 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavebraincells/velra-prisonlife/refs/heads/main/main.lua"))()
    end
end

-- Initialize
local function initLoginSystem()
    local gui, usernameInput, passwordInput, loginBtn, statusLabel, frame = createLoginUI()
    
    local function handleLogin()
        local username = usernameInput.Text
        local password = passwordInput.Text
        
        if username == "" or password == "" then
            statusLabel.Text = "Please fill in all fields"
            statusLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
            return
        end
        
        if validateCredentials(username, password) then
            statusLabel.Text = "Welcome back!"
            statusLabel.TextColor3 = Color3.fromRGB(100, 255, 150)
            loginBtn.Text = "Logging in..."
            loginBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
            loginBtn.Active = false
            
            task.wait(0.5)
            
            gui:Destroy()
            loadMainScript()
        else
            statusLabel.Text = "Invalid username or password"
            statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
            passwordInput.Text = ""
            passwordInput:CaptureFocus()
            
            -- Shake animation
            local ogX = frame.Position.X.Offset
            for i = 1, 6 do
                frame.Position = UDim2.new(0.5, ogX + (i % 2 == 0 and 6 or -6), 0.5, -220)
                task.wait(0.03)
            end
            frame.Position = UDim2.new(0.5, ogX, 0.5, -220)
        end
    end
    
    loginBtn.MouseButton1Click:Connect(handleLogin)
    
    -- Enter key support
    usernameInput.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            passwordInput:CaptureFocus()
        end
    end)
    
    passwordInput.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            handleLogin()
        end
    end)
    
    task.wait(0.1)
    usernameInput:CaptureFocus()
end

-- Start
initLoginSystem()
