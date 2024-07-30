VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "TckORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim TckPerDataObject As TckPerDAO
Dim TckHstDataObject As TckHstDAO
Dim TckPrxDataObject As TckPrxDAO
Dim TckDataObject As TckDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set TckPerDataObject = New TckPerDAO
    Set TckHstDataObject = New TckHstDAO
    Set TckPrxDataObject = New TckPrxDAO
    Set TckDataObject = New TckDAO

End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set AsistenteDataObject = Nothing
    Set TckPerDataObject = Nothing
    Set TckHstDataObject = Nothing
    Set TckPrxDataObject = Nothing
    Set TckDataObject = Nothing
End Sub


Public Function eliminarTicketCascada(TicketID As Long) As Boolean
    TckDataObject.TicketID = TicketID
    eliminarTicketCascada = AsistenteDataObject.delete(TckDataObject, True)
End Function

