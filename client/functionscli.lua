NextAction = 0

function rc (name, ...)
    RegisterNetEvent(name)
    AddEventHandler(name, ...)
end

function ts (name, ...)
    TriggerServerEvent(name, ...)
end

function te (name, ...)
    TriggerEvent(name, ...)
end

function cw (timer)
    Citizen.Wait(timer)
end

function clri(entity)
    ClearPedTasksImmediately(entity)
end

function clr(entity)
    ClearPedTasks(entity)
end

function freeze(entity)
    FreezeEntityPosition(entity, true)
end

function dfreeze(entity)
    FreezeEntityPosition(entity, false)
end

function distent(entity1, entity2)
    local coord1 = GetEntityCoords(entity1)        
    local coord2 = GetEntityCoords(entity2)    
    local distentity = #(coord1 - coord2)
    return distentity
end

function distcoord(entity1, coord)
    local coord1 = GetEntityCoords(entity1)        
    local distcoords = #(coord1 - vector3(coord.x, coord.y, coord.z))
    return distcoords 
end

function Model(model)
    RequestModel(GetHashKey(model))
    while not HasModelLoaded(GetHashKey(model)) do
        RequestModel(GetHashKey(model))
        Citizen.Wait(500)
    end
end

function Anim(ped, animDictionary, animationName, timer)
    while not HasAnimDictLoaded(animDictionary) do
        RequestAnimDict(animDictionary)
        Citizen.Wait(500)
    end
    if (DoesEntityExist(ped) and not IsEntityDead(ped)) then
        loaddict(animDictionary)
        TaskPlayAnim(ped, animDictionary, animationName, 1.0, -1.0, timer, 1, 1, true, true, true)
    end
end

function genped(model, coords, group)
    AddRelationshipGroup(group)
    pedgen = CreatePed(4, GetHashKey(model), coords.x, coords.y, coords.z - 1.0, coords.h, true, true)
	SetEntityInvincible(pedgen, true)
	FreezeEntityPosition(pedgen, true)
	SetPedFleeAttributes(pedgen, 0, false)
	SetPedRelationshipGroupHash(pedgen, GetHashKey(group))
	SetRelationshipBetweenGroups(0, GetHashKey(group), GetHashKey('PLAYER'))
	SetRelationshipBetweenGroups(0, GetHashKey('PLAYER'), GetHashKey(group))
    return pedgen
end

function notif(text, typent)
    lib.notify({
        description = text,
        type = typent
    })
end

function DrawText3D(x,y,z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	if onScreen then
		SetTextScale(0.30, 0.30)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(200, 200, 200, 255)
		SetTextEntry("STRING")
		SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x,_y)
		local factor = (string.len(text)) / 350
		--DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
	end
end

------------------- ** loadanimdict ** --------------------
function loaddict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(500)
    end
end
------------------- ** playanim ** --------------------
function playerAnim(ped, animDictionary, animationName)
    if (DoesEntityExist(ped) and not IsEntityDead(ped)) then
        loaddict(animDictionary)
        TaskPlayAnim(ped, animDictionary, animationName, 1.0, -1.0, -1, 1, 1, true, true, true)
    end
end
------------------- ** round ** ----------------------
function round(n)
    return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
end