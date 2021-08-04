--[[

    ©resul
   28/06/2021 03:35


]]
function saatayarla (player,cmd,saatMiktari,dakikaMiktari)



  local saatMiktari = tonumber(saatMiktari)
        

  if not saatMiktari then
    outputChatBox("[#ff000dAxeros#FFFFFF]#FFFFFF Hatalı komut kullanımı. Örnek; #00ff00/saat 0 0",player,255,255,255,true)
  return end
  if not dakikaMiktari then
      outputChatBox("[#ff000dAxeros#FFFFFF]#FFFFFF Hatalı Komut kullanımı. Lütfen dakika giriniz. Örnek; #00ff00/saat 0 0",player,255,255,255,true)
    return end


               if saatMiktari > 23 then 
                  outputChatBox("[#ff000dAxeros#FFFFFF]#FFFFFF Lütfen 24 saat biçimini tercih ediniz.",player,255,255,255,true)
                return end

                if saatMiktari < 0 then 
                  outputChatBox("[#ff000dAxeros#FFFFFF]#FFFFFF Lütfen 24 saat biçimini tercih ediniz.",player,255,255,255,true)
                return end


    
    setTime(saatMiktari,dakikaMiktari)
    setMinuteDuration(999999999999)
    outputChatBox("#FFFFFF[#1a1ef0Axeros#FFFFFF]#FFFFFF Oyun saatiniz başarıyla "..saatMiktari.."-"..dakikaMiktari.." #FFFFFFOlarak ayarlandı.",player,255,255,255,true)
        end

        function gerceksaat (player,cmd,gercekSaat,gercekDakika)

          local realtime = getRealTime()

        setTime(realtime.hour, realtime.minute)
          setMinuteDuration(60000)
        end
addCommandHandler("saat",saatayarla)
