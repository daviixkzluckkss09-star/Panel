-- Services
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Criar ScreenGui Principal
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CustomPanelGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

--------------------------------------------------------------------------------
-- 1. BOTÃO FLUTUANTE (Bolinha Roxa com a cara ;-;)
--------------------------------------------------------------------------------
local ToggleButton = Instance.new("TextButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Position = UDim2.new(0.05, 0, 0.4, 0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(216, 191, 216)
ToggleButton.Text = ";-;"
ToggleButton.TextColor3 = Color3.fromRGB(60, 40, 70)
ToggleButton.TextSize = 22
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.Parent = ScreenGui

local UICornerBtn = Instance.new("UICorner")
UICornerBtn.CornerRadius = UDim.new(1, 0)
UICornerBtn.Parent = ToggleButton

local UIStrokeBtn = Instance.new("UIStroke")
UIStrokeBtn.Thickness = 2
UIStrokeBtn.Color = Color3.fromRGB(180, 150, 200)
UIStrokeBtn.Parent = ToggleButton

--------------------------------------------------------------------------------
-- 2. TELA / CONTAINER PRINCIPAL
--------------------------------------------------------------------------------
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 340, 0, 430)
MainFrame.Position = UDim2.new(0.5, -170, 0.5, -215)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.ClipsDescendants = true
MainFrame.Visible = false
MainFrame.Parent = ScreenGui

local UICornerFrame = Instance.new("UICorner")
UICornerFrame.CornerRadius = UDim.new(0, 14)
UICornerFrame.Parent = MainFrame

local UIStrokeFrame = Instance.new("UIStroke")
UIStrokeFrame.Thickness = 2
UIStrokeFrame.Color = Color3.fromRGB(200, 170, 220)
UIStrokeFrame.Parent = MainFrame

--------------------------------------------------------------------------------
-- 3. IMAGEM DE FUNDO
--------------------------------------------------------------------------------
local BgImage = Instance.new("ImageLabel")
BgImage.Name = "BackgroundImage"
BgImage.Size = UDim2.new(1, 0, 1, 0)
BgImage.BackgroundTransparency = 1
BgImage.Image = "rbxassetid://98341674367242"
BgImage.ImageTransparency = 0.25
BgImage.Parent = MainFrame

-- Título da Janela
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -40, 0, 35)
TitleLabel.Position = UDim2.new(0, 15, 0, 8)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Painel Exclusivo"
TitleLabel.TextColor3 = Color3.fromRGB(70, 40, 80)
TitleLabel.TextSize = 18
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = MainFrame

-- Subtítulo / Seus TikToks
local SubTitleLabel = Instance.new("TextLabel")
SubTitleLabel.Size = UDim2.new(1, -30, 0, 20)
SubTitleLabel.Position = UDim2.new(0, 15, 0, 32)
SubTitleLabel.BackgroundTransparency = 1
SubTitleLabel.Text = "TikToks: liilyratosfofos & KudoZin"
SubTitleLabel.TextColor3 = Color3.fromRGB(90, 60, 100)
SubTitleLabel.TextSize = 12
SubTitleLabel.Font = Enum.Font.SourceSansItalic
SubTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
SubTitleLabel.Parent = MainFrame

-- Botão de Fechar (X)
local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 8)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.fromRGB(120, 80, 130)
CloseBtn.TextSize = 18
CloseBtn.Font = Enum.Font.SourceSansBold
CloseBtn.Parent = MainFrame

--------------------------------------------------------------------------------
-- 4. INTERFACE DE LOGIN (SENHA)
--------------------------------------------------------------------------------
local LoginFrame = Instance.new("Frame")
LoginFrame.Name = "LoginFrame"
LoginFrame.Size = UDim2.new(1, 0, 1, -60)
LoginFrame.Position = UDim2.new(0, 0, 0, 60)
LoginFrame.BackgroundTransparency = 1
LoginFrame.Parent = MainFrame

local PassBox = Instance.new("TextBox")
PassBox.Size = UDim2.new(0.8, 0, 0, 42)
PassBox.Position = UDim2.new(0.1, 0, 0.25, 0)
PassBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PassBox.BackgroundTransparency = 0.3
PassBox.PlaceholderText = "Digite a senha..."
PassBox.Text = ""
PassBox.TextColor3 = Color3.fromRGB(40, 20, 50)
PassBox.TextSize = 16
PassBox.Font = Enum.Font.SourceSans
PassBox.Parent = LoginFrame

