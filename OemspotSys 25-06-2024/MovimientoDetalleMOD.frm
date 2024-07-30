VERSION 5.00
Begin VB.Form MovimientoDetalleMOD 
   Caption         =   "Información detallada del Movimiento"
   ClientHeight    =   3675
   ClientLeft      =   1260
   ClientTop       =   2550
   ClientWidth     =   9090
   LinkTopic       =   "Form1"
   ScaleHeight     =   3675
   ScaleWidth      =   9090
   Begin OemspotSys.MovimientoDetalleGUI MovimientoDetalleGUI1 
      Height          =   3720
      Left            =   -45
      TabIndex        =   0
      Top             =   -30
      Width           =   9150
      _ExtentX        =   16140
      _ExtentY        =   6562
   End
End
Attribute VB_Name = "MovimientoDetalleMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Dim db_movimientoID As Currency

Property Let MovimientoID(value As Currency)
    db_movimientoID = value
End Property


Private Sub Form_Load()
    Set MovimientoDetalleGUI1.ParentWindow = Me
    Me.Width = MovimientoDetalleGUI1.Width + 100
    Me.Height = MovimientoDetalleGUI1.Height + 400
    MovimientoDetalleGUI1.MovimientoID = db_movimientoID
    MovimientoDetalleGUI1.init
End Sub

Sub UpdateWindow(MovimientoID As Currency)
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

