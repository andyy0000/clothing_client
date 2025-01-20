fx_version 'cerulean'
game 'gta5'

author 'YourName'
description 'Custom clothing integration for FiveM'
version '1.0.0'

-- Streamed assets
files {
    'stream/*.ytd',
    'stream/*.ydd'
}

-- Client script for applying clothes
client_script 'clothing_client.lua'
