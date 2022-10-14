
function rs (name, ...)
    RegisterServerEvent(name)
    AddEventHandler(name, ...)
end

function tc (name, source, ...)
    TriggerClientEvent(name, source, ...)
end

function te (name, ...)
    TriggerEvent(name, ...)
end

function cw (timer)
    Citizen.Wait(timer)
end

function nego(a, b)
    if a and a == b then
        return true
    else
        return false
    end 
end

function infoP(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local id = xPlayer.source
    local nameP = GetPlayerName(xPlayer.source)
    for k,v in pairs(GetPlayerIdentifiers(source))do        
        if string.sub(v, 1, string.len("license:")) == "license:" then
            license = v      
        end
        if string.sub(v, 1, string.len("discord:")) == "discord:" then
            discord = v      
        end
        if string.sub(v, 1, string.len("fivem:")) == "fivem:" then
            fivem = v      
        end
        if string.sub(v, 1, string.len("ip:")) == "ip:" then
            ip = v      
        end
        return id, nameP, license, discord, fivem, ip   
    end
end

function nbjob(jobname)
    if jobname then
        local xPlayers = ESX.GetPlayers()
        local jobOnline = 0
        for a=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[a])
            if xPlayer.job.name == jobname then
                jobOnline = jobOnline + 1
            end
        end
        return jobOnline        
    else
        print('^3[ERROR]^7 jobname empty in ^2function nbjob^7')
    end
    print(jobOnline)
end

function nbjobact(jobname, actions)
    if jobname then
        local jobsource = {}
        local xPlayers = ESX.GetPlayers()
        local jobOnline = 0
        for a=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[a])
            if xPlayer.job.name == jobname then
                table.insert(jobsource, xPlayer.source)
            end
        end
        return jobsource
    else
        print('^3[ERROR]^7 jobname empty in ^2function nbjob^7')
    end
end

function itemcount(source, item)
    if source then
        local xPlayer = ESX.GetPlayerFromId(source)
        if Options.inventory == 'oxinventory' then
            if item then
                local countitem = exports.ox_inventory:Search(xPlayer.source, 'count', item)
                return countitem
            else
                print('^3[ERROR]^7 item field empty in ^2function itemcount^7')
            end
        end
        if Options.inventory == 'default' then
            if item then
                local countitem = xPlayer.getInventoryItem(item).count
                return countitem
            else
                print('^3[ERROR]^7 item field empty in ^2function itemcount^7')
            end
        end
    else
        print('^3[ERROR]^7 source empty in ^2function itemcount^7')
    end
end

function addItems(source, item, qty)
    if source then
        print('additem')
        local xPlayer = ESX.GetPlayerFromId(source)
        if Options.inventory == 'oxinventory' then
            if item then
                if qty then
                    local cancarry = exports.ox_inventory:CanCarryItem(xPlayer.source, item, qty)
                    if cancarry then 
                        exports.ox_inventory:AddItem(xPlayer.source, item, qty)
                    else
                        cancarry = false
                        --notif('Can\'t carry this !', red, white)
                    end
                else
                    print('^3[ERROR]^7 qty field empty in ^2function additem^7')
                end
            else
                print('^3[ERROR]^7 item field empty in ^2function additem^7')
            end
        end
        if Options.inventory == 'default' then
            if item then
                if qty then
                    if xPlayer.canCarryItem(item, qty) then
                        xPlayer.addInventoryItem(item, qty)
                    else
                        cancarry = false
                        --notif('Can\'t carry this !', red, white)
                    end
                else
                    print('^3[ERROR]^7 qty field empty in ^2function additem^7')
                end
            else
                print('^3[ERROR]^7 item field empty in ^2function additem^7')
            end
        end
    else
        print('^3[ERROR]^7 source empty in ^2function additem^7')
    end
end

function removeitem(source, item, qty)
    if source then
        local xPlayer = ESX.GetPlayerFromId(source)
        if Options.inventory == 'oxinventory' then
            if item then
                if qty then
                    exports.ox_inventory:RemoveItem(xPlayer.source, item, qty)
                else
                    print('^3[ERROR]^7 qty field empty in ^2function removeitem^7')
                end
            else
                print('^3[ERROR]^7 item field empty in ^2function removeitem^7')
            end
        end
        if Options.inventory == 'default' then
            if item then
                if qty then
                    xPlayer.removeInventoryItem(item, qty)
                else
                    print('^3[ERROR]^7 qty field empty in ^2function removeitem^7')
                end
            else
                print('^3[ERROR]^7 item field empty in ^2function removeitem^7')
            end
        end
    else
        print('^3[ERROR]^7 source empty in ^2function removeitem^7')
    end
end

function round(n)
    return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
end

