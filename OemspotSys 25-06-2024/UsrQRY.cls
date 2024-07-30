VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "UsrQRY"
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

Public Function getAdminUsuariosList(busqueda As String, NroPagina As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    If UsuarioActivoSYS = USUARIO_ADMINISTRADOR_SYS Then
        sql = "SELECT Usr.UsuarioID AS 'ID', Usr.Nombre AS 'Usuario', CatVal.Nombre AS 'Perfil de Usuario' FROM (Usr LEFT JOIN UsrCatVal ON(Usr.UsuarioID=UsrCatVal.UsuarioID)) LEFT JOIN CatVal ON(UsrCatVal.CategoriaID=CatVal.CategoriaID AND UsrCatVal.ValorID=CatVal.ValorID) WHERE Usr.UsuarioID LIKE '%" + busqueda + "%' OR Usr.Nombre LIKE '%" + busqueda + "%' OR CatVal.Nombre LIKE '%" + busqueda + "%' ORDER BY Usr.Nombre, CatVal.Nombre "
        ''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
    Else
        sql = "SELECT Usr.UsuarioID AS 'ID', Usr.Nombre AS 'Usuario', CatVal.Nombre AS 'Perfil de Usuario' FROM (Usr LEFT JOIN UsrCatVal ON(Usr.UsuarioID=UsrCatVal.UsuarioID)) LEFT JOIN CatVal ON(UsrCatVal.CategoriaID=CatVal.CategoriaID AND UsrCatVal.ValorID=CatVal.ValorID) WHERE ( Usr.UsuarioID LIKE '%" + busqueda + "%' OR Usr.Nombre LIKE '%" + busqueda + "%' OR CatVal.Nombre LIKE '%" + busqueda + "%' ) AND Usr.UsuarioID <> " & USUARIO_ADMINISTRADOR_SYS & " ORDER BY Usr.Nombre, CatVal.Nombre "
        '''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
    End If
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminUsuariosList = False
    Else
        getAdminUsuariosList = True
    End If
End Function

Public Function getCantidadItems(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    If UsuarioActivoSYS = USUARIO_ADMINISTRADOR_SYS Then
        sql = "SELECT Count(*) FROM (Usr LEFT JOIN UsrCatVal ON(Usr.UsuarioID=UsrCatVal.UsuarioID)) LEFT JOIN CatVal ON(UsrCatVal.CategoriaID=CatVal.CategoriaID AND UsrCatVal.ValorID=CatVal.ValorID) WHERE Usr.UsuarioID LIKE '%" + busqueda + "%' OR Usr.Nombre LIKE '%" + busqueda + "%' OR CatVal.Nombre LIKE '%" + busqueda + "%' "
        If Not busqueda = "" Then
            sql = sql & "group by Usr.Nombre, CatVal.Nombre ORDER BY Usr.Nombre, CatVal.Nombre"
        End If
    Else
        sql = "SELECT Count(*) FROM (Usr LEFT JOIN UsrCatVal ON(Usr.UsuarioID=UsrCatVal.UsuarioID)) LEFT JOIN CatVal ON(UsrCatVal.CategoriaID=CatVal.CategoriaID AND UsrCatVal.ValorID=CatVal.ValorID) WHERE ( Usr.UsuarioID LIKE '%" + busqueda + "%' OR Usr.Nombre LIKE '%" + busqueda + "%' OR CatVal.Nombre LIKE '%" + busqueda + "%' ) AND Usr.UsuarioID <> " & USUARIO_ADMINISTRADOR_SYS & " group by Usr.Nombre, CatVal.Nombre "
        If Not busqueda = "" Then
            sql = sql & "group by Usr.Nombre, CatVal.Nombre ORDER BY Usr.Nombre, CatVal.Nombre"
        End If
    End If

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadItems = False
    Else
        getCantidadItems = True
    End If
End Function

Public Function authenticate(Nombre As String, Password As String) As Long
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Usr.UsuarioID, Usr.Nombre FROM (Usr INNER JOIN UsrEstVal ON(Usr.UsuarioID=UsrEstVal.UsuarioID)) WHERE UsrEstVal.EstadoID = " & EST_USUARIO & " AND UsrEstVal.ValorID = " & EST_VAL_USUARIO_HABILITADO & " AND Nombre='" & Nombre & "' AND Password = '" & Password & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        authenticate = 0
    Else
        NombreUsuarioActivoSYS = DbRecordsetQRY.Fields.Item(1).value
        authenticate = DbRecordsetQRY.Fields.Item(0).value
    End If
End Function

Public Function getPerfiles(UsuarioID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    If UsuarioID <> 0 Then
        sql = "SELECT CatVal.ValorID, CatVal.Nombre FROM (UsrCatVal INNER JOIN CatVal ON(UsrCatVal.CategoriaID=CatVal.CategoriaID AND UsrCatVal.ValorID=CatVal.ValorID)) WHERE UsrCatVal.CategoriaID = " & CAT_PERFIL_USUARIO & " AND UsrCatVal.UsuarioID = " & UsuarioID & " ORDER BY Nombre"
    Else
        sql = "SELECT ValorID, Nombre FROM CatVal WHERE CategoriaID = " & CAT_PERFIL_USUARIO & " ORDER BY Nombre"
    End If

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getPerfiles = False
    Else
        getPerfiles = True
    End If
End Function

Public Function obtenerUsrCatVal(UsuarioID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT UsrCatVal.ValorID FROM UsrCatVal WHERE UsrCatVal.UsuarioID = " & UsuarioID & " AND UsrCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerUsrCatVal = False
    Else
        obtenerUsrCatVal = True
    End If
End Function

Public Function obtenerUsrEstVal(UsuarioID As Long, EstadoID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT UsrEstVal.ValorID FROM UsrEstVal WHERE UsrEstVal.UsuarioID = " & UsuarioID & " AND UsrEstVal.EstadoID = " & EstadoID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerUsrEstVal = False
    Else
        obtenerUsrEstVal = True
    End If
End Function

Public Function eliminarUsrCat(UsuarioID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "DELETE FROM UsrCatVal WHERE UsrCatVal.UsuarioID = " & UsuarioID & " AND UsrCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    eliminarUsrCat = True
End Function

Public Function eliminarUsrEst(UsuarioID As Long, EstadoID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "DELETE FROM UsrEstVal WHERE UsrEstVal.UsuarioID = " & UsuarioID & " AND UsrEstVal.EstadoID = " & EstadoID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    eliminarUsrEst = True
End Function

Public Function obtenerCantidadUsuarios() As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT COUNT(*) FROM Usr"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerCantidadUsuarios = False
    Else
        obtenerCantidadUsuarios = True
    End If
End Function