local UICornerBox = Instance.new("UICorner")
UICornerBox.CornerRadius = UDim.new(0, 8)
UICornerBox.Parent = PassBox

local LoginBtn = Instance.new("TextButton")
LoginBtn.Size = UDim2.new(0.8, 0, 0, 42)
LoginBtn.Position = UDim2.new(0.1, 0, 0.42, 0)
LoginBtn.BackgroundColor3 = Color3.fromRGB(190, 150, 210)
LoginBtn.BackgroundTransparency = 0.2
LoginBtn.Text = "Entrar"
LoginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LoginBtn.TextSize = 16
LoginBtn.Font = Enum.Font.SourceSansBold
LoginBtn.Parent = LoginFrame

local UICornerLBtn = Instance.new("UICorner")
UICornerLBtn.CornerRadius = UDim.new(0, 8)
UICornerLBtn.Parent = LoginBtn

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, 0, 0, 30)
StatusLabel.Position = UDim2.new(0, 0, 0.6, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(220, 60, 60)
StatusLabel.TextSize = 14
StatusLabel.Font = Enum.Font.SourceSansBold
StatusLabel.Parent = LoginFrame

--------------------------------------------------------------------------------
-- 5. INTERFACE DOS SCRIPTS (Liberada após a senha)
--------------------------------------------------------------------------------
local ScriptFrame = Instance.new("ScrollingFrame")
ScriptFrame.Name = "ScriptFrame"
ScriptFrame.Size = UDim2.new(1, -20, 1, -70)
ScriptFrame.Position = UDim2.new(0, 10, 0, 60)
ScriptFrame.BackgroundTransparency = 1
ScriptFrame.BorderSizePixel = 0
ScriptFrame.ScrollBarThickness = 4
ScriptFrame.Visible = false
ScriptFrame.Parent = MainFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 10)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = ScriptFrame

local scriptsList = {
	{Name = "Script CC ADM MMV", Url = "https://raw.githubusercontent.com/antonioffxslegend-collab/Cc-adm-mmv-panel-mm2/main/script.lua"},
	{Name = "Twilight Painel Gears", Url = "https://raw.githubusercontent.com/antonioffxslegend-collab/Gears/main/script.lua"},
	{Name = "Script Hub Old", Url = "https://raw.githubusercontent.com/mico123kawai-ctrl/hub-old/refs/heads/main/message%20(4).txt"},
	{Name = "Painel Twilight", Url = "https://raw.githubusercontent.com/antonioffxslegend-collab/Cnp-mmv-Petrova/main/script.lua"},
	{Name = "Painel Cursors and Skybox", Url = "https://pastefy.app/QNPaoJsB/raw"},
	{Name = "Painel CNP Extra", Url = "https://pastefy.app/2jfXQKmD/raw"}
}

for i, scriptData in ipairs(scriptsList) do
	local ExecBtn = Instance.new("TextButton")
	ExecBtn.Size = UDim2.new(1, 0, 0, 45)
	ExecBtn.BackgroundColor3 = Color3.fromRGB(215, 185, 230)
	ExecBtn.BackgroundTransparency = 0.25
	ExecBtn.Text = scriptData.Name
	ExecBtn.TextColor3 = Color3.fromRGB(40, 20, 50)
	ExecBtn.TextSize = 15
	ExecBtn.Font = Enum.Font.SourceSansBold
	ExecBtn.Parent = ScriptFrame

	local UICornerExec = Instance.new("UICorner")
	UICornerExec.CornerRadius = UDim.new(0, 8)
	UICornerExec.Parent = ExecBtn

	ExecBtn.MouseButton1Click:Connect(function()
		StatusLabel.Text = "Executando: " .. scriptData.Name
		pcall(function()
			loadstring(game:HttpGet(scriptData.Url))()
		end)
	end)
end

--------------------------------------------------------------------------------
-- 6. LÓGICA E CONEXÕES
--------------------------------------------------------------------------------

local function toggleGui()
	MainFrame.Visible = not MainFrame.Visible
end

ToggleButton.MouseButton1Click:Connect(toggleGui)
CloseBtn.MouseButton1Click:Connect(toggleGui)

local PASSWORD_CORRETA = "iloveigorrr1"

LoginBtn.MouseButton1Click:Connect(function()
	if PassBox.Text == PASSWORD_CORRETA then
		LoginFrame.Visible = false
		ScriptFrame.Visible = true
		TitleLabel.Text = "Escolha um Script"
	else
		StatusLabel.Text = "Senha incorreta! Tente novamente."
		PassBox.Text = ""
	end
end)
