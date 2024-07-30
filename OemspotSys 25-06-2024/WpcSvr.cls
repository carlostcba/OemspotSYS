VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "WpcSvr"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Dim Mi_mdlDAO As MdlDAO
Dim Mi_mdlORM As MdlORM
Dim Mi_pdtmdlORM As PdtMdlORM
Dim Mi_pdtidnDAO As PdtIdnDAO
Dim Mi_pdtidnQRY As PdtIdnQRY
Dim Mi_Protocolo As ProtocoloSVR
Dim mi_tck As TckSVR
 


Private Const NoInmediato As Integer = 0
Private Const Inmediato As Integer = 1


Private Sub Class_Initialize()
  Set Mi_mdlORM = New MdlORM
  Set Mi_mdlDAO = New MdlDAO
  Set Mi_pdtmdlORM = New PdtMdlORM
  Set Mi_Protocolo = New ProtocoloSVR
End Sub

Private Sub Class_Terminate()
  Set Mi_mdlDAO = Nothing
  Set Mi_mdlORM = Nothing
  Set Mi_pdtmdlORM = Nothing
  Set Mi_pdtidnQRY = Nothing
  Set Mi_Protocolo = Nothing
End Sub

Public Function SubirPermisoModulo(ByRef Adocnx As ADODB.Connection, _
                                   ByVal ModuloID_ As Long, _
                                   ByVal Numero_ As String, _
                                   ByVal Descripcion_ As String, _
                                   ByVal PerfilID_ As String) As Boolean
Dim Comando_ As String
On Error GoTo Salir
  
  Set Mi_mdlDAO = Mi_mdlORM.obtenerModulo(ModuloID_)
  
  Comando_ = Mi_Protocolo.Up_Trj(Mi_mdlDAO.Address, Numero_, Descripcion_, PerfilID_)
  If Mi_pdtmdlORM.crearComandoPendinteModulo(ModuloID_, Comando_, NoInmediato, mi_tck.TicketID) > 0 Then
    SubirPermisoModulo = True
  End If
  

Salir:
End Function

Public Function BajarPermisosdeModulo(ByRef Adocnx As ADODB.Connection, _
                                      ByVal ModuloID_ As Long, _
                                      ByVal TicketID_ As String) As Boolean
Dim Comando_ As String
On Error GoTo Salir
  
  Set Mi_mdlDAO = Mi_mdlORM.obtenerModulo(ModuloID_)
  
  Comando_ = Mi_Protocolo.Down_Trj_Lote(Mi_mdlDAO.Address)
  
  If Mi_pdtmdlORM.crearComandoPendinteModulo(ModuloID_, Comando_, NoInmediato, TicketID_) > 0 Then
    BajarPermisosdeModulo = True
  End If
  
Salir:
End Function

Public Function BorrarPermisosdeModulo(ByRef Adocnx As ADODB.Connection, _
                                       ByVal ModuloID_ As Long, _
                                       ByVal TicketID_ As String) As Boolean
Dim Comando_ As String
On Error GoTo Salir
  
  Set Mi_mdlDAO = Mi_mdlORM.obtenerModulo(ModuloID_)
  
  Comando_ = Mi_Protocolo.Borra_Trj_Total(Mi_mdlDAO.Address)
  
  If Mi_pdtmdlORM.crearComandoPendinteModulo(ModuloID_, Comando_, NoInmediato, TicketID_) > 0 Then
    BorrarPermisosdeModulo = True
  End If
  
Salir:
End Function


Public Function SubirPerfilModulo(ByRef Adocnx As ADODB.Connection, _
                                  ByVal ModuloID_ As Long, _
                                  ByVal PerfilID_ As String, _
                                  ByVal dia_ As String, _
                                  ByVal desde_ As Integer, _
                                  ByVal hasta_ As Integer, _
                                  ByVal TicketID_ As String) As Boolean
Dim Comando_ As String
On Error GoTo Salir
  
  Set Mi_mdlDAO = Mi_mdlORM.obtenerModulo(ModuloID_)
  
  Comando_ = Mi_Protocolo.Up_Perfil(Mi_mdlDAO.Address, PerfilID_, dia_, desde_, hasta_)
  If Mi_pdtmdlORM.crearComandoPendinteModulo(ModuloID_, Comando_, NoInmediato, TicketID_) > 0 Then
    SubirPerfilModulo = True
  End If
  

