Attribute VB_Name = "Mdlshell"
'-----------------------------------------------------------
' NAME         : CShellExecute
' TYPE         : CLASS
' PROJECT      : -
' AUTHOR       : -
' DESCRIPTION  : KB Visual Basic:
' HOWTO: Use ShellExecute to Launch Associated File (32-bit)
' ShellExecute() starts the application associated with a
' given document extension, without knowing the name of the
' associated application.
'-----------------------------------------------------------

Option Explicit

Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" ( _
                 ByVal hwnd As Long, _
                 ByVal lpOperation As String, _
                 ByVal lpFile As String, _
                 ByVal lpParameters As String, _
                 ByVal lpDirectory As String, _
                 ByVal nShowCmd As Long) As Long

Public Const conSwNormal = 1

Private Declare Function GetDesktopWindow Lib "user32" () As Long
Private Const SW_SHOWNORMAL          As Long = 1
Private Const SE_ERR_FNF             As Long = 2
Private Const SE_ERR_PNF             As Long = 3
Private Const SE_ERR_ACCESSDENIED    As Long = 5
Private Const SE_ERR_OOM             As Long = 8
Private Const SE_ERR_DLLNOTFOUND     As Long = 32
Private Const SE_ERR_SHARE           As Long = 26
Private Const SE_ERR_ASSOCINCOMPLETE As Long = 27
Private Const SE_ERR_DDETIMEOUT      As Long = 28
Private Const SE_ERR_DDEFAIL         As Long = 29
Private Const SE_ERR_DDEBUSY         As Long = 30
Private Const SE_ERR_NOASSOC         As Long = 31
Private Const ERROR_BAD_FORMAT       As Long = 11


Public Function StartDoc(ByRef Document As String, ByRef Directorio As String, _
                    Optional ShowError As Boolean = False) As Boolean

Dim Scr_hDC As Long
Dim rtn  As Long
    
 On Error GoTo Salir
    Scr_hDC = GetDesktopWindow()
    rtn = ShellExecute(Scr_hDC, "OPEN", Document, "", Directorio, SW_SHOWNORMAL)
    If ShowError Then
       ShowErrorMessage rtn
    Else
      StartDoc = True
    End If
Salir:
End Function


Private Sub ShowErrorMessage(r As Long)
Dim s As String
    
    If r <= 32 Then 'There was an error
      Select Case r
        Case SE_ERR_FNF
          s = "Archivo no encontrado" '"File not found"
        Case SE_ERR_PNF
          s = "Ruta no encontrada" '"Path not found"
        Case SE_ERR_ACCESSDENIED
          s = "Acceso Negado" '"Access denied"
        Case SE_ERR_OOM
          s = "Fuera de Memoria" '"Out of memory"
        Case SE_ERR_DLLNOTFOUND
          s = "Dll no encontrada" '"DLL not found"
        Case SE_ERR_SHARE
          s = "Violacion de Vinculacion" '"A sharing violation occurred"
        Case SE_ERR_ASSOCINCOMPLETE
          s = "Error de vinculacion a archivo" '"Incomplete or invalid file association"
        Case SE_ERR_DDETIMEOUT
          s = "DDE Tiempo exedido" '"DDE Time out"
        Case SE_ERR_DDEFAIL
          s = "DDE fallo de transaccion" '"DDE transaction failed"
        Case SE_ERR_DDEBUSY
          s = "DDE Ocupada" '"DDE busy"
        Case SE_ERR_NOASSOC
          s = "Extension de Archivo no asociada" '"No association for file extension"
        Case ERROR_BAD_FORMAT
          s = "Invalido archivo exe" '"Invalid EXE file or error in EXE image"
        Case Else
          s = "Error desconocido" '"Unknown error"
      End Select
      MsgBox s, vbInformation
    End If

End Sub




