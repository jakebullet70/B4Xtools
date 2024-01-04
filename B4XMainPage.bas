B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
'======================================================================================================
'
'
'
'
'======================================================================================================
Sub Class_Globals
	Private Root As B4XView, xui As XUI
	Private B4XImageView1 As B4XImageView
	Private btnJSONtools As Button
	Private btnFormsBuilder As Button
	Private SysTray As SystemTray
	Private TrayIcon As TrayIcon
	Private frmHelpers As clsFormHelpers
	
	Private FormMain As Form
	Private btnB4JmenuDesigner As Button
	Private btnClose As B4XView
End Sub

'https://www.b4x.com/android/forum/threads/hide-taskbar-icon-when-app-window-is-minimised.141869/#post-899324

Public Sub Initialize
'	B4XPages.GetManager.LogEvents = True
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)

	Root = Root1
	Root.LoadLayout("MainPage")

	FormMain = B4XPages.GetNativeParent(Me)
	frmHelpers.Initialize(FormMain)
	

	Dim bitmap As B4XBitmap = xui.LoadBitmap(File.DirAssets,"banner.jpg")
	B4XImageView1.Bitmap = bitmap
	
	TrayIcon.Initialize("TrayIcon1", bitmap, Null)
	TrayIcon.ToolTip = "B4X Support Tools"
	
	SysTray.Initialize
	SysTray.AddTrayIcon(TrayIcon)
	FormMain.Icon = bitmap
	B4XPages.SetTitle(Me,"B4X Tools - B.O.S.S Style")
	
	frmHelpers.SetMinWidth(400)
	frmHelpers.SetMinHeight(200)
	
	
End Sub

'You can see the list of page related events in the B4XPagesManager object. The event name is B4XPage.

Private Sub btnClose_Click
	FormMain.Close
End Sub

Private Sub B4XPage_CloseRequest As ResumableSub
	Log("B4Xpages_CloseRequest")
	SysTray.RemoveTrayIcon(TrayIcon)
	Return True
End Sub

Private Sub TrayIcon1_Click
	Log("TrayIcon1_Click")
	frmHelpers.MaximizeForm()
End Sub

Sub TrayIcon1_DoubleClick
	Log("TrayIcon1_DoubleClick")
	frmHelpers.MaximizeForm()
End Sub

Sub TrayIcon1_MenuClick (txt As String)
	Select txt
		Case "Disattiva"
'			TrayIcon1.SetImage(BlueImage)
'			isActive = False
		Case "Attiva"
'			isActive = True
'			TrayIcon1.SetImage(GreenImage)
		Case "Exit"
			SysTray.RemoveTrayIcon(TrayIcon)
			Sleep(0)
			ExitApplication
	End Select
End Sub


Private Sub btnB4JmenuDesigner_Click
	
End Sub
Private Sub btnFormsBuilder_Click
	
End Sub
Private Sub btnBBCodeDsner_Click
	
End Sub
Private Sub btnJSONtools_Click
	
End Sub

'Private Sub form_minimized(isMinimized As Boolean)
'	Log($"Form minimized: ${isMinimized}"$)
'    
'End Sub
'
'Private Sub form_maximized(isMaximized As Boolean)
'	Log($"Form minimized: ${isMaximized}"$)
'    
'End Sub




'================================================================================================================================
'================================================================================================================================
'================================================================================================================================




'Dim PageButtonSettings As ButtonSettings
'Dim PageProgAndScan As ProgAndScan
'https://www.b4x.com/android/forum/threads/b4j-minimize-a-form-to-icon-iconified.139543/#post-968454





''
''Sub Process_Globals
''	Private fx As JFX
''	Private MainForm As Form
''	Private xui As XUI
''	Private Button1 As B4XView
''	Private ActionListener As Object
''End Sub
''
''Sub AppStart (Form1 As Form, Args() As String)
''	MainForm = Form1
''	MainForm.RootPane.LoadLayout("Layout1")
''	MainForm.Show
''	Dim st As SystemTray
''	st.Initialize
''	Dim icon As TrayIcon
''	icon.Initialize("icon", xui.LoadBitmap(File.DirAssets, "logo.png"), Null)
''	st.AddTrayIcon(icon)
''	Dim jo As JavaObject = icon
''	ActionListener = jo.CreateEventFromUI("java.awt.event.ActionListener", "ActionListener", Null)
''	jo.RunMethod("setPopupMenu", Array(CreatePopupMenu))
''    
''End Sub
''
''Sub ActionListener_Event (MethodName As String, Args() As Object) As Object
''	If MethodName = "actionPerformed" Then
''		Dim jo As JavaObject = Args(0)
''		Dim command As String = jo.RunMethod("getActionCommand", Null)
''		Log("Clicked on: " & command)
''	End If
''	Return Null
''End Sub
''
''Sub CreatePopupMenu As JavaObject
''	Dim popup As JavaObject
''	popup.InitializeNewInstance("java.awt.PopupMenu", Null)
''	popup.RunMethod("add", Array(CreateMenuLabel("Item 1")))
''	popup.RunMethod("add", Array(CreateMenuWithChildren("Item 2", Array("AAA", "BBB", "CCC"))))
''	popup.RunMethod("add", Array(CreateMenuLabel("Item 3")))
''	popup.RunMethod("add", Array(CreateMenuLabel("Item 4")))
''	Return popup
''End Sub
''
''Sub CreateMenuLabel(str As String) As Object
''	Dim mi As JavaObject
''	mi.InitializeNewInstance("java.awt.MenuItem", Array(str))
''	mi.RunMethod("addActionListener", Array(ActionListener))
''	Return mi
''End Sub
''
''Sub CreateMenuWithChildren(str As String, children As List) As Object
''	Dim mi As JavaObject
''	mi.InitializeNewInstance("java.awt.Menu", Array(str))
''	For Each s As String In children
''		mi.RunMethod("add", Array(CreateMenuLabel(s)))
''	Next
''	Return mi
'End Sub



