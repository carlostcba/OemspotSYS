VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.UserControl CategoriaGUI 
   ClientHeight    =   6165
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9630
   KeyPreview      =   -1  'True
   ScaleHeight     =   6165
   ScaleWidth      =   9630
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   1080
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   3375
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   8160
      TabIndex        =   7
      Top             =   5760
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   6600
      TabIndex        =   5
      Top             =   5760
      Width           =   1335
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   8160
      TabIndex        =   2
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton cmdBorrar 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   8160
      TabIndex        =   4
      Top             =   1680
      Width           =   1335
   End
   Begin VB.CommandButton cmdActualizar 
      Caption         =   "Actualizar ..."
      Height          =   255
      Left            =   8160
      TabIndex        =   3
      Top             =   1320
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   4695
      Left            =   1080
      TabIndex        =   1
      Top             =   600
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   8281
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   120
      Width           =   855
   End
   Begin VB.Label lblValores 
      Caption         =   "Valor:"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   600
      Width           =   855
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   9480
      Y1              =   5520
      Y2              =   5520
   End
End
Attribute VB_Name = "CategoriaGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminCategoriasService As AdminCategoriasSVR
Private CatDataObject As CatDAO

Public db_CategoriaID As Long

Private Sub UserControl_Initialize()
    Set AdminCategoriasService = New AdminCategoriasSVR
    Set CatDataObject = New CatDAO
End Sub

Private Sub UserControl_Terminate()
    Set AdminCategoriasService = Nothing
    Set CatDataObject = Nothing
End Sub

Property Let CategoriaID(value As Long)
    Let db_CategoriaID = value
End Property

Sub init()
    If db_CategoriaID <> 0 Then
        onUpdate = True
        loadData
    Else
        onUpdate = False
    End If

    enableEdition
End Sub

Sub enableEdition()
    If db_CategoriaID <> 0 Then
        Grid.Enabled = True
        cmdAgregar.Enabled = True
        cmdActualizar.Enabled = True
        cmdBorrar.Enabled = True

        cmdGuardar.Caption = "Guardar"
    Else
        Grid.Enabled = False
        cmdAgregar.Enabled = False
        cmdActualizar.Enabled = False
        cmdBorrar.Enabled = False

        cmdGuardar.Caption = "Siguiente >> "
    End If
End Sub

Sub loadData()
    Set CatDataObject = AdminCategoriasService.CategoriasOrm.obtenerCategoria(db_CategoriaID)

    If Not (CatDataObject Is Nothing) Then
        txtNombre.Text = CatDataObject.Nombre
    Else
        MsgBox "No se puede leer Categoría", vbCritical, "Atención"
        Exit Sub
    End If

    loadGrids
End Sub

Sub loadGrids()
    Grid.Clear
    If AdminCategoriasService.getCategoriasValoresList(db_CategoriaID) Then
        fillGrid Grid, AdminCategoriasService.CategoriasQuery.DbRecordsetQRY, 1
    End If
End Sub

Function validarDatos() As Boolean
    If txtNombre.Text = "" Then
        MsgBox "Ingrese Nombre", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    If validarDatos Then
        If Not onUpdate Then
            db_CategoriaID = AdminCategoriasService.CategoriasOrm.crearCategoria(txtNombre.Text, 0)
            If db_CategoriaID <> -1 Then
                enableEdition
                onUpdate = True
            Else
'                MsgBox "No se puede crear Categoría", vbCritical, "Atención"
'                Exit Sub
            End If
        Else
            If AdminCategoriasService.CategoriasOrm.actualizarCategoria(db_CategoriaID, txtNombre.Text) Then
                ParentWindow.Destroy
            Else
'                MsgBox "No se puede actualizar Categoría", vbCritical, "Atención"
'                Exit Sub
            End If
            ParentWindow.Destroy
        End If
    End If
End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    'ElseIf KeyAscii = vbKeySpace Then
    '    cmdActualizar_Click
    End If
End Sub

Private Sub CmdAgregar_Click()
    Set CategoriaValMOD.ParentWindow = Me
    CategoriaValMOD.CategoriaID = db_CategoriaID
    CategoriaValMOD.ValorID = 0
    CategoriaValMOD.Show vbModal
End Sub

Private Sub cmdActualizar_Click()
    Grid.Col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Set CategoriaValMOD.ParentWindow = Me
        CategoriaValMOD.CategoriaID = db_CategoriaID
        CategoriaValMOD.ValorID = CLng(Grid.Text)
        CategoriaValMOD.Show vbModal
    End If
End Sub

Private Sub Grid_DblClick()
    cmdActualizar_Click
End Sub

Private Sub cmdBorrar_Click()
    Grid.Col = 1
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        If MsgBox("Está seguro de quitar [" & Grid.Text & "]?", vbYesNo, "Atención") = vbYes Then
            Grid.Col = 0
            Grid.Row = Grid.RowSel
            If Not AdminCategoriasService.CategoriasOrm.eliminarCatVal(db_CategoriaID, CLng(Grid.Text)) Then
                MsgBox "No se puede quitar el Valor de Categoría", vbCritical, "Atención"
                Exit Sub
            End If
            loadGrids
        End If
    End If
End Sub

Public Sub UpdateWindow()
    loadGrids
End Sub
