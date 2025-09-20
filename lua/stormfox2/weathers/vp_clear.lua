local vp_clear = StormFox2.Weather.Add("Pink Sun")

vp_clear.thunder = function(percent)
    return 0
end

local windy = 8

local m1 = Material("pkvoidplaces/pb_vp_decal_notsun1")

function vp_clear:GetName(nTime, nTemp, nWind, bThunder, nFraction)
	local b_windy = StormFox2.Wind.GetBeaufort(nWind) >= windy
	if bThunder then
        return "Sunstorm"
    elseif b_windy then
		return "Winds of Change"
	end
	return "The New Sun"
end

function vp_clear.GetSymbol(nTime)
    return m1
end

function vp_clear.GetIcon( nTime, nTemp, nWind, bThunder, nFraction)
    return m1
end

local bCM = string.Explode(" ", StormFox2.Map.GetSetting("fog_color") or "255 127 255")
local bC = Color(tonumber(bCM[1]) or 255, tonumber(bCM[2]) or 128, tonumber(bCM[3]) or 255)
-- Day
 	--vp_clear:SetSunStamp("topColor",Color(91, 127.5, 255),		SF_SKY_DAY)
    vp_clear:SetSunStamp("topColor",Color(28, 2, 9),		SF_SKY_DAY)
	vp_clear:SetSunStamp("bottomColor",Color(47, 4, 16), SF_SKY_DAY)
	vp_clear:SetSunStamp("fadeBias",0.01,						SF_SKY_DAY)
	vp_clear:SetSunStamp("duskColor",Color(66, 5, 22),		SF_SKY_DAY)
	vp_clear:SetSunStamp("duskIntensity",.64,					SF_SKY_DAY)
	vp_clear:SetSunStamp("duskScale",0.29,						SF_SKY_DAY)
	vp_clear:SetSunStamp("sunSize",20,							SF_SKY_DAY)
	vp_clear:SetSunStamp("sunColor",Color(240, 60, 110),		SF_SKY_DAY)
	vp_clear:SetSunStamp("sunFade",1,							SF_SKY_DAY)
	vp_clear:SetSunStamp("starFade",40,							SF_SKY_DAY)
	--vp_clear:SetSunStamp("fogDensity",0.8,						SF_SKY_DAY)
    vp_clear:Set("HDRScale",0.33,                               SF_SKY_DAY)
-- Night
	vp_clear:SetSunStamp("topColor",Color(0,0,0),				SF_SKY_NIGHT)
	vp_clear:SetSunStamp("bottomColor",Color(9, 1, 3),	SF_SKY_NIGHT)
	vp_clear:SetSunStamp("fadeBias",0.12,						SF_SKY_NIGHT)
	vp_clear:SetSunStamp("duskColor",Color(28, 2, 9),			SF_SKY_NIGHT)
	vp_clear:SetSunStamp("duskIntensity",0,					SF_SKY_NIGHT)
	vp_clear:SetSunStamp("duskScale",0,						SF_SKY_NIGHT)
	vp_clear:SetSunStamp("sunSize",0,							SF_SKY_NIGHT)
	vp_clear:SetSunStamp("starFade",100,						SF_SKY_NIGHT)
	vp_clear:SetSunStamp("sunColor",Color(240, 60, 110),		SF_SKY_NIGHT)
	vp_clear:SetSunStamp("sunFade",0,							SF_SKY_NIGHT)
	--vp_clear:SetSunStamp("fogDensity",1,						SF_SKY_NIGHT)
    vp_clear:Set("HDRScale",0.1,                            SF_SKY_NIGHT)
-- Sunset
	-- Old Color(170, 85, 43)
	vp_clear:SetSunStamp("topColor",Color(9, 1, 3),	SF_SKY_SUNSET)
	--vp_clear:SetSunStamp("bottomColor",Color(204, 98, 5),	SF_SKY_SUNSET)
	vp_clear:SetSunStamp("bottomColor",Color(28, 2, 9),	SF_SKY_SUNSET)
	vp_clear:SetSunStamp("fadeBias",1,						SF_SKY_SUNSET)
	vp_clear:SetSunStamp("duskColor",Color(47, 4, 16),	SF_SKY_SUNSET)
	vp_clear:SetSunStamp("duskIntensity",1,				SF_SKY_SUNSET)
	vp_clear:SetSunStamp("duskScale",0.3,					SF_SKY_SUNSET)
	vp_clear:SetSunStamp("sunSize",30,						SF_SKY_SUNSET)
	vp_clear:SetSunStamp("sunColor",Color(240, 60, 110),	SF_SKY_SUNSET)
	vp_clear:SetSunStamp("sunFade",.5,						SF_SKY_SUNSET)
	vp_clear:SetSunStamp("starFade",60,					SF_SKY_SUNSET)
	--vp_clear:SetSunStamp("fogDensity",0.8,					SF_SKY_SUNSET)
