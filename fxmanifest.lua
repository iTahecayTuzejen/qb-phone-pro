fx_version 'cerulean'
game 'gta5'

--[[
Premium QB-Phone by FiveM QBCore
For premium server buy visit here:
🌍 Website: https://fivem-qbcore.com
💬 Discord: https://discord.gg/qbcoreframework
]]

author 'FjamZoo#0001 & MannyOnBrazzers#6826'
description 'A No Pixel inspired edit of QBCore\'s Phone. Released By RenewedScripts'
version 'Release'

ui_page 'html/index.html'

shared_scripts {
    'config.lua',
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua',
}

files {
    'html/*.html',
    'html/js/*.js',
    'html/img/*.png',
    'html/img/*.gif',
    'html/css/*.css',
    'html/img/backgrounds/*.png',
    'html/img/apps/*.png',
}

lua54 'yes'

escrow_ignore {
	'config.lua',
	'server/employment.lua.lua'
}

dependency 'qb-target'
