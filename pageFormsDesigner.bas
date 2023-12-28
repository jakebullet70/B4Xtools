B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
Sub Class_Globals
	Private Root As B4XView, xui As XUI 'ignore
	Private FormFrmDesgner As Form
End Sub

'You can add more parameters here.
Public Sub Initialize As Object
	Return Me
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	'Root.LoadLayout("FormsDesignerPage")
	FormFrmDesgner = B4XPages.GetNativeParent(Me).As(Form)
	
End Sub

'You can see the list of page related events in the B4XPagesManager object. The event name is B4XPage.