-- Sunrise
	vp_clear:SetSunStamp("topColor",Color(47, 4, 16),	SF_SKY_SUNRISE)
	--vp_clear:SetSunStamp("bottomColor",Color(204, 98, 5),	SF_SKY_SUNRISE)
	vp_clear:SetSunStamp("bottomColor",Color(66, 5, 22),	SF_SKY_SUNRISE)
	vp_clear:SetSunStamp("fadeBias",0.5,						SF_SKY_SUNRISE)
	vp_clear:SetSunStamp("duskColor",Color(66, 5, 22),	SF_SKY_SUNRISE)
	vp_clear:SetSunStamp("duskIntensity",0.4,				SF_SKY_SUNRISE)
	vp_clear:SetSunStamp("duskScale",0.6,					SF_SKY_SUNRISE)
	vp_clear:SetSunStamp("sunSize",20,						SF_SKY_SUNRISE)
	vp_clear:SetSunStamp("sunColor",Color(240, 60, 110),	SF_SKY_SUNRISE)
	vp_clear:SetSunStamp("sunFade",.5,						SF_SKY_SUNRISE)
	vp_clear:SetSunStamp("starFade",60,					SF_SKY_SUNRISE)
	vp_clear:SetSunStamp("fogDensity",0.8,					SF_SKY_SUNRISE)
-- Cevil
	vp_clear:CopySunStamp( SF_SKY_NIGHT, SF_SKY_CEVIL ) -- Copy the night sky
	vp_clear:SetSunStamp("fadeBias",0.01,	SF_SKY_CEVIL)
	vp_clear:SetSunStamp("sunSize",0,	SF_SKY_CEVIL)
	vp_clear:SetSunStamp("bottomColor",StormFox2.util.CCTColor(0),	SF_SKY_CEVIL)

-- Default variables. These don't change.
	vp_clear:Set("moonColor", Color(240, 60, 110))
	local moonSize = StormFox2.Setting.GetObject("moonsize")
	vp_clear:Set("moonSize",moonSize:GetValue())

	moonSize:AddCallback(function(var)
		vp_clear:Set("moonSize",moonSize:GetValue())
	end, "SF_moonSizeUpdate")
	vp_clear:Set("moonTexture", "stormfox2/effects/moon/moon.png" )
	vp_clear:Set("skyVisibility",100) -- Blocks out the sun/moon
	vp_clear:Set("mapDayLight",100)
	vp_clear:Set("mapNightLight",0)
	vp_clear:Set("clouds",0.02)
	--vp_clear:Set("HDRScale",0.7)
	
	vp_clear:Set("fogDistance", 400000)
	vp_clear:Set("fogIndoorDistance", 400000)
	--vp_clear:Set("fogEnd",90000)
	--vp_clear:Set("fogStart",0)

-- Static values
	vp_clear:Set("starSpeed", 0.001)
	vp_clear:Set("starScale", 2.2)
	vp_clear:Set("starTexture", "skybox/starfield")
	vp_clear:Set("enableThunder", true)

    --vp_clear:Set("sunTexture", "pkvoidplaces/vpsprites/vpsprite_sun_center") --TODO: Find some way to deal with the hardcoded sunMat variables

