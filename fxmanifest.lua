fx_version 'cerulean'
game 'gta5'
use_fxv2_oal 'yes'
lua54 'yes'

name "ba_zones"
description "Zones system"
author "grizzly, mindiw01"
version "1.0"

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua',
}

client_scripts {
	'client/*.lua',
	'config.lua',
}

server_scripts {
	'server/*.lua',
	'config.lua',
}


