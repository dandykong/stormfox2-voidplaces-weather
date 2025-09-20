if StormFox and StormFox.Version < 2 or file.Exists("autorun/stormfox_autorun.lua", "LUA") then
	error("StormFox 1 detected. This weather extension is only compatible with StormFox 2.")
	return
elseif StormFox2 then
    hook.Add("stormfox2.preinit", "add_void_weather_types", function()
        AddCSLuaFile("stormfox2/weathers/vp_clear.lua")
    end)
end