if CLIENT then
    local vp_sunstorm_roofed = StormFox2.Ambience.CreateAmbienceSnd("pbvoidplaces/ambi/pb_vpambi_sunstorm.wav", SF_AMB_ROOF_ANY, 0.5)
    local vp_sunstorm_outside = StormFox2.Ambience.CreateAmbienceSnd("pbvoidplaces/ambi/pb_vpambi_sunstorm.wav", SF_AMB_OUTSIDE, 1)
    local vp_sunstorm_near_outside = StormFox2.Ambience.CreateAmbienceSnd("pbvoidplaces/ambi/pb_vpambi_sunstorm.wav", SF_AMB_NEAR_OUTSIDE, 0.75)

    vp_clear:AddAmbience(vp_sunstorm_roofed)
    vp_clear:AddAmbience(vp_sunstorm_outside)
    vp_clear:AddAmbience(vp_sunstorm_near_outside)

	vp_clear.PostDraw2DSkyBox = function() -- Doesn't work
		local new_sun = Material("pkvoidplaces/vpsprites/vpsprite_sun_center")
		local new_sun_flare = Material("pkvoidplaces/vpsprites/vpsprite_generic_notsun")

		local SunA = StormFox2.Sun.GetAngle()
		local SunN = -SunA:Forward()

		local sun = util.GetSunInfo()
		local viewAng = StormFox2.util.RenderAngles()
		-- Calculate dot
		local rawDot = ( SunA:Forward():Dot( viewAng:Forward() ) - 0.8 ) * 5
		if sun and sun.obstruction and sun.obstruction > 0 then
			sunDot = rawDot
		else
			sunDot = 0
		end
		-- Calculate close to edge
		local z = 1
		local p = math.abs(math.sin(math.rad(SunA.p))) -- How far we are away from sunset
		if p < 0.1 then
			z = 0.8 + p * 0.2
		end
		local s_size = StormFox2.Sun.GetSize() -- / 2
		local s_size2 = s_size * 1.2
		local s_size3 = s_size * 3 -- * math.max(0, rawDot)
		local c_c = StormFox2.Sun.GetColor() or color_white
		local c = Color(c_c.r,c_c.g,c_c.b,c_c.a)

		cam.Start3D( Vector( 0, 0, 0 ), EyeAngles() )
			render.SuppressEngineLighting(true)
			render.SetMaterial(new_sun)
			render.DrawQuadEasy(SunN * -200, SunN, s_size2, s_size2, c, 0 )
			if sunDot > 0 then
				local a = (StormFox2.Mixer.Get("skyVisibility") / 100 - 0.5) * 2
				if a > 0 then
					c.a = a * 255
					render.SetMaterial(new_sun_flare)
					render.DrawQuadEasy(SunN * -200, SunN, s_size3 * sunDot , s_size3 * sunDot, c, 0 )
				end
			end
			render.SuppressEngineLighting(false)
		cam.End3D()
	end

    function vp_clear.TickSlow()
        local TVol = 0
        if StormFox2.Thunder.IsThundering() then
            TVol = 1
        end
        vp_sunstorm_roofed:SetVolume(TVol)
        vp_sunstorm_outside:SetVolume(TVol)
        vp_sunstorm_near_outside:SetVolume(TVol)
    end
end

-- 2D skyboxes
if SERVER then
	local t_day, t_night, t_sunrise, t_sunset
	t_day = {"sky_day01_05", "sky_day01_04", "sky_day02_01","sky_day02_03","sky_day02_04","sky_day02_05"}
	t_sunrise = {"sky_day01_05", "sky_day01_06", "sky_day01_08"}
	t_sunset = {"sky_day02_02", "sky_day02_01"}
	t_night = {"sky_day01_09"}
    t_psun = {"vp_skybox_psun"}

    if not sf2_vp_last_voidshock then
        sf2_vp_last_voidshock = 0
    end

	vp_clear:SetSunStamp("skyBox",t_psun,		SF_SKY_DAY)
	vp_clear:SetSunStamp("skyBox",t_psun,	SF_SKY_SUNRISE)
	vp_clear:SetSunStamp("skyBox",t_psun,	SF_SKY_SUNSET)
	vp_clear:SetSunStamp("skyBox",t_psun,		SF_SKY_NIGHT)

    function vp_clear.TickSlow()
        if StormFox2.Thunder.IsThundering() and (math.random() > 0.9) then
			if sf2_vp_last_voidshock + 15 < CurTime() then
				EmitSound("pbvoidplaces/ambi/voidthunder.wav", Vector(0,0,0), 0, CHAN_AUTO, 2, SNDLVL_NONE)
				timer.Create("sf2_vp_voidshock", 1.5, 1, function()
					for i, v in ipairs( player.GetAll() ) do
						if DRC then
							DRC:EMP(v, v, 8)
						end
						v:SetArmor(0)
						if StormFox2.Wind.IsEntityInWind(v) and StormFox2.Setting.Get("weather_damage", true) then
							local dmg = DamageInfo()
							dmg:SetDamage(math.random(20,30))
							dmg:SetDamageType(bit.bor(DMG_BLAST,DMG_ALWAYSGIB))
							v:TakeDamageInfo(dmg)
							v:ScreenFade(SCREENFADE.IN, Color( 255, 191, 255, 255 ), 3, 0)
						else
							v:ScreenFade(SCREENFADE.IN, Color( 255, 191, 255, 63 ), 1, 0)
						end
					end
					util.ScreenShake(Vector(0,0,0), 6, 10, 4, 10000, true)
				end)
				sf2_vp_last_voidshock = CurTime()
			else
				EmitSound("pbvoidplaces/ambi/misc/thunder4.wav", Vector(0,0,0), 0, CHAN_AUTO, 1.5, SNDLVL_NONE)
			end
        end
    end
end