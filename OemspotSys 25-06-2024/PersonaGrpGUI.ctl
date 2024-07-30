VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.UserControl PersonaGrpGUI 
   ClientHeight    =   6495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10935
   KeyPreview      =   -1  'True
   ScaleHeight     =   6495
   ScaleWidth      =   10935
   Begin VB.ComboBox combo1 
      Height          =   315
      ItemData        =   "PersonaGrpGUI.ctx":0000
      Left            =   1440
      List            =   "PersonaGrpGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   1320
      Width           =   3735
   End
   Begin VB.TextBox txtPersona 
      BackColor       =   &H8000000B&
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000012&
      Height          =   285
      Left            =   1440
      MaxLength       =   32
      TabIndex        =   9
      TabStop         =   0   'False
      Top             =   120
      Width           =   7695
   End
   Begin VB.CommandButton CmdAgregar 
      Caption         =   "Agregar"
      Height          =   255
      Left            =   9360
      TabIndex        =   2
      Top             =   840
      Width           =   1335
   End
   Begin VB.TextBox txtGrupo 
      BackColor       =   &H8000000B&
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1440
      MaxLength       =   32
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   840
      Width           =   6495
   End
   Begin VB.CommandButton cmdGrupos 
      Caption         =   "Grupos ..."
      Height          =   255
      Left            =   8040
      TabIndex        =   1
      Top             =   840
      Width           =   1095
   End
   Begin VB.CommandButton CmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   9360
      TabIndex        =   5
      Top             =   6120
      Width           =   1335
   End
   Begin VB.CommandButton CmdBorrar 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   9360
      TabIndex        =   4
      Top             =   2520
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid GridGrupos 
      Height          =   3735
      Left            =   1440
      TabIndex        =   3
      Top             =   2160
      Width           =   7815
      _ExtentX        =   13785
      _ExtentY        =   6588
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Label lblTipoDeRelacion 
      Caption         =   "Tipo de Relación:"
      Height          =   375
      Left            =   120
      TabIndex        =   11
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Label lblPersona 
      Caption         =   "Persona:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   120
      Width           =   1215
   End
   Begin VB.Line Line2 
      X1              =   120
      X2              =   10800
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   10800
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Line Line6 
      X1              =   120
      X2              =   10800
      Y1              =   6000
      Y2              =   6000
   End
   Begin VB.Label lblGrupos 
      Caption         =   "Grupos de esta Persona:"
      Height          =   495
      Left            =   120
      TabIndex        =   7
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label lblGrupo 
      Caption         =   "Seleccionar Grupo:"
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   840
      Width           =   1215
   End
End
Attribute VB_Name = "PersonaGrpGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminPersonasService As AdminPersonasSVR
Private AdminGruposService As AdminGruposSVR
Private PlatformService As PlatformSVR

Public db_PersonaID As Long
Public db_GrupoID As Long

Private Sub UserControl_Initialize()
    On Error Resume Next
    Set AdminPersonasService = New AdminPersonasSVR
    Set AdminGruposService = New AdminGruposSVR
    Set PlatformService = New PlatformSVR
End Sub

Private Sub UserControl_Terminate()
    On Error Resume Next
    Set AdminPersonasService = Nothing
    Set AdminGruposService = Nothing
    Set PlatformService = Nothing
End Sub

Property Let PersonaID(value As Long)
    On Error Resume Next
    Let db_PersonaID = value
    txtPersona.Text = AdminPersonasService.PersonaOrm.getDescription(db_PersonaID)
End Property

Property Let GrupoID(value As Long)
    On Error Resume Next
    Let db_GrupoID = value
    txtGrupo.Text = AdminGruposService.GruposOrm.getDescription(db_GrupoID)
End Property

Sub init()
    Dim i As Integer
    On Error Resume Next
    If PlatformService.getValoresCategoria(CAT_TIPO_RELACION_GRUPO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo1.List(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)
            Combo1.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo1.ListIndex = 0
    End If

    loadGrids
End Sub

Sub enableEdition()
End Sub

Sub loadData()
End Sub

Sub loadGrids()
    On Error Resume Next
    GridGrupos.Clear
    If AdminPersonasService.getGruList(db_PersonaID) Then
        fillGrid GridGrupos, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 1
    End If
End Sub

Function validarDatos() As Boolean
    On Error Resume Next
    If db_GrupoID = 0 Then
        MsgBox "Debe seleccionar un Grupo", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdGrupos_Click()
    On Error Resume Next
    Unload AdminGruposMOD
    Set AdminGruposMOD.ParentWindow = Me
    AdminGruposMOD.Seleccion = True
    Unload AdminGruposMOD
    AdminGruposMOD.Show vbModal
End Sub

Private Sub CmdAgregar_Click()
    On Error Resume Next
    If validarDatos Then
        If AdminPersonasService.PersonaOrm.crearPerGru(db_PersonaID, db_GrupoID, CAT_TIPO_RELACION_GRUPO, Combo1.ItemData(Combo1.ListIndex)) <> -1 Then
            UpdateWindow
        Else
            MsgBox "No se puede agregar este Grupo a la Persona", vbCritical, "Atención"
            Exit Sub
        End If
    End If
End Sub

Private Sub cmdBorrar_Click()
    On Error Resume Next
    GridGrupos.Col = 1
    GridGrupos.Row = GridGrupos.RowSel
    If GridGrupos.Text <> "" And GridGrupos.Row >= 1 Then
        If MsgBox("Está seguro de borrar [" & GridGrupos.Text & "]?", vbYesNo, "Atención") = vbYes Then
            GridGrupos.Col = 0
            GridGrupos.Row = GridGrupos.RowSel
            If Not AdminPersonasService.PersonaOrm.eliminarPerGru(db_PersonaID, CLng(GridGrupos.Text)) Then
                MsgBox "No se puede eliminar Persona", vbCritical, "Atención"
                Exit Sub
            End If
            UpdateWindow
        End If
    End If
End Sub

Private Sub CmdCerrar_Click()
    On Error Resume Next
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    On Error Resume Next
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Sub UpdateWindow()
    On Error Resume Next
    loadGrids
End Sub
