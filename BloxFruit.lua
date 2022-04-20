game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        syn.queue_on_teleport([[
            if not game:IsLoaded() then
                game.Loaded:wait()
                wait(5)
            end
            loadstring(game:HttpGet("https://pastebin.com/raw/iHcj4tuk"))()
        ]])
    end
end)
if game:IsLoaded() then
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
    local notif = Notification.new("success", "Sucesso", "Script executado")
    notif:deleteTimeout(8)
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Trapstar", "DarkTheme")
local Tab = Window:NewTab("Blox Fruits")
local Section = Tab:NewSection("Script")
Section:NewButton("SeaHub", "", function()
    getgenv().Key = "379e0755a343577"
loadstring(game:HttpGet("https://ego-d.xyz/Script/"))()
end)
local Tab = Window:NewTab("Settings")
local Section = Tab:NewSection("Settings")
Section:NewKeybind("Hide Gui", "Ira esconder o gui", Enum.KeyCode.LeftAlt, function()
    Library:ToggleUI()
end)
local Section = Tab:NewSection("Misc")
Section:NewButton("ServerRejoin", "Rejoin", function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService('Players').LocalPlayer)
end)
   Section:NewTextBox("HideName", "Só pode ser usado uma vez (Ainda em teste)", function(txt)
        print(txt);
        repeat wait() until game:IsLoaded()
        getgenv().settings = {
            ['HiddenName'] = txt
        }
        
        local Player = game.Players.LocalPlayer
        local function HideName(oldName)
            for Index, Value in next, game:GetDescendants() do 
                if Value.ClassName == "TextLabel" or Value.ClassName == "TextButton" then 
                    
                    local str = Value.Text:gsub(oldName,settings.HiddenName)
                    str = str:gsub(Player.Name,settings.HiddenName)
                    str = str:gsub(Player.DisplayName, settings.HiddenName)
                    Value.Text = str 
                    Value:GetPropertyChangedSignal("Text"):Connect(function()
                        local str = Value.Text:gsub(Player.Name,settings.HiddenName)
                        str = str:gsub(Player.DisplayName, settings.HiddenName)
                        Value.Text = str 
                    end)
                end
            end
        end
        
        
        HideName(Player.Name)
        
        
        game.DescendantAdded:Connect(function(Value)
            if Value.ClassName == "TextLabel" or Value.ClassName == "TextButton" then 
                
                local str = Value.Text:gsub(Player.Name, settings.HiddenName)
                str = str:gsub(Player.DisplayName, settings.HiddenName)
                Value.Text = str 
                Value:GetPropertyChangedSignal("Text"):Connect(function()
                    local str = Value.Text:gsub(Player.Name,settings.HiddenName)
                    str = str:gsub(Player.DisplayName, settings.HiddenName)
                    Value.Text = str 
                end)
            end
        end)
        local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
        local notif = Notification.new("warning", "ALERTA", "Não use novamente (Risco de crash)");
        notif:deleteTimeout(8)
    end)