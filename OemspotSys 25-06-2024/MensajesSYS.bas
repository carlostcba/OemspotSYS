Attribute VB_Name = "MensajesSYS"

Option Explicit
Public Const Inicio_log As Integer = 0
Public Const Fin_log As Integer = 1
Public Const Texto_log As Integer = 2
Public Const Directorio_Log As String = ""
Public Archivo_ As Integer

Public Sub Mensajes_Sistema(ByRef a_Ventana As Boolean, _
                            ByRef a_Archivo_txt As Boolean, _
                            ByRef mensaje_ As String, _
                            ByRef Parametros_Ventana As Integer)
Dim Texto As String

On Error Resume Next

  If a_Ventana Or a_Archivo_txt Then
    Texto = mensaje_ & Chr(13) & Chr(10)
    
    If a_Ventana Then
      MsgBox Texto, Parametros_Ventana
    End If
    
    If a_Archivo_txt Then
      Call Escribir_Log_txt(Texto_log, Texto)
    End If
  End If

  
End Sub

'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'
'                                COMANDOS ARCHIVO TEXTO
'
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


Public Sub Escribir_Log_txt(ByRef Mensaje As Integer, ByRef Texto_Mensaje As String)
On Error GoTo Error_Log
Dim Nombre_Archivo As String

  Nombre_Archivo = "VIDEOMAN" & Format(Date, "YYYYMM") & ".log"

  If Directorio_Log <> "" Then
    If Not Abrir_Archivo_Texto(Directorio_Log & "\" & Nombre_Archivo) Then
      If Not Abrir_Archivo_Texto(App.Path & "\" & Nombre_Archivo) Then
        Exit Sub
      End If
    End If
  Else
    If Not Abrir_Archivo_Texto(App.Path & "\" & Nombre_Archivo) Then
      Exit Sub
    End If
  End If
  
  Select Case Mensaje
    Case Inicio_log
      Call Escribir_Linea_Archivo(Format(Date + Time, "DD/mm/yyyy HH:mm:ss") & "  INCIO            WPC")
    Case Fin_log
      Call Escribir_Linea_Archivo(Format(Date + Time, "DD/mm/yyyy HH:mm:ss") & "  FINALIZACION     WPC")
    Case Texto_log
      Call Escribir_Linea_Archivo(Format(Date + Time, "DD/mm/yyyy HH:mm:ss") & "  " & Texto_Mensaje)
  End Select
  
  Cerrar_Archivo_Texto
  

Exit Sub
Error_Log:

End Sub

Private Function Abrir_Archivo_Texto(ByRef Archivo_A_Procesar As String) As Boolean
On Error GoTo No_Enocontro_Archivo
   
  Archivo_ = FreeFile
  Open Archivo_A_Procesar For Append As #Archivo_
  Abrir_Archivo_Texto = True
  
Exit Function
No_Enocontro_Archivo:
End Function
 

Private Function Escribir_Linea_Archivo(ByRef Linea_Archivo As String) As Boolean
Dim Linea_A_Procesar As String

On Error GoTo Linea_Vacia
  
  Print #Archivo_, Linea_Archivo
  Escribir_Linea_Archivo = True
   
  
Exit Function
Linea_Vacia:
'MsgBox Err.Description
End Function


Private Sub Cerrar_Archivo_Texto()
On Error Resume Next
  
  Close #Archivo_
  
End Sub


'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'
'                             FIN COMANDOS ARCHIVO TEXTO
'
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

