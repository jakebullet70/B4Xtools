B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
#region version
'--- 99% of this code is form From - SteveL05
'https://www.b4x.com/android/forum/threads/formutils.84460/#content
#end region


Sub Class_Globals
	Private fx As JFX, XUI As XUI
	Private frm As Form
End Sub

Public Sub Initialize(f As Form)
	frm = f
'	Dim joform As JavaObject = frm.As(Form)
'	Dim joStage As JavaObject=joform.GetFieldJO("stage")
'	(frm).As(JavaObject).RunMethod("ifStageIsIconified",Array(joStage))
'	(frm).As(JavaObject).RunMethod("ifStageIsMaximized",Array(joStage))
End Sub


'=======================================================================================
'=======================================================================================

'sets the value of the property minheight.
Public Sub SetMinHeight(value As Double)
	Dim jo As JavaObject = frm
	jo.GetFieldJO("stage").runmethod("setMinHeight",Array As Object(value))
End Sub

'sets the value of the property minwidth.
Public Sub SetMinWidth(value As Double)
	Dim jo As JavaObject = frm
	jo.GetFieldJO("stage").runmethod("setMinWidth",Array As Object(value))
End Sub

'maximizes the form, this will respect 'SetMinHeight' and SetMinWidth values
Public Sub MaximizeForm()
	Dim jo As JavaObject = frm
	jo.GetFieldJO("stage").RunMethod("setMaximized", Array(True))
End Sub

'Send the Window to the background.
Public Sub ToBack()
	Dim TJo As JavaObject = GetStage(frm)
	TJo.RunMethod("toBack",Null)
End Sub

'bring the window To the foreground.
public Sub ToFront()
	Dim tjo As JavaObject = GetStage(frm)
	tjo.runmethod("tofront",Null)
End Sub


Public Sub MinimizeForm()
	Dim jo As JavaObject = frm
	jo.GetFieldJO("stage").RunMethod("setIconified", Array(True))
'	Dim jForm As JavaObject = frm
'	Dim stage As JavaObject = jForm.GetField("stage")
'	stage.RunMethod("setIconified", Array As Object(True))
End Sub



'=======================================================================================
'=======================================================================================
'--- From - SteveL05
'https://www.b4x.com/android/forum/threads/formutils.84460/#content

'Gets the icon images to be used in the window decorations and when minimized.
'Also adds the icon to the form
'<code>Dim Img As Image = fx.LoadImage(File.DirAssets,"icon.png")
'FormUtils.GetIcons(MainForm).Add(Img)</code>

