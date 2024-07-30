VERSION 5.00
Begin VB.Form ReporteMovimientosDetalleMOD 
   Caption         =   "Información detallada del Ticket"
   ClientHeight    =   8250
   ClientLeft      =   1260
   ClientTop       =   2550
   ClientWidth     =   11595
   LinkTopic       =   "Form1"
   ScaleHeight     =   8250
   ScaleWidth      =   11595
   Begin OemspotSys.ReporteMovimientosDetalleGUI ReporteMovimientosDetalleGUI1 
      Height          =   8175
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   11415
      _ExtentX        =   20135
      _ExtentY        =   14420
   End
End
Attribute VB_Name = "ReporteMovimientosDetalleMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Dim db_TicketID As Currency
Dim db_de_historicos As Boolean

Property Let de_historicos(value As Boolean)
    db_de_historicos = value
End Property

Property Let TicketID(value As Currency)
    db_TicketID = value
End Property

Private Sub Form_Load()
    Set ReporteMovimientosDetalleGUI1.ParentWindow = Me
    Me.Width = ReporteMovimientosDetalleGUI1.Width + 400
    Me.Height = ReporteMovimientosDetalleGUI1.Height + 800
    ReporteMovimientosDetalleGUI1.de_historicos = db_de_historicos
    ReporteMovimientosDetalleGUI1.TicketID = db_TicketID
    'ReporteMovimientosDetalleGUI1.init
End Sub

Sub UpdateWindow(ModuloID As Long)
    If Not (ParentWindow Is Nothing) Then
        Unload Me
    End If
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.UpdateWindow
    End If
End Sub

