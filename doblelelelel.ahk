#HotIf WinActive("Chrome")
SendMode "Event"
SetMouseDelay 15
global Working:=false
global attacking:=true
window:=Gui()
window.Opt("+AlwaysOnTop -Caption")
global state:= window.AddText(,"test")
window.Show("x943 y1013")
*RButton::
{
	while GetKeyState("RButton","P") and Working==true
	{
		Click "Right"

	}
	if Working==false
		click "Down Right"
}
*RButton Up::click "Up Right"
*XButton2::
{
	global Working:=!Working
	;state.Text:=Working
	if Working==false
		{state.Text:="off"
		window.BackColor:="Red"
		}
	if Working==true
		{state.Text:="on"
		window.BackColor:="Lime"
	}
}
*LButton::
{
	if	attacking==true
		Click 2

	if attacking==false
		click "Down Left"
}
*MButton::global attacking:=!attacking 							;/\/\/\                       ;"peace was never an option"
*LButton Up::click "Up Left"									;michigun
