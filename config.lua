--[[
Premium QB-Phone by FiveM QBCore
For premium server buy visit here:
🌍 Website: https://fivem-qbcore.com
💬 Discord: https://discord.gg/qbcoreframework
]]

Config = Config or {}
-- Configs for Payment and Banking
Config.RenewedBanking = false -- Either put this to true or false if you use Renewed Banking or not
Config.RenewedFinances = false -- Either put this to true or false if you use Renewed Finances or not
Config.RenewedCameras = false -- Either put this to true or false if you use Renewed Cameras or not

Config.BillingCommissions = { -- This is a percentage (0.10) == 10%
    mechanic = 0.10
}
-- Web hook for camera ( NOT GO PRO )
Config.Webhook = 'https://discord.com/api/webhooks/1179836953496129546/UW8zpkzvrI5NYW0f4iwIIY4t0zEEi1T2zgjs-klXcqArIh0y6d9Vi7KzYKisehre-spb'
-- Item name for pings app ( Having a VPN sends an anonymous ping, else sends the players name)
Config.VPNItem = 'vpn'
-- The garage the vehicle goes to when you sell a car to a player
Config.SellGarage = 'altastreet'
-- How Long Does The Player Have To Accept The Ping - This Is In Seconds
Config.Timeout = 30
-- How Long Does The Blip Remain On The Map - This Is In Seconds
Config.BlipDuration = 30
-- Blip Settings - Find Info @ https://wiki.gtanet.work/index.php?title=Blips
Config.BlipColor = 4
Config.BlipIcon = 280
Config.BlipScale = 0.75

Config.TweetDuration = 8 -- How many hours to load tweets (12 will load the past 12 hours of tweets)
Config.MailDuration = 72 -- How many hours to load Mails (72 will load the past 72 hours of Mails)

Config.RepeatTimeout = 4000
Config.CallRepeats = 10
Config.AllowWalking = false 

