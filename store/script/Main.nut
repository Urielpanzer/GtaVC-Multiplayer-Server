//Add from Client - Side

ScreenX <- GUI.GetScreenSize().X;
ScreenY <- GUI.GetScreenSize().Y;
ScreenSize <- ScreenY / 40;
SizeFont <- 9;
SizeFontClose <- 12;
FontN <- "Lucida Console";
ColourAmmo <- Colour(128, 128, 128);

///=== VARIABLES
HudServer <- null;
HudSer <- true;
WheelWeapons <- {
 ButtonActivated1 = false,
 ButtonActivated2 = false,
 ButtonActivated3 = false,
 ButtonActivated4 = false,
 ButtonActivated5 = false,
 ButtonActivated6 = false,
 ButtonActivated7 = false,
 ButtonActivated8 = false,
 ButtonActivated9 = false,
 ButtonActivated10 = false,
//-----
 Circle = null,
 Wep1 = null,
 Wep2 = null,
 Wep3 = null,
 Wep4 = null,
 Wep5 = null,
 Wep6 = null,
 Wep7 = null,
 Wep8 = null,
//-----
 Button1 = null,
 Button2 = null,
 Button3 = null,
 Button4 = null,
 Button5 = null,
 Button6 = null,
 Button7 = null,
 Button8 = null,
//-----
 Text1 = null,
 Text2 = null,
 Text3 = null,
 Text4 = null,
 Text5 = null,
 Text6 = null,
 Text7 = null,
 Text8 = null,
//-----
 OptionButton1 = null,
 OptionButton2 = null,
 OptionButton3 = null,
 OptionButton4 = null,
 OptionButton5 = null,
 OptionButton6 = null,
 OptionButton7 = null,
 OptionButton8 = null,
 HudOff = null
 }
