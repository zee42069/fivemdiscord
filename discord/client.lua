Citizen.CreateThread(function()
	while true do
        local PlayerName = GetPlayerName(PlayerId())
        local id = GetPlayerServerId(PlayerId())
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(836874890241638431)
        SetRichPresence(PlayerName.." ["..id.."]")
        -- Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('zeee')
        
        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('Sirawat Regular')
       


        -- (26-02-2021) New Native:

        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Connect", "fivem://connect/171.6.122.78:30120")

        -- It updates every minute just in case.
		Citizen.Wait(60000)
	end
end)