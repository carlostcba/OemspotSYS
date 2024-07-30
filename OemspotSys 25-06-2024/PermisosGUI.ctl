VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.UserControl PermisosGUI 
   ClientHeight    =   9600
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9615
   KeyPreview      =   -1  'True
   ScaleHeight     =   9600
   ScaleWidth      =   9615
   Begin VB.CommandButton cmdFechaFin 
      Caption         =   "..."
      Height          =   255
      Left            =   7335
      TabIndex        =   21
      Top             =   2370
      Width           =   255
   End
   Begin VB.TextBox txtFechaFin 
      Height          =   285
      Left            =   5655
      MaxLength       =   32
      TabIndex        =   20
      Top             =   2370
      Width           =   1560
   End
   Begin VB.CommandButton cmdFechaInicio 
      Caption         =   "..."
      Height          =   255
      Left            =   4560
      TabIndex        =   18
      Top             =   2385
      Width           =   255
   End
   Begin VB.TextBox txtFechaInicio 
      Height          =   285
      Left            =   2910
      MaxLength       =   32
      TabIndex        =   17
      Top             =   2370
      Width           =   1500
   End
   Begin VB.CommandButton cmdGrupos 
      Caption         =   "Buscar ..."
      Height          =   255
      Left            =   8040
      TabIndex        =   1
      Top             =   240
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
      Left            =   1560
      MaxLength       =   32
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   240
      Width           =   6375
   End
   Begin VB.CommandButton cmdVerDetalle 
      Caption         =   "Ver Detalle"
      Height          =   255
      Left            =   8040
      TabIndex        =   8
      Top             =   3960
      Width           =   1335
   End
   Begin VB.TextBox txtPerfil 
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
      Left            =   3120
      MaxLength       =   32
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   1920
      Width           =   3735
   End
   Begin VB.CommandButton cmdPerfiles 
      Caption         =   "Buscar ..."
      Height          =   255
      Left            =   6960
      TabIndex        =   5
      Top             =   1920
      Width           =   855
   End
   Begin VB.TextBox txtModulo 
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
      Left            =   3120
      MaxLength       =   32
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   1440
      Width           =   3735
   End
   Begin VB.CommandButton cmdModulos 
      Caption         =   "Buscar ..."
      Height          =   255
      Left            =   6960
      TabIndex        =   3
      Top             =   1440
      Width           =   855
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   8040
      TabIndex        =   11
      Top             =   9240
      Width           =   1335
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Agregar"
      Height          =   255
      Left            =   8040
      TabIndex        =   6
      Top             =   2400
      Width           =   1335
   End
   Begin VB.CommandButton cmdQuitar 
      Caption         =   "Quitar"
      Height          =   255
      Left            =   8040
      TabIndex        =   9
      Top             =   4320
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid GridModulosPerfiles 
      Height          =   2865
      Left            =   1560
      TabIndex        =   7
      Top             =   3480
      Width           =   6375
      _ExtentX        =   11245
      _ExtentY        =   5054
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSFlexGridLib.MSFlexGrid GridPerfilItems 
      Height          =   2460
      Left            =   2880
      TabIndex        =   10
      Top             =   6450
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   4339
      _Version        =   393216
      Cols            =   5
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Label lblMasModulosPerfiles 
      Caption         =   "Agregar más Permisos de Módulos y Perfiles a este Grupo:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   25
      Top             =   960
      Width           =   6015
   End
   Begin VB.Label lblGrupoModulosPerfiles 
      Caption         =   "El Grupo seleccionado, tiene esta configuración de Permisos para Módulos y Perfiles:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   24
      Top             =   3120
      Width           =   7815
   End
   Begin VB.Label lblVigencia 
      Caption         =   "Vigencia:"
      Height          =   255
      Left            =   1155
      TabIndex        =   23
      Top             =   2400
      Width           =   705
   End
   Begin VB.Label lblFechaFin 
      Caption         =   "Hasta:"
      Height          =   255
      Left            =   5085
      TabIndex        =   22
      Top             =   2385
      Width           =   570
   End
   Begin VB.Label lblFechaInicio 
      Caption         =   "Desde:"
      Height          =   255
      Left            =   2310
      TabIndex        =   19
      Top             =   2370
      Width           =   975
   End
   Begin VB.Label lblGrupo 
      Caption         =   "Seleccione Grupo:"
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   240
      Width           =   1335
   End
   Begin VB.Line Line2 
      X1              =   120
      X2              =   9480
      Y1              =   720
      Y2              =   720
   End
   Begin VB.Label lblDetallePerfil 
      Caption         =   "Detalle del Perfil:"
      Height          =   255
      Left            =   1560
      TabIndex        =   15
      Top             =   6510
      Width           =   1215
   End
   Begin VB.Line Line3 
      X1              =   120
      X2              =   9480
      Y1              =   2880
      Y2              =   2880
   End
   Begin VB.Label lblPerfil 
      Caption         =   "Seleccoine Perfil:"
      Height          =   255
      Left            =   1155
      TabIndex        =   14
      Top             =   1920
      Width           =   1335
   End
   Begin VB.Label lblModulo 
      Caption         =   "Seleccione Módulo:"
      Height          =   255
      Left            =   1155
      TabIndex        =   13
      Top             =   1440
      Width           =   1455
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   9480
      Y1              =   9000
      Y2              =   9000
   End
   Begin VB.Label lbModuloslPerfiles 
      Caption         =   "Módulo/Perfiles:"
      Height          =   255
      Left            =   240
      TabIndex        =   12
      Top             =   3600
      Width           =   1215
   End
