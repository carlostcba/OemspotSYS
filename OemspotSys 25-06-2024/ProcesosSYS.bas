Attribute VB_Name = "ProcesosSYS"

Option Explicit

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   PROCESOS A EJECUTAR AL INICIO DEL SISTEMA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Sub initProcesses()

End Sub

''Proceso de busqued ade parametros FMV
''Se puso un proceso mas generico y no encapsulado ya que esto tendria que poder llamarse desde cualquier lado
''Y a la hora de poner un parametro que sea mas simple y no tan complejo
Function GetParamBolean(ByVal sParam As String) As Boolean
Dim sSql As String
Dim oRs As New ADODB.RecordSet
    
   sSql = "SELECT nombre FROM cfgopt  WHERE nombre = '" & sParam & "'"
   
   oRs.Open sSql, DbConnectionSYS

   If Not oRs.EOF Then
        GetParamBolean = True
   End If
   
   Set oRs = Nothing

End Function
