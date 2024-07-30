VERSION 5.00
Begin VB.Form WorkStationOpcionMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Parámetro de Estación de Trabajo"
   ClientHeight    =   3195
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   8880
   Icon            =   "WorkStationOpcionMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   8880
   Begin OemspotSys.WorkstationOpcionGUI WorkstationOpcionGUI1 
      Height          =   3135
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   5530
   End
End
Attribute VB_Name = "WorkStationOpcionMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_WorkstationID As Long
Private db_OpcionID As Long

Property Let WorkstationID(value As Long)
    db_WorkstationID = value
End Property

Property Let OpcionID(value As Long)
    db_OpcionID = value
End Property

Private Sub Form_Load()
    Me.Width = WorkstationOpcionGUI1.Width
    Me.Height = WorkstationOpcionGUI1.Height + 500
    Me.WorkstationOpcionGUI1.WorkstationID = db_WorkstationID
    Me.WorkstationOpcionGUI1.OpcionID = db_OpcionID
    Set WorkstationOpcionGUI1.ParentWindow = Me
    Me.WorkstationOpcionGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Sub UpdateWindow()
    ParentWindow.loadGrids
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub


