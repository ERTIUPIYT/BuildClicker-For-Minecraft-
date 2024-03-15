#HotIf WinActive("Silent")
SendMode "Event"
SetMouseDelay 15
global Working:=false
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