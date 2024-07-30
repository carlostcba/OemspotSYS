VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.UserControl GrupoPerGUI 
   ClientHeight    =   6495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10950
   KeyPreview      =   -1  'True
   ScaleHeight     =   6495
   ScaleWidth      =   10950
   Begin VB.ComboBox combo1 
      Height          =   315
      ItemData        =   "GrupoPerGUI.ctx":0000
      Left            =   1440
      List            =   "GrupoPerGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   1320
      Width           =   3735
   End
   Begin VB.CommandButton CmdAgregar 
      Caption         =   "Agregar"
      Height          =   255
      Left            =   9360
      TabIndex        =   3
      Top             =   840
      Width           =   1335
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
      Height          =   285
      Left            =   1440
      MaxLength       =   32
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   840
      Width           =   6495
   End
   Begin VB.CommandButton cmdPersonas 
      Caption         =   "Personas ..."
      Height          =   255
      Left            =   8040
      TabIndex        =   2
      Top             =   840
      Width           =   1095
   End
   Begin VB.CommandButton CmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   9360
      TabIndex        =   6
      Top             =   6120
      Width           =   1335
   End
   Begin VB.CommandButton CmdBorrar 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   9360
      TabIndex        =   5
      Top             =   2520
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
      ForeColor       =   &H80000012&
      Height          =   285
      Left            =   1440
      MaxLength       =   32
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   120
      Width           =   7695
   End
   Begin MSFlexGridLib.MSFlexGrid GridPersonas 
      Height          =   3735
      Left            =   1440
      TabIndex        =   4
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
   Begin VB.Label lblPersonas 
      Caption         =   "Personas de este Grupo:"
      Height          =   495
      Left            =   120
      TabIndex        =   9
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label lblPersona 
      Caption         =   "Seleccionar Persona:"
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Top             =   840
      Width           =   1215
   End
   Begin VB.Label lblGrupo 
      Caption         =   "Grupo:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   1215
   End
   Begin VB.Line Line2 
      X1              =   120
      X2              =   10800
      Y1              =   600
      Y2              =   600
   End
End
Attribute VB_Name = "GrupoPerGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminGruposService As AdminGruposSVR
Private AdminPersonasService As AdminPersonasSVR
Private PlatformService As PlatformSVR

Public db_GrupoID As Long
Public db_PersonaID As Long

Private Sub UserControl_Initialize()
    On Error Resume Next
    Set AdminGruposService = New AdminGruposSVR
    Set AdminPersonasService = New AdminPersonasSVR
    Set PlatformService = New PlatformSVR
End Sub

Private Sub UserControl_Terminate()
    On Error Resume Next
    Set AdminGruposService = Nothing
    Set AdminPersonasService = Nothing
    Set PlatformService = Nothing
End Sub

Property Let GrupoID(value As Long)
    On Error Resume Next
    Let db_GrupoID = value
    TxtGrupo.Text = AdminGruposService.GruposOrm.getDescription(db_GrupoID)
End Property

Property Let PersonaID(value As Long)
    On Error Resume Next
    Let db_PersonaID = value
    txtPersona.Text = AdminPersonasService.PersonaOrm.getDescription(db_PersonaID)
End Property

Sub init()
    On Error Resume Next
    Dim i As Integer
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
    GridPersonas.Clear
    If AdminGruposService.getPerList(db_GrupoID) Then
        fillGrid GridPersonas, AdminGruposService.GruposQuery.DbRecordsetQRY, 1
    End If
End Sub

Function validarDatos() As Boolean
    On Error Resume Next
    If db_PersonaID = 0 Then
        MsgBox "Debe seleccionar una Identificación", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdPersonas_Click()
    On Error Resume Next
    Unload AdminPersonasMOD
    Set AdminPersonasMOD.ParentWindow = Me
    AdminPersonasMOD.ReadOnly = True
    AdminPersonasMOD.Seleccion = True
    Unload AdminPersonasMOD
    AdminPersonasMOD.Show vbModal
End Sub

Private Sub CmdAgregar_Click()
    On Error Resume Next
    If validarDatos Then
        If AdminPersonasService.PersonaOrm.crearPerGru(db_PersonaID, db_GrupoID, CAT_TIPO_RELACION_GRUPO, Combo1.ItemData(Combo1.ListIndex)) <> -1 Then
            UpdateWindow
        Else
            MsgBox "No se puede agregar esta Identificación a la Grupo", vbCritical, "Atención"
            Exit Sub
        End If
    End If
End Sub

Private Sub cmdBorrar_Click()
    On Error Resume Next
    GridPersonas.Col = 1
    GridPersonas.Row = GridPersonas.RowSel
    If GridPersonas.Text <> "" And GridPersonas.Row >= 1 Then
        If MsgBox("Está seguro de borrar [" & GridPersonas.Text & "]?", vbYesNo, "Atención") = vbYes Then
            GridPersonas.Col = 0
            GridPersonas.Row = GridPersonas.RowSel
            If Not AdminPersonasService.PersonaOrm.eliminarPerGru(CLng(GridPersonas.Text), db_GrupoID) Then
                MsgBox "No se puede eliminar Grupo", vbCritical, "Atención"
                Exit Sub
            End If
            UpdateWindow
        End If
    End If
End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Sub UpdateWindow()
    On Error Resume Next
    loadGrids
End Sub
