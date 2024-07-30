VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "TckSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Option Explicit

Private mvarTicketID As Currency
Private mvarnumero As Currency
Private mvarFechaHoraIngreso As Date
Private mvarModuloIngresoID As Long
Private mvarDestinoVisita As String
Private mvarModuloSalidaID As Long
Private mvarFechaHoraSalida As Date

Public Property Let FechaHoraSalida(ByVal vData As Date)
    mvarFechaHoraSalida = vData
End Property

Public Property Get FechaHoraSalida() As Date
    FechaHoraSalida = mvarFechaHoraSalida
End Property


Public Property Let ModuloSalidaID(ByVal vData As Long)
    mvarModuloSalidaID = vData
End Property


Public Property Get ModuloSalidaID() As Long
    ModuloSalidaID = mvarModuloSalidaID
End Property


Public Property Let DestinoVisita(ByVal vData As String)
    mvarDestinoVisita = vData
End Property


Public Property Get DestinoVisita() As String
    DestinoVisita = mvarDestinoVisita
End Property


Public Property Let ModuloIngresoID(ByVal vData As Long)
    mvarModuloIngresoID = vData
End Property


Public Property Get ModuloIngresoID() As Long
    ModuloIngresoID = mvarModuloIngresoID
End Property


Public Property Let FechaHoraIngreso(ByVal vData As Date)
    mvarFechaHoraIngreso = vData
End Property


Public Property Get FechaHoraIngreso() As Date
    FechaHoraIngreso = mvarFechaHoraIngreso
End Property


Public Property Let Numero(ByVal vData As Currency)
    mvarnumero = vData
End Property


Public Property Get Numero() As Currency
    Numero = mvarnumero
End Property


Public Property Let TicketID(ByVal vData As Currency)
    mvarTicketID = vData
End Property


Public Property Get TicketID() As Currency
    TicketID = mvarTicketID
End Property


Public Function Crear_Movimiento_Tck(ByRef Cnx As ADODB.Connection, _
                                     ByRef Tck_ As TckSVR) As Boolean
Dim Cmd As ADODB.Command
Dim i As Integer
On Error GoTo Mensaje_Error

Repetir:

  Tck_.TicketID = new_id_mvt_tck((Tck_.FechaHoraIngreso))
  i = i + 1
 
  Set Cmd = New ADODB.Command
  Cmd.ActiveConnection = Cnx
  Cmd.CommandText = _
  "INSERT INTO tck (TicketID, Numero, FechaHoraIngreso, ModuloIngresoID)" & _
  " VALUES (" & Tck_.TicketID & ", " & Tck_.Numero & ",'" & FF(Tck_.FechaHoraIngreso) & "', " & Tck_.ModuloIngresoID & ")"

  Cmd.Execute

  Set Cmd = Nothing
  Crear_Movimiento_Tck = True

Exit Function
Mensaje_Error:
  'MsgBox Err.Description
  If i < 5 Then
    GoTo Repetir
  Else
    Crear_Movimiento_Tck = False
    Exit Function
  End If
Exit Function
Salir:
End Function

Public Function AgregarTicket_Movimiento_Tck(ByRef Cnx As ADODB.Connection, _
                                             ByRef Tck_ As TckSVR) As Boolean
Dim Cmd As ADODB.Command
Dim i As Integer
On Error GoTo Mensaje_Error

Repetir:

  Tck_.TicketID = new_id_mvt_tck((Tck_.FechaHoraIngreso))
 
  Set Cmd = New ADODB.Command
  Cmd.ActiveConnection = Cnx
  Cmd.CommandText = _
  "UPDATE tck SET Numero=" & Tck_.Numero & " WHERE TicketID = " & Tck_.TicketID

  Cmd.Execute

  Set Cmd = Nothing
  AgregarTicket_Movimiento_Tck = True

Exit Function
Mensaje_Error:
  'MsgBox Err.Description
  If i < 5 Then
    GoTo Repetir
  Else
    Exit Function
  End If
Exit Function
Salir:
End Function


Public Function Crear_Movimiento_TckHst(ByRef Cnx As ADODB.Connection, _
                                      ByRef Tck_ As TckSVR) As Boolean
Dim Cmd As ADODB.Command
Dim i As Integer
On Error GoTo Mensaje_Error

Repetir:

  Set Cmd = New ADODB.Command
  Cmd.ActiveConnection = Cnx
  Cmd.CommandText = _
  "INSERT INTO tckhst (TicketID, Numero, FechaHoraIngreso, ModuloIngresoID, FechaHoraSalida , ModuloSalidaID)" & _
  " VALUES (" & Tck_.TicketID & ", " & Tck_.Numero & ",'" & FF(Tck_.FechaHoraIngreso) & "', " & Tck_.ModuloIngresoID & ",'" & FF(Tck_.FechaHoraSalida) & "', " & Tck_.ModuloSalidaID & ")"

  Cmd.Execute

  Set Cmd = Nothing
  Crear_Movimiento_TckHst = True

Exit Function
Mensaje_Error:
  'MsgBox Err.Description
  If i < 5 Then
    GoTo Repetir
  Else
    Exit Function
  End If
Exit Function
Salir:
End Function

Public Function Borrar_Movimiento_Tck(ByRef Cnx As ADODB.Connection, _
                                       ByRef TicketID_ As Currency) As Boolean
Dim Cmd As ADODB.Command
On Error GoTo Salir

  Set Cmd = New ADODB.Command
  Cmd.ActiveConnection = Cnx
  Cmd.CommandText = _
  "DELETE FROM tck WHERE TicketID = " & TicketID_

  Cmd.Execute
  Borrar_Movimiento_Tck = True

