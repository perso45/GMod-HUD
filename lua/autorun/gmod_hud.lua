--Author: ThatRandomPerson45
--Version: 0.0.1
if !CLIENT then return end
surface.CreateFont("RandomsHUDFont", {
	font="Liberation Mono",
	size=20,
	weight=500,
	blursize=0,
	scanlines=0,
	antialias=true,
	underline=false,
	italic=false,
	strikeout=false,
	symbol=false,
	rotary=false,
	shadow=false,
	additive=false,
	outline=false,
})
surface.CreateFont("AgendaHUDFont", {
	font="Liberation Mono",
	size=20,
	weight=1000,
	blursize=0,
	scanlines=0,
	antialias=true,
	underline=false,
	italic=false,
	strikeout=false,
	symbol=false,
	rotary=false,
	shadow=false,
	additive=false,
	outline=false,
})
surface.CreateFont("AgendaHUDSmall", {
	font="Liberation Mono",
	size=14,
	weight=1000,
	blursize=0,
	scanlines=0,
	antialias=true,
	underline=false,
	italic=false,
	strikeout=false,
	symbol=false,
	rotary=false,
	shadow=false,
	additive=false,
	outline=false,
})
surface.CreateFont("AmmoHUDFont", {
	font="Liberation Mono",
	size=14,
	weight=500,
	blursize=0,
	scanlines=0,
	antialias=true,
	underline=false,
	italic=false,
	strikeout=false,
	symbol=false,
	rotary=false,
	shadow=false,
	additive=false,
	outline=false,
})
surface.CreateFont("UserHUDFont", {
	font="Liberation Mono",
	size=18,
	weight=1000,
	blursize=0,
	scanlines=0,
	antialias=true,
	underline=false,
	italic=false,
	strikeout=false,
	symbol=false,
	rotary=false,
	shadow=false,
	additive=false,
	outline=false,
})
surface.CreateFont("UserHUDSmall", {
	font="Liberation Mono",
	size=14,
	weight=1000,
	blursize=0,
	scanlines=0,
	antialias=true,
	underline=false,
	italic=false,
	strikeout=false,
	symbol=false,
	rotary=false,
	shadow=false,
	additive=false,
	outline=false,
})
hook.Add("InitPostEntity", "startHUD", function()
    local hideDefHud = {
        ["CHudHealth"]=true,
        ["CHudBattery"]=true,
        ["CHudSuitPower"]=true,
        ["CHudAmmo"]=true,
        ["CHudSecondaryAmmo"]=true,
        ["DarkRP_Hungermod"]=true,
        ["DarkRP_Agenda"]=true
    }
    local function drawHUD(name)
        if (hide[name]) then
            return false;
        end
    end
    hook.Add("drawHUD", "hideHUD", drawHUD)

    hook.Add("HUDPaint", "paintHUD", function()
        local client = LocalPlayer()

        local steamAvatar = vgui.Create("SteamAvatar",Panel)

        local health = client:Health()
        local maxHealth = client:GetMaxHealth()
        local redHealth = (maxHealth-health)*(255/maxHealth)
        local greenHealth = health*(255/maxHealth)

        local armor = client:Armor()
        local = maxArmor = 100
        local redArmor = (maxArmor-armor)*(255/maxArmor)
        local blueArmor = armor*(255/maxArmor)

        local plyTeam = client:Team()
        local teamColor = team.GetColor(plyTeam)

        local name = client:Name()

        steamAvatar:SetSize(64,64)
        steamAvatar:SetPos(10,ScrH()-164)
        steamAvatar:SetPlayer(client,64)
        surface.SetDrawColor(102,0,204)
        surface.DrawRect(7,ScrH()-167,70,70)
    )
    )