///===================================
function Script::ScriptProcess()
{
::ScreenX = GUI.GetScreenSize().X;
::ScreenY = GUI.GetScreenSize().Y;
if( ::WheelWeapons.Circle )
{
::WheelWeapons.Circle.Position = ::VectorScreen(( ScreenX * 0.30 ) - ( ScreenY / ScreenSize), ScreenY * 0.20)
}
}
function GUI::ElementClick(element, mouseX, mouseY)
{
if(element==::HudServer)
{
local Datos = Stream();
Datos.WriteString("ONOFFHUD");
Server.SendData(Datos);
}
if(element==::WheelWeapons.Wep1)
{
local Datos = Stream();
Datos.WriteString("SelectSlot1");
Server.SendData(Datos);
}
if(element==::WheelWeapons.Wep2)
{
local Datos = Stream();
Datos.WriteString("SelectSlot2");
Server.SendData(Datos);
}
if(element==::WheelWeapons.Wep3)
{
local Datos = Stream();
Datos.WriteString("SelectSlot3");
Server.SendData(Datos);
}
if(element==::WheelWeapons.Wep4)
{
local Datos = Stream();
Datos.WriteString("SelectSlot4");
Server.SendData(Datos);
}
if(element==::WheelWeapons.Wep5)
{
local Datos = Stream();
Datos.WriteString("SelectSlot5");
Server.SendData(Datos);
}
if(element==::WheelWeapons.Wep6)
{
local Datos = Stream();
Datos.WriteString("SelectSlot6");
Server.SendData(Datos);
}
if(element==::WheelWeapons.Wep7)
{
local Datos = Stream();
Datos.WriteString("SelectSlot7");
Server.SendData(Datos);
}
if(element==::WheelWeapons.Wep8)
{
local Datos = Stream();
Datos.WriteString("SelectSlot8");
Server.SendData(Datos);
}
if(element==::WheelWeapons.HudOff)
{
local Datos = Stream();
Datos.WriteString("HudOff");
Server.SendData(Datos);
}
}
function Server::ServerData(stream)
{
local ReadString = stream.ReadString(),ReadInt = stream.ReadInt(),ReadFloat=stream.ReadFloat();
if( ReadString == "SetHud")
{
if( ::HudSer == true)
{
::HudSer <- false;
::Hud.RemoveFlags(HUD_FLAG_CLOCK | HUD_FLAG_WEAPON | HUD_FLAG_CASH| HUD_FLAG_HEALTH| HUD_FLAG_WANTED)
return ;
}
if( ::HudSer == false)
{
::HudSer <- true;
::Hud.AddFlags(HUD_FLAG_CLOCK | HUD_FLAG_WEAPON | HUD_FLAG_CASH| HUD_FLAG_HEALTH| HUD_FLAG_WANTED)
}
}
if(GetTok( ReadString, " ", 1 ) == "OpenMenuWheel")
{
local Slot1 = null,Ammo1 = 0,Slot2 = null,Ammo2 = 0,Slot3 = null,Ammo3 = 0,Slot4 = null,Ammo4 = 0,Slot5 = null,Ammo5 = 0,Slot6 = null,Ammo6 = 0,Slot7 = null,Ammo7 = 0,Slot8 = null,Ammo8 = 0;
  Slot1=GetTok( ReadString, " ", 2 );
  Ammo1=GetTok( ReadString, " ", 3 );
  Slot2=GetTok( ReadString, " ", 4 );
  Ammo2=GetTok( ReadString, " ", 5 );
  Slot3=GetTok( ReadString, " ", 6 );
  Ammo3=GetTok( ReadString, " ", 7 );
  Slot4=GetTok( ReadString, " ", 8 );
  Ammo4=GetTok( ReadString, " ", 9 );
  Slot5=GetTok( ReadString, " ", 10 );
  Ammo5=GetTok( ReadString, " ", 11 );
  Slot6=GetTok( ReadString, " ", 12 );
  Ammo6=GetTok( ReadString, " ", 13 );
  Slot7=GetTok( ReadString, " ", 14 );
  Ammo7=GetTok( ReadString, " ", 15 );
  Slot8=GetTok( ReadString, " ", 16 );
  Ammo8=GetTok( ReadString, " ", 17 );
 ::GUI.SetMouseEnabled(true);
 ::WheelWeapons.Circle <- GUISprite("Wheel.png", VectorScreen(0, 0));
 ::WheelWeapons.Circle.Size = VectorScreen(400, 300);
 ::WheelWeapons.Circle.AddFlags(GUI_FLAG_MOUSECTRL);
 ::WheelWeapons.Circle.Alpha=150;
 ::WheelWeapons.HudOff <- GUIButton(VectorScreen(150,270), VectorScreen(90, 22), Colour(20, 20, 20), "EXIT >>", GUI_FLAG_BORDER | GUI_FLAG_VISIBLE);
 ::WheelWeapons.HudOff.TextColour = Colour(255, 255, 255);
 ::WheelWeapons.HudOff.FontName = Colour(75,75,75);
 ::WheelWeapons.HudOff.FontSize = SizeFontClose;
 ::WheelWeapons.HudOff.Alpha = 150;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.HudOff);
 ::HudServer <- GUIButton(VectorScreen(150,20), VectorScreen(100, 22), Colour(20, 20, 20), "HUD", GUI_FLAG_BORDER | GUI_FLAG_VISIBLE);
 ::HudServer.TextColour = Colour(255, 255, 255);
 ::HudServer.FontName = Colour(75,75,75);
 ::HudServer.FontSize = SizeFontClose;
 ::HudServer.Alpha = 150;
 ::WheelWeapons.Circle.AddChild(HudServer);

if(Slot1 != null)
{
 ::WheelWeapons.Wep1 <- GUISprite("Wep"+Slot1+".png", VectorScreen(110, 55));
 ::WheelWeapons.Wep1.Size = VectorScreen(80, 38);
 ::WheelWeapons.Wep1.AddFlags(GUI_FLAG_MOUSECTRL);
 ::WheelWeapons.Wep1.Alpha=150;
 ::WheelWeapons.OptionButton1 = Slot1;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Wep1);
 ::WheelWeapons.Text1 <- GUILabel(VectorScreen(150, 100), ColourAmmo, Ammo1+"");
 ::WheelWeapons.Text1.FontSize = SizeFont;
 ::WheelWeapons.Text1.FontName = FontN;
 ::WheelWeapons.Text1.TextAlignment = GUI_ALIGN_LEFT;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Text1);
}
if(Slot2 != null)
{
 ::WheelWeapons.Wep2 <- GUISprite("Wep"+Slot2+".png", VectorScreen(180, 55));
 ::WheelWeapons.Wep2.Size = VectorScreen(80, 38);
 ::WheelWeapons.Wep2.AddFlags(GUI_FLAG_MOUSECTRL);
 ::WheelWeapons.Wep2.Alpha=150;
 ::WheelWeapons.OptionButton2 = Slot2;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Wep2);
 ::WheelWeapons.Text2 <- GUILabel(VectorScreen(210, 100), ColourAmmo, Ammo2+"");
 ::WheelWeapons.Text2.FontSize = SizeFont;
 ::WheelWeapons.Text2.FontName = FontN;
 ::WheelWeapons.Text2.TextAlignment = GUI_ALIGN_LEFT;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Text2);
}
if(Slot3 != null)
{
 ::WheelWeapons.Wep3 <- GUISprite("Wep"+Slot3+".png", VectorScreen(250, 110));
 ::WheelWeapons.Wep3.Size = VectorScreen(80, 38);
 ::WheelWeapons.Wep3.AddFlags(GUI_FLAG_MOUSECTRL);
 ::WheelWeapons.Wep3.Alpha=150;
 ::WheelWeapons.OptionButton3 = Slot3;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Wep3);
 ::WheelWeapons.Text3 <- GUILabel(VectorScreen(240, 130), ColourAmmo, Ammo3+"");
 ::WheelWeapons.Text3.FontSize = SizeFont;
 ::WheelWeapons.Text3.FontName = FontN;
 ::WheelWeapons.Text3.TextAlignment = GUI_ALIGN_LEFT;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Text3);
}
if(Slot4 != null)
{
 ::WheelWeapons.Wep4 <- GUISprite("Wep"+Slot4+".png", VectorScreen(250, 170));
 ::WheelWeapons.Wep4.Size = VectorScreen(80, 38);
 ::WheelWeapons.Wep4.AddFlags(GUI_FLAG_MOUSECTRL);
 ::WheelWeapons.Wep4.Alpha=150;
 ::WheelWeapons.OptionButton4 = Slot4;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Wep4);
 ::WheelWeapons.Text4 <- GUILabel(VectorScreen(240, 170), ColourAmmo, Ammo4+"");
 ::WheelWeapons.Text4.FontSize = SizeFont;
 ::WheelWeapons.Text4.FontName = FontN;
 ::WheelWeapons.Text4.TextAlignment = GUI_ALIGN_LEFT;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Text4);
}
if(Slot5 != null)
{
 ::WheelWeapons.Wep5 <- GUISprite("Wep"+Slot5+".png", VectorScreen(190, 215));
 ::WheelWeapons.Wep5.Size = VectorScreen(80, 38);
 ::WheelWeapons.Wep5.AddFlags(GUI_FLAG_MOUSECTRL);
 ::WheelWeapons.Wep5.Alpha=150;
 ::WheelWeapons.OptionButton5 = Slot5;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Wep5);
 ::WheelWeapons.Text5 <- GUILabel(VectorScreen(210, 200), ColourAmmo, Ammo5+"");
 ::WheelWeapons.Text5.FontSize = SizeFont;
 ::WheelWeapons.Text5.FontName = FontN;
 ::WheelWeapons.Text5.TextAlignment = GUI_ALIGN_LEFT;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Text5);
}
if(Slot6 != null)
{
 ::WheelWeapons.Wep6 <- GUISprite("Wep"+Slot6+".png", VectorScreen(110, 215));
 ::WheelWeapons.Wep6.Size = VectorScreen(80, 38);
 ::WheelWeapons.Wep6.AddFlags(GUI_FLAG_MOUSECTRL);
 ::WheelWeapons.Wep6.Alpha=150;
 ::WheelWeapons.OptionButton6 = Slot6;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Wep6);
 ::WheelWeapons.Text6 <- GUILabel(VectorScreen(150, 200), ColourAmmo, Ammo6+"");
 ::WheelWeapons.Text6.FontSize = SizeFont;
 ::WheelWeapons.Text6.FontName = FontN;
 ::WheelWeapons.Text6.TextAlignment = GUI_ALIGN_LEFT;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Text6);
 }
