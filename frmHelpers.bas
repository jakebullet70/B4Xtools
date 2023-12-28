B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=10
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private fx As JFX, xui As XUI
End Sub



'=======================================================================================
'=======================================================================================


Public Sub MaximizeForm(frm As Form)
	Dim jForm As JavaObject = frm
	Dim stage As JavaObject = jForm.GetField("stage")
	stage.RunMethod("setIconified", Array As Object(False))
End Sub

Public Sub MinimizeForm(frm As Form)
	Dim jForm As JavaObject = frm
	Dim stage As JavaObject = jForm.GetField("stage")
	stage.RunMethod("setIconified", Array As Object(True))
End Sub



