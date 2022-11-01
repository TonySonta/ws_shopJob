ShopJobConf = {}

ShopJobConf.ESXSHAREDOBJECT = 'esx:getSharedObject'

ShopJobConf.RegularItem = true
ShopJobConf.QuantityItem = 5

ShopJobConf.SocietyShop = {

   --[[mechanic = {   
        name = 'mechanic',
        label = 'Monkey\'s garage',
        position = vector3(-199.8, -1315.4, 31.1),
        nameMessage = '[~g~E~w~] Ouvrir la boutique du~y~ mécano',
        sprite = 29,
        Items = {
            {item = 'fixkit', labelItem = 'Kit de réparation', priceItem = 10},
            {item = 'carokit', labelItem = 'Kit Carrosserie', priceItem = 10},
            {item = 'carjack', labelItem = 'Cric de voiture', priceItem = 10},
            {item = 'car_hood', labelItem = '~b~Capot de voiture', priceItem = 10},
            {item = 'car_trunk', labelItem = '~b~Coffre de voiture', priceItem = 10},
            {item = 'car_door', labelItem = '~b~Porte de voiture', priceItem = 10},
            {item = 'car_wheel', labelItem = '~b~Roue de voiture', priceItem = 10},
            {item = 'scrap_metal', labelItem = '~g~Ferraille', priceItem = 10},
            {item = 'rubber', labelItem = '~g~Caoutchouc', priceItem = 10},
            {item = 'plastic', labelItem = '~g~Plastique', priceItem = 10},
            {item = 'electric_scrap', labelItem = '~g~Métal conducteur', priceItem = 10},
            {item = 'glass', labelItem = '~g~Vitre', priceItem = 10},
            {item = 'aluminium', labelItem = '~g~Aluminium', priceItem = 10},
            {item = 'copper', labelItem = '~g~Cuivre', priceItem = 10},
            {item = 'steel', labelItem = '~g~Acier', priceItem = 10}
        },
        Boss = {
            {item = 'tenumecano', labelItem = 'Tenu de travail', priceItem = 200}
        },
    },]]
   police = {   
        name = 'police',
        label = 'LSPD',
        position = vector3(608.34, -20.50, 75.72),
        nameMessage = '[~g~E~w~] Ouvrir la boutique ~r~LSPD',
        sprite = 27,
        Items = {
            {item = 'giletlspdbasic', labelItem = 'Gilet de protection', priceItem = 350},
            {item = 'giletlspdbasicf', labelItem = 'Gilet de protection (F)', priceItem = 350},
            {item = 'giletlspdlourd', labelItem = 'Gilet lourd', priceItem = 350},
            {item = 'giletlspdmoto', labelItem = 'Gilet moto', priceItem = 400},
            {item = 'giletlspdmotof', labelItem = 'Gilet moto (F)', priceItem = 400},
            {item = 'giletjaune', labelItem = 'Gilet jaune', priceItem = 15},
            {item = 'giletjaunef', labelItem = 'Gilet jaune (F)', priceItem = 15},
            {item = 'holstercuisse', labelItem = 'Holster à la cuisse', priceItem = 50},
            {item = 'gps', labelItem = 'GPS', priceItem = 150},
            {item = 'radio', labelItem = 'radio', priceItem = 200}
        },
        Boss = {
            {item = 'tenulspdexam', labelItem = 'Tenu LSPD examen', priceItem = 450},
            {item = 'tenulspdmoto', labelItem = 'Tenu LSPD moto', priceItem = 450},
            {item = 'lspdcadet', labelItem = 'Uniforme Cadet été', priceItem = 450},
            {item = 'lspdcadet2', labelItem = 'Uniforme Cadet hiver', priceItem = 450},
            {item = 'lspdofficier', labelItem = 'Uniforme Officier été', priceItem = 450},
            {item = 'lspdofficier2', labelItem = 'Uniforme Officier hiver', priceItem = 450},
            {item = 'lspdsergent', labelItem = 'Uniforme Sergent été', priceItem = 450},
            {item = 'lspdsergent2', labelItem = 'Uniforme Sergent hiver', priceItem = 450},
            {item = 'lspdsergentll', labelItem = 'Uniforme Sergent II été', priceItem = 450},
            {item = 'lspdsergentll2', labelItem = 'Uniforme Sergent II hiver', priceItem = 450},
            {item = 'lspdlieutenant', labelItem = 'Uniforme Lieutenant été', priceItem = 450},
            {item = 'lspdlieutenant2', labelItem = 'Uniforme Lieutenant hiver', priceItem = 450},
            {item = 'lspdlieutenantll', labelItem = 'Uniforme Lieutenant II été', priceItem = 450},
            {item = 'lspdlieutenantll2', labelItem = 'Uniforme Lieutenant II hiver', priceItem = 450},
            {item = 'lspdcapitaine', labelItem = 'Uniforme Capitaine été', priceItem = 450},
            {item = 'lspdcapitaine2', labelItem = 'Uniforme Capitaine Hiver', priceItem = 450},
            {item = 'lspdcommandant2', labelItem = 'Uniforme Commandant hiver', priceItem = 450},
            {item = 'rien', labelItem = '                  ~b~ ↓ Femme ↓', priceItem = 0},
            {item = 'tenulspdexamf', labelItem = 'Tenu LSPD examen (F)', priceItem = 450},
            {item = 'tenulspdmotof', labelItem = 'Tenu LSPD moto (F)', priceItem = 450},
            {item = 'lspdcadetf', labelItem = 'Uniforme Cadet été (F)', priceItem = 450},
            {item = 'lspdcadet2f', labelItem = 'Uniforme Cadet hiver (F)', priceItem = 450},
            {item = 'lspdofficierf', labelItem = 'Uniforme Officier été (F)', priceItem = 450},
            {item = 'lspdofficier2f', labelItem = 'Uniforme Officier hiver (F)', priceItem = 450},
            {item = 'lspdsergentf', labelItem = 'Uniforme Sergent été (F)', priceItem = 450},
            {item = 'lspdsergent2f', labelItem = 'Uniforme Sergent hiver (F)', priceItem = 450},
            {item = 'lspdsergentllf', labelItem = 'Uniforme Sergent II été (F)', priceItem = 450},
            {item = 'lspdsergentll2f', labelItem = 'Uniforme Sergent II hiver (F)', priceItem = 450},
            {item = 'lspdlieutenantf', labelItem = 'Uniforme Lieutenant été (F)', priceItem = 450},
            {item = 'lspdlieutenant2f', labelItem = 'Uniforme Lieutenant hiver (F)', priceItem = 450},
            {item = 'lspdlieutenantllf', labelItem = 'Uniforme Lieutenant II été (F)', priceItem = 450},
            {item = 'lspdlieutenantll2f', labelItem = 'Uniforme Lieutenant II hiver (F)', priceItem = 450},
            {item = 'lspdcapitainef', labelItem = 'Uniforme Capitaine été (F)', priceItem = 450},
            {item = 'lspdcapitaine2f', labelItem = 'Uniforme Capitaine Hiver (F)', priceItem = 450},
            {item = 'lspdcommandant2f', labelItem = 'Uniforme Commandant hiver (F)', priceItem = 450},
        },
    },
    weed = {   
        name = 'weed',
        label = 'Boutique de Weed',
        position = vector3(383.0578, -827.0154, 28.30226),
        nameMessage = '[~g~E~w~] pour ouvrir la boutique du ~g~ Weed Shop', 
        sprite = 27,
        Items = {
            {item = 'bong', labelItem = 'Bang', priceItem = 15},
            {item = 'vape', labelItem = 'Vapoteuse', priceItem = 11},
            {item = 'lighter', labelItem = 'Briquet', priceItem = 2},
            {item = 'ocb_paper', labelItem = 'Feuille slim', priceItem = 2},
            {item = 'redw', labelItem = 'Paquet RedWood', priceItem = 3},
            {item = 'marlboro', labelItem = 'Paquet Malboro', priceItem = 4},
            {item = 'cubancigar', labelItem = 'Cigare Cubain', priceItem = 150},
            {item = 'davidoffcigar', labelItem = 'Cigare banal', priceItem = 35},
            {item = 'liquid', labelItem = 'Arome vapoteuse', priceItem = 35},
        },
        Boss = { -- Item pour le grade boss
            {item = 'licenseweed', labelItem = 'License WeedShop', priceItem = 200}
        },
    }
}


SocietyShop_Logs = {

    links = "https://discord.com/api/webhooks/905399557314207776/e_-55FekiyRRipj3ZrLZVJOcInqxWEWXRjEI_3jjqkeh_Z1fGyQwQOieWAQiVdKGwdHA",
    
    --[[ Appearance ]]
    
    Avatar = "https://cdn.discordapp.com/attachments/742240569102958714/838125213568598036/tenor.png",

    Color = "16777215", -- https://gist.github.com/thomasbnt/b6f455e2c7d743b796917fa3c205f812

    Footer = "NyuNyu RP",

    Footer_URL = "https://cdn.discordapp.com/attachments/831358651057831938/838235267528917032/20-200938_white-discord-logo-png-png-free-discord-logo.png",

    --[[ Display ]]

    Discord = true,
    License = true,
    Ip = true,
}

BankATM_Logs = {

    links = "https://discord.com/api/webhooks/905428973209657354/DSUrfbfysoU3fn4djBEB6JJrzzbz69Sn8tpuRalakY30W_2AZJC-x8cNnx89AfhqRVNk",
}