VERSION 5.00
Begin VB.Form TestWpcSvrMOD 
   Caption         =   "Pruebas"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Tomar foto"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   840
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Test WPC Impresión de Ticket"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   2535
   End
End
Attribute VB_Name = "TestWpcSvrMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim mi_tck As TckSVR

Private Sub Command1_Click()
    Dim tckObj As TckSVR
    Dim MyWpcService As WpcSvr
    

    Set tckObj = New TckSVR
    Set MyWpcService = New WpcSvr

    tckObj.ModuloIngresoID = 1
    tckObj.FechaHoraIngreso = Date
    tckObj.DestinoVisita = "DestinoVisita"
    tckObj.Crear_Movimiento_Tck DbConnectionSYS, tckObj

    MyWpcService.EnviarImpresionTicketModulo DbConnectionSYS, 1, mi_tck.ticketID

    Set tckObj = Nothing
    Set MyWpcService = Nothing
End Sub

Private Sub Command2_Click()
    'MainMOD.LiveX1.SnapShotToFile (App.Path() & "\" & MainMOD.LiveX1.GetCurCam & "_" & Format((Date + Time), "yyyyMMddHHmmss")) & ".jpg"

    Dim AsistenteDataObject As AsistenteDAO
    Set AsistenteDataObject = New AsistenteDAO
    Dim categoriaDataObject As RedDAO
    Set categoriaDataObject = New RedDAO

    categoriaDataObject.Nombre = "Nombre05"
    categoriaDataObject.SystemParameter = 0

    Dim l As Long

    l = AsistenteDataObject.create(categoriaDataObject, True)

    Set categoriaDataObject = Nothing
    Set AsistenteDataObject = Nothing
End Sub
