const Creator = "Panzerigeno"; 

function onServerStart()
{
NewTimer( "cars" 1000, 1 );
}
function onScriptLoad()
{
 create_actor( "medic", 5, -378.893,-537.379,17.2831, 1.5 );  //5 == ambulance man
 create_actor( "emma", 65, -378.893,-537.379,17.2831, -1.5 );  
}
function onScriptLoad()
{
	SetTaxiBoostJump( true )
	SetUseClasses( true );
	SetServerName( "[0.4] Deathmatch Server " )
   print( " Storm Server: " + Creator + " started." );
   AddClass( 2, RGB( 209, 209, 209 ) ,200, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,201, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,202, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,203, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,204, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,205, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,206, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,207, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,208, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,209, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,210, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   /*AddClass( 3, RGB( 0,171,255 ) ,3, Vector( -378.893,-537.379,17.2831 ), 140.020, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 4, RGB( 247,0,255 ) ,4, Vector( -378.893,-537.379,17.2831 ), 140.020, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,5, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,6, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,7, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,8, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,9, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,10, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,11, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 1, RGB( 255, 255, 3 ) ,12,Vector( -378.893,-537.379,17.2831 ), 0.0256715, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,13, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 3, RGB( 0,171,255 ) ,14, Vector( -378.893,-537.379,17.2831 ), 140.020, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 4, RGB( 247,0,255 ) ,15, Vector( -378.893,-537.379,17.2831 ), 140.020, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,16, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,17, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,18, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,19, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,20, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,21, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,22, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,23, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,24, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,25, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,27, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 1, RGB( 255, 255, 3 ) ,28,Vector( -378.893,-537.379,17.2831 ), 0.0256715, 32, 999999 ,23, 999999, 26, 999999 );
   AddClass( 2, RGB( 209, 209, 209 ) ,29, Vector( -378.893,-537.379,17.2831 ), 2.34820, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 3, RGB( 0,171,255 ) ,30, Vector( -378.893,-537.379,17.2831 ), 140.020, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 4, RGB( 247,0,255 ) ,31, Vector( -378.893,-537.379,17.2831 ), 140.020, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,32, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,33, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,34, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,35, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,36, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,37, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,38, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,40, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,41, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,42, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,43, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,44, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,45, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,46, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,47, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,48, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,49, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,50, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,65, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,70, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,77, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );
   AddClass( 5, RGB( 51, 51, 255 ) ,75, Vector( -378.893,-537.379,17.2831 ), 2.4910, 26, 999999 ,23, 999999, 30, 999999 );*/ 
}

function copyarat()
{
    if (bircop) return; // already has an object instance

    bircop <- CreateObject(2569, 1, Vector(-335.979,-517.428,12.7946), 255);

    if (bircop)
    {
        bircop.RotateByEuler(Vector(3.14159, 3.14159, 1.34159), 0);
    }
}
function onPlayerJoin( player )
{
print( "*** Player [ " + player.Name + " ] Se ha unido. IP: " + player.IP + "" );
MessagePlayer( "[#00ff00]***" + player.Name + "[#FD0F0F]- your IP is: " + "[#00ff00][ " + player.IP + " ] [#FD0F0F]" + " your ID: [#00ff00][ " + player.ID + " ] " , player );
}
function onPlayerPart( player, reason )
{
print( player.Name + " Abando la partida. IP: " + player.IP );
}
function onPlayerChat( player, text )
{
		return 1;
}
function onPlayerCommand( player, cmd, text ) 
{
	if ( cmd == "setskin" )
    {
        if ( text && IsNum( text ) )
        {               
			player.Skin = text.tointeger();
            MessagePlayer( "[#ffffff][INFO] [#00ff00] Set the skin: " + GetSkinName( player.Skin ), player );
        }
        else MessagePlayer( "[#ffffff] Type / setskin SkinID" , player );
    }

	else if ( cmd == "info" )
	{
		MessagePlayer( "[#ffae00]Server Name:[ " + GetServerName() + " ].", player );
		MessagePlayer( "[#ffae00]Script DMS( v1.0 ) , Creado por Panzer y Mariu22S", player );
		MessagePlayer( "[#ffae00]Players:( " + GetPlayers() + "/" + GetMaxPlayers() + " ).", player );	
		MessagePlayer( "[#ffae00]Cars:( " + GetVehicleCount() + " ) ", player );	
		MessagePlayer( "[#ffae00]Game speed:( " + GetGamespeed() + " )." , player );
		MessagePlayer( "[#ffae00]Your location:( " + player.Pos.x + "," + player.Pos.y + "," + player.Pos.z + " )." , player );
		//CreateMarker(int world,Vector 57.2117,-1061.97,10.4633, int 10 (most times 5),RGB(255,255,255),int icon's 100);
	}
	else if ( cmd == "help" )
	{
		MessagePlayer( "[#f200ff]Locations: [ /locations  ].", player );
		MessagePlayer( "[#f200ff]Locations: [ /gotoloc location  ].", player );
		MessagePlayer( "[#f200ff]Locations: [ /goto player  ].", player );
		MessagePlayer( "[#f200ff]Locations: [ /spawn id  ].", player );
		MessagePlayer( "[#f200ff]Locations: [ /info  ].", player );
		MessagePlayer( "[#f200ff]Locations: [ /fps  ].", player );
	}
	else if ( cmd == "locations" )
	{
		MessagePlayer( "[#ffaa00]Example for use commands: /hospital", player );
		MessagePlayer( "[#f200ff]hospital", player );
		MessagePlayer( "[#f200ff]police", player );
		MessagePlayer( "[#f200ff]stripclub", player );
		MessagePlayer( "[#f200ff]cw", player );
		MessagePlayer( "[#f200ff]bank", player );
		MessagePlayer( "[#f200ff]shopping", player );
		MessagePlayer( "[#f200ff]fuelstation", player );
	}
	else if ( cmd == "spawn" )
    {	
	         if ( text )
			 {
			 local veh = FindVehicle( text.tointeger() );
			 veh.Pos = Vector( ( player.Pos.x + 2 ), player.Pos.y, ( player.Pos.z ) );
		     MessagePlayer( "[#ffffff][INFO][#00ff00]---> You have spawned car ID : [ " + veh.ID + " ).", player );
			 }
			 else MessagePlayer( "[#ffffff][INFO][#00ff00] Type /spawn <car id >.", player );
		     return 1;
    }
	else if ( cmd == "goto" )
    {
          local plr = FindPlayer( text );
          local Name = player.Name;
          if ( !plr ) MessagePlayer( "[#ffffff] Player [" + text + " ] the player has no.", player );
          else player.Pos = plr.Pos;
		  MessagePlayer( "[#ffffff] Teleport up for [" + plr + "].", player );
		  MessagePlayer( "[#ffffff] Player " + player.Name + " teleported to you.", plr );
    }
	else if ( cmd == "fps" )
	{
	if ( text ) 
	{
	local p = FindPlayer( text );
	Message( "[#00ff00]FPS: [#FFFF33]" + p + " it: [#ffffff]" + p.FPS );
	}
	else MessagePlayer( "[#ffffff][INFO] Type /fps < player name >" , player);
	}
	else if ( cmd == "gotocar" )
	{
	    if ( text.tointeger() )
	    {
	    local veh = FindVehicle( text.tointeger() );
		player.Pos = veh.Pos;
		MessagePlayer( "[#ffffff][INFO][#00ff00]Teleported to car: " + veh.ID + "." , player );
		}
	}
	else if ( cmd == "wep" )
	{
	   if ( text )
	   {
        local wepid = GetWeaponID( text );
        player.SetWeapon( wepid, 1000 );
        MessagePlayer( "[#ffffff][INFO][#00ff00]Your heve buy [" + GetWeaponName( wepid ) + "] 1000 ammo." , player );
	   }
	   else MessagePlayer( "[#ffffff][INFO][#ffffff][INFO][#00ff00] Enter <id/name> weapon ", player );
	}
	else if ( cmd == "heal" || cmd == "hel" )
	{
		if ( player.Health != 100 )
		{
			player.Health = 100; MessagePlayer( "[#ffffff][INFO][#00ff00] Healed up. ", player );
		}
		else MessagePlayer( "[#ffffff][INFO][#00ff00] You have already 100hp. ", player );
	}

	else if ( cmd == "test" )
	{
		MessagePlayer( "[#f200ff] Mensaje de test.", player );
		player.Health = 100; MessagePlayer( "[#ffffff][INFO][#00ff00] Give Health. ", player );
		player.Cash = 999999; MessagePlayer( "[#ffffff][INFO][#00ff00] Give Cash. ", player );
		player.Dollars = 999999; MessagePlayer( "[#ffffff][INFO][#00ff00] Give Cash. ", player );
		player.Shield = 100; MessagePlayer( "[#ffffff][INFO][#00ff00] Give Shield. ", player );
	}

else if ( cmd == "admin" || cmd == "staff" )
	{
		if ( player.Name == panzer )
		{
			player.Health = 100; MessagePlayer( "[#ffffff][INFO][#00ff00] Healed up. ", player );
			player.Cash = 100; MessagePlayer( "[#ffffff][INFO][#00ff00] Healed up. ", player );
			player.Dollars = 100; MessagePlayer( "[#ffffff][INFO][#00ff00] Healed up. ", player );
			MessagePlayer( "[#ffffff][INFO][#00ff00] Eres administrador!", player );
		}
		else MessagePlayer( "[#ffffff][INFO][#00ff00] You have already 100hp. ", player );
	}

	else if ( cmd == "gotoloc" )
	{
		if ( text == "cw" )
		{
			player.Pos = Vector( -378.893,-537.379,17.2831 );
			MessagePlayer( "[#ffffff][INFO][#00ff00] Teleported to [ cw ].", player );
		}
		if ( text == "bank" )
		{
			player.Pos = Vector( -876.882,-340.673,11.1034 );
			MessagePlayer( "[#ffffff][INFO][#00ff00] Teleported to [ bank ].", player );
		}
		if ( text == "police" )
		{
			player.Pos = Vector( 405.46,-460.164,10.1135 );
			MessagePlayer( "[#ffffff][INFO][#00ff00] Teleported to [ police center ].", player );
		}
		if ( text == "stripclub" )
		{
			player.Pos = Vector( 491.314,-78.2657,11.4838 );
			MessagePlayer( "[#ffffff][INFO][#00ff00] Teleported to [ strip club ].", player );
		}
		if ( text == "golf" )
		{
			player.Pos = Vector( 102.504,247.541,21.8013 );
			MessagePlayer( "[#ffffff][INFO][#00ff00] Teleported to [ golf ].", player );
		}
		if ( text == "shopping" )
		{
			player.Pos = Vector( 20.3616,-939.129,9.87751 );
			MessagePlayer( "[#ffffff][INFO][#00ff00] Teleported to [ golf ].", player );
		}
		if ( text == "fuelstation" )
		{
			player.Pos = Vector( 57.2117,-1061.97,10.4633 );
			MessagePlayer( "[#ffffff][INFO][#00ff00] Teleported to [ fuel station ].", player );
		}
		if ( text == "hospital" )
		{
			player.Pos = Vector( -130.087,-992.221,10.4634 );
			MessagePlayer( "[#ffffff][INFO][#00ff00] Teleported to [ hospital ].", player );
		}
		if ( text == "map" )
		{
			player.Pos = Vector( 392.226,-502.264,9.69561 );
			MessagePlayer( "[#ffffff][INFO][#00ff00] Teleported to [ map ].", player );
		}
		if ( text == "map2" )
		{
			player.Pos = Vector( -308.976,-636.878,82.5118 );
			MessagePlayer( "[#ffffff][INFO][#00ff00] Teleported to [ map2 ].", player );
		}
	}
}
function onPlayerTeamKill( killer, player ,reason, bodypart ) 
{
Message( "[#1FFFF9]>> " + killer.Name + "[#FFF11B] killed [#FF0000] " + player.Name + "[#FFF11B] Weapon: [[#6BFF46]" + GetWeaponName( reason ) + "[#FFF11B]] [#FFF11B]Ping:[#1FFFF9][" + killer.Ping + "]" );
}
function onPlayerKill( killer,player, reason, bodypart ) 
{
Message( "[#1FFFF9]>> " + killer.Name + "[#FFF11B] killed [#FF0000] " + player.Name + "[#FFF11B] Weapon: [[#6BFF46]" + GetWeaponName( reason ) + "[#FFF11B]] [#FFF11B]Ping:[#1FFFF9][" + killer.Ping + "]" );
}
function cars()
{
CreateVehicle( 171, 0, Vector( -848.975,-466.336,10.1645) , 360.255, 68, 39 );
CreateVehicle( 191, 0, Vector( 338.6310,-237.6571,29.1708) , 130.255, 1, 1 );
//Hidra
CreateVehicle( 6400, 0, Vector( -303.803,-638.013,10.3617) , 130.255, 1, 1 ); 
//ECar
CreateVehicle( 6401, 0, Vector( -385.692,-519.175,12.7814) , 130.255, 1, 1 );
//Porsche  
CreateVehicle( 6402, 0, Vector( -375.785,-518.307,12.788) , 130.255, 1, 1 ); 
//Sahotring
CreateVehicle( 6403, 0, Vector( -277.107,-643.822,10.3615) , 130.255, 1, 1 );
//Ferrari
CreateVehicle( 6404, 0, Vector( -367.872,-518.382,12.7874) , 130.255, 1, 1 );
//Porsche Police
CreateVehicle( 6405, 0, Vector( -356.264,-518.821,12.7841) , 130.255, 1, 1 );
//Nissan
CreateVehicle( 6406, 0, Vector( -335.979,-517.428,12.7946) , 130.255, 1, 1 ); 
//Dodo
CreateVehicle( 6407, 0, Vector( -314.322,-641.105,10.3616) , 130.255, 1, 1 );
//Countach
CreateVehicle( 6408, 0, Vector( -320.406,-518.012,12.7902) , 360.255, 68, 39 );

print( " --- > Cargados con exito: ( " + GetVehicleCount() + " ) vehiculos " );
return;
}