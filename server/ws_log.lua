--- LOG BOUTIQUE PROFESSIONNEL

RegisterServerEvent("ws:SendLogsBoutique")
AddEventHandler("ws:SendLogsBoutique", function(player, title, message)
	local idd = SocietyShop.GetPlayerDetails(player)

	local _embed = {
		{
			["color"] = SocietyShop_Logs.Color,
			["title"] = title,
			["description"] = message,
			["footer"] = {
				["text"] = SocietyShop_Logs.Footer,
				["icon_url"] = SocietyShop_Logs.Footer_URL,
			},
			["fields"] = {
				{
					["name"] = "**Joueur :** "..GetPlayerName(player),
					["value"] = idd,
					["inline"] = true
				},
			},
		}
	}

	PerformHttpRequest(SocietyShop_Logs.links, function(err, text, headers) end, 'POST', json.encode({
		username = "Boutique d'entreprise", 
		embeds = _embed,
		avatar_url = SocietyShop_Logs.Avatar
	}), { ['Content-Type'] = 'application/json' })
end)
SocietyShop = {}

SocietyShop.GetPlayerDetails = function(src)
	local player_id = src
	local ids = SocietyShop.ExtractIdentifiers(player_id)
	if SocietyShop_Logs.Discord then if ids.discord ~= "" then _discordID ="**Discord:** "..ids.discord.." <@" ..ids.discord:gsub("discord:", "")..">" else _discordID = "**Discord:** N/A" end else _discordID = "" end
	if SocietyShop_Logs.License then if ids.license ~= "" then _license ="**License:** " ..ids.license else _license = "**License :** N/A" end else _license = "" end
	if SocietyShop_Logs.Ip then if ids.ip ~= "" then _ip = "**IP:** [||"..ids.ip:gsub("ip:", "").."||](https://www.ip-tracker.org/locator/ip-lookup.php?ip=" ..ids.ip:gsub("ip:", "")..")" else _ip = "**IP :** N/A" end else _ip = "" end
	return _discordID..' \n'.._license..' \n'.._ip
end

SocietyShop.ExtractIdentifiers = function(src)
    local identifiers = {
        ip = "",
        discord = "",
        license = ""
    }

    for i = 0, GetNumPlayerIdentifiers(src) - 1 do
        local id = GetPlayerIdentifier(src, i)

        if string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
            identifiers.discord = id
        elseif string.find(id, "license") then
            identifiers.license = id
        end
    end

    return identifiers
end