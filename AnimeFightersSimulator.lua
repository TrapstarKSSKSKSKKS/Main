if game:IsLoaded() then
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
    local notif = Notification.new("success", "Sucesso", "Script executado")
    notif:deleteTimeout(8)
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Trapstar", "DarkTheme")
local Tab = Window:NewTab("AnimeFightersSimulator")
local Section = Tab:NewSection("Scritps")
Section:NewButton("SeaHub", "", function()
    getgenv().Key = "379e0755a343577"
loadstring(game:HttpGet("https://ego-d.xyz/Script/"))()
end)
Section:NewButton("Zer0Hub", "", function()
    setclipboard("https://zer0hub.com/");
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
    local notif = Notification.new("info", "Key", "Link para key copiado")
    wait(2)
        loadstring(game:HttpGet("https://zer0hub.com/script?code="..game.PlaceId))();
end)
Section:NewButton("OuroHub", "", function()
    getgenv().wl_key = "qjSS1lHEQhtS1j7a-lpE3UgMx-WPupJW2Hi0loLY14"
    loadstring(game:HttpGet("https://ourohub.com/api/script/loader.lua?Key="..getgenv().wl_key))()
end)

local Tab = Window:NewTab("Misc")
    local Section = Tab:NewSection("Settings")
    Section:NewKeybind("Hide Gui", "", Enum.KeyCode.LeftAlt, function()
        Library:ToggleUI()
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