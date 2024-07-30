VERSION 5.00
Begin VB.UserControl PersonaDirCatValGUI 
   ClientHeight    =   4935
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5535
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   4935
   ScaleWidth      =   5535
   Begin VB.ComboBox txtPais 
      Height          =   288
      ItemData        =   "PersonaDirCatValGUI.ctx":0000
      Left            =   1344
      List            =   "PersonaDirCatValGUI.ctx":0002
      TabIndex        =   19
      Top             =   612
      Width           =   2055
   End
   Begin VB.TextBox txtOficina 
      Height          =   285
      Left            =   1320
      MaxLength       =   32
      TabIndex        =   7
      Top             =   3960
      Width           =   2055
   End
   Begin VB.TextBox txtPiso 
      Height          =   285
      Left            =   1320
      MaxLength       =   32
      TabIndex        =   6
      Top             =   3480
      Width           =   2055
   End
   Begin VB.TextBox txtNumero 
      Height          =   285
      Left            =   1320
      MaxLength       =   32
      TabIndex        =   5
      Top             =   3000
      Width           =   2055
   End
   Begin VB.TextBox txtCalle 
      Height          =   285
      Left            =   1320
      MaxLength       =   32
      TabIndex        =   4
      Top             =   2520
      Width           =   3975
   End
   Begin VB.ComboBox txtLocalidad 
      Height          =   315
      ItemData        =   "PersonaDirCatValGUI.ctx":0004
      Left            =   1320
      List            =   "PersonaDirCatValGUI.ctx":0006
      TabIndex        =   2
      Top             =   1560
      Width           =   2055
   End
   Begin VB.ComboBox txtProvincia 
      Height          =   315
      ItemData        =   "PersonaDirCatValGUI.ctx":0008
      Left            =   1320
      List            =   "PersonaDirCatValGUI.ctx":000A
      TabIndex        =   1
      Top             =   1080
      Width           =   2055
   End
   Begin VB.TextBox txtCodigoPostal 
      Height          =   285
      Left            =   1320
      MaxLength       =   32
      TabIndex        =   3
      Top             =   2040
      Width           =   2055
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "PersonaDirCatValGUI.ctx":000C
      Left            =   1320
      List            =   "PersonaDirCatValGUI.ctx":000E
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   120
      Width           =   3975
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Default         =   -1  'True
      Height          =   255
      Left            =   2760
      TabIndex        =   8
      Top             =   4560
      Width           =   1215
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   4080
      TabIndex        =   9
      Top             =   4560
      Width           =   1215
   End
   Begin VB.Label lblOficina 
      Caption         =   "Oficina:"
      Height          =   255
      Left            =   120
      LinkItem        =   "l"
      TabIndex        =   18
      Top             =   3960
      Width           =   1095
   End
   Begin VB.Label lblPiso 
      Caption         =   "Piso:"
      Height          =   255
      Left            =   120
      TabIndex        =   17
      Top             =   3480
      Width           =   1095
   End
   Begin VB.Label lblNumero 
      Caption         =   "Número:"
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   3000
      Width           =   1095
   End
   Begin VB.Label lblCalle 
      Caption         =   "Calle:"
      Height          =   255
      Left            =   120
      TabIndex        =   15
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Label lblLocalidad 
      Caption         =   "Localidad:"
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Label lblProvincia 
      Caption         =   "Provincia:"
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label lblPais 
      Caption         =   "País:"
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label lblCodigoPostal 
      Caption         =   "Código Postal:"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   2040
      Width           =   1095
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   5400
      Y1              =   4440
      Y2              =   4440
   End
   Begin VB.Label lblCategoria 
      Caption         =   "Categoría:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "PersonaDirCatValGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminPersonasService As AdminPersonasSVR
Private PlatformService As PlatformSVR

Private PerDirCatValDataObject As PerDirCatValDAO

Public db_PersonaID As Long
Public db_CategoriaID As Long
Public db_ValorID As Long
Public db_DireccionID As Long
Public db_Numero  As String

Private Sub UserControl_Initialize()
    Set AdminPersonasService = New AdminPersonasSVR
    Set PlatformService = New PlatformSVR
    Set PerDirCatValDataObject = New PerDirCatValDAO
