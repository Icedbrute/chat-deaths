RegisterServerEvent('sv_sendChatDied')
AddEventHandler('sv_sendChatDied', function(player)
	TriggerClientEvent('chatMessage', -1, 'Server', { 0, 0, 0 }, '^7Player ' .. GetPlayerName(player) .. ' died.')
    TriggerClientEvent('deathSound', -1)
end)

RegisterServerEvent('sv_sendChatKilled')
AddEventHandler('sv_sendChatKilled', function(player, data)

    local reasonString = 'killed'

    if data.reason == 0 or data.reason == 56 or data.reason == 1 or data.reason == 2 then
        reasonString = 'meleed'
    elseif data.reason == 3 then
        reasonString = 'knifed'
    elseif data.reason == 4 or data.reason == 6 or data.reason == 18 or data.reason == 51 then
        reasonString = 'bombed'
    elseif data.reason == 5 or data.reason == 19 then
        reasonString = 'burned'
    elseif data.reason == 7 or data.reason == 9 then
        reasonString = 'pistoled'
    elseif data.reason == 10 or data.reason == 11 then
        reasonString = 'shotgunned'
    elseif data.reason == 12 or data.reason == 13 or data.reason == 52 then
        reasonString = 'SMGd'
    elseif data.reason == 14 or data.reason == 15 or data.reason == 20 then
        reasonString = 'assaulted'
    elseif data.reason == 16 or data.reason == 17 then
        reasonString = 'sniped'
    elseif data.reason == 49 or data.reason == 50 then
        reasonString = 'ran over'
    end

    TriggerClientEvent('chatMessage', -1, 'Server', { 0, 0, 0 }, '^7Player ' .. GetPlayerName(data.killer) .. ' ' .. tostring(reasonString) .. ' ' .. GetPlayerName(player) .. '.')
    TriggerClientEvent('deathSound', -1)
end)