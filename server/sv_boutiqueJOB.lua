ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('ws:GiveShopProfessional')
AddEventHandler('ws:GiveShopProfessional', function(nameItemLabel, NameForGive, PriceForGive, nameSocietyLabel, NameJobSociety)
      local _src = source
      local xPlayer = ESX.GetPlayerFromId(_src)
      local GivetotalItem = 1
      local QuantityItem = xPlayer.getInventoryItem(NameForGive).count

      local societyAccount  = nil

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_'..NameJobSociety, function(account)
        societyAccount = account
    end)
  
      if QuantityItem <= ShopJobConf.QuantityItem and ShopJobConf.RegularItem then
            societyAccount.removeMoney(PriceForGive)
              xPlayer.addInventoryItem(NameForGive, GivetotalItem)
              TriggerClientEvent('esx:showNotification', _src, "Vous avez acheté "..nameItemLabel.." pour "..PriceForGive.."~g~$")
              TriggerEvent("ws:SendLogsBoutique", source, 'Achat de la societé : '..nameSocietyLabel, 'Le joueur : '..GetPlayerName(_src)..' vient d\'acheter : '..nameItemLabel..' pour '..PriceForGive..'$')
      elseif ShopJobConf.RegularItem == false then 
              societyAccount.removeMoney(PriceForGive)
              xPlayer.addInventoryItem(NameForGive, GivetotalItem)
              TriggerClientEvent('esx:showNotification', _src, "Vous avez acheté "..nameItemLabel.." pour "..PriceForGive.."~g~$")
              TriggerEvent("ws:SendLogsBoutique", source, 'Achat de la societé : '..nameSocietyLabel, 'Le joueur : '..GetPlayerName(_src)..' vient d\'acheter : '..nameItemLabel..' pour '..PriceForGive..'$')
      else
          TriggerClientEvent('esx:showNotification', _src, "Vous en avez suffisament de "..nameItemLabel.." sur vous.")
      end
end)

ESX.RegisterServerCallback('ws:verifargententreprise', function(source,cb, NameJobSociety, PriceForGive)
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_'..NameJobSociety, function (account)
        if account.money >= PriceForGive then
			--account.removeMoney(PriceForGive)
            cb(true)
        else
            cb(false)
        end
    end)
end)