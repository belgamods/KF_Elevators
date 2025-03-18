fx_version 'cerulean'

game 'gta5'

author 'KFDev - discord.gg/kfdev'
description 'Simple Elevator Script'

version '1.2.0'

client_scripts {
    'client/cl_main.lua'
}

server_scripts {
    'server/sv_main.lua'
}

shared_scripts {
    'config.lua'
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/css/style.css',
    'ui/js/script.js'
}