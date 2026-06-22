-- Key System with UI
local keySystem = {}

-- Set your valid key here
local VALID_KEY = "velra"

-- Create the UI
local function createKeyUI()
    -- ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "KeySystemGUI"
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    -- Main Frame
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 350, 0, 200)
    frame.Position = UDim2.new(0.5, -175, 0.5, -100)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BackgroundTransparency = 0
    frame.BorderSizePixel = 0
    frame.ClipsDescendants = true
    frame.Parent = screenGui
    
    -- Corner
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = frame
    
    -- Title
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 40)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    title.BackgroundTransparency = 0
    title.Text = "🔐 KEY SYSTEM"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 20
    title.Font = Enum.Font.GothamBold
    title.Parent = frame
    
    -- Key Input
    local keyInput = Instance.new("TextBox")
    keyInput.Size = UDim2.new(0.8, 0, 0, 40)
    keyInput.Position = UDim2.new(0.1, 0, 0, 60)
    keyInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    keyInput.TextSize = 16
    keyInput.Font = Enum.Font.Gotham
    keyInput.PlaceholderText = "Enter your key..."
    keyInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
    keyInput.Text = ""
    keyInput.Parent = frame
    
    -- Key Input Corner
    local inputCorner = Instance.new("UICorner")
    inputCorner.CornerRadius = UDim.new(0, 5)
    inputCorner.Parent = keyInput
    
    -- Submit Button
    local submitBtn = Instance.new("TextButton")
    submitBtn.Size = UDim2.new(0.8, 0, 0, 40)
    submitBtn.Position = UDim2.new(0.1, 0, 0, 115)
    submitBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
    submitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    submitBtn.TextSize = 18
    submitBtn.Font = Enum.Font.GothamBold
    submitBtn.Text = "✓ SUBMIT"
    submitBtn.Parent = frame
    
    -- Submit Button Corner
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 5)
    btnCorner.Parent = submitBtn
    
    -- Status Label
    local statusLabel = Instance.new("TextLabel")
    statusLabel.Size = UDim2.new(1, 0, 0, 30)
    statusLabel.Position = UDim2.new(0, 0, 0, 165)
    statusLabel.BackgroundTransparency = 1
    statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    statusLabel.TextSize = 14
    statusLabel.Font = Enum.Font.Gotham
    statusLabel.Text = ""
    statusLabel.Parent = frame
    
    return screenGui, keyInput, submitBtn, statusLabel, frame
end

-- Function to validate key
local function validateKey(inputKey)
    if inputKey == VALID_KEY then
        return true
    end
    return false
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
    -- Create UI
    local gui, keyInput, submitBtn, statusLabel, frame = createKeyUI()
    
    -- Submit button click function
    local function handleSubmit()
        local enteredKey = keyInput.Text
        
        if validateKey(enteredKey) then
            -- Correct key
            statusLabel.Text = "✅ Correct key! Loading..."
            statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
            
            -- Wait a moment then load
            task.wait(0.5)
            
            -- Destroy UI
            gui:Destroy()
            
            -- Load main script
            loadMainScript()
        else
            -- Wrong key
            statusLabel.Text = "❌ Invalid key! Please try again."
            statusLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            keyInput.Text = ""
            keyInput:CaptureFocus()
            
            -- Shake animation effect
            local originalPos = frame.Position
            for i = 1, 10 do
                frame.Position = UDim2.new(0.5, -175 + (i % 2 == 0 and 10 or -10), 0.5, -100)
                task.wait(0.02)
            end
            frame.Position = originalPos
        end
    end
    
    -- Submit button click
    submitBtn.MouseButton1Click:Connect(handleSubmit)
    
    -- Enter key press
    keyInput.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            handleSubmit()
        end
    end)
    
    -- Auto-focus on input
    task.wait(0.1)
    keyInput:CaptureFocus()
end

-- Start the key system
initKeySystem()
