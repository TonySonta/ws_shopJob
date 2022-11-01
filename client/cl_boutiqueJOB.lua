ESX 		= nil
PlayerData 	= {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent(ShopJobConf.ESXSHAREDOBJECT, function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	PlayerData = ESX.GetPlayerData()

end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)


Citizen.CreateThread(function()
    -- Creation du point
    while true do
        local interval = 600
        for k,v in pairs(ShopJobConf.SocietyShop) do
            
                local pos = GetEntityCoords(GetPlayerPed(-1), false)
                CoordPos = v.position
                local distance = Vdist(pos.x, pos.y, pos.z,CoordPos)

            
                if ESX.PlayerData.job and ESX.PlayerData.job.name == v.name then 
                    if distance > 6 then 
                        interval = 2000
                    else 
                        interval = 1
                        DrawMarker(v.sprite, CoordPos, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 15, 141, 246, 255, 0, 1, 2, 0, nil, nil, 0)
                        if distance < 3 then
                            ESX.ShowHelpNotification(v.nameMessage, true, false, true)
                        if IsControlJustPressed(1, 51) then
                            TriggerEvent('ws:checkmenuJob')
                                local ped = PlayerPedId()
                                FreezeEntityPosition(ped, true)
                        end
                    end
                end
            end
        end
        Citizen.Wait(interval)
    end
end)

local ArgentDlaSociety = nil
local OpenJobBoutiqueMenu = false
local MenuBoutiqueJOB = RageUI.CreateMenu("Boutique Pro", "Magasin :")
MenuBoutiqueJOB.Display.Header = true
MenuBoutiqueJOB.Closed = function() 
    OpenJobBoutiqueMenu = false
    local ped = PlayerPedId()
    FreezeEntityPosition(ped, false)
end

function OpenMenuBoutiqueJOB() 
    if OpenJobBoutiqueMenu then 
        OpenJobBoutiqueMenu = false
        RageUI.Visible(MenuBoutiqueJOB, false)
        return
    else
        for k,v in pairs(ShopJobConf.SocietyShop) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == k then
            RefreshSocietMoney(k)
        
        RageUI.Visible(MenuBoutiqueJOB, true)
        CreateThread(function()
                local cooldown = false
                while OpenJobBoutiqueMenu do 
                    RageUI.IsVisible(MenuBoutiqueJOB, function()
                        if ArgentDlaSociety ~= nil then
                        RageUI.Separator("Argent de la société: ~g~"..ArgentDlaSociety.."$")
                        end
                        RageUI.Separator("↓ Général ↓")
                        
                            
                        local nameSocietyLabel = v.label
                        local NameJobSociety = k
                        
                            for u,d in pairs(v.Items) do 
                        local nameItemLabel = d.labelItem
                        local NameForGive = d.item
                        local PriceForGive = d.priceItem
                        RageUI.Button(nameItemLabel, nil, {RightLabel = "~g~"..PriceForGive.."$"}, not cooldown, {
                            onSelected = function()
                                -- Coté serveur à faire
                                ESX.TriggerServerCallback('ws:verifargententreprise', function(CashTotalOK)
                                    if CashTotalOK then
                                        TriggerServerEvent('ws:GiveShopProfessional', nameItemLabel, NameForGive, PriceForGive, nameSocietyLabel, NameJobSociety)
                                --MenuBoutiqueJOB.Closed()
                                        RefreshSocietMoney(k)
                                    else
                                        ESX.ShowNotification('La société n\'as pas assez d\'argent pour cette objet!')
                                    end
                                end, NameJobSociety, PriceForGive)
                            end
                        })

                        

                            end

                            if ESX.PlayerData.job.grade_name == 'boss' then
                                RageUI.Separator("↓ Accès Patron ↓")
                                for _, n in pairs(v.Boss) do
                                    local nameItemLabel = n.labelItem
                                    local NameForGive = n.item
                                    local PriceForGive = n.priceItem
                                    --RageUI.Separator("↓ Accès Patron ↓")
                                    RageUI.Button(nameItemLabel, nil, {RightLabel = "~g~"..PriceForGive.."$"}, not cooldown, {
                                        onSelected = function()
                                            -- Coté serveur à faire
                                            ESX.TriggerServerCallback('ws:verifargententreprise', function(CashTotalOK)
                                                if CashTotalOK then
                                                    TriggerServerEvent('ws:GiveShopProfessional', nameItemLabel, NameForGive, PriceForGive, nameSocietyLabel, NameJobSociety)
                                            --MenuBoutiqueJOB.Closed()
                                                    RefreshSocietMoney(k)
                                                else
                                                    ESX.ShowNotification('La société n\'as pas assez d\'argent pour cette objet!')
                                                end
                                            end, NameJobSociety, PriceForGive)
                                        end
                                    })
    
                                end
                            end

                    end)
                Citizen.Wait(0)
                end
            
        end)

        
    end
    OpenJobBoutiqueMenu = true
    end
end
end

RegisterNetEvent('ws:checkmenuJob')
AddEventHandler('ws:checkmenuJob', function()
    OpenMenuBoutiqueJOB()
end)

function RefreshSocietMoney(k)
    if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.grade_name ~= nil then
        ESX.TriggerServerCallback('genius:getSocietyMoney', function(money)
            ArgentDlaSociety = money
        end, "society_"..k)
    end
end