Config.PhoneApplications = {
    ["details"] = {
        app = "details",
        icon = "fas fa-info-circle",
        tooltipText = "Details",
        tooltipPos = "top",
        style = "font-size: 2.1vh";
        job = false,
        blockedjobs = {},
        slot = 1,
        Alerts = 0,
    },
    ["contacts"] = {
        app = "contacts",
        color = "#345b7a",
        color2 = "#122445",
        icon = "fas fa-phone-volume",
        tooltipText = "Contacts",
        tooltipPos = "top",
        style = "font-size: 2.1vh";
        job = false,
        blockedjobs = {},
        slot = 2,
        Alerts = 0,
    },
    ["phone"] = {
        app = "phone",
        color = "#51da80",
        color2 = "#009436",
        icon = "fas fa-phone-volume",
        tooltipText = "Phone",
        tooltipPos = "top",
        style = "font-size: 2.1vh";
        job = false,
        blockedjobs = {},
        slot = 3,
        Alerts = 0,
    },
    ["whatsapp"] = {
        app = "whatsapp",
        color = "#8bfc76",
        color2 = "#18d016",
        icon = "fas fa-comment",
        tooltipText = "WtsApp",
        tooltipPos = "top",
        style = "font-size: 2.1vh";
        job = false,
        blockedjobs = {},
        slot = 4,
        Alerts = 0,
    },
    ["ping"] = {
        app = "ping",
        icon = "fas fa-map-marker-alt",
        tooltipText = "Ping",
        tooltipPos = "top",
        style = "font-size: 2.1vh";
        job = false,
        blockedjobs = {},
        slot = 5,
        Alerts = 0,
    },
    ["mail"] = {
        app = "mail",
        color = "#009ee5",
        color2 = "#87d9e7",
        icon = "fas fa-envelope",
        tooltipText = "Mail",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 6,
        Alerts = 0,
    },
    ["advert"] = {
        app = "advert",
        color = "#ffc900",
        color2 = "#f7c816",
        icon = "fas fa-bullhorn",
        tooltipText = "Advertisements",
        style = "font-size: 2vh";
        job = false,
        blockedjobs = {},
        slot = 7,
        Alerts = 0,
    },
    ["twitter"] = {
        app = "twitter",
        icon = "fab fa-twitter",
        tooltipText = "Twitt",
        tooltipPos = "top",
        style = "color: #00b3ff; font-size: 2.1vh;";
        job = false,
        blockedjobs = {},
        slot = 8,
        Alerts = 0,
    },
    ["garage"] = {
        app = "garage",
        icon = "fas fa-car",
        tooltipText = "garage",
        style = "font-size: 2.1vh";
        job = false,
        blockedjobs = {},
        slot = 9,
        Alerts = 0,
    },
    ["debt"] = {
        app = "debt",
        color = "#fdfeff",
        color2 = "#d5e6fa",
        icon = "fas fa-ad",
        tooltipText = "Debt",
        job = false,
        blockedjobs = {},
        slot = 10,
        Alerts = 0,
    },
    ["wenmo"] = {
        app = "wenmo",
        color = "#151515",
        color2 = "#161616",
        icon = "fas fa-ad",
        tooltipText = "Wenmo",
        job = false,
        blockedjobs = {},
        slot = 11,
        Alerts = 0,
    },
    ["documents"] = {
        app = "documents",
        icon = "fas fa-sticky-note",
        tooltipText = "Documents",
        style = "font-size: 2.1vh";
        job = false,
        blockedjobs = {},
        slot = 12,
        Alerts = 0,
    },
    ["houses"] = {
        app = "houses",
        icon = "fas fa-house-user",
        tooltipText = "Houses",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 13,
        Alerts = 0,
    },
    ["crypto"] = {
        app = "crypto",
        color = "#000000",
        color2 = "#000000",
        icon = "fab fa-bitcoin",
        tooltipText = "Digital Currency",
        style = "font-size: 2.7vh";
        job = false,
        blockedjobs = {},
        slot = 14,
        Alerts = 0,
    },
    ["jobcenter"] = {
        app = "jobcenter",
        color = "#151515",
        color2 = "#161616",
        icon = "fas fa-id-badge",
        tooltipText = "Job Service",
        style = "color: #78bdfd; font-size: 2.7vh";
        job = false,
        blockedjobs = {},
        slot = 15,
        Alerts = 0,
    },
    ["employment"] = {
        app = "employment",
        color = "#151515",
        color2 = "#161616",
        icon = "fas fa-ad",
        tooltipText = "Employment",
        job = false,
        blockedjobs = {},
        slot = 16,
        Alerts = 0,
    },
    ["lsbn"] = {
        app = "lsbn",
        color = "#151515",
        color2 = "#161616",
        icon = "fas fa-ad",
        tooltipText = "LSBN",
        job = false,
        blockedjobs = {},
        slot = 17,
        Alerts = 0,
    },
    ["taxi"] = {
        app = "taxi",
        icon = "fas fa-briefcase",
        tooltipText = "Ride Sharing App",
        tooltipPos = "bottom",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 18,
        Alerts = 0,
    },
    ["casino"] = {
        app = "casino",
        icon = "fas fa-gem",
        tooltipText = "Betting",
        tooltipPos = "bottom",
        style = "font-size: 2.7vh";
        job = false,
        blockedjobs = {},
        slot = 19,
        Alerts = 0,
    },
    ["calculator"] = {
        app = "calculator",
        icon = "fas fa-calculator",
        tooltipText = "Calculator",
        tooltipPos = "bottom",
        style = "font-size: 2.5vh";
        job = false,
        blockedjobs = {},
        slot = 20,
        Alerts = 0,
    },
    ["gallery"] = {
        app = "gallery",
        icon = "fas fa-images",
        tooltipText = "Photos",
        tooltipPos = "bottom",
        style = "font-size: 2.7vh";
        job = false,
        blockedjobs = {},
        slot = 21,
        Alerts = 0,
    },
    ["racing"] = {
        app = "racing",
        icon = "fas fa-flag-checkered",
        tooltipText = "Racing",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 22,
        Alerts = 0,
    },
    ["bank"] = {
        app = "bank",
        icon = "fas fa-file-contract",
        tooltipText = "Invoices",
        style = "font-size: 2.7vh";
        job = false,
        blockedjobs = {},
        slot = 23,
        Alerts = 0,
    },
    ["youtube"] = {
        app = "youtube",
        icon = "fab fa-youtube",      
        tooltipText = "YouTube",
        tooltipPos = "top",
        style = "font-size: 2.1vh",
        job = false,
        blockedjobs = {},
        slot = 24,                
        Alerts = 0,
    },
    ["group-chats"] = {
        app = "group-chats",
        icon = "fab fa-discord",
        tooltipText = "Discod App",
        tooltipPos = "top",
        style = "padding-right: .08vh; font-size: 2.1vh";
        job = false,
        blockedjobs = {},
        slot = 25,
        Alerts = 0,
    },
    ["appstore"] = {
        app = "appstore",
        color = "#3498db",
        color2 = "#2980b9",
        icon = "fas fa-app-store",
        tooltipText = "Application Store",
        tooltipPos = "top",
        style = "font-size: 2.5vh;",
        job = false,
        blockedjobs = {},
        slot = 26, 
        Alerts = 0,
    },
    ["meos"] = {
        app = "meos",
        color = "#004682",
        color2 = "#00325c",
        icon = "fas fa-ad",
        tooltipText = "MDT",
        job = "police",
        blockedjobs = {},
        slot = 27,
        Alerts = 0,
    },
}

