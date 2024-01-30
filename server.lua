local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('lundgrens', function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local smoke = xPlayer.Functions.GetItemByName('lundgrens')

    xPlayer.Functions.RemoveItem('lundgrens', 1)
    TriggerClientEvent('qb-snus:takeSnus', source)
end)

QBCore.Functions.CreateUseableItem('velo', function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local smoke = xPlayer.Functions.GetItemByName('velo')

    xPlayer.Functions.RemoveItem('velo', 1)
    TriggerClientEvent('qb-snus:takeSnus', source)
end)