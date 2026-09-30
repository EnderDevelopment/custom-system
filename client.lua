local QBCore = exports['qb-core']:GetCoreObject()

-- Register Command
RegisterCommand(Config.CommandName, function(source, args, rawCommand)
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == Config.CommandPermission then
        TriggerServerEvent('CustomSystem:ServerCommand', args)
    else
        QBCore.Functions.Notify('You do not have permission to use this command.', 'error')
    end
end, false)

-- Register Command Suggestion
TriggerEvent('chat:addSuggestion', '/' .. Config.CommandName, Config.CommandDescription, {
    { name='arg1', help='Argument 1' },
    { name='arg2', help='Argument 2' }
})