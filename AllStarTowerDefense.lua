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
--AllstarTowerDefense
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Trapstar", "DarkTheme")
     --Tab
    local Tab = Window:NewTab("AllStar")
     --Scripts
    local Section = Tab:NewSection("Scripts")
    --RiverHubPremium
    Section:NewButton("RiverHubPremium", "", function()
        getgenv().Keys = "I5K3E-1SCHN-0WRUG"
loadstring(game:HttpGet("http://riverhub.xyz/PaidScript.lua"))();
        end)
        --OuroHub
        Section:NewButton("OuroHub", "Só tem farm stats", function()
            getgenv().wl_key = "qjSS1lHEQhtS1j7a-lpE3UgMx-WPupJW2Hi0loLY14"
       loadstring(game:HttpGet("https://ourohub.com/api/script/loader.lua?Key="..getgenv().wl_key))()
       end)
       --misc 
       local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Settings")
   Section:NewKeybind("Hide Gui", "Ira esconder o gui", Enum.KeyCode.LeftAlt, function()
       Library:ToggleUI()
   end)

local Section = Tab:NewSection("Misc")
if game.PlaceId == 7785334488 then 
   Section:NewButton("Teleport to World1", "Vai te enviar ao world1", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.86148071289062, 141.9999542236328, 90.85478210449219)
   end)
end
if game.PlaceId == 4996049426 then
   Section:NewButton("Teleport to World2", "Vai te enviar ao world2", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-552.2249755859375, 300.3929748535156, -546.6746215820312);
end)
end
    Section:NewButton("ServerHop", "Vai dar rejoin no mesmo servidor", function(w)
        if game.PlaceId == 4996049426 then
            game:GetService("TeleportService"):Teleport(4996049426, game:GetService("Players").LocalPlayer);
        else
            game:GetService("TeleportService"):Teleport(7785334488, game:GetService("Players").LocalPlayer);

        end
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