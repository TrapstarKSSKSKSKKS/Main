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
 --Tab
local Tab = Window:NewTab("DeepWoken")
 --Scripts
    --Ouro Hub
    local Section = Tab:NewSection("Scripts")
    Section:NewButton("OuroHub", "Só tem farm stats", function()
         getgenv().wl_key = "qjSS1lHEQhtS1j7a-lpE3UgMx-WPupJW2Hi0loLY14"
    loadstring(game:HttpGet("https://ourohub.com/api/script/loader.lua?Key="..getgenv().wl_key))()
    end)
    --Linoria
   Section:NewButton("Linoria", "O melhor para deepwoken", function()
    local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/violin-suzutsuki/Linoria/main/Script.lua');

    if Status then
        loadstring(Script)();
    else
        game:GetService('Players').LocalPlayer:Kick('Failed to connect to website (https://lindseyhost.com)');
    end;
end)
--Aztup Hub
Section:NewButton("Aztup Hub", "Segundo melhor para deepwoken", function()
    getgenv().scriptKey,getgenv().websiteKey='258af3b8-e237-4754-a095-38859bc4f754','4427deb1-a145-41cf-8f3b-81df0f1660dc';loadstring(game:HttpGet('https://aztupscripts.xyz/api/v1/whitelist/getLoader?websiteScriptKey=4427deb1-a145-41cf-8f3b-81df0f1660dc'))()
end)
  --Frost Hub
Section:NewButton("Frost Hub", "Meio sus", function()
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
   Section:NewButton("Voltar ao menu", "Vai te enviar rapidamente ao menu do jogo", function()
   game:GetService("TeleportService"):Teleport(4111023553, game:GetService("Players").LocalPlayer)
   end)
