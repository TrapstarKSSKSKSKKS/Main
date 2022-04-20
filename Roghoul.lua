game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        syn.queue_on_teleport([[
            if not game:IsLoaded() then
                game.Loaded:wait()
                wait(5)
            end
            loadstring(game:HttpGet("https://pastebin.com/raw/7rSb1Xa9"))()
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
    local Tab = Window:NewTab("Roghoul")
    local Section = Tab:NewSection("Scripts")
    Section:NewButton("Aztup Hub", "", function()
        getgenv().scriptKey,getgenv().websiteKey='258af3b8-e237-4754-a095-38859bc4f754','4427deb1-a145-41cf-8f3b-81df0f1660dc';loadstring(game:HttpGet('https://aztupscripts.xyz/api/v1/whitelist/getLoader?websiteScriptKey=4427deb1-a145-41cf-8f3b-81df0f1660dc'))()
    end)
    Section:NewButton("Linoria", "", function()
        local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/violin-suzutsuki/Linoria/main/Script.lua');

        if Status then
            loadstring(Script)();
        else
            game:GetService('Players').LocalPlayer:Kick('Failed to connect to website (https://lindseyhost.com)');
        end;
    end)
    Section:NewButton("Frost Hub", "", function()
        pcall(function()
            if syn and not(SENTINEL_V2) then r=syn.request else r=request end;
            gets=function() return r({Method="GET",Url="https://s1-stayfrosty.glitch.me/getscript?d=t7mXG6KlmdKAOfTZ2cvc&k=e76UH5EUZKtjgMpfBNBg&id=696444872810430554&d2=FrostHub"}).Body end;rt=0;repeat spawn(function() pcall(function() loadstring(gets())() end) end);rt=rt+1;wait(60) until getgenv().executed or rt >= 10
        end)
    end)
    local Tab = Window:NewTab("Misc")
    local Section = Tab:NewSection("Settings")
    Section:NewKeybind("Hide Gui", "Ira esconder o gui", Enum.KeyCode.LeftAlt, function()
        Library:ToggleUI()
    end)
    local Section = Tab:NewSection("Misc")
    Section:NewButton("ServerRejoin", "Para trocar de ghoul para ccj", function()
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

    Section:NewButton("Comer o fizzy", "", function()
        local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
        wait(1)
        local notif = Notification.new("success", "GG", "Vou comer o fizzy!!!")
        wait(5);
        notif:delete();
        wait(1)
        local notif = Notification.new("success", "GG", "Estou comendo o fizzy!!!")
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("hehehe","All");
        wait(5)
        notif:delete();
        wait(1);
        local notif = Notification.new("warning", "MEUDEUS", "Eu esqueci de falar que sou precose");
        wait(5)
        notif:delete();
        wait(1);
        local notif = Notification.new("info", "MEUDEUS", "Ele começou a kickar!!!");
        wait(5)
        notif:delete();
        wait(1)
        local notif = Notification.new("error", "OMG", "EU ESTOU GOZANDO!!!!");
        wait(5)
        notif:delete();
        wait(1)
        local notif = Notification.new("info", "INFORMAMOS!!", "Fizzy está gravido!!!");
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Eu não sou o pai!!","All");
        wait(5)
        notif:delete();
            end)