fx_version 'cerulean'
games {'gta5'}

lua54 'yes'

name         'toflib'
version      '1.0.0'
description  'Library and Tokens Functions'
author       'ChrisToF#0851'
repository   'https://github.com/ChrisToFLuA/toflib'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server/functionssrv.lua',
	'server/functionstkdrugs.lua',
	'server/tksrv.lua',
}

client_scripts {
	'client/functionscli.lua',
	'client/tkcli.lua'
}

shared_scripts {
	'@es_extended/imports.lua',
	'@ox_lib/init.lua',
    'shared/*.lua'
}