if(Slot7 != null)
{
 ::WheelWeapons.Wep7 <- GUISprite("Wep"+Slot7+".png", VectorScreen(55, 170));
 ::WheelWeapons.Wep7.Size = VectorScreen(80, 38);
 ::WheelWeapons.Wep7.AddFlags(GUI_FLAG_MOUSECTRL);
 ::WheelWeapons.Wep7.Alpha=150;
 ::WheelWeapons.OptionButton7 = Slot7;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Wep7);
 ::WheelWeapons.Text7 <- GUILabel(VectorScreen(130, 170), ColourAmmo, Ammo7+"");
 ::WheelWeapons.Text7.FontSize = SizeFont;
 ::WheelWeapons.Text7.FontName = FontN;
 ::WheelWeapons.Text7.TextAlignment = GUI_ALIGN_LEFT;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Text7);
}
if(Slot8 != null)
{
 ::WheelWeapons.Wep8 <- GUISprite("Wep"+Slot8+".png", VectorScreen(55, 110));
 ::WheelWeapons.Wep8.Size = VectorScreen(80, 38);
 ::WheelWeapons.Wep8.AddFlags(GUI_FLAG_MOUSECTRL);
 ::WheelWeapons.Wep8.Alpha=150;
 ::WheelWeapons.OptionButton8 = Slot8;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Wep8);
 ::WheelWeapons.Text8 <- GUILabel(VectorScreen(130, 130), ColourAmmo, Ammo8+"");
 ::WheelWeapons.Text8.FontSize = SizeFont;
 ::WheelWeapons.Text8.FontName = FontN;
 ::WheelWeapons.Text8.TextAlignment = GUI_ALIGN_LEFT;
 ::WheelWeapons.Circle.AddChild(WheelWeapons.Text8);
 }
}
if(ReadString=="CloseMenuWheel")
{
 ::GUI.SetMouseEnabled(false);
 ::WheelWeapons.ButtonActivated1 = false;
 ::WheelWeapons.ButtonActivated2 = false;
 ::WheelWeapons.ButtonActivated3 = false;
 ::WheelWeapons.ButtonActivated4 = false;
 ::WheelWeapons.ButtonActivated5 = false;
 ::WheelWeapons.ButtonActivated6 = false;
 ::WheelWeapons.ButtonActivated7 = false;
 ::WheelWeapons.ButtonActivated8 = false;
 ::WheelWeapons.ButtonActivated9 = false;
 ::WheelWeapons.ButtonActivated10 = false;
//-----
 ::WheelWeapons.Circle = null;
 ::WheelWeapons.Wep1 = null;
 ::WheelWeapons.Wep2 = null;
 ::WheelWeapons.Wep3 = null;
 ::WheelWeapons.Wep4 = null;
 ::WheelWeapons.Wep5 = null;
 ::WheelWeapons.Wep6 = null;
 ::WheelWeapons.Wep7 = null;
 ::WheelWeapons.Wep8 = null;
//-----
 ::WheelWeapons.Button1 = null;
 ::WheelWeapons.Button2 = null;
 ::WheelWeapons.Button3 = null;
 ::WheelWeapons.Button4 = null;
 ::WheelWeapons.Button5 = null;
 ::WheelWeapons.Button6 = null;
 ::WheelWeapons.Button7 = null;
 ::WheelWeapons.Button8 = null;
//-----
 ::WheelWeapons.Text1 = null;
 ::WheelWeapons.Text2 = null;
 ::WheelWeapons.Text3 = null;
 ::WheelWeapons.Text4 = null;
 ::WheelWeapons.Text5 = null;
 ::WheelWeapons.Text6 = null;
 ::WheelWeapons.Text7 = null;
 ::WheelWeapons.Text8 = null;
//-----
 ::WheelWeapons.OptionButton1 = null;
 ::WheelWeapons.OptionButton2 = null;
 ::WheelWeapons.OptionButton3 = null;
 ::WheelWeapons.OptionButton4 = null;
 ::WheelWeapons.OptionButton5 = null;
 ::WheelWeapons.OptionButton6 = null;
 ::WheelWeapons.OptionButton7 = null;
 ::WheelWeapons.OptionButton8 = null;
 ::WheelWeapons.HudOff = null;
}
}
function GUI::ElementHoverOver(element)
{
if(element == WheelWeapons.Wep1  &&  WheelWeapons.OptionButton1 != null )
{
 ::WheelWeapons.Button1 <- GUISprite("Button1.png", VectorScreen(0, 0));
 ::WheelWeapons.Button1.Size = VectorScreen(400, 300);
 ::WheelWeapons.Button1.AddFlags(GUI_FLAG_BACKGROUND);
 ::WheelWeapons.Button1.Alpha=150;
 ::WheelWeapons.ButtonActivated1 = true
  if(::WheelWeapons.Circle != null)::WheelWeapons.Circle.AddChild(WheelWeapons.Button1);
}
if(element == WheelWeapons.Wep2  &&  WheelWeapons.OptionButton2 != null)
{
 ::WheelWeapons.Button2 <- GUISprite("Button2.png", VectorScreen(0, 0));
 ::WheelWeapons.Button2.Size = VectorScreen(400, 300);
 ::WheelWeapons.Button2.AddFlags(GUI_FLAG_BACKGROUND);
 ::WheelWeapons.Button2.Alpha=150;
 ::WheelWeapons.ButtonActivated2 = true
 if(::WheelWeapons.Circle != null)::WheelWeapons.Circle.AddChild(WheelWeapons.Button2);
}
if(element == WheelWeapons.Wep3  &&  WheelWeapons.OptionButton3 != null)
{
 ::WheelWeapons.Button3 <- GUISprite("Button3.png", VectorScreen(0, 0));
 ::WheelWeapons.Button3.Size = VectorScreen(400, 300);
 ::WheelWeapons.Button3.AddFlags(GUI_FLAG_BACKGROUND);
 ::WheelWeapons.Button3.Alpha=150;
 ::WheelWeapons.ButtonActivated3 = true
 if(::WheelWeapons.Circle != null)::WheelWeapons.Circle.AddChild(WheelWeapons.Button3);
}
if(element == WheelWeapons.Wep4  &&  WheelWeapons.OptionButton4 != null)
{
 ::WheelWeapons.Button4 <- GUISprite("Button4.png", VectorScreen(0, 0));
 ::WheelWeapons.Button4.Size = VectorScreen(400, 300);
 ::WheelWeapons.Button4.AddFlags(GUI_FLAG_BACKGROUND);
 ::WheelWeapons.Button4.Alpha=150;
 ::WheelWeapons.ButtonActivated4 = true
 if(::WheelWeapons.Circle != null)::WheelWeapons.Circle.AddChild(WheelWeapons.Button4);
}
if(element == WheelWeapons.Wep5  &&  WheelWeapons.OptionButton5 != null)
{
 ::WheelWeapons.Button5 <- GUISprite("Button5.png", VectorScreen(0, 0));
 ::WheelWeapons.Button5.Size = VectorScreen(400, 300);
 ::WheelWeapons.Button5.AddFlags(GUI_FLAG_BACKGROUND);
 ::WheelWeapons.Button5.Alpha=150;
 ::WheelWeapons.ButtonActivated5 = true
 if(::WheelWeapons.Circle != null)::WheelWeapons.Circle.AddChild(WheelWeapons.Button5);
}
if(element == WheelWeapons.Wep6  &&  WheelWeapons.OptionButton6 != null)
{
 ::WheelWeapons.Button6 <- GUISprite("Button6.png", VectorScreen(0, 0));
 ::WheelWeapons.Button6.Size = VectorScreen(400, 300);
 ::WheelWeapons.Button6.AddFlags(GUI_FLAG_BACKGROUND);
 ::WheelWeapons.Button6.Alpha=150;
 ::WheelWeapons.ButtonActivated6 = true
 if(::WheelWeapons.Circle != null)::WheelWeapons.Circle.AddChild(WheelWeapons.Button6);
}
if(element == WheelWeapons.Wep7  &&  WheelWeapons.OptionButton7 != null)
{
 ::WheelWeapons.Button7 <- GUISprite("Button7.png", VectorScreen(0, 0));
 ::WheelWeapons.Button7.Size = VectorScreen(400, 300);
 ::WheelWeapons.Button7.AddFlags(GUI_FLAG_BACKGROUND);
 ::WheelWeapons.Button7.Alpha=150;
 ::WheelWeapons.ButtonActivated7 = true
 if(::WheelWeapons.Circle != null)::WheelWeapons.Circle.AddChild(WheelWeapons.Button7);
}
if(element == WheelWeapons.Wep8  &&  WheelWeapons.OptionButton8 != null)
{
 ::WheelWeapons.Button8 <- GUISprite("Button8.png", VectorScreen(0, 0));
 ::WheelWeapons.Button8.Size = VectorScreen(400, 300);
 ::WheelWeapons.Button8.AddFlags(GUI_FLAG_BACKGROUND);
 ::WheelWeapons.Button8.Alpha=150;
 ::WheelWeapons.ButtonActivated8 = true
 if(::WheelWeapons.Circle != null)::WheelWeapons.Circle.AddChild(WheelWeapons.Button8);
}
}
function GUI::ElementHoverOut(element)
{
if(element == WheelWeapons.Wep1  &&  WheelWeapons.ButtonActivated1 == true )
{
::WheelWeapons.ButtonActivated1 = false
::WheelWeapons.Button1 <- null;
}
if(element == WheelWeapons.Wep2  && WheelWeapons.ButtonActivated2 == true )
{
::WheelWeapons.ButtonActivated2 = false
::WheelWeapons.Button2 <- null;
}
if(element == WheelWeapons.Wep3  && WheelWeapons.ButtonActivated3 == true )
{
::WheelWeapons.ButtonActivated3 = false
::WheelWeapons.Button3 <- null;
}
if(element == WheelWeapons.Wep4  && WheelWeapons.ButtonActivated4 == true )
{
::WheelWeapons.ButtonActivated4 = false
::WheelWeapons.Button4 <- null;
}
if(element == WheelWeapons.Wep5  && WheelWeapons.ButtonActivated5 == true )
{
::WheelWeapons.ButtonActivated5 = false
::WheelWeapons.Button5 <- null;
}
if(element == WheelWeapons.Wep6  && WheelWeapons.ButtonActivated6 == true )
{
::WheelWeapons.ButtonActivated6 = false
::WheelWeapons.Button6 <- null;
}
if(element == WheelWeapons.Wep7  && WheelWeapons.ButtonActivated7 == true )
{
::WheelWeapons.ButtonActivated7 = false
::WheelWeapons.Button7 <- null;
}
if(element == WheelWeapons.Wep8  && WheelWeapons.ButtonActivated8 == true )
{
::WheelWeapons.ButtonActivated8 = false
::WheelWeapons.Button8 <- null;
}
}
function GetTok(string, separator, n, ...)
{
local m = vargv.len() > 0 ? vargv[0] : n,
tokenized = split(string, separator),
text = "";
if (n > tokenized.len() || n < 1) return null;
for (; n <= m; n++)
{
text += text == "" ? tokenized[n-1] : separator + tokenized[n-1];
}
return text;
}
