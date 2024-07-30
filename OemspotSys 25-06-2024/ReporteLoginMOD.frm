VERSION 5.00
Begin VB.Form ReporteLoginMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Reporte de Login"
   ClientHeight    =   9225
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   12210
   Icon            =   "ReporteLoginMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9225
   ScaleWidth      =   12210
   Begin OemspotSys.ReporteLoginGUI ReporteLoginGUI1 
      Height          =   9135
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12255
      _ExtentX        =   21616
      _ExtentY        =   16113
   End
End
Attribute VB_Name = "ReporteLoginMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_TicketID As Currency
Private db_Desde As Date
Private db_Hasta As Date

Property Let Desde(dato As Date)
    db_Desde = dato
End Property

Property Let Hasta(dato As Date)
    db_Hasta = dato
End Property


Private Sub Form_Load()
    Set ReporteLoginGUI1.ParentWindow = Me
    Me.Width = ReporteLoginGUI1.Width + 100
    Me.Height = ReporteLoginGUI1.Height + 500
    ReporteLoginGUI1.Desde = db_Desde
    ReporteLoginGUI1.Hasta = db_Hasta
    ReporteLoginGUI1.init
End Sub

Property Let TicketID(dato As Currency)
    db_TicketID = dato
End Property

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
        ParentWindow.TicketID = db_TicketID
   '     ParentWindow.UpdateWindow
    End If
End Sub
