VERSION 5.00
Begin VB.Form GeoMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Geo "
   ClientHeight    =   4500
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   4635
   Icon            =   "GeoMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4500
   ScaleWidth      =   4635
   Begin OemspotSys.GeoGUI GeoGUI1 
      Height          =   4455
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   7858
   End
End
Attribute VB_Name = "GeoMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Public geoID As Long

Private Sub Form_Load()
    Me.Width = GeoGUI1.Width
    Me.Height = GeoGUI1.Height + 400
    Set GeoGUI1.ParentWindow = Me
    GeoGUI1.db_GeoID = geoID
    Me.GeoGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub
