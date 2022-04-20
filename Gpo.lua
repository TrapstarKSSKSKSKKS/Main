game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        syn.queue_on_teleport([[
            if not game:IsLoaded() then
                game.Loaded:wait()
                wait(5)
            end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/TrapstarLOLOL/Script/main/Hub.lua"))()
        ]])
    end
end)
if game:IsLoaded() then
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
    local notif = Notification.new("success", "Sucesso", "Script executado")
    notif:deleteTimeout(8)
end
   --Gpo
   local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
   local Window = Library.CreateLib("Trapstar", "DarkTheme")
   local Tab = Window:NewTab("Grand Piece Online")
   --Scripts
   --Sea Hub
   local Section = Tab:NewSection("Scripts")
   Section:NewButton("SeaHub", "Otimo para Dg/ship/kraken farm e etc", function()
   getgenv().Key = "379e0755a343577"
   loadstring(game:HttpGet("https://ego-d.xyz/Script/"))();
   end)
   --Ouro Hub
   Section:NewButton("OuroHub", "Otimo para farm level", function()
       getgenv().wl_key = "qjSS1lHEQhtS1j7a-lpE3UgMx-WPupJW2Hi0loLY14"
   loadstring(game:HttpGet("https://ourohub.com/api/script/loader.lua?Key="..getgenv().wl_key))()
   end)
    --Frost Hub
   Section:NewButton("Frost Hub", "Meio sus.", function()
      pcall(function()
          if syn and not(SENTINEL_V2) then r=syn.request else r=request end;
          gets=function() return r({Method="GET",Url="https://s1-stayfrosty.glitch.me/getscript?d=t7mXG6KlmdKAOfTZ2cvc&k=e76UH5EUZKtjgMpfBNBg&id=696444872810430554&d2=FrostHub"}).Body end;rt=0;repeat spawn(function() pcall(function() loadstring(gets())() end) end);rt=rt+1;wait(60) until getgenv().executed or rt >= 10
      end)
   end)
   local Tab = Window:NewTab("Settings")
   local Section = Tab:NewSection("Settings")
   Section:NewKeybind("Hide Gui", "Ira esconder o gui", Enum.KeyCode.LeftAlt, function()
      Library:ToggleUI()
   end)
   local Section = Tab:NewSection("Misc")
   Section:NewButton("Voltar ao menu", "Vai te enviar rapidamente ao menu do jogo", function()
      game:GetService("TeleportService"):Teleport(1730877806, game:GetService("Players").LocalPlayer)
      end)
   Section:NewButton("TradeHubTeleport", "Vai te enviar para o tradeHub", function()
      game:GetService("TeleportService"):Teleport(6811831486, game:GetService("Players").LocalPlayer)
      end)
      if game.PlaceId == 6811831486 then
      Section:NewButton("ServerRejoin", "Rejoin", function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService('Players').LocalPlayer);
     end)
    end