Config.MaxSlots = 28

Config.JobCenter = {
    [1] = {
        job = "unemployed",
        label = "Unemployment",
        Coords = {},
    },
    [2] = {
        job = "garbage",
        label = "Garbage",
        Coords = {-344.76, -1564.34},
    },
    [3] = {
        job = "taxi",
        label = "Taxi Driver",
        Coords = {909.11, -174.59},
    },
    [4] = {
        job = "amazon",
        label = "Amazon Driver",
        Coords = {-1071.08, -2004.0},
    },
    [5] = {
        job = "trucker",
        label = "Truck Driver",
        Coords = {925.83, -1560.23},
    },
}

Config.TaxiJob = {
    {
        Job = "taxi",
    },
}

Config.CryptoCoins = {
    {
        label = 'Shungite', 
        abbrev = 'SHUNG', 
        icon = 'fas fa-caret-square-up', 
        metadata = 'shung', 
        value = 50,
        purchase = true,  
        sell = true 
    },
    {
        label = 'Guinea',
        abbrev = 'GNE',
        icon = 'fas fa-horse-head',
        metadata = 'gne',
        value = 100,
        purchase = true,
        sell = false
    },
    {
        label = 'X Coin',
        abbrev = 'XNXX',
        icon = 'fas fa-times',
        metadata = 'xcoin',
        value = 75,
        purchase = false,
        sell = true
    },
    {
        label = 'LME',
        abbrev = 'LME',
        icon = 'fas fa-lemon',
        metadata = 'lme',
        value = 150,
        purchase = false,
        sell = false
    },
}

Config.Garages = {
    ["motel"] = {
        coords = vector3(280.38, -333.08, 44.92),
        label = "Motel",
        vehicleSpawn = vector4(274.46, -330.42, 44.92, 160.59),
        cameraCoords = vector4(275.42, -338.71, 44.92, 7.33),
        ped = {
            coords = vector4(274.06, -344.39, 44.92, 75.54),
            model = "s_m_y_valet_01",
            scenario = "WORLD_HUMAN_STAND_MOBILE"
        },
        garage = "normal",
        Interior = 'large',
        type = "public",
    },
    ["pillbox"] = {
        coords = vector3(229.56, -801.13, 30.57),
        label = "Pillbox",
        vehicleSpawn = vector4(229.56, -801.13, 30.57, 159.47),
        cameraCoords = vector4(229.5, -810.05, 30.47, 3.7),
        ped = {
            coords = vector4(215.47, -809.55, 30.74, 249.74),
            model = "s_m_y_valet_01",
            scenario = "WORLD_HUMAN_STAND_MOBILE"
        },
        garage = "normal",
        Interior = 'large',
        type = "public",
    }
}

-- Valet

C = {}

C.Levels = {
    [1] = {
        requiredCalls = 0,
        CostPerMile = 250,
        randomBonus = false,
    },
    [2] = {
        requiredCalls = 0, -- Number of Minimum Valet Usage required before you can 
        CostPerMile = 250, -- Cost per Mile of Valet Travel
        randomBonus = false, -- if false, other variables like chance are not required
    },
    [3] = {
        requiredCalls = 10,
        CostPerMile = 400,

        randomBonus = true, -- Enable Random Discounts 
        bonusChance = 50, -- from 1 - 100
        bonusPerc = 15, -- percentage of total amount that will be discounted
    },
}

C.ClientCooldownTime = 2

C.MinimumDisforLevel = 300

C.StepChangeSpeed = 20.0

C.DriverNames = {
    "Daniel Cody", 
    "Tay Swizzle", 
    "Arlen Baumer", 
    "Barton Foreman", 
    "Nigel Mom",
    "Manuel Rockey", 
    "Grady Santora", 
    "Lupe Cypert", 
    "Nathanael Albrecht", 
    "Michal Truesdale", 
    "Hosea Mangione", 
    "Leonard Mattix", 
    "Clay Manson", 
    "Royce Sasson", 
    "Wes Erben", 
    "Lonnie Wendler", 
    "Dana Hornbuckle", 
    "Wally Byas", 
    "Hiram Hood", 
    "Lloyd Ledford", 
}
