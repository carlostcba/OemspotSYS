VERSION 5.00
Begin VB.UserControl PersonaPrxGUI 
   ClientHeight    =   3390
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   8475
   KeyPreview      =   -1  'True
   ScaleHeight     =   3390
   ScaleWidth      =   8475
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "PersonaPrxGUI.ctx":0000
      Left            =   1080
      List            =   "PersonaPrxGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   120
      Width           =   3735
   End
   Begin VB.TextBox txtValor 
      Height          =   1965
      Left            =   1080
      MaxLength       =   8192
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   600
      Width           =   7215
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   6840
      TabIndex        =   2
      Top             =   3000
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   5280
      TabIndex        =   1
      Top             =   3000
      Width           =   1335
   End
   Begin VB.Label lblValor 
      Caption         =   "Valor:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   600
      Width           =   735
   End
   Begin VB.Label lblPropiedad 
      Caption         =   "Propiedad:"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   855
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   8280
      Y1              =   2760
      Y2              =   2760
   End
End
Attribute VB_Name = "PersonaPrxGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminPropExtendidasService As AdminPropExtendidasSVR
Private AdminPersonasService As AdminPersonasSVR
Private PerPrxDataObject As PerPrxDAO

Public db_personaID As Long
Public db_PropiedadID As Long
Public db_Valor As String

Property Let PersonaID(value As Long)
    Let db_personaID = value
End Property

Property Let Valor(value As String)
    Let db_Valor = value
End Property

Private Sub UserControl_Initialize()
    Set AdminPropExtendidasService = New AdminPropExtendidasSVR
    Set AdminPersonasService = New AdminPersonasSVR
    Set PerPrxDataObject = New PerPrxDAO

    Dim i As Integer

    If AdminPropExtendidasService.getList("", 0) Then
        i = 0
        Do While Not AdminPropExtendidasService.PropExtendidasQuery.DbRecordsetQRY.EOF
            combo1.List(i) = CStr(AdminPropExtendidasService.PropExtendidasQuery.DbRecordsetQRY.Fields(1).value)
            combo1.ItemData(i) = CStr(AdminPropExtendidasService.PropExtendidasQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            AdminPropExtendidasService.PropExtendidasQuery.DbRecordsetQRY.MoveNext
        Loop
        combo1.ListIndex = 0
    End If

    For i = 0 To combo1.ListCount - 1
        If combo1.ItemData(i) = db_PropiedadID Then
            combo1.ListIndex = i
        End If
    Next

End Sub

Private Sub UserControl_Termisnate()
    Set AdminPropExtendidasService = Nothing
    Set AdminPersonasService = Nothing
    Set PerPrxDataObject = Nothing
End Sub

Sub init()
    If db_PropiedadID <> 0 Then
        combo1.Enabled = False
        onUpdate = True
        loadData
    Else
        combo1.Enabled = True
        onUpdate = False
    End If

    enableEdition
End Sub

Sub enableEdition()
End Sub

Sub loadData()
    txtValor.Text = db_Valor
    
    Dim i As Integer
'    Set PerPrxDataObject = AdminPersonasService.PersonaOrm.obtenerPerPrx(db_personaID, db_PropiedadID)
'
'    If Not (PerPrxDataObject Is Nothing) Then
'        txtValor.Text = PerPrxDataObject.Valor

        For i = 0 To combo1.ListCount - 1
            If combo1.ItemData(i) = PerPrxDataObject.PropiedadID Then
                combo1.ListIndex = i
                Exit For
            End If
        Next

'    Else
'        MsgBox "No se puede leer Propiedad Extendida de Persona", vbCritical, "Atención"
'        Exit Sub
'    End If
'
'    loadGrids
End Sub

Sub loadGrids()
End Sub

Function validarDatos() As Boolean
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    Dim l As Long
    If validarDatos Then
   '     If Not onUpdate Then
            l = AdminPersonasService.PersonaOrm.crearPerPrx(db_personaID, combo1.ItemData(combo1.ListIndex), txtValor.Text)
            If db_PropiedadID <> -1 Then
                ParentWindow.UpdateWindow
                ParentWindow.Destroy
                enableEdition
                onUpdate = True
            Else
                MsgBox "No se puede crear Propiedad Extendida de Persona", vbCritical, "Atención"
                Exit Sub
            End If
'        Else
'            If AdminPersonasService.PersonaOrm.actualizarPerPrx(db_personaID, Combo1.ItemData(Combo1.ListIndex), txtValor.Text) Then
'                ParentWindow.UpdateWindow
'                ParentWindow.Destroy
'            Else
'                MsgBox "No se puede actualizar Propiedad Extendida de Persona", vbCritical, "Atención"
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

Public Sub UpdateWindow()
    loadGrids
End Sub
