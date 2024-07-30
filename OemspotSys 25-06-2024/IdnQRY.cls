VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IdnQRY"
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

Public Function getAdminIdentificacionsList(busqueda() As String, NroPagina As Long) As Boolean
Dim i As Integer
Dim t As Integer
Dim filtro As String
Dim sql As String
Dim buscar_string As String
    
    
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function


     
    t = UtilitySYS.getArrayLength(busqueda)
    
    buscar_string = ""
    
    For i = 0 To t
      If Not IsNumeric((busqueda(i))) Then   ' solo si busco string hago un inner join, porque si lo hago siempre no me trae las trj sin asignar!!
          buscar_string = " INNER JOIN peridn ON idn.identificacionid = peridn.identificacionID  " & _
          "INNER JOIN per  ON peridn.PersonaID = per.PersonaID "
            If filtro = "" Then
              filtro = " AND (" & _
                " per.Nombre  LIKE '%" & busqueda(i) & "%' OR " & _
                " per.Apellido  LIKE '%" & busqueda(i) & "%' OR " & _
                " Idn.Numero LIKE '%" & busqueda(i) & "%' )"
            Else
              filtro = filtro & " AND (" & _
                " per.Nombre  LIKE '%" & busqueda(i) & "%' OR " & _
                " per.Apellido  LIKE '%" & busqueda(i) & "%' OR " & _
                " Idn.Numero LIKE '%" & busqueda(i) & "%' )"
            End If
      Else ' es un numero no debe buscarlo en el nombre o apellido
            If filtro = "" Then
                  ''filtro = " and ( Idn.Numero LIKE '%" & busqueda(i) & "%' )"
                  filtro = " where ( Idn.Numero LIKE '%" & busqueda(i) & "%' )"
            Else
                  filtro = filtro & " AND ( Idn.Numero LIKE '%" & busqueda(i) & "%' )"
            End If
      End If
      
      
    Next

 
'    sql = "SELECT Idn.IdentificacionID AS 'IdentificacionID', Idn.Numero AS 'Número', CONCAT(per.Nombre,' ', per.Apellido) AS 'Nombre Apellido', " & _
'          "(SELECT a.Nombre FROM IdnCatVal INNER JOIN CatVal a ON(IdnCatVal.CategoriaID=a.CategoriaID AND IdnCatVal.ValorID=a.ValorID) " & _
'              " WHERE IdnCatVal.IdentificacionID = Idn.IdentificacionID AND a.CategoriaID = " & CAT_UNIDAD_IDENTIFICACION & ") AS 'Tipo de Unidad de Identificación', " & _
'          "(SELECT a.Nombre FROM IdnCatVal INNER JOIN CatVal a ON(IdnCatVal.CategoriaID=a.CategoriaID AND IdnCatVal.ValorID=a.ValorID) " & _
'              " WHERE IdnCatVal.IdentificacionID = Idn.IdentificacionID AND a.CategoriaID = " & CAT_IDENTIFICACION & ") AS 'Tipo de Identificación', " & _
'          "(SELECT 'SI' FROM  idnpnc WHERE identificacionID = idn.identificacionID)as 'pánico' " & _
'          "FROM Idn INNER JOIN peridn ON idn.identificacionid = peridn.identificacionID  " & _
'          "INNER JOIN per  ON peridn.PersonaID = per.PersonaID" & filtro & _
'          " ORDER BY Idn.Numero LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS

