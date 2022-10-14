local nbtk = 0

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

function tks(resource)
    local keyLength = 100
    keyLength = keyLength - 4
    local a=0
    local b=0
    local c=0
    local d=nil
    local list = {1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","!","$","%","^","*","`","&",")","_","+","=","~","#","@","'","/",",",".",">","/","|"}
    for i=1,10,1 do
        a=math.random(1,999999)
        math.randomseed(os.time() * a)
        b=math.random(1,999999)
        math.randomseed(os.time() * b)
        c=math.random(1,999999)
    end
    math.randomseed(a*b-c+a-b*math.random(1,10000)-a)
    d = list[math.random(1,82)]
    for i=1,keyLength -1,1 do
        d = d .. list[math.random(1,82)]
    end
    return d
end

function acts(resource)
    local letters = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","y","z"}
    local numbers = {1,2,3,4,5,6,7,8,9,0,10,11,12,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}
    local symbols = {"!","#","$","%","^","&","*","(",")","'", "{","}"}

    local k = tostring(letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..numbers[math.random(1,#numbers)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..symbols[math.random(1,#symbols)]..symbols[math.random(1,#symbols)]..letters[math.random(1,#letters)]..symbols[math.random(1,#symbols)]..symbols[math.random(1,#symbols)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..numbers[math.random(1,#numbers)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..symbols[math.random(1,#symbols)]..symbols[math.random(1,#symbols)]..letters[math.random(1,#letters)]..symbols[math.random(1,#symbols)])
    return k
end


-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
rs('toflib:pingkeysdrugs', function()
    inittktdrugs()
end)

rs('toflib:ping', function(resource)
    pingtktdrugs(resource)
end)

