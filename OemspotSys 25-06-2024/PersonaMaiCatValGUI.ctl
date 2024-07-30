VERSION 5.00
Begin VB.UserControl PersonaMaiCatValGUI 
   ClientHeight    =   1575
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5415
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   1575
   ScaleWidth      =   5415
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   3960
      TabIndex        =   3
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Default         =   -1  'True
      Height          =   255
      Left            =   2640
      TabIndex        =   2
      Top             =   1200
      Width           =   1215
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "PersonaMaiCatValGUI.ctx":0000
      Left            =   1200
      List            =   "PersonaMaiCatValGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   120
      Width           =   3975
   End
   Begin VB.TextBox txtEmail 
      Height          =   285
      Left            =   1200
      MaxLength       =   128
      TabIndex        =   1
      Top             =   600
      Width           =   3975
   End
   Begin VB.Label lblCategoria 
      Caption         =   "Categoría:"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   975
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   5280
      Y1              =   1080
      Y2              =   1080
   End
   Begin VB.Label lblEmail 
      Caption         =   "E-mail:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   600
      Width           =   975
   End
End
Attribute VB_Name = "PersonaMaiCatValGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminPersonasService As AdminPersonasSVR
Private PlatformService As PlatformSVR

Private PerMaiCatValDataObject As PerMaiCatValDAO

Public db_personaID As Long
Public db_CategoriaID As Long
Public db_ValorID As Long
Public db_EmailID As Long
Public db_Email As String

Private Sub UserControl_Initialize()
    Set AdminPersonasService = New AdminPersonasSVR
    Set PlatformService = New PlatformSVR
    Set PerMaiCatValDataObject = New PerMaiCatValDAO
End Sub

Private Sub UserControl_Terminate()
    Set AdminPersonasService = Nothing
    Set PlatformService = Nothing
    Set PerMaiCatValDataObject = Nothing
End Sub

Property Let PersonaID(value As Long)
    Let db_personaID = value
End Property

Property Let CategoriaID(value As Long)
    Let db_CategoriaID = value
End Property

Property Let ValorID(value As Long)
    Let db_ValorID = value
End Property

Property Let EmailID(value As Long)
    Let db_EmailID = value
End Property

Property Let Email(value As String)
    Let db_Email = value
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

    If db_EmailID <> 0 Then
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

    txtEmail.Text = db_Email
'    Set PerMaiCatValDataObject = AdminPersonasService.PersonaOrm.obtenerPerMaiCatVal(db_personaID, db_EmailID, db_CategoriaID, db_ValorID)
'
'    If Not (PerMaiCatValDataObject Is Nothing) Then
'        txtEmail.Text = PerMaiCatValDataObject.Email

        Dim i As Integer
        
        For i = 0 To Combo1.ListCount - 1
            If Combo1.ItemData(i) = PerMaiCatValDataObject.ValorID Then
                Combo1.ListIndex = i
            End If
        Next
'
'    Else
'        MsgBox "No se puede leer Email de Persona", vbCritical, "Atención"
'        Exit Sub
'    End If
'
'    loadGrids
End Sub

Sub loadGrids()
End Sub

Function validarDatos() As Boolean
    If Combo1.ListIndex = -1 Then
        MsgBox "Debe seleccionar una Categoría de Email", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If txtEmail.Text = "" Then
        MsgBox "Debe ingresar un Email", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    If validarDatos Then
     '   If Not onUpdate Then
            db_personaID = AdminPersonasService.PersonaOrm.crearPerMaiCatVal(db_personaID, db_CategoriaID, Combo1.ItemData(Combo1.ListIndex), txtEmail.Text)
            If db_personaID <> -1 Then
                enableEdition
                onUpdate = True
                 ParentWindow.Realizo_Actualizacion = True
                ParentWindow.Destroy
            Else
                MsgBox "No se puede crear Email de Persona", vbCritical, "Atención"
                Exit Sub
            End If
'        Else
'            If AdminPersonasService.PersonaOrm.actualizarPerMaiCatVal(db_EmailID, db_personaID, db_CategoriaID, Combo1.ItemData(Combo1.ListIndex), txtEmail.Text) Then
'                ParentWindow.Destroy
'            Else
'                MsgBox "No se puede actualizar Email de Persona", vbCritical, "Atención"
'                Exit Sub
'            End If
'        End If
    End If
End Sub

Private Sub cmdCerrar_Click()
    ParentWindow.Realizo_Actualizacion = False
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        cmdCerrar_Click
    End If
End Sub

