VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IdnPncQRY"
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
        On Error Resume Next
    DbCommandQRY.ActiveConnection = DbConnectionSYS

End Sub

Private Sub Class_Terminate()
    Set DbCommandQRY = Nothing
    Set DbRecordsetQRY = Nothing
End Sub

Public Function getListaIdentificacionesPanico(busqueda As String, NroPagina As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

sql = "SELECT IdnPnc.IdentificacionID AS 'IdentificacionID', Idn.Numero AS 'Número', " & _
          "(SELECT a.Nombre FROM IdnCatVal INNER JOIN CatVal a ON(IdnCatVal.CategoriaID=a.CategoriaID AND IdnCatVal.ValorID=a.ValorID) " & _
              " WHERE IdnCatVal.IdentificacionID = Idn.IdentificacionID AND a.CategoriaID = " & CAT_UNIDAD_IDENTIFICACION & ") AS 'Tipo de Unidad de Identificación', " & _
          "(SELECT a.Nombre FROM IdnCatVal INNER JOIN CatVal a ON(IdnCatVal.CategoriaID=a.CategoriaID AND IdnCatVal.ValorID=a.ValorID) " & _
              " WHERE IdnCatVal.IdentificacionID = Idn.IdentificacionID AND a.CategoriaID = " & CAT_IDENTIFICACION & ") AS 'Tipo de Identificación', " & _
          "(SELECT CONCAT(Nombre,' ', Apellido) FROM per INNER JOIN peridn ON per.PersonaID = peridn.PersonaID WHERE peridn.IdentificacionID=Idn.IdentificacionID ) AS 'Nombre Apellido' " & _
          "FROM Idn WHERE Idn.Numero LIKE '%" + busqueda + "%' ORDER BY Idn.Numero LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS



    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getListaIdentificacionesPanico = False
    Else
        getListaIdentificacionesPanico = True
    End If

End Function

