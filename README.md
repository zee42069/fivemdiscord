# FiveM Discord Rich Presence

You want to make your own CUSTOM discord rich presence for your fivem server right?
then this is the right place for you!


- [Instructions](#Instructions)
- [Natives](#Natives.lua)

## Instructions
### Step 1
Download [Latest Release](https://github.com/ZeeKungYT/fivemdiscord/releases) and copy [Discord](discord) Folder Into resources folder in your FiveM Server and Edit the `client.lua` file


### Step 2
Edit thing you should edit that comment said to
**Make sure to read all the comments**
**Get your Own Application from https://discordapp.com/developers/applications/**

**Example :**

```lua
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
```

### LAST STEP
**Do not forget to add**

`ensure Discord` 

**^^^ CASE SENSITIVE, MAKE SURE THAT IS CORRECT FOLDER NAME IF YOU RENAME IT**

in server.cfg so that will make Discord resource start automaticlly with The Server

**And then Boom! now you have your own Custom Discord Rich Precense for your FiveM Server!**


## Natives.lua
More Natives Here https://docs.fivem.net/natives/
### SetDiscordAppId
`0x6A02254D`
-- SET_DISCORD_APP_ID
```lua
SetDiscordAppId(appId)
```

Parameters:
- appId: A valid Discord API App Id, can be generated at https://discordapp.com/developers/applications/

This native sets the app id for the discord rich presence implementation.

### SetDiscordRichPresenceAction
`0xCBBC3FAC`
-- SET_DISCORD_RICH_PRESENCE_ACTION
```lua
SetDiscordRichPresenceAction(
	index --[[ integer ]], 
	label --[[ string ]], 
	url --[[ string ]]
)
```

Parameters:
- index: The button index, either 0 or 1.
- label: The text to display on the button.
- url: The URL to open when clicking the button. This has to start with fivem://connect/ or https://.

Sets a clickable button to be displayed in a player's Discord rich presence.

### SetDiscordRichPresenceAsset
0x53DFD530
-- SET_DISCORD_RICH_PRESENCE_ASSET
```lua
SetDiscordRichPresenceAsset(
	assetName --[[ string ]]
)
```

Parameters:
- assetName: The name of a valid asset registered on Discordapp's developer dashboard. 	note that the asset has to be registered under the same discord API application set using 	the SET_DISCORD_APP_ID native.

This native sets the image asset for the discord rich presence implementation.

### SetDiscordRichPresenceAssetSmall
`0xF61D04C4`
-- SET_DISCORD_RICH_PRESENCE_ASSET_SMALL
```lua
SetDiscordRichPresenceAssetSmall(
	assetName --[[ string ]]
)
```

Parameters:
- assetName: The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.

This native sets the small image asset for the discord rich presence implementation.

### SetDiscordRichPresenceAssetSmallText
`0x35E62B6A`
-- SET_DISCORD_RICH_PRESENCE_ASSET_SMALL_TEXT
```lua
SetDiscordRichPresenceAssetSmallText(
	text --[[ string ]]
)
```

Parameters:
- text: Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.

This native sets the hover text of the small image asset for the discord rich presence implementation.

### SetDiscordRichPresenceAssetText
`0xB029D2FA`
-- SET_DISCORD_RICH_PRESENCE_ASSET_TEXT
```lua
SetDiscordRichPresenceAssetText(
	text --[[ string ]]
)
```

Parameters:
- text: Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.

This native sets the hover text of the image asset for the discord rich presence implementation.
