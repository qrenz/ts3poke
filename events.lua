-- Set Menu's
local MenuIDs = {
	MENU_ID_CLIENT_1  = 1,
	MENU_ID_CLIENT_2  = 2,
	MENU_ID_CLIENT_3  = 3,
	MENU_ID_CLIENT_4  = 4
}

-- Support Multiple LUA Menus
local moduleMenuItemID = 0

-- Poke Function
local function onMenuItemEvent(serverConnectionHandlerID, menuType, menuItemID, selectedItemID)

	if menuItemID == 1
	then
		for x = 1, tonumber(10) do
			ts3.requestClientPoke(serverConnectionHandlerID, selectedItemID, "Poke!")
		end
		return
		
	elseif menuItemID == 2
	then
		for x = 1, tonumber(1000) do
			ts3.requestClientPoke(serverConnectionHandlerID, selectedItemID, "Poke!")
		end
		return
		
	elseif menuItemID == 3
	then
		for x = 1, tonumber(10) do
			ts3.requestClientPoke(serverConnectionHandlerID, selectedItemID, "Poke!")
			-- os.execute("sleep 1") (LINUX)
			os.execute("ping 1.1.1.1 /n 1 /w 2000 >nul")
		end
		return
		
	elseif menuItemID == 4
	then
		for x = 1, tonumber(1000) do
			ts3.requestClientPoke(serverConnectionHandlerID, selectedItemID, "Poke!")
			-- os.execute("sleep 1") (LINUX)
			os.execute("ping 1.1.1.1 /n 1 /w 2000 >nul")
		end
		return
	end
	
	print("Poking: " .. serverConnectionHandlerID .. " " .. menuType .. " " .. menuItemID .. " " .. selectedItemID)
	ts3.requestClientPoke(serverConnectionHandlerID, selectedItemID, "Poke!")
end

poke_events = {
	MenuIDs = MenuIDs,
	moduleMenuItemID = moduleMenuItemID,
	onConnectStatusChangeEvent = onConnectStatusChangeEvent,
	onNewChannelEvent = onNewChannelEvent,
	onTalkStatusChangeEvent = onTalkStatusChangeEvent,
	onTextMessageEvent = onTextMessageEvent,
	onPluginCommandEvent = onPluginCommandEvent,
	onMenuItemEvent = onMenuItemEvent
}