End Sub

Private Sub UserControl_Terminate()
    Set AdminPersonasService = Nothing
    Set PlatformService = Nothing
    Set PerDirCatValDataObject = Nothing
End Sub

Property Let PersonaID(value As Long)
    Let db_PersonaID = value
End Property

Property Let CategoriaID(value As Long)
    Let db_CategoriaID = value
End Property

Property Let ValorID(value As Long)
    Let db_ValorID = value
End Property

Property Let Numero(value As String)
    Let db_Numero = value
End Property

Property Let DireccionID(value As Long)
    Let db_DireccionID = value
End Property

Sub init()
    Dim i As Integer

    If PlatformService.getValoresCategoria(db_CategoriaID) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo1.List(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)
            Combo1.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo1.ListIndex = 0
    End If
    
    UtilitySYS.llenarListaPaises txtPais

    If db_DireccionID <> 0 Then
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
    txtNumero.Text = db_Numero
    Set PerDirCatValDataObject = AdminPersonasService.PersonaOrm.obtenerPerDirCatVal(db_PersonaID, db_DireccionID, db_CategoriaID, db_ValorID)

    If Not (PerDirCatValDataObject Is Nothing) Then
        txtPais.Text = PerDirCatValDataObject.Pais
        txtProvincia.Text = PerDirCatValDataObject.Provincia
        txtLocalidad.Text = PerDirCatValDataObject.Localidad
        txtCodigoPostal.Text = PerDirCatValDataObject.CodigoPostal
        txtCalle.Text = PerDirCatValDataObject.Calle
        txtNumero.Text = PerDirCatValDataObject.Numero
        txtPiso.Text = PerDirCatValDataObject.Piso
        txtOficina.Text = PerDirCatValDataObject.Oficina

        Dim i As Integer
        
        For i = 0 To Combo1.ListCount - 1
            If Combo1.ItemData(i) = PerDirCatValDataObject.ValorID Then
                Combo1.ListIndex = i
                Exit For
            End If
        Next

'    Else
'        MsgBox "No se puede leer Direccion de Persona", vbCritical, "Atención"
'        Exit Sub
    End If
'
'    loadGrids
End Sub

Sub loadGrids()
End Sub

Function validarDatos() As Boolean
    If Combo1.ListIndex = -1 Then
        MsgBox "Debe seleccionar una Categoría de Direccion", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    If validarDatos Then
      '  If Not onUpdate Then
            db_PersonaID = AdminPersonasService.PersonaOrm.crearPerDirCatVal(db_PersonaID, db_CategoriaID, Combo1.ItemData(Combo1.ListIndex), txtPais.Text, txtProvincia.Text, txtLocalidad.Text, txtCodigoPostal.Text, txtCalle.Text, txtNumero.Text, txtPiso.Text, txtOficina.Text)
            If db_PersonaID <> -1 Then
                enableEdition
                onUpdate = True
                ParentWindow.Realizo_Actualizacion = True
                ParentWindow.Destroy
            Else
                MsgBox "No se puede crear Direccion de Persona", vbCritical, "Atención"
                Exit Sub
            End If
'        Else
'            If AdminPersonasService.PersonaOrm.actualizarPerDirCatVal(db_DireccionID, db_personaID, db_CategoriaID, Combo1.ItemData(Combo1.ListIndex), txtPais.Text, txtProvincia.Text, txtLocalidad.Text, txtCodigoPostal.Text, txtCalle.Text, txtNumero.Text, txtPiso.Text, txtOficina.Text) Then
'                ParentWindow.Destroy
'            Else
'                MsgBox "No se puede actualizar Direccion de Persona", vbCritical, "Atención"
'                Exit Sub
'            End If
'        End If
    End If
End Sub

Private Sub txtPais_Click()
    If txtPais.ListIndex = 11 Then
        txtProvincia.Clear
        UtilitySYS.llenarListaProvinciasArgentinas txtProvincia
    Else
        txtProvincia.Clear
    End If
End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Realizo_Actualizacion = False
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub
