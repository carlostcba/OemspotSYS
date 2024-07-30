VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.UserControl AdminWorkstationGUI 
   ClientHeight    =   5535
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   11910
   KeyPreview      =   -1  'True
   ScaleHeight     =   5535
   ScaleWidth      =   11910
   Begin VB.TextBox txtNombre 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1680
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   3375
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   10440
      TabIndex        =   3
      Top             =   5160
      Width           =   1335
   End
   Begin VB.CommandButton cmdCambiar 
      Caption         =   "Cambiar ..."
      Height          =   255
      Left            =   10440
      TabIndex        =   2
      Top             =   1080
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   4215
      Left            =   1680
      TabIndex        =   1
      Top             =   720
      Width           =   8655
      _ExtentX        =   15266
      _ExtentY        =   7435
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Label lblEstacionTrabajo 
      Caption         =   "Estación de Trabajo:"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   1575
   End
   Begin VB.Label lblParametros 
      Caption         =   "Parámetros:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   720
      Width           =   1575
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   11760
      Y1              =   5040
      Y2              =   5040
   End
End
Attribute VB_Name = "AdminWorkstationGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Dim AdminWorkstationService As AdminWorkstationSVR


Private Sub UserControl_Initialize()
    Set AdminWorkstationService = New AdminWorkstationSVR
End Sub

Private Sub UserControl_Terminate()
    Set AdminWorkstationService = Nothing
End Sub

Sub init()
    txtNombre.Text = getWindowsComputerName
    loadGrids
End Sub

Sub loadGrids()
    ReconocerWorkstation (txtNombre.Text)

    Grid.Clear
    If AdminWorkstationService.getOpcionesList(txtNombre.Text) Then
        fillGrid Grid, AdminWorkstationService.WorkstationQuery.DbRecordsetQRY, 2
    End If
End Sub

Private Sub cmdCambiar_Click()
    Grid.Col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.Col = 0
        Grid.Row = Grid.RowSel
        Dim WorkstationID As Long
        WorkstationID = CLng(Grid.Text)

        Grid.Col = 1
        Grid.Row = Grid.RowSel
        Dim OpcionID As Long
        OpcionID = CLng(Grid.Text)

        Set WorkStationOpcionMOD.ParentWindow = Me
        WorkStationOpcionMOD.WorkstationID = WorkstationID
        WorkStationOpcionMOD.OpcionID = OpcionID
        WorkStationOpcionMOD.Show vbModal
    End If
End Sub

Private Sub Grid_DblClick()
    cmdCambiar_Click
End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Public Sub UpdateWindow()
    loadGrids
End Sub
