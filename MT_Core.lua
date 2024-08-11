MT = {
    name = "MaxTester",
    displayName = "|cd4af37Max|r|c00ff00Tester|r",
    author = "@max4342",
    version = "0.1.0",
}

function MT.Initialize()
	
end

function MT.OnAddOnLoaded(event, addonName)
	if addonName == MT.name then
	  MT.Initialize()
	  EVENT_MANAGER:UnregisterForEvent(MT.name, EVENT_ADD_ON_LOADED) 
	end
  end

EVENT_MANAGER:RegisterForEvent(MT.name, EVENT_ADD_ON_LOADED, MT.OnAddOnLoaded)