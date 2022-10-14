function tktdrugs()
    local tofdrugsv2tks = {}
    local tofdrugsv2tk = {{nb = 1}}
    local tofdrugsv2acts = {}
    local tofdrugsv2act = {{nb = 6}}
    kdgsgen = false
    for k,v in ipairs(tofdrugsv2tk) do
        nbtk = v.nb
        for i = 1,nbtk,1 do
            local tk = ''
            local tk = tks('tofdrugsv2')
            if tofdrugsv2tks ~= {} then
                for j,u in ipairs(tofdrugsv2tks) do
                    if tk == u then
                        print('key doublon - regeneration in progress')
                        cw(500)
                        tk = tks('tofdrugsv2')
                    end
                end
            end
            table.insert(tofdrugsv2tks, i, tk)
            cw(100)
        end            
    end
    for k,v in ipairs(tofdrugsv2act) do
        nbacts = v.nb
        for i = 1,nbacts,1 do
            local act = ''
            local act = acts('tofdrugsv2')
            if tofdrugsv2acts ~= {} then
                for j,u in ipairs(tofdrugsv2acts) do
                    if act == u then
                        print('key doublon - regeneration in progress')
                        cw(500)
                        act = acts('tofdrugsv2')
                    end
                end
            end
            table.insert(tofdrugsv2acts, i, act)
            cw(100)
        end            
    end
    kdgsgen = true
end

function inittktdrugs()
    local tofdrugsv2tks = {}
    local tofdrugsv2tk = {{nb = 1}}
    local tofdrugsv2acts = {}
    local tofdrugsv2act = {{nb = 6}}
    kdgsgen = false
    for k,v in ipairs(tofdrugsv2tk) do
        nbtk = v.nb
        for i = 1,nbtk,1 do
            local tk = ''
            local tk = tks('tofdrugsv2')
            if tofdrugsv2tks ~= {} then
                for j,u in ipairs(tofdrugsv2tks) do
                    if tk == u then
                        print('key doublon - regeneration in progress')
                        cw(500)
                        tk = tks('tofdrugsv2')
                    end
                end
            end
            table.insert(tofdrugsv2tks, i, tk)
            cw(100)
        end            
    end
    for k,v in ipairs(tofdrugsv2act) do
        nbacts = v.nb
        for i = 1,nbacts,1 do
            local act = ''
            local act = acts('tofdrugsv2')
            if tofdrugsv2acts ~= {} then
                for j,u in ipairs(tofdrugsv2acts) do
                    if act == u then
                        print('key doublon - regeneration in progress')
                        cw(500)
                        act = acts('tofdrugsv2')
                    end
                end
            end
            table.insert(tofdrugsv2acts, i, act)
            cw(100)
        end            
    end
    kdgsgen = true
    pingdgs = false
    while true do
        if kdgsgen == true and tofdrugsv2tks ~= {} and tofdrugsv2acts ~= {} then
            te('tofdrugs:inittk', tofdrugsv2tks, tofdrugsv2acts)
            if pingdgs == true then break end
        end 
        cw(100)
    end
end

function pingtktdrugs(resource)
    if resource == 'tofdrugsv2' then
        pingdgs = true
        print('^2[PING TK - ACTS]^7 KeYs received by ^3' ..resource.. ' ^2[OK]^7') 
    end
end