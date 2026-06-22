-- Key System with Draggable UI
local keySystem = {}

-- Set your valid key here
local VALID_KEY = "velra"

-- Create the UI
local function createKeyUI()
    -- ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "KeySystemGUI"
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    screenGui.ResetOnSpawn = false
    
    -- Main Frame (Draggable)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 320, 0, 180)
    frame.Position = UDim2.new(0.5, -160, 0.5, -90)
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
    frame.BackgroundTransparency = 0
    frame.BorderSizePixel = 0
    frame.ClipsDescendants = true
    frame.Parent = screenGui
    
    -- Shadow effect
    local shadow = Instance.new("Frame")
    shadow.Size = UDim2.new(1, 6, 1, 6)
    shadow.Position = UDim2.new(0, -3, 0, -3)
    shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    shadow.BackgroundTransparency = 0.5
    shadow.BorderSizePixel = 0
    shadow.Parent = frame
    
    -- Main corner
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame
    
    -- Top bar (for dragging)
    local topBar = Instance.new("Frame")
    topBar.Size = UDim2.new(1, 0, 0, 35)
    topBar.Position = UDim2.new(0, 0, 0, 0)
    topBar.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
    topBar.BackgroundTransparency = 0
    topBar.BorderSizePixel = 0
    topBar.Parent = frame
    
    local topCorner = Instance.new("UICorner")
    topCorner.CornerRadius = UDim.new(0, 8)
    topCorner.Parent = topBar
    
    -- Title with icon
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(0.8, 0, 1, 0)
    title.Position = UDim2.new(0.05, 0, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = "⚡ access required"
    title.TextColor3 = Color3.fromRGB(220, 220, 230)
    title.TextSize = 16
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Font = Enum.Font.GothamSemibold
    title.Parent = topBar
    
    -- Close button (minimal)
    local closeBtn = Instance.new("TextButton")
    closeBtn.Size = UDim2.new(0, 30, 0, 30)
    closeBtn.Position = UDim2.new(1, -35, 0, 2.5)
    closeBtn.BackgroundTransparency = 1
    closeBtn.Text = "✕"
    closeBtn.TextColor3 = Color3.fromRGB(150, 150, 160)
    closeBtn.TextSize = 18
    closeBtn.Font = Enum.Font.Gotham
    closeBtn.Parent = topBar
    
    -- Subtle line
    local line = Instance.new("Frame")
    line.Size = UDim2.new(0.9, 0, 0, 1)
    line.Position = UDim2.new(0.05, 0, 0, 35)
    line.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
    line.BorderSizePixel = 0
    line.Parent = frame
    
    -- Key Input
    local keyInput = Instance.new("TextBox")
    keyInput.Size = UDim2.new(0.85, 0, 0, 38)
    keyInput.Position = UDim2.new(0.075, 0, 0, 55)
    keyInput.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
    keyInput.TextColor3 = Color3.fromRGB(230, 230, 240)
    keyInput.TextSize = 15
    keyInput.Font = Enum.Font.Gotham
    keyInput.PlaceholderText = "enter your key..."
    keyInput.PlaceholderColor3 = Color3.fromRGB(100, 100, 120)
    keyInput.Text = ""
    keyInput.ClearTextOnFocus = false
    keyInput.Parent = frame
    
    -- Input corner
    local inputCorner = Instance.new("UICorner")
    inputCorner.CornerRadius = UDim.new(0, 5)
    inputCorner.Parent = keyInput
    
    -- Input border glow
    local inputBorder = Instance.new("Frame")
    inputBorder.Size = UDim2.new(0.85, 0, 0, 38)
    inputBorder.Position = UDim2.new(0.075, 0, 0, 55)
    inputBorder.BackgroundTransparency = 1
    inputBorder.BorderSizePixel = 1
    inputBorder.BorderColor3 = Color3.fromRGB(60, 60, 80)
    inputBorder.Parent = frame
    
    local borderCorner = Instance.new("UICorner")
    borderCorner.CornerRadius = UDim.new(0, 5)
    borderCorner.Parent = inputBorder
    
    -- Submit Button
    local submitBtn = Instance.new("TextButton")
    submitBtn.Size = UDim2.new(0.4, 0, 0, 36)
    submitBtn.Position = UDim2.new(0.3, 0, 0, 110)
    submitBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 255)
    submitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    submitBtn.TextSize = 15
    submitBtn.Font = Enum.Font.GothamBold
    submitBtn.Text = "→ unlock"
    submitBtn.Parent = frame
    
    -- Button corner
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 5)
    btnCorner.Parent = submitBtn
    
    -- Button hover effect
    local btnGlow = Instance.new("Frame")
    btnGlow.Size = UDim2.new(1, 0, 1, 0)
    btnGlow.Position = UDim2.new(0, 0, 0, 0)
    btnGlow.BackgroundTransparency = 1
    btnGlow.BorderSizePixel = 0
    btnGlow.Parent = submitBtn
    
    -- Status Label
    local statusLabel = Instance.new("TextLabel")
    statusLabel.Size = UDim2.new(1, 0, 0, 25)
    statusLabel.Position = UDim2.new(0, 0, 0, 150)
    statusLabel.BackgroundTransparency = 1
    statusLabel.TextColor3 = Color3.fromRGB(180, 180, 190)
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
    submitBtn.MouseEnter:Connect(function()
        submitBtn.BackgroundColor3 = Color3.fromRGB(90, 150, 255)
        submitBtn.TextSize = 16
    end)
    
    submitBtn.MouseLeave:Connect(function()
        submitBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 255)
        submitBtn.TextSize = 15
    end)
    
    keyInput.Focused:Connect(function()
        inputBorder.BorderColor3 = Color3.fromRGB(70, 130, 255)
    end)
    
    keyInput.FocusLost:Connect(function()
        inputBorder.BorderColor3 = Color3.fromRGB(60, 60, 80)
    end)
    
    return screenGui, keyInput, submitBtn, statusLabel, frame
end

-- Function to validate key
local function validateKey(inputKey)
    return inputKey == VALID_KEY
end

-- Function to load the main script
local function loadMainScript()
    if game.PlaceId == 13822889 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavebraincells/velra-lt2/main/main.lua"))()
    elseif game.GameId == 155615604 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavebraincells/velra-prisonlife/refs/heads/main/main.lua"))()
    end
end

-- Initialize the key system
local function initKeySystem()
    local gui, keyInput, submitBtn, statusLabel, frame = createKeyUI()
    
    local function handleSubmit()
        local enteredKey = keyInput.Text
        
        if validateKey(enteredKey) then
            statusLabel.Text = "✓ good key! loading..."
            statusLabel.TextColor3 = Color3.fromRGB(100, 255, 150)
            submitBtn.Text = "✓ loading..."
            submitBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
            submitBtn.Active = false
            
            task.wait(0.6)
            
            gui:Destroy()
            loadMainScript()
        else
            statusLabel.Text = "✗ nah, try again"
            statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
            keyInput.Text = ""
            keyInput:CaptureFocus()
            
            -- Subtle shake
            local ogX = frame.Position.X.Offset
            for i = 1, 6 do
                frame.Position = UDim2.new(0.5, ogX + (i % 2 == 0 and 8 or -8), 0.5, -90)
                task.wait(0.03)
            end
            frame.Position = UDim2.new(0.5, ogX, 0.5, -90)
        end
    end
    
    submitBtn.MouseButton1Click:Connect(handleSubmit)
    
    keyInput.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            handleSubmit()
        end
    end)
    
    task.wait(0.1)
    keyInput:CaptureFocus()
end

-- Start it up
initKeySystem()
