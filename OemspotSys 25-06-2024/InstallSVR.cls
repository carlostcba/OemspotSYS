VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "InstallSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim DbConnectionTest As ADODB.Connection
Dim DbCommandTest As ADODB.Command
Dim DbRecordsetTest As ADODB.RecordSet
Dim DbConnectionStringTest As String
Private Declare Function SQLAllocEnv Lib "ODBC32.DLL" (Env As Long) As Integer
Private Declare Function SQLDataSources Lib "ODBC32.DLL" (ByVal henv As Long, ByVal fDirection As Integer, ByVal szDSN As String, ByVal cbDSNMax As Integer, pcbDSN As Integer, ByVal szDescription As String, ByVal cbDescriptionMax As Integer, pcbDescription As Integer) As Integer
Private Const SQL_SUCCESS As Long = 0
Private Const SQL_FETCH_NEXT As Long = 1



Public Function isSoftwareInstalled()

    'If Not ExisteDSN(DB_CONNECTION_STRING_SYS) Then
        If isDatabaseServerInstalled Then
            If isApplicationDatabaseInstalled Then
                If isApplicationConfigurationInstalled Then
                    isSoftwareInstalled = True
                    Exit Function
                Else
                    isSoftwareInstalled = False
                    Exit Function
                End If
            Else
                isSoftwareInstalled = False
                Exit Function
            End If
        Else
            If ExisteDSN(DB_CONNECTION_STRING_SYS) Then
                isSoftwareInstalled = True
            Else
                isSoftwareInstalled = False
            End If
            Exit Function
        End If
    'Else
    '    isSoftwareInstalled = True
    '    Exit Function
    'End If
End Function

'Comprueba si existe un DSN en el sistema.
Public Function ExisteDSN(sDSN As String) As Boolean
On Error GoTo errorhandler:

   Dim i As Integer, J As Integer
   Dim sDSNItem As String * 1024
   Dim sDRVItem As String * 1024
   Dim sDSNActual As String
   Dim sDRV As String
   Dim iDSNLen As Integer
   Dim iDRVLen As Integer
   Dim lHenv As Long 'controlador del entorno
   Dim DSNLISTA(100)
   ExisteDSN = False
   For J = 1 To 52
        DSNLISTA(J) = ""
   Next J

    J = 1
    If SQLAllocEnv(lHenv) <> -1 Then
        Do Until i <> SQL_SUCCESS
            sDSNItem = Space(1024)
            sDRVItem = Space(1024)
            i = SQLDataSources(lHenv, SQL_FETCH_NEXT, sDSNItem, 1024, iDSNLen, sDRVItem, 1024, iDRVLen)
            sDSNActual = VBA.Left(sDSNItem, iDSNLen)
            sDRV = VBA.Left(sDRVItem, iDRVLen)
            If sDSN <> Space(iDSNLen) Then
                DSNLISTA(J) = sDSN
                If UCase(sDSN) = UCase(sDSNActual) Then
                    ExisteDSN = True
                    Exit Do
                End If
            End If
        Loop
    End If
    Exit Function
errorhandler:
    ExisteDSN = False
End Function


Public Function isDatabaseServerInstalled() As Boolean
On Error GoTo errorhandler:

    DbConnectionTest.ConnectionString = DbConnectionStringTest
    DbConnectionTest.Open
    DbCommandTest.ActiveConnection = DbConnectionTest

    isDatabaseServerInstalled = True
    Exit Function

errorhandler:
    isDatabaseServerInstalled = False
End Function

Public Function isApplicationDatabaseInstalled() As Boolean
On Error GoTo errorhandler:
    Dim sql
    sql = "SELECT * FROM Dim"

    DbCommandTest.CommandText = sql
    Set DbRecordsetTest = DbCommandTest.Execute

    isApplicationDatabaseInstalled = Not DbRecordsetTest.BOF
    Exit Function

errorhandler:
    isApplicationDatabaseInstalled = False
End Function

Public Function isApplicationConfigurationInstalled() As Boolean
On Error GoTo errorhandler:
    Dim sql
    sql = "SELECT UpdateID FROM Upd WHERE Nombre = 'SOFTWAREINSTALLED'"

    DbCommandTest.CommandText = sql
    Set DbRecordsetTest = DbCommandTest.Execute

    isApplicationConfigurationInstalled = Not DbRecordsetTest.BOF
    Exit Function

errorhandler:
    isApplicationConfigurationInstalled = False
End Function

Private Sub Class_Initialize()
    Set DbConnectionTest = New ADODB.Connection
    Set DbCommandTest = New ADODB.Command
    Set DbRecordsetTest = New ADODB.RecordSet
    DbConnectionStringTest = "Provider=MSDASQL.1;" _
        & "User ID=videoman;" _
         & "Password=Oemspot2008wx;" _
         & "Persist Security Info=False;" _
         & "Data Source=videoman"
End Sub

Private Sub Class_Terminate()
On Error Resume Next
    DbConnectionTest.Close
    Set DbConnectionTest = Nothing
    Set DbCommandTest = Nothing
    Set DbRecordsetTest = Nothing
End Sub
