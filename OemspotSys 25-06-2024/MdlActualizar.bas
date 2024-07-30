Attribute VB_Name = "MdlActualizar"
Option Explicit

Public Const nombre_aplicacion As String = "OemspotSys.exe"
Public Const nombre_viejo As String = "OemspotSys.OLD"
Public Const nombre_actualizacion As String = "UPDATE.VIDEOMAN"



Public Function Actualizar() As Boolean
On Error GoTo Salir
  
  
  Call Borrar_Previo(App.Path & "\" & nombre_viejo)
  If Cambiar_Nombre(App.Path & "\" & nombre_aplicacion, App.Path & "\" & nombre_viejo) Then
    If Cambiar_Nombre(App.Path & "\" & nombre_actualizacion, App.Path & "\" & nombre_aplicacion) Then
        Actualizar = True
    End If
  End If
  
Exit Function
Salir:
End Function



Function Cambiar_Nombre(ByRef anterior As String, ByRef nuevo As String) As Boolean
On Error GoTo Salir
 
 Name anterior As nuevo
 Cambiar_Nombre = True
 
Salir:
End Function

Function Borrar_Previo(ByRef archivo) As Boolean
On Error GoTo Salir
  Kill archivo
Salir:
End Function