sql = "SELECT Idn.IdentificacionID AS 'IdentificacionID', Idn.Numero AS 'Número', " & _
          " (select (per.Nombre + ' ' + per.Apellido)   " & _
              " From peridn  INNER JOIN per  ON peridn.PersonaID = per.PersonaID " & _
              " WHERE peridn.IdentificacionID = Idn.IdentificacionID) AS 'Nombre Apellido', " & _
          " (SELECT a.Nombre FROM IdnCatVal INNER JOIN CatVal a " & _
              " ON(IdnCatVal.CategoriaID=a.CategoriaID AND IdnCatVal.ValorID=a.ValorID) " & _
              " WHERE IdnCatVal.IdentificacionID = Idn.IdentificacionID AND a.CategoriaID = " & CAT_IDENTIFICACION & ") AS 'Tipo de Identificación', " & _
          " (SELECT 'SI' FROM  idnpnc WHERE identificacionID = idn.identificacionID)as 'pánico' "
          
          sql = sql & " FROM Idn  Inner Join (SELECT Idn.Numero , ROW_NUMBER() OVER(order by Idn.Numero) AS RowNumber1 From idn) as RowNumber on RowNumber.Numero = idn.Numero "
          sql = sql & buscar_string
          If filtro = "" Then
            sql = sql & " Where RowNumber.RowNumber1 BETWEEN " & NroPagina & " AND " & (MAX_GRID_ROWS_SIZE_SYS + NroPagina)
          Else
            sql = sql & filtro
          End If
          
          sql = sql & " ORDER BY Idn.Numero"
          '''''''''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS



    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminIdentificacionsList = False
    Else
        getAdminIdentificacionsList = True
    End If
End Function

Public Function getCantidadItems(busqueda() As String) As Boolean
Dim i As Integer
Dim t As Integer
Dim filtro As String
Dim sql As String
Dim buscar_string As String
On Error GoTo Salir
    
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

 
    t = UtilitySYS.getArrayLength(busqueda)
    
    buscar_string = ""
    
    For i = 0 To t
      
      If Not IsNumeric(busqueda(i)) Then ' solo si busco string hago un inner join, porque si lo hago siempre no me trae las trj sin asignar!!
          buscar_string = " INNER JOIN peridn ON idn.identificacionid = peridn.identificacionID  " & _
          "INNER JOIN per  ON peridn.PersonaID = per.PersonaID "
            If filtro = "" Then
                filtro = " WHERE (" & _
                  " per.Nombre  LIKE '%" & busqueda(i) & "%' OR " & _
                  " per.Apellido  LIKE '%" & busqueda(i) & "%' OR " & _
                  " Idn.Numero LIKE '%" & busqueda(i) & "%' )"
              Else
                filtro = filtro & " AND (" & _
                  " per.Nombre  LIKE '%" & busqueda(i) & "%' OR " & _
                  " per.Apellido  LIKE '%" & busqueda(i) & "%' OR " & _
                  " Idn.Numero LIKE '%" & busqueda(i) & "%' )"
              End If
        Else ' es un numero no debe buscarlo en el nombre o apellido
              If filtro = "" Then
                    filtro = " WHERE ( Idn.Numero LIKE '%" & busqueda(i) & "%' )"
              Else
                    filtro = filtro & " AND ( Idn.Numero LIKE '%" & busqueda(i) & "%' )"
              End If
        End If
    Next

    sql = "select count(*) from  idn  " & buscar_string & filtro

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    getCantidadItems = Not DbRecordsetQRY.BOF
    
Salir:
End Function

Public Function IdentificacionYaAsignada(IdentificacionID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PerIdn.PersonaID FROM PerIdn WHERE PerIdn.IdentificacionID = " & IdentificacionID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        IdentificacionYaAsignada = False
    Else
        IdentificacionYaAsignada = True
    End If
End Function

Public Function ExisteIdentificacion_Numero_Tipo(Numero_ As String, ValorID_ As Long) As Boolean
Dim sql As String
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

  

    sql = "SELECT idn.identificacionid FROM idn INNER JOIN idncatval ON idn.identificacionid = idncatval.identificacionid " & _
          "AND idncatval.categoriaid = 3 " & _
          "WHERE idn.Numero = '" & Numero_ & _
          "' AND idncatval.Valorid = " & ValorID_


    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If Not DbRecordsetQRY.BOF Then
        ExisteIdentificacion_Numero_Tipo = True
    End If
    
Salir:
End Function


Public Function obtenerIdnValoresImprimibles(IdentificacionID As Long) As Boolean
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT idn.numero, peridn.personaid, per.apellido, per.nombre, " & _
            "       (select perdoccatval.documento from perdoccatval " & _
            "        where perdoccatval.PersonaID = peridn.PersonaID AND " & _
            "         perdoccatval.categoriaid = 25 AND " & _
            "         perdoccatval.valorid = 1)as 'socio'  " & _
            "FROM idn inner join peridn on idn.identificacionID = peridn.identificacionID " & _
            "INNER JOIN per on peridn.personaID = per.personaid " & _
            "WHERE idn.IdentificacionID = " & IdentificacionID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    obtenerIdnValoresImprimibles = Not DbRecordsetQRY.BOF
    
Salir:
End Function



Public Function obtenerIdnCatVal(IdentificacionID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT IdnCatVal.ValorID FROM IdnCatVal WHERE IdnCatVal.IdentificacionID = " & IdentificacionID & " AND IdnCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerIdnCatVal = False
    Else
        obtenerIdnCatVal = True
    End If
End Function

Public Function obtenerIdnEstVal(IdentificacionID As Long, EstadoID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT IdnEstVal.ValorID FROM IdnEstVal WHERE IdnEstVal.IdentificacionID = " & IdentificacionID & " AND IdnEstVal.EstadoID = " & EstadoID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerIdnEstVal = False
    Else
        obtenerIdnEstVal = True
    End If
End Function

Public Function eliminarIdnCat(IdentificacionID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "DELETE FROM IdnCatVal WHERE IdnCatVal.IdentificacionID = " & IdentificacionID & " AND IdnCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    eliminarIdnCat = True
End Function

Public Function eliminarIdnEst(IdentificacionID As Long, EstadoID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "DELETE FROM IdnEstVal WHERE IdnEstVal.IdentificacionID = " & IdentificacionID & " AND IdnEstVal.EstadoID = " & EstadoID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    eliminarIdnEst = True
End Function
