sX <- GUI.GetScreenSize().X;
sY <- GUI.GetScreenSize().Y;
msg <- null;

::statsGUI <- {
	Robskills = null,
	Copskills = null,
        Kills = null,
        Deaths = null
}

function Script::ScriptLoad()
{
        print( " Storm Server GUI SCRIPT started." );
}

function Script::ScriptProcess()
{
}

function Server::ServerData( stream )
{
local s = stream.ReadString(), i = stream.ReadInt(), f = stream.ReadFloat();
local g = split( s,":");

if ( g[0] == "Robskills" ) 
{
::statsGUI.Robskills = GUILabel(VectorScreen(0,10), Colour(255, 50, 50), "Robskills:" + g[1]);
::statsGUI.Robskills.FontSize = 12;
::statsGUI.Robskills.FontName = "Lucida Console";
}
if ( g[0] == "Copskills" ) 
{
::statsGUI.Copskills = GUILabel(VectorScreen(100,10), Colour(50, 50, 255), "Copskills:" + g[1]);
::statsGUI.Copskills.FontSize = 12;
::statsGUI.Copskills.FontName = "Lucida Console";
}
if ( g[0] == "Kills" ) 
{
::statsGUI.Kills = GUILabel(VectorScreen(190,10), Colour(0, 255, 255), "Kills:" + g[1]);
::statsGUI.Kills.FontSize = 12;
::statsGUI.Kills.FontName = "Lucida Console";
}
if ( g[0] == "Deaths" ) 
{
::statsGUI.Deaths = GUILabel(VectorScreen(300,10), Colour(0, 255, 0), "Deaths:" + g[1]);
::statsGUI.Deaths.FontSize = 12;
::statsGUI.Deaths.FontName = "Lucida Console";
}
}