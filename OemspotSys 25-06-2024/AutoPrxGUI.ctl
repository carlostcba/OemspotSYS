VERSION 5.00
Begin VB.UserControl AutoPrxGUI 
   ClientHeight    =   3435
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   8430
   KeyPreview      =   -1  'True
   ScaleHeight     =   3435
   ScaleWidth      =   8430
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   5280
      TabIndex        =   2
      Top             =   3000
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   6840
      TabIndex        =   3
      Top             =   3000
      Width           =   1335
   End
   Begin VB.TextBox txtValor 
      Height          =   1965
      Left            =   1080
      MaxLength       =   8192
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   600
      Width           =   7215
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "AutoPrxGUI.ctx":0000
      Left            =   1080
      List            =   "AutoPrxGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   120
      Width           =   3735
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   8280
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Label lblPropiedad 
      Caption         =   "Propiedad:"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   855
   End
   Begin VB.Label lblValor 
      Caption         =   "Valor:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   600
      Width           =   735
   End
End
Attribute VB_Name = "AutoPrxGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminPropExtendidasService As AdminPropExtendidasSVR
Private AdminAutosService As AdminAutosSVR
Private AutPrxDataObject As AutPrxDAO

Public db_AutoID As Long
Public db_PropiedadID As Long

Private Sub UserControl_Initialize()
    Set AdminPropExtendidasService = New AdminPropExtendidasSVR
    Set AdminAutosService = New AdminAutosSVR
    Set AutPrxDataObject = New AutPrxDAO

    Dim i As Integer

    If AdminPropExtendidasService.getList("", 0) Then
        i = 0
        Do While Not AdminPropExtendidasService.PropExtendidasQuery.DbRecordsetQRY.EOF
            Combo1.List(i) = CStr(AdminPropExtendidasService.PropExtendidasQuery.DbRecordsetQRY.Fields(1).value)
            Combo1.ItemData(i) = CStr(AdminPropExtendidasService.PropExtendidasQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            AdminPropExtendidasService.PropExtendidasQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo1.ListIndex = 0
    End If

    For i = 0 To Combo1.ListCount - 1
        If Combo1.ItemData(i) = db_PropiedadID Then
            Combo1.ListIndex = i
        End If
    Next

End Sub

Private Sub UserControl_Termisnate()
    Set AdminPropExtendidasService = Nothing
    Set AdminAutosService = Nothing
    Set AutPrxDataObject = Nothing
End Sub

Property Let AutoID(value As Long)
    Let db_AutoID = value
End Property

Property Let PropiedadID(value As Long)
    Let db_PropiedadID = value
End Property

Sub init()
    If db_PropiedadID <> 0 Then
        Combo1.Enabled = False
        onUpdate = True
        loadData
    Else
        Combo1.Enabled = True
        onUpdate = False
    End If

    enableEdition
End Sub

Sub enableEdition()
End Sub

Sub loadData()
    Dim i As Integer
    Set AutPrxDataObject = AdminAutosService.AutosOrm.obtenerAutPrx(db_AutoID, db_PropiedadID)

    If Not (AutPrxDataObject Is Nothing) Then
        txtValor.Text = AutPrxDataObject.Valor

        For i = 0 To Combo1.ListCount - 1
            If Combo1.ItemData(i) = AutPrxDataObject.PropiedadID Then
                Combo1.ListIndex = i
            End If
        Next

    Else
        MsgBox "No se puede leer Propiedad Extendida de Auto", vbCritical, "Atención"
        Exit Sub
    End If

    loadGrids
End Sub

Sub loadGrids()
End Sub

Function validarDatos() As Boolean
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    Dim l As Long
    If validarDatos Then
        If Not onUpdate Then
            l = AdminAutosService.AutosOrm.crearAutPrx(db_AutoID, Combo1.ItemData(Combo1.ListIndex), txtValor.Text)
            If l <> -1 Then
                ParentWindow.UpdateWindow
                ParentWindow.Destroy
                enableEdition
                onUpdate = True
            Else
                MsgBox "No se puede crear Propiedad Extendida de Auto", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminAutosService.AutosOrm.actualizarAutPrx(db_AutoID, Combo1.ItemData(Combo1.ListIndex), txtValor.Text) Then
                ParentWindow.UpdateWindow
                ParentWindow.Destroy
            Else
                MsgBox "No se puede actualizar Propiedad Extendida de Auto", vbCritical, "Atención"
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
