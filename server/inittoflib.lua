---- Github Updater ----

function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

local CurrentVersion = GetCurrentVersion()
local resourceName = "^4["..GetCurrentResourceName().."]^0"
local toflib = "^3[TofLib]^0"

PerformHttpRequest('https://raw.githubusercontent.com/ChrisToFLuA/toflib/main/VERSION', function(Error, NewestVersion, Header)
	print("###############################")
    if CurrentVersion == NewestVersion then
	    print(resourceName .. '^2 ✓ Resource is Up to Date^0 - ^5Current Version: ^2' .. CurrentVersion .. '^0')
    elseif CurrentVersion ~= NewestVersion then
        print(resourceName .. '^1 ✗ Resource Outdated. Please Update!^0 - ^5Current Version: ^1' .. CurrentVersion .. '^0')
        print('^5Newest Version: ^2' .. NewestVersion .. '^0 - ^6Download here: ^9https://raw.githubusercontent.com/ChrisToFLuA/toflib/releases/tag/v'.. NewestVersion .. '^0')
    end
	print("###############################")
end)