-- PSM Potassium Login - 1:1 Perfect Copy
local VALID_USERNAME = "admin"
local VALID_PASSWORD = "password123"

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "Potassium"
gui.ResetOnSpawn = false
gui.Parent = player.PlayerGui

-- Background
local bg = Instance.new("Frame")
bg.Size = UDim2.fromScale(1,1)
bg.BackgroundColor3 = Color3.fromRGB(10,10,13)
bg.BorderSizePixel = 0
bg.Parent = gui

-- App name (top left)
local app = Instance.new("TextLabel")
app.Text = "Potassium"
app.Font = Enum.Font.Gotham
app.TextSize = 16
app.TextColor3 = Color3.fromRGB(170,170,180)
app.BackgroundTransparency = 1
app.Position = UDim2.new(0,18,0,12)
app.Size = UDim2.new(0,200,0,30)
app.TextXAlignment = Enum.TextXAlignment.Left
app.Parent = bg

-- Window buttons
local controls = Instance.new("TextLabel")
controls.Text = "—   □   ✕"
controls.Font = Enum.Font.Gotham
controls.TextSize = 14
controls.TextColor3 = Color3.fromRGB(180,180,190)
controls.BackgroundTransparency = 1
controls.Position = UDim2.new(1,-120,0,10)
controls.Size = UDim2.new(0,100,0,30)
controls.Parent = bg

-- Card
local card = Instance.new("Frame")
card.Size = UDim2.new(0,360,0,305)
card.Position = UDim2.new(.5,-180,.5,-150)
card.BackgroundColor3 = Color3.fromRGB(15,15,18)
card.BorderSizePixel = 0
card.Parent = bg

Instance.new("UICorner",card).CornerRadius = UDim.new(0,14)

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(38,38,44)
stroke.Thickness = 1
stroke.Transparency = .2
stroke.Parent = card

local function label(text,size,y,color,bold)
	local t = Instance.new("TextLabel")
	t.BackgroundTransparency = 1
	t.Size = UDim2.new(1,0,0,size+10)
	t.Position = UDim2.new(0,0,0,y)
	t.Text = text
	t.Font = bold and Enum.Font.GothamBold or Enum.Font.Gotham
	t.TextSize = size
	t.TextColor3 = color
	t.Parent = card
	return t
end

label(
	"Welcome Back",
	18,
	28,
	Color3.fromRGB(240,240,240),
	true
)

label(
	"Sign in to continue to Potassium",
	11,
	72,
	Color3.fromRGB(150,150,160)
)

local function createInput(y,placeholder,password)

	local box = Instance.new("TextBox")
	box.Size = UDim2.new(.86,0,0,36)
	box.Position = UDim2.new(.07,0,0,y)

	box.PlaceholderText = placeholder
	box.Text = ""

	box.Font = Enum.Font.Gotham
	box.TextSize = 13

	box.TextColor3 = Color3.fromRGB(230,230,230)
	box.PlaceholderColor3 = Color3.fromRGB(120,120,130)

	box.BackgroundColor3 = Color3.fromRGB(17,17,21)

	box.BorderSizePixel = 0
	box.ClearTextOnFocus = false
	box.Parent = card

	box.Password = password

	Instance.new("UICorner",box).CornerRadius=UDim.new(0,6)

	local s=Instance.new("UIStroke")
	s.Color=Color3.fromRGB(45,45,50)
	s.Parent=box

	box.Focused:Connect(function()
		s.Color=Color3.fromRGB(90,90,100)
	end)

	box.FocusLost:Connect(function()
		s.Color=Color3.fromRGB(45,45,50)
	end)

	return box
end

local username=createInput(120,"✉  Username")
local password=createInput(175,"🔒  Password",true)

local login=Instance.new("TextButton")
login.Size=UDim2.new(.86,0,0,38)
login.Position=UDim2.new(.07,0,0,230)

login.Text="→ Login"

login.Font=Enum.Font.GothamMedium
login.TextSize=15

login.BackgroundColor3=Color3.fromRGB(30,30,34)
login.TextColor3=Color3.fromRGB(220,220,220)

login.Parent=card

Instance.new("UICorner",login).CornerRadius=UDim.new(0,6)

local ls=Instance.new("UIStroke")
ls.Color=Color3.fromRGB(50,50,55)
ls.Parent=login

login.MouseEnter:Connect(function()
	login.BackgroundColor3=Color3.fromRGB(36,36,42)
end)

login.MouseLeave:Connect(function()
	login.BackgroundColor3=Color3.fromRGB(30,30,34)
end)r3 = Color3.fromRGB(100, 80, 255)
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
