VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PlatformQRY"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public DbCommandQRY As ADODB.Command
Public DbRecordsetQRY As ADODB.RecordSet

Private Sub Class_Initialize()
    Set DbCommandQRY = New ADODB.Command
    Set DbRecordsetQRY = New ADODB.RecordSet
    
    'afa 07/2009 para poder detectar la desonexiones de la base y no dar error
    On Error Resume Next
    
    
    DbCommandQRY.ActiveConnection = DbConnectionSYS
    
End Sub

Private Sub Class_Terminate()
    Set DbCommandQRY = Nothing
    Set DbRecordsetQRY = Nothing
End Sub

Public Function getValoresCategoria(CategoriaID As Long) As Boolean
    
    
    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
    
    Dim sql As String

    sql = "SELECT CatVal.ValorID AS 'ID', CatVal.Nombre AS 'Nombre' FROM CatVal WHERE CatVal.CategoriaID = " & CategoriaID & " ORDER BY CatVal.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getValoresCategoria = False
    Else
        getValoresCategoria = True
    End If
End Function

Public Function getValoresEstado(EstadoID As Long) As Boolean

    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
    Dim sql As String

    sql = "SELECT EstVal.ValorID AS 'ID', EstVal.Nombre AS 'Nombre' FROM EstVal WHERE EstVal.EstadoID = " & EstadoID & " ORDER BY EstVal.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getValoresEstado = False
    Else
        getValoresEstado = True
    End If
End Function
