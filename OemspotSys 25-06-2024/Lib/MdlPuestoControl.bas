Attribute VB_Name = "MdlPuestoControl"
Option Explicit
Dim oRs As New RecordSet

Function GetData_oRs(ByVal sSql As String) As RecordSet

    On Error GoTo Error
    
    oRs.Open sSql, DbConnectionSYS, adOpenForwardOnly
    If Not oRs.EOF Then
        Set GetData_oRs = oRs
    End If
    
    Set oRs = Nothing
    
    Exit Function
Error:
    MsgBox Err.Description, vbCritical, "GetData_oRs"
End Function