End
Attribute VB_Name = "PermisosGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminModulosService As AdminModulosSVR
Private AdminGruposService As AdminGruposSVR
Private AdminPerfilesService As AdminPerfilesSVR
Private PlatformService As PlatformSVR
Private GruMdlPrfDataObject As GruMdlPrfDAO

Public db_GrupoID As Long
Public db_ModuloID As Long
Public db_perfilID As Long

Private Sub UserControl_Initialize()
    Set AdminModulosService = New AdminModulosSVR
    Set AdminGruposService = New AdminGruposSVR
    Set AdminPerfilesService = New AdminPerfilesSVR
    Set PlatformService = New PlatformSVR
    Set GruMdlPrfDataObject = New GruMdlPrfDAO
End Sub

Private Sub UserControl_Terminate()
    Set AdminModulosService = Nothing
    Set AdminGruposService = Nothing
    Set AdminPerfilesService = Nothing
    Set PlatformService = Nothing
    Set GruMdlPrfDataObject = Nothing
End Sub

Property Let ModuloID(value As Long)
    Let db_ModuloID = value
    txtModulo.Text = AdminModulosService.ModuloOrm.getDescription(db_ModuloID)
End Property

Property Let GrupoID(value As Long)
    Let db_GrupoID = value
    txtGrupo.Text = AdminGruposService.GruposOrm.getDescription(db_GrupoID)
End Property

Property Let PerfilID(value As Long)
    Let db_perfilID = value
    txtPerfil.Text = AdminPerfilesService.PerfilOrm.getDescription(db_perfilID)
End Property

Private Sub cmdModulos_Click()
    On Error Resume Next
    
    Unload AdminModulosMOD
    Set AdminModulosMOD.ParentWindow = Me
    AdminModulosMOD.ReadOnly = True
    AdminModulosMOD.Seleccion = True
    AdminModulosMOD.Show vbModal
    loadGrids
End Sub

Private Sub cmdPerfiles_Click()
    On Error Resume Next
    
    Unload AdminPerfilesMOD
    Set AdminPerfilesMOD.ParentWindow = Me
    AdminPerfilesMOD.ReadOnly = True
    AdminPerfilesMOD.Seleccion = True
    AdminPerfilesMOD.Show vbModal
    loadGrids
End Sub

Private Sub cmdGrupos_Click()
    
    On Error Resume Next
    Unload AdminGruposMOD
    Set AdminGruposMOD.ParentWindow = Me
    AdminGruposMOD.ReadOnly = True
    AdminGruposMOD.Seleccion = True
    AdminGruposMOD.Show vbModal
    loadGrids
End Sub

Private Sub cmdFechaInicio_Click()
    Set DatePickerMOD.parentControl = txtFechaInicio
    DatePickerMOD.Show vbModal
    loadGrids
End Sub

Private Sub cmdFechaFin_Click()
    Set DatePickerMOD.parentControl = txtFechaFin
    DatePickerMOD.Show vbModal
    loadGrids
End Sub

Sub init()
End Sub

Sub enableEdition()
End Sub

Sub loadData()
End Sub

Sub loadGrids()
    GridModulosPerfiles.Clear
    If AdminModulosService.ModuloQuery.getListModulosPerfiles(db_GrupoID) Then
        fillGridComplete GridModulosPerfiles, AdminModulosService.ModuloQuery.DbRecordsetQRY, 2
    End If
    cmdVerDetalle_Click
End Sub

Function validarDatos() As Boolean
    If txtFechaInicio.Text <> "" Then
        If Not esFechaValida(txtFechaInicio.Text) Then
            MsgBox "Fecha de Inicio Errónea", vbCritical, "Atención"
            txtFechaInicio.SetFocus
            validarDatos = False
            Exit Function
        End If
    End If
    If txtFechaInicio.Text = "" Then
        MsgBox "Debe indicar Fecha de Inicio", vbCritical, "Atención"
        txtFechaInicio.SetFocus
        validarDatos = False
        Exit Function
    End If
    If txtFechaFin.Text <> "" Then
        If Not esFechaValida(txtFechaFin.Text) Then
            MsgBox "Fecha de Fin Errónea", vbCritical, "Atención"
            txtFechaFin.SetFocus
            validarDatos = False
            Exit Function
        End If
    End If
    If txtFechaFin.Text = "" Then
        MsgBox "Debe indicar Fecha de Fin", vbCritical, "Atención"
        txtFechaFin.SetFocus
        validarDatos = False
        Exit Function
    End If
    If db_ModuloID = 0 Then
        MsgBox "Debe seleccionar Módulo", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If db_GrupoID = 0 Then
        MsgBox "Debe seleccionar Grupo", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If db_perfilID = 0 Then
        MsgBox "Debe seleccionar Perfil", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub CmdAgregar_Click()
    If validarDatos Then
        If AdminGruposService.GruposOrm.crearGruMdlPrf(db_GrupoID, db_ModuloID, db_perfilID, txtFechaInicio.Text, txtFechaFin.Text) = -1 Then
            MsgBox "No se puede agregar Grupo", vbCritical, "Error"
        End If
        loadGrids
    End If
