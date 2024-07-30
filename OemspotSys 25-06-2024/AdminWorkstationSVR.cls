VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminWorkstationSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public WorkstationOrm As WksORM
Public WorkstationQuery As WksQRY

Private Sub Class_Initialize()
    Set WorkstationOrm = New WksORM
    Set WorkstationQuery = New WksQRY
End Sub

Private Sub Class_Terminate()
    Set WorkstationOrm = Nothing
    Set WorkstationQuery = Nothing
End Sub

Function getList(busqueda As String) As Boolean
    If WorkstationQuery.getAdminWorkstationsList(busqueda) Then
        getList = True
    Else
        getList = False
    End If
End Function

Function getOpcionesList(ComputerName As String) As Boolean
    Dim WorkstationID As Long
    WorkstationQuery.getID ComputerName
    WorkstationID = WorkstationQuery.DbRecordsetQRY.Fields(0).value

    If WorkstationQuery.getOpciones(WorkstationID) Then
        getOpcionesList = True
    Else
        getOpcionesList = False
    End If
End Function
