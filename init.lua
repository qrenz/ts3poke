require("ts3init")            -- Required for ts3RegisterModule
require("ts3poke/events")  	-- Forwarded TeamSpeak 3 callbacks

local MODULE_NAME = "ts3poke"

-- Initialize Menu's

local function createMenus(moduleMenuItemID)
	-- Store value added to menuIDs to be able to calculate menuIDs for this module again for setPluginMenuEnabled (see demo.lua)
	poke_events.moduleMenuItemID = moduleMenuItemID

	-- Create Menu ID's

	return {
		{ts3defs.PluginMenuType.PLUGIN_MENU_TYPE_CLIENT,  poke_events.MenuIDs.MENU_ID_CLIENT_1,  "Poke Client x10 (fast)",  "../test_plugin/1.png"},
		{ts3defs.PluginMenuType.PLUGIN_MENU_TYPE_CLIENT,  poke_events.MenuIDs.MENU_ID_CLIENT_2,  "Poke Client x1000 (fast)",  "../test_plugin/2.png"},
		{ts3defs.PluginMenuType.PLUGIN_MENU_TYPE_CLIENT,  poke_events.MenuIDs.MENU_ID_CLIENT_3,  "Poke Client x10 (slow)",  "../test_plugin/1.png"},
		{ts3defs.PluginMenuType.PLUGIN_MENU_TYPE_CLIENT,  poke_events.MenuIDs.MENU_ID_CLIENT_4,  "Poke Client x1000 (slow)",  "../test_plugin/2.png"},
	}
end

-- Define Callbacks
local registeredEvents = {
	createMenus = createMenus,
	onConnectStatusChangeEvent = poke_events.onConnectStatusChangeEvent,
	onMenuItemEvent = poke_events.onMenuItemEvent
}

-- Register Callbacks
ts3RegisterModule(MODULE_NAME, registeredEvents)
