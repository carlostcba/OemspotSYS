VERSION 5.00
Begin VB.UserControl UsuarioCatValGUI 
   ClientHeight    =   1125
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5805
   KeyPreview      =   -1  'True
   ScaleHeight     =   1125
   ScaleWidth      =   5805
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "UsuarioCatValGUI.ctx":0000
      Left            =   1560
      List            =   "UsuarioCatValGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   120
      Width           =   3975
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   3000
      TabIndex        =   1
      Top             =   720
      Width           =   1215
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   4320
      TabIndex        =   2
      Top             =   720
      Width           =   1215
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   5640
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Label lblCategoria 
      Caption         =   "Categoría:"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   1335
   End
End
Attribute VB_Name = "UsuarioCatValGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminUsuariosService As AdminUsuariosSVR
Private PlatformService As PlatformSVR

Public db_UsuarioID As Long
Public db_CategoriaID As Long

Private Sub UserControl_Initialize()
    Set AdminUsuariosService = New AdminUsuariosSVR
    Set PlatformService = New PlatformSVR
End Sub

Private Sub UserControl_Terminate()
    Set AdminUsuariosService = Nothing
    Set PlatformService = Nothing
End Sub

Property Let UsuarioID(value As Long)
    Let db_UsuarioID = value
End Property

Property Let CategoriaID(value As Long)
    Let db_CategoriaID = value
End Property

Sub init()
    If db_UsuarioID <> 0 Then
        onUpdate = True
        loadData
    Else
        onUpdate = False
    End If

    enableEdition

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
End Sub

Sub enableEdition()
End Sub

Sub loadData()
End Sub

Sub loadGrids()
End Sub

Function validarDatos() As Boolean
    If Combo1.ListIndex = -1 Then
        MsgBox "Debe seleccionar una Categoría de Usuario", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    If validarDatos Then
        If Not onUpdate Then

        Else
            If AdminUsuariosService.UsuarioOrm.crearUsrCatVal(db_UsuarioID, db_CategoriaID, Combo1.ItemData(Combo1.ListIndex)) <> -1 Then
                enableEdition
                onUpdate = True
                ParentWindow.Destroy
            Else
                MsgBox "No se puede crear Categoría de Usuario", vbCritical, "Atención"
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
