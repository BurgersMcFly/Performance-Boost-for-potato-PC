Powered by [Cyber Engine Tweaks](https://github.com/yamashi/CyberEngineTweaks).

# Performance boost for potato pc

ImGui utility to boost performance with hidden options!

![](https://i.imgur.com/LQ7x27d.jpg)

## Mod page on Nexus Mods

https://www.nexusmods.com/cyberpunk2077/mods/5353

## Before and after

https://imgsli.com/MTM1NDAy

## Installation

1. Download [Cyber Engine Tweaks](https://www.nexusmods.com/cyberpunk2077/mods/107). Drop its contents in your game's folder.
2. Download the mod and drop its contents in your game's folder.
3. Should look like this: \Cyberpunk2077\bin\x64\plugins\cyber_engine_tweaks\mods\Potato\init.lua

## Details for optional .ini file

I've made a .ini file with every option this mod is using. I've set everything to disabled except for Hair, Crowd, Weather, Distant/Cascade Shadows. Max Streaming Distance and ForceCustomMipBias are set to default.

Can't figure out saving these values with lua just yet so this is an easy workaround. The game is going to launch with whatever values you've set in the .ini file. You can then change them in-game using the mod's menu and manually update the .ini file with a text editor if needed.

Download the .zip file from the mod's files page and drop its contents in your game's folder. 
Should look like this: \Cyberpunk 2077\engine\config\platform\pc\potato.ini

## How to use

1. Launch the game. CyberEngineTweaks is going to ask you to assign a HotKey to open its menu. Do whatever suits you, something like the "End" button. My mod's menu will open along with CyberEngineTweaks' menu.
2. Load your save file. Don't mess with Weather, Distant/Cascade Shadows before spawning, it might break some lighting effects.
3. Once you've spawned into your world you can hit the HotKey you've assigned and start experimenting with all the settings!

## Important notes

* Requires Reloading = Reload save.
* When re-enabling Crowd, you can either reload your save or change areas (by driving, walking some distance) and the roaming cars/pedestrians will start spawning again.
* Weather seems to require reloading multiple times? Will break indoor lighting when it's daytime? 
* Cascade Shadows and Distant Shadows need to be enabled before loading to a different time of the day in order to avoid broken lighting.
* Default MaxStreamingDistance is set to 23170.251953 :O. Min value is set to 100. Anything lower than that and V is falling through the ground. Reported to break quests from Dakota in Badlands (GIG: Trevor's Last Ride, GIG: MIA, GIG: Goodbye, Night City) when set to 4000.

## License

[GNU GPLv3](https://choosealicense.com/licenses/gpl-3.0/)