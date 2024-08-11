MT = {
    name = "MaxTester",
    displayName = "|cd4af37Max|r|c00ff00Tester|r",
    author = "@max4342",
    version = "0.1.0",
}

SLASH_COMMANDS["/mt"] = function ()
	d(MT.name.." Test")
end

SLASH_COMMANDS["/h"] = function ()
	RequestJumpToHouse(GetHousingPrimaryHouse(), false)
end

SLASH_COMMANDS["/r"] = function ()
	ReloadUI("ingame")
end

function MT.Initialize()
	
end

function MT.OnAddOnLoaded(event, addonName)
	if addonName == MT.name then
	  MT.Initialize()
	  EVENT_MANAGER:UnregisterForEvent(MT.name, EVENT_ADD_ON_LOADED) 
	end
  end

EVENT_MANAGER:RegisterForEvent(MT.name, EVENT_ADD_ON_LOADED, MT.OnAddOnLoaded)