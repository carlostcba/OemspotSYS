VERSION 5.00
Begin VB.UserControl CategoriaValGUI 
   ClientHeight    =   1245
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4800
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   1245
   ScaleWidth      =   4800
   Begin VB.CommandButton cmdGuardar 
      Cancel          =   -1  'True
      Caption         =   "Guardar"
      Default         =   -1  'True
      Height          =   255
      Left            =   1560
      TabIndex        =   1
      Top             =   840
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   3120
      TabIndex        =   2
      Top             =   840
      Width           =   1335
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   1080
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   3375
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   4560
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "CategoriaValGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminCategoriasService As AdminCategoriasSVR
Private CatValDataObject As CatValDAO

Public db_CategoriaID As Long
Public db_ValorID As Long

Private Sub UserControl_Initialize()
    Set AdminCategoriasService = New AdminCategoriasSVR
    Set CatValDataObject = New CatValDAO
End Sub

Private Sub UserControl_Terminate()
    Set AdminCategoriasService = Nothing
    Set CatValDataObject = Nothing
End Sub

Property Let CategoriaID(value As Long)
    Let db_CategoriaID = value
End Property

Property Let ValorID(value As Long)
    Let db_ValorID = value
End Property

Sub init()
    If db_ValorID <> 0 Then
        onUpdate = True
        loadData
    Else
        onUpdate = False
    End If

    enableEdition
End Sub

Sub enableEdition()
End Sub

Sub loadData()
    Set CatValDataObject = AdminCategoriasService.CategoriasOrm.obtenerCategoriaVal(db_CategoriaID, db_ValorID)

    If Not (CatValDataObject Is Nothing) Then
        txtNombre.Text = CatValDataObject.Nombre
    Else
        MsgBox "No se puede leer Valor de Categoría", vbCritical, "Atención"
        Exit Sub
    End If

    loadGrids
End Sub

Sub loadGrids()
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
            db_ValorID = AdminCategoriasService.CategoriasOrm.crearCatVal(db_CategoriaID, txtNombre.Text, 0)
            If db_ValorID <> -1 Then
                ParentWindow.UpdateWindow
                ParentWindow.Destroy
                enableEdition
                onUpdate = True
            Else
                MsgBox "No se puede crear Valor de Categoría", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminCategoriasService.CategoriasOrm.actualizarCatVal(db_CategoriaID, db_ValorID, txtNombre.Text) Then
                ParentWindow.UpdateWindow
                ParentWindow.Destroy
            Else
                MsgBox "No se puede actualizar Valor de Categoría", vbCritical, "Atención"
                Exit Sub
            End If
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

Public Sub UpdateWindow()
    loadGrids
End Sub

