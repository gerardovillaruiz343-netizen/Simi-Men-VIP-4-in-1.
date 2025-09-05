--// Simi Menú VIP 4 in 1 💀👑 by @gerardovillaruizoficial
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local lp = Players.LocalPlayer

--// Crear GUI principal
local gui = Instance.new("ScreenGui")
gui.Name = "SimiVIP4in1"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = lp:WaitForChild("PlayerGui")

--// Menú principal oculto
local menu = Instance.new("Frame")
menu.Size = UDim2.new(0, 300, 0, 260)
menu.Position = UDim2.new(0.5, -150, 1.2, 0)
menu.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
menu.BorderSizePixel = 0
menu.Visible = false
menu.Active = true
menu.Draggable = true
menu.Parent = gui
Instance.new("UICorner", menu)

--// RGB dinámico
local hue = 0
RunService.RenderStepped:Connect(function()
    hue = (hue + 0.005) % 1
    menu.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
end)

--// Animación de entrada
TweenService:Create(menu, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
    Position = UDim2.new(0.5, -150, 0.5, -130)
}):Play()

--// Título
local titulo = Instance.new("TextLabel", menu)
titulo.Size = UDim2.new(1, 0, 0, 30)
titulo.Position = UDim2.new(0, 0, 0, 5)
titulo.Text = "Scripts Vip"
titulo.Font = Enum.Font.Code
titulo.TextSize = 20
titulo.TextColor3 = Color3.fromRGB(255, 255, 255)
titulo.BackgroundTransparency = 1

--// Subtítulo
local subtitulo = Instance.new("TextLabel", menu)
subtitulo.Size = UDim2.new(1, -20, 0, 30)
subtitulo.Position = UDim2.new(0, 10, 0, 35)
subtitulo.Text = "TikTok: @gerardovillaruizoficial\n(actualizado frecuentemente)"
subtitulo.Font = Enum.Font.Gotham
subtitulo.TextSize = 14
subtitulo.TextColor3 = Color3.fromRGB(255, 255, 255)
subtitulo.BackgroundTransparency = 1
subtitulo.TextWrapped = true
subtitulo.TextYAlignment = Enum.TextYAlignment.Top

--// Función para crear botones
local function crearBoton(nombre, y, url)
    local btn = Instance.new("TextButton", menu)
    btn.Size = UDim2.new(0, 280, 0, 30)
    btn.Position = UDim2.new(0, 10, 0, y)
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 14
    btn.Text = nombre
    btn.MouseButton1Click:Connect(function()
        pcall(function()
            loadstring(game:HttpGet(url))()
        end)
    end)
    Instance.new("UICorner", btn)
end

--// Botones de scripts VIP
crearBoton("Lennon Hub", 75, "https://pastefy.app/NU4lqGZe/raw")
crearBoton("Kurd Hub", 115, "https://rawscripts.net/raw/Universal-Script-Kurd-Hub-29484")
crearBoton("Chilli Hub", 155, "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua")
crearBoton("PetFinder", 195, "https://pastefy.app/WAJEG4fd/raw")

--// Botón circular con texto "Simi\nMenú\nVIP"
local circleBtn = Instance.new("TextButton")
circleBtn.Size = UDim2.new(0, 60, 0, 60)
circleBtn.Position = UDim2.new(0.05, 0, 0.8, 0)
circleBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
circleBtn.Text = "Simi\nMenú\nVIP"
circleBtn.Font = Enum.Font.GothamBold
circleBtn.TextSize = 12
circleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
circleBtn.BorderSizePixel = 0
circleBtn.Parent = gui
circleBtn.Active = true
circleBtn.Draggable = false
circleBtn.TextWrapped = true
Instance.new("UICorner", circleBtn)

--// Toggle del menú
circleBtn.MouseButton1Click:Connect(function()
    menu.Visible = not menu.Visible
end)