End Sub

Private Sub GridModulosPerfiles_Click()
    cmdVerDetalle_Click
End Sub

Private Sub cmdVerDetalle_Click()
    Dim i As Long
    Dim J As Long
'    Dim RecordSet As ADODB.RecordSet
'    Set RecordSet = New ADODB.RecordSet

    GridPerfilItems.Clear

    GridModulosPerfiles.Col = 1
    GridModulosPerfiles.Row = GridModulosPerfiles.RowSel
    If GridModulosPerfiles.Text <> "" And GridModulosPerfiles.Row >= 1 Then
        GridModulosPerfiles.Col = 1
        GridModulosPerfiles.Row = GridModulosPerfiles.RowSel
        If GridModulosPerfiles.Text <> "" Then
            GridPerfilItems.Visible = False

            If AdminPerfilesService.getItemsList(GridModulosPerfiles.Text) Then
        
                'Set RecordSet = AdminPerfilesService.PerfilQuery.DbRecordsetQRY
        
                GridPerfilItems.Row = 0
        
                GridPerfilItems.Col = 0
                GridPerfilItems.ColWidth(0) = GridPerfilItems.Width * 0
                GridPerfilItems.Text = AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(0).name
        
                GridPerfilItems.Col = 1
                GridPerfilItems.ColWidth(1) = GridPerfilItems.Width * 0.25
                GridPerfilItems.Text = AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(1).name
        
                GridPerfilItems.Col = 2
                GridPerfilItems.ColWidth(2) = GridPerfilItems.Width * 0.25
                GridPerfilItems.Text = AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(2).name
        
                GridPerfilItems.Col = 3
                GridPerfilItems.ColWidth(3) = GridPerfilItems.Width * 0.25
                GridPerfilItems.Text = AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(3).name
                
                GridPerfilItems.Col = 4
                GridPerfilItems.ColWidth(4) = GridPerfilItems.Width * 0.25
                GridPerfilItems.Text = AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(4).name
        
                J = 1
                Do While Not AdminPerfilesService.PerfilQuery.DbRecordsetQRY.EOF
                    For i = 0 To AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields.Count - 1
                        GridPerfilItems.Row = J
                        GridPerfilItems.Col = i
                        GridPerfilItems.AddItem ""
                        If AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(i).ActualSize <> 0 Then
                            GridPerfilItems.CellAlignment = 1
        
                            If i = 1 Then
                                GridPerfilItems.Text = obtenerDeLaSemana(CInt(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(i).value))
                            ElseIf i = 2 Then
                                GridPerfilItems.Text = obtenerHora(CStr(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(i).value))
                            ElseIf i = 3 Then
                                GridPerfilItems.Text = obtenerHora(CStr(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(i).value))
                            Else
                                GridPerfilItems.Text = DBFieldToGridString(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(i).value)
                            End If
        
                            If (J Mod 2) = 0 Then
                                GridPerfilItems.CellBackColor = RGB(255, 255, 255)
                            Else
                                GridPerfilItems.CellBackColor = RGB(242, 242, 242)
                            End If

                        End If
                    Next i
                    J = J + 1

                    AdminPerfilesService.PerfilQuery.DbRecordsetQRY.MoveNext
                Loop
                'AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Close
            End If

            GridPerfilItems.Visible = True
        End If
    End If
End Sub

Private Sub cmdQuitar_Click()
On Error GoTo Salir
    Dim ModuloID As Long
    Dim PerfilID As Long
    
    GridModulosPerfiles.Col = 0
    GridModulosPerfiles.Row = GridModulosPerfiles.RowSel
    ModuloID = GridModulosPerfiles.Text
    
    GridModulosPerfiles.Col = 1
    GridModulosPerfiles.Row = GridModulosPerfiles.RowSel
    PerfilID = GridModulosPerfiles.Text

    If GridModulosPerfiles.Text <> "" And GridModulosPerfiles.Row >= 1 Then
        If MsgBox("Está seguro de borrar este ítem?", vbYesNo, "Atención") = vbYes Then
            If Not AdminGruposService.GruposOrm.eliminarGruMdlPrf(db_GrupoID, ModuloID, PerfilID) Then
                MsgBox "No se puede Módulo y Perfil", vbCritical, "Atención"
                Exit Sub
            End If
            UpdateWindow
        End If
    End If
Exit Sub
Salir:
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
