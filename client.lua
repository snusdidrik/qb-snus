local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

-----

RegisterNetEvent('qb-snus:takeSnus')
AddEventHandler('qb-snus:takeSnus', function(source)
	SnusAnimation()
end)

function SnusAnimation()
	local playerPed = GetPlayerPed(-1)
	
	Citizen.CreateThread(function()
		QBCore.Functions.RequestAnimDict("mp_suicide")
        QBCore.Functions.PlayAnim("mp_suicide", "pill", true, 3000)
        Wait(3000)
	         
	end)
end