VERSION 5.00
Begin VB.UserControl PersonaDocCatValGUI 
   ClientHeight    =   1575
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5415
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   1575
   ScaleWidth      =   5415
   Begin VB.TextBox txtDocumento 
      Height          =   285
      Left            =   1200
      MaxLength       =   32
      TabIndex        =   1
      Top             =   600
      Width           =   3975
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "PersonaDocCatValGUI.ctx":0000
      Left            =   1200
      List            =   "PersonaDocCatValGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   120
      Width           =   3975
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
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cancelar"
      Height          =   255
      Left            =   3960
      TabIndex        =   3
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label lblDocumento 
      Caption         =   "Documento:"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   600
      Width           =   975
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   5280
      Y1              =   1080
      Y2              =   1080
   End
   Begin VB.Label lblCategoria 
      Caption         =   "Categoría:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "PersonaDocCatValGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminPersonasService As AdminPersonasSVR
Private PlatformService As PlatformSVR

Private PerDocCatValDataObject As PerDocCatValDAO

Public db_PersonaID As Long
Public db_CategoriaID As Long
Public db_ValorID As Long
Public db_DocumentoID As Long
Public db_Numero  As String

Private Sub UserControl_Initialize()
    Set AdminPersonasService = New AdminPersonasSVR
    Set PlatformService = New PlatformSVR
    Set PerDocCatValDataObject = New PerDocCatValDAO
End Sub

Private Sub UserControl_Terminate()
    Set AdminPersonasService = Nothing
    Set PlatformService = Nothing
    Set PerDocCatValDataObject = Nothing
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

Property Let DocumentoID(value As Long)
    Let db_DocumentoID = value
End Property

Property Let Numero(value As String)
    Let db_Numero = value
End Property

Sub init()
    Dim i As Integer

    If PlatformService.getValoresCategoria(db_CategoriaID) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            combo1.List(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)
            combo1.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        combo1.ListIndex = 0
    End If
    
    
    If db_DocumentoID <> 0 Then
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

    On Error Resume Next

    txtDocumento.Text = db_Numero
    
    'Set PerDocCatValDataObject = AdminPersonasService.PersonaOrm.obtenerPerDocCatVal(db_personaID, db_DocumentoID, db_CategoriaID, db_ValorID)

    'If Not (PerDocCatValDataObject Is Nothing) Then
    '    txtDocumento.Text = PerDocCatValDataObject.Documento
'
        Dim i As Integer
'
        For i = 0 To combo1.ListCount - 1
            If combo1.ItemData(i) = db_ValorID Then
                combo1.ListIndex = i
                Exit For 'faltaba esto entonces daba vueltas de mas!!!!!!
            End If
        Next
'
'    Else
'        MsgBox "No se puede leer Documento de Persona", vbCritical, "Atención"
'        Exit Sub
'    End If
'
'    loadGrids
End Sub

Sub loadGrids()
End Sub

Function validarDatos() As Boolean
    If combo1.ListIndex = -1 Then
        MsgBox "Debe Seleccionar una Categoría de Documento", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If txtDocumento.Text = "" Then
        MsgBox "Debe ingresar un Documento", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    On Error Resume Next

    If validarDatos Then
        'If Not onUpdate Then
            db_PersonaID = AdminPersonasService.PersonaOrm.crearPerDocCatVal(db_PersonaID, db_CategoriaID, combo1.ItemData(combo1.ListIndex), txtDocumento.Text)
            If db_PersonaID <> -1 Then
                enableEdition
                onUpdate = True
                
                ParentWindow.Realizo_Actualizacion = True
                ParentWindow.Destroy
            Else
                MsgBox "No se puede crear Documento de Persona", vbCritical, "Atención"
                Exit Sub
            End If
        'Else
        '    If AdminPersonasService.PersonaOrm.actualizarPerDocCatVal(db_DocumentoID, db_personaID, db_CategoriaID, combo1.ItemData(combo1.ListIndex), txtDocumento.Text) Then
        '        ParentWindow.Destroy
        '    Else
        '        MsgBox "No se puede actualizar Documento de Persona", vbCritical, "Atención"
        '        Exit Sub
        '    End If
        'End If
        'Transaccion_Finalizar
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
