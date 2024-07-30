VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "LicQRY"
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

Public Function getLicencias() As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Lic.LicenciaID AS 'LicenciaID', Lic.Descripcion AS 'Descripción' FROM Lic ORDER BY Lic.Descripcion"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getLicencias = False
    Else
        getLicencias = True
    End If
End Function

Public Function getLicenciasDisponibles() As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Lic.LicenciaID AS 'LicenciaID', Lic.Descripcion AS 'Descripción' FROM Lic WHERE Lic.LicenciaID NOT IN (SELECT Clc.LicenciaID FROM Clc) AND Lic.LicenciaID NOT IN (SELECT Nsl.LicenciaID FROM Nsl WHERE Nsl.UsuarioID = " & UsuarioActivoSYS & ") ORDER BY Lic.Descripcion"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getLicenciasDisponibles = False
    Else
        getLicenciasDisponibles = True
    End If
End Function

Public Function getLicenciasASolicitar() As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Lic.LicenciaID AS 'LicenciaID', Lic.Descripcion AS 'Descripción' FROM Nsl INNER JOIN Lic ON(Nsl.LicenciaID = Lic.LicenciaID) WHERE Nsl.UsuarioID = " & UsuarioActivoSYS & " ORDER BY Lic.Descripcion"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getLicenciasASolicitar = False
    Else
        getLicenciasASolicitar = True
    End If
End Function

Public Function getLicenciasYaInstaladas() As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Lic.LicenciaID AS 'LicenciaID', Lic.Descripcion AS 'Descripción' FROM Clc INNER JOIN Lic ON(Clc.LicenciaID = Lic.LicenciaID) ORDER BY Lic.Descripcion"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getLicenciasYaInstaladas = False
    Else
        getLicenciasYaInstaladas = True
    End If
End Function

Public Function limpiarItemsNuevaSolicitud(UsuarioID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "DELETE FROM Nsl WHERE UsuarioID = " & UsuarioID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    limpiarItemsNuevaSolicitud = True
End Function

Public Function validarLicencia(SoftwareKey As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Clc.SoftwareKey AS 'SoftwareKey' FROM Clc WHERE SoftwareKey = '" & SoftwareKey & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        validarLicencia = False
    Else
        validarLicencia = True
    End If
End Function

Public Function licenciaCompradaYaCreada(SoftwareKey As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Clc.SoftwareKey AS 'SoftwareKey' FROM Clc WHERE SoftwareKey = '" & SoftwareKey & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        licenciaCompradaYaCreada = False
    Else
        licenciaCompradaYaCreada = True
    End If
End Function
