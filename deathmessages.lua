AddEventHandler('baseevents:onPlayerDied', function(playerId, position)
    TriggerServerEvent('sv_sendChatDied', playerId)
end)

AddEventHandler('baseevents:onPlayerKilled', function(playerId, data)
    TriggerServerEvent('sv_sendChatKilled', playerId, data)
end)

RegisterNetEvent('deathSound')
AddEventHandler('deathSound', function()
    PlaySoundFrontend(-1, "FRONTEND_OTHER_INFO")
end)