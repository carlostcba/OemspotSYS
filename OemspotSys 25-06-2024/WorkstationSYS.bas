Attribute VB_Name = "WorkstationSYS"
Option Explicit

Public Function verificarWorkstationReconocida(ComputerName As String) As Boolean
    If DbCommandSYS Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Wks.Nombre FROM Wks WHERE Wks.Nombre = '" & ComputerName & "'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    If DbRecordsetSYS.EOF Then
        verificarWorkstationReconocida = False
    Else
        verificarWorkstationReconocida = True
    End If
End Function

Public Sub ReconocerWorkstation(ComputerName As String)
    Dim WorkstationID As Long
    Dim AdminWorkStationsService As AdminWorkstationSVR
    Set AdminWorkStationsService = New AdminWorkstationSVR

    ' Reconocer la Workstation
    If Not verificarWorkstationReconocida(ComputerName) Then
        WorkstationID = AdminWorkStationsService.WorkstationOrm.crearWorkstation(ComputerName, 0)
    Else
        AdminWorkStationsService.WorkstationQuery.getID (ComputerName)
        WorkstationID = AdminWorkStationsService.WorkstationQuery.DbRecordsetQRY.Fields(0).value
    End If

    'Crea los parámetros si es que no están ya creados
    If AdminWorkStationsService.WorkstationOrm.crearWksOpt(WorkstationID, "PuestoDeControl (Si/No):", "No", 0) Then
    End If

    Set AdminWorkStationsService = Nothing
End Sub
