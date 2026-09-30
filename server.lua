local QBCore = exports['qb-core']:GetCoreObject()

-- Register Server Event
RegisterServerEvent('CustomSystem:ServerCommand')
AddEventHandler('CustomSystem:ServerCommand', function(args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        -- Handle command logic here
        local data = json.encode(args)
        MySQL.Async.execute('INSERT INTO custom_data (player_id, data) VALUES (@player_id, @data)', {
            ['@player_id'] = Player.PlayerData.citizenid,
            ['@data'] = data
        }, function(rowsChanged)
            if rowsChanged > 0 then
                TriggerClientEvent('QBCore:Notify', src, 'Data saved successfully.', 'success')
            else
                TriggerClientEvent('QBCore:Notify', src, 'Failed to save data.', 'error')
            end
        end)
    end
end)