'Public Sub GetIcons(F As Form) As List
'	Dim TJo As JavaObject = GetStage(F)
'	Return TJo.RunMethod("getIcons",Null)
'End Sub
''Gets the value of the property minHeight.
'Public Sub GetMinHeight(F As Form) As Double
'	Dim TJo As JavaObject = GetStage(F)
'	Return TJo.RunMethod("getMinHeight",Null)
'End Sub
''Gets the value of the property minWidth.
'Public Sub GetMinWidth(F As Form) As Double
'	Dim TJo As JavaObject = GetStage(F)
'	Return TJo.RunMethod("getMinWidth",Null)
'End Sub
''Gets the value of the property alwaysOnTop.
'Public Sub IsAlwaysOnTop(F As Form) As Boolean
'	Dim TJo As JavaObject = GetStage(F)
'	Return TJo.RunMethod("isAlwaysOnTop",Null)
'End Sub
''Gets the value of the property fullScreen.
'Public Sub IsFullScreen (F As Form) As Boolean
'	Dim TJo As JavaObject = GetStage(F)
'	Return TJo.RunMethod("isFullScreen",Null)
'End Sub
''Gets the value of the property iconified.
'Public Sub IsIconified (F As Form) As Boolean
'	Dim TJo As JavaObject = GetStage(F)
'	Return TJo.RunMethod("isIconified",Null)
'End Sub
''Gets the value of the property maximized.
'Public Sub IsMaximized (F As Form) As Boolean
'	Dim TJo As JavaObject = GetStage(F)
'	Return TJo.RunMethod("isMaximized",Null)
'End Sub
''Gets the value of the property resizable.
'Public Sub IsResizable (F As Form) As Boolean
'	Dim TJo As JavaObject = GetStage(F)
'	Return TJo.RunMethod("isResizable",Null)
'End Sub
''Sets the value of the property fullScreen.
'Public Sub SetFullScreen(F As Form, Value As Boolean)
'	Dim TJo As JavaObject = GetStage(F)
'	TJo.RunMethod("setFullScreen",Array As Object(Value))
'End Sub
''Specifies the text to show when a user enters full screen mode, usually used to indicate the way a user should go about exiting out of full screen mode.
'Public Sub SetFullScreenExitHint(F As Form, Value As String)
'	Dim TJo As JavaObject = GetStage(F)
'	TJo.RunMethod("setFullScreenExitHint",Array As Object(Value))
'End Sub
''Specifies the KeyCombination that will allow the user to exit full screen mode.
'Public Sub SetFullScreenExitKeyCombination(F As Form,TKeyCombination As Object)
'	Dim TJo As JavaObject = GetStage(F)
'	TJo.RunMethod("setFullScreenExitKeyCombination",Array As Object(TKeyCombination))
'End Sub
''Sets the value of the property iconified.
'Public Sub SetIconified(F As Form, Value As Boolean)
'	Dim TJo As JavaObject = GetStage(F)
'	TJo.RunMethod("setIconified",Array As Object(Value))
'End Sub
''Sets the value of the property maxHeight.
'Public Sub SetMaxHeight(F As Form, Value As Double)
'	Dim TJo As JavaObject = GetStage(F)
'	TJo.RunMethod("setMaxHeight",Array As Object(Value))
'End Sub
''Sets the value of the property maximized.
'Public Sub SetMaximized(F As Form, Value As Boolean)
'	Dim TJo As JavaObject = GetStage(F)
'	TJo.RunMethod("setMaximized",Array As Object(Value))
'End Sub
''Sets the value of the property maxWidth.
'Public Sub SetMaxWidth(F As Form, Value As Double)
'	Dim TJo As JavaObject = GetStage(F)
'	TJo.RunMethod("setMaxWidth",Array As Object(Value))
'End Sub
''Sets the value of the property minHeight.

''Send the Window to the background.
'Public Sub ToBack(F As Form)
'	Dim TJo As JavaObject = GetStage(F)
'	TJo.RunMethod("toBack",Null)
'End Sub
'bring the window To the foreground.
'public Sub ToFront(f As Form)
'	Dim tjo As JavaObject = GetStage(f)
'	tjo.runmethod("tofront",Null)
'End Sub

private Sub GetStage(f As JavaObject) As JavaObject
	Return f.getfield("stage")
End Sub
'=======================================================================================
'=======================================================================================
'
'
'
'
'#if Java
'
'import javafx.collections.ObservableList;
'import javafx.beans.value.ChangeListener;
'import javafx.beans.value.ObservableValue;
'
'public static void ifStageIsIconified(Stage stage){
'
'    stage.iconifiedProperty().addListener(new ChangeListener<Boolean>() {
'
'    @Override
'    public void changed(ObservableValue<? extends Boolean> ov, Boolean t, Boolean t1) {
'        Boolean minimized = t1.booleanValue();
'        ba.raiseEvent(getObject(), "form_minimized", minimized);
'    }
'});
'
'}
'public static void ifStageIsMaximized(Stage stage){
'
'    stage.maximizedProperty().addListener(new ChangeListener<Boolean>() {
'
'        @Override
'        public void changed(ObservableValue<? extends Boolean> ov, Boolean t, Boolean t1) {
'            Boolean maximized = t1.booleanValue();
'            ba.raiseEvent(getObject(), "form_maximized", maximized);
'        }
'    });
'
'}
'#end if