Salir:
End Function


Public Function EnviarAperturaModulo(ByRef Adocnx As ADODB.Connection, _
                                     ByVal ModuloID_ As Long, _
                                     ByVal TicketID_ As String) As Boolean
Dim Comando_ As String
Dim rec As ADODB.RecordSet
Dim tipo As Integer
Dim duracion As Long



On Error GoTo Salir
  
  Set Mi_mdlDAO = Mi_mdlORM.obtenerModulo(ModuloID_)
     
     
     
  'afa 07/2009 busco tipo de dispositivo para armar la secuencia diferenciada
  Set rec = Adocnx.Execute("SELECT * FROM mdlcatval where categoriaid=15 and moduloid=" & ModuloID_ & ";")
  
  If Not rec.EOF Then
    tipo = rec!ValorID
  End If

  duracion = Mi_mdlDAO.Duracion_pulso
  
  
  Comando_ = Mi_Protocolo.Comienzo_Secuencia(Mi_mdlDAO.Address, tipo, duracion)
  
  If Mi_pdtmdlORM.crearComandoPendinteModulo(ModuloID_, Comando_, Inmediato, TicketID_) > 0 Then
    EnviarAperturaModulo = True
  End If
  
  Exit Function
Salir:
    MsgBox "ERROR AL ENVIAR COMANDO A MODULO -- " & Err.Description
End Function


Public Function EnviarImpresionTicketModulo(ByRef Adocnx As ADODB.Connection, _
                                    ByVal ModuloID_ As Long, _
                                    ByVal TicketID_ As String) As Boolean
Dim Comando_ As String

On Error GoTo Salir
  
  Set Mi_mdlDAO = Mi_mdlORM.obtenerModulo(ModuloID_)
  
  Comando_ = Mi_Protocolo.Imprimir_Tiket(Mi_mdlDAO.Address)
  
  If Mi_pdtmdlORM.crearComandoPendinteModulo(ModuloID_, Comando_, Inmediato, TicketID_) > 0 Then
    EnviarImpresionTicketModulo = True
  End If
  
Salir:
End Function

Public Function Eliminar_Comando_Pendiente(ByRef Adocnx As ADODB.Connection, _
                                           ByVal ModuloID_ As Long) As Boolean
Dim comando As ADODB.Command
On Error GoTo Salir
  
  Set comando = New ADODB.Command
  comando.ActiveConnection = Adocnx
  comando.CommandText = "Delete from pdtmdl where moduloid = " & ModuloID_
  comando.Execute
  Eliminar_Comando_Pendiente = True
  
Salir:
 Set comando = Nothing
 
End Function


Public Function EnviarCierreModulo(ByRef Adocnx As ADODB.Connection, _
                                   ByVal ModuloID_ As Long, _
                                   ByVal TicketID_ As String) As Boolean
Dim Comando_ As String
On Error GoTo Salir
  
  Set Mi_mdlDAO = Mi_mdlORM.obtenerModulo(ModuloID_)
  
  Comando_ = Mi_Protocolo.Terminar_Secuencia(Mi_mdlDAO.Address)
  
  If Mi_pdtmdlORM.crearComandoPendinteModulo(ModuloID_, Comando_, Inmediato, TicketID_) > 0 Then
    EnviarCierreModulo = True
  End If
  
Salir:
End Function


Public Function EnviarResetModulo(ByRef Adocnx As ADODB.Connection, _
                                  ByVal ModuloID_ As Long, _
                                  ByVal TicketID_ As String) As Boolean
Dim Comando_ As String
On Error GoTo Salir
  
  Set Mi_mdlDAO = Mi_mdlORM.obtenerModulo(ModuloID_)
  
  Comando_ = Mi_Protocolo.Reset9(Mi_mdlDAO.Address)
  
  If Mi_pdtmdlORM.crearComandoPendinteModulo(ModuloID_, Comando_, Inmediato, TicketID_) > 0 Then
    EnviarResetModulo = True
  End If
  
Salir:
End Function