Salir:
  Set Cmd = Nothing
End Function

Public Function Borrar_Movimiento_Tck_Per(ByRef Cnx As ADODB.Connection, _
                                       ByRef TicketID_ As Currency) As Boolean
Dim Cmd As ADODB.Command
On Error GoTo Salir

  Set Cmd = New ADODB.Command
  Cmd.ActiveConnection = Cnx
  Cmd.CommandText = _
  "DELETE FROM tckper WHERE TicketID = " & TicketID_

  Cmd.Execute
  Borrar_Movimiento_Tck_Per = True

Salir:
  Set Cmd = Nothing
End Function


Public Function Borrar_Movimiento_Tck_Prx(ByRef Cnx As ADODB.Connection, _
                                       ByRef TicketID_ As Currency) As Boolean
Dim Cmd As ADODB.Command
On Error GoTo Salir

  Set Cmd = New ADODB.Command
  Cmd.ActiveConnection = Cnx
  Cmd.CommandText = _
  "DELETE FROM tckprx WHERE TicketID = " & TicketID_

  Cmd.Execute
  Borrar_Movimiento_Tck_Prx = True

Salir:
  Set Cmd = Nothing
End Function



Public Function ExisteTicketIngreso_SinNumero(ByRef Cnx As ADODB.Connection, _
                                              ByRef ModuloID_ As Currency) As Boolean
Dim Cmd As ADODB.Command
Dim Rst As ADODB.RecordSet
On Error GoTo Salir

  Set Cmd = New ADODB.Command
  Cmd.ActiveConnection = Cnx
  Cmd.CommandText = _
  "SELECT * FROM tck WHERE ModuloIngresoID= " & ModuloID_ & _
  " AND Numero = 0"
  

  Set Rst = Cmd.Execute
 
  mvarFechaHoraIngreso = Rst!FechaHoraIngreso
  mvarModuloIngresoID = Rst!ModuloIngresoID
  mvarTicketID = Rst!TicketID
  
  Rst.Close
  
  ExisteTicketIngreso_SinNumero = True
  
Salir:
  
  Set Cmd = Nothing
  Set Rst = Nothing
End Function


Public Function ExisteTicketIngreso(ByRef Cnx As ADODB.Connection, _
                                    ByRef Numero_ As Currency) As Boolean
Dim Cmd As ADODB.Command
Dim Rst As ADODB.RecordSet
On Error GoTo Salir

  Set Cmd = New ADODB.Command
  Cmd.ActiveConnection = Cnx
  Cmd.CommandText = _
  "SELECT * FROM tck WHERE Numero= " & Numero_ & _
  " ORDER BY FechaHoraIngreso Desc LIMIT 1"
  

  Set Rst = Cmd.Execute
  mvarnumero = Numero_
  mvarFechaHoraIngreso = Rst!FechaHoraIngreso
  mvarModuloIngresoID = Rst!ModuloIngresoID
  mvarTicketID = Rst!TicketID
  
  ExisteTicketIngreso = True
  
Salir:
  Rst.Close
  Set Cmd = Nothing
  Set Rst = Nothing
End Function

Public Function TraerTicketIngreso(ByRef Cnx As ADODB.Connection, _
                                   ByRef TicketID_ As Currency) As Boolean
Dim Cmd As ADODB.Command
Dim Rst As ADODB.RecordSet
On Error GoTo Salir

  Set Cmd = New ADODB.Command
  Cmd.ActiveConnection = Cnx
  Cmd.CommandText = _
  "SELECT top 1 * FROM tck WHERE ticketID= " & TicketID_ & _
  " ORDER BY FechaHoraIngreso Desc "
  

  Set Rst = Cmd.Execute
  mvarnumero = Rst!Numero
  mvarFechaHoraIngreso = Rst!FechaHoraIngreso
  mvarModuloIngresoID = Rst!ModuloIngresoID
  mvarTicketID = Rst!TicketID
  
  
  TraerTicketIngreso = True
  
Salir:
  'Resume 0
  Rst.Close
  Set Cmd = Nothing
  Set Rst = Nothing
End Function



Private Function new_id_mvt_tck(ByVal Fecha As Date) As Currency
Dim myTime As SYSTEMTIME
Dim a As Long
Dim E As Long
Dim i As Long
Dim o As Long

On Error GoTo Errores
  'cantidad de dias despues de 1/06/2007 * 100000000
  'los ultimos 8 digitos son los milisengundos del dia.

  GetSystemTime myTime
  a = myTime.wHour
  E = myTime.wMinute
  i = myTime.wSecond
  o = myTime.wMilliseconds
  new_id_mvt_tck = (DateDiff("d", CDate("2007/06/01"), Fecha) * 100000000) + _
               (a * 3600000) + _
               (E * 60000) + _
               (i * 1000) + _
               (o)
Exit Function
Errores:
 new_id_mvt_tck = -1
  'MsgBox Err.Description
End Function



Public Function Lista_Ticket_Propiedades_Extendidas(ByRef Cnx As ADODB.Connection, _
                                                    ByRef Rst As ADODB.RecordSet, _
                                                    ByVal TicketID_ As Currency) As Boolean
On Error GoTo Salir
  Set Rst = New ADODB.RecordSet
  
  Rst.Open " SELECT propiedadid, valor  " & _
           " FROM tckprx " & _
           " WHERE ticketID = " & TicketID_ & _
           " ORDER BY propiedadid ", Cnx, adOpenForwardOnly, adLockReadOnly
  
  Lista_Ticket_Propiedades_Extendidas = Not Rst.EOF
  
Salir:
 
End Function

