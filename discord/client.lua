Citizen.CreateThread(function()
    while true do
        local PlayerName = GetPlayerName(PlayerId())
        local id = GetPlayerServerId(PlayerId())
        -- This is the Application ID (Replace this with you own)
        SetDiscordAppId(YourApplicationIDHere)
        SetRichPresence(PlayerName.." ["..id.."]") -- This will take the player name and the Id
        -- Here you will have to put the image name for the "large" icon.
        -- You can create one by go to Rich Presence/Art Assets tab in your application and  click Add Image(s)
        -- The Paramater is your Image key that you uploaded (you can change it too once you upload)
        SetDiscordRichPresenceAsset('LargeIcon')
        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('FiveM Roleplay')
        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Join", "fivem://connect/YourIpHere")
        --You can add more Natives Here vvv
        --SetDiscordRichPresenceAction(1, "Example", "https://example.com")
        -- Updates every 1 minute
        Citizen.Wait(60000)
    end
end)
