B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=Project.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
End Sub

Public Sub Initialize
'	B4XPages.GetManager.LogEvents = True
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("MainPage")
End Sub

'You can see the list of page related events in the B4XPagesManager object. The event name is B4XPage.

Private Sub Button1_Click
	
	Dim lat As Double = 53
	Dim lon As Double = -2.9
	Dim dt As Double = DateTime.Now
	
	DateTime.DateFormat = "dd/MM/yyyy"
	
	Log (DateTime.Now)
	
	Dim s As SunCalc
	s.Initialize
	
	
	Dim r As List = s.TimesList (dt, lat, lon)
	
	For Each m As Map In r
		Log (m)
	Next
	
	Log (s.MoonCoords(dt))
	
	'xui.MsgboxAsync(r, "B4X")
End Sub