VERSION 5.00
Begin VB.UserControl PerfilItemGUI 
   ClientHeight    =   2085
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5385
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   2085
   ScaleWidth      =   5385
   Begin VB.TextBox txtPermanencia 
      Height          =   375
      Left            =   3960
      TabIndex        =   13
      Top             =   600
      Width           =   735
   End
   Begin VB.ComboBox Combo5 
      Height          =   315
      ItemData        =   "PerfilItemGUI.ctx":0000
      Left            =   1920
      List            =   "PerfilItemGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   1080
      Width           =   615
   End
   Begin VB.ComboBox Combo4 
      Height          =   315
      ItemData        =   "PerfilItemGUI.ctx":0004
      Left            =   1200
      List            =   "PerfilItemGUI.ctx":0006
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   1080
      Width           =   615
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      ItemData        =   "PerfilItemGUI.ctx":0008
      Left            =   1920
      List            =   "PerfilItemGUI.ctx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   600
      Width           =   615
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "PerfilItemGUI.ctx":000C
      Left            =   1200
      List            =   "PerfilItemGUI.ctx":000E
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   600
      Width           =   615
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "PerfilItemGUI.ctx":0010
      Left            =   1200
      List            =   "PerfilItemGUI.ctx":0012
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   120
      Width           =   2655
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Default         =   -1  'True
      Height          =   255
      Left            =   2640
      TabIndex        =   5
      Top             =   1680
      Width           =   1215
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   3960
      TabIndex        =   6
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "min"
      Height          =   255
      Left            =   4800
      TabIndex        =   14
      Top             =   660
      Width           =   255
   End
   Begin VB.Label Label3 
      Caption         =   "Permanencia (0=no controla)"
      Height          =   615
      Left            =   2760
      TabIndex        =   12
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   ":"
      Height          =   255
      Left            =   1800
      TabIndex        =   11
      Top             =   1080
      Width           =   135
   End
   Begin VB.Label Label1 
      Caption         =   ":"
      Height          =   255
      Left            =   1800
      TabIndex        =   10
      Top             =   600
      Width           =   135
   End
   Begin VB.Label lblHoraFin 
      Caption         =   "Hora Fin:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   1080
      Width           =   975
   End
   Begin VB.Label lblHoraInicio 
      Caption         =   "Hora Inicio:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   600
      Width           =   975
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   5280
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Label lblDia 
      Caption         =   "Día:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "PerfilItemGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminPerfilesService As AdminPerfilesSVR
Private PlatformService As PlatformSVR
Private PrfValDataObject As PrfValDAO

Public db_perfilID As Long
Public db_ItemID As Long

Private Sub UserControl_Initialize()
    Set AdminPerfilesService = New AdminPerfilesSVR
    Set PlatformService = New PlatformSVR
    Set PrfValDataObject = New PrfValDAO

    llenarDiasDeLaSemana Combo1

    llenarComboNumeros Combo2, 24, True
    llenarComboNumeros Combo3, 59, True

    llenarComboNumeros Combo4, 24, True
    llenarComboNumeros Combo5, 59, True

End Sub

Private Sub UserControl_Terminate()
    Set AdminPerfilesService = Nothing
    Set PlatformService = Nothing
    Set PrfValDataObject = Nothing
End Sub

Property Let PerfilID(value As Long)
    Let db_perfilID = value
End Property

Property Let ItemID(value As Long)
    Let db_ItemID = value
End Property

Sub init()
    If db_ItemID <> 0 Then
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
    Dim hora As String
    Dim inicioHora As String
    Dim finHora As String

    Set PrfValDataObject = AdminPerfilesService.PerfilOrm.obtenerPrfVal(db_perfilID, db_ItemID)

    If Not (PrfValDataObject Is Nothing) Then
        Combo1.ListIndex = CInt(PrfValDataObject.Dia)

        hora = CStr(PrfValDataObject.HoraInicio)

            finHora = Right(hora, 2)
    
            If Len(hora) = 4 Then
                inicioHora = Left(hora, 2)
            Else
                inicioHora = Left(hora, 1)
            End If
        
        Combo2.ListIndex = CInt(inicioHora)
        Combo3.ListIndex = CInt(finHora)
       
        hora = CStr(PrfValDataObject.HoraFin)

            finHora = Right(hora, 2)
    
            If Len(hora) = 4 Then
                inicioHora = Left(hora, 2)
            Else
                inicioHora = Left(hora, 1)
            End If

        Combo4.ListIndex = CInt(inicioHora)
        Combo5.ListIndex = CInt(finHora)
        txtPermanencia.Text = PrfValDataObject.Permanencia
        
        
    Else
        MsgBox "No se puede leer Item de Perfil", vbCritical, "Atención"
        Exit Sub
    End If

    loadGrids
End Sub

Sub loadGrids()
End Sub

Function validarDatos() As Boolean
    If Combo1.ListIndex = -1 Then
        MsgBox "Debe seleccionar un Día del Item de Perfil", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo2.ListIndex = -1 Then
        MsgBox "Debe seleccionar Hora de la Hora de Inicio", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo3.ListIndex = -1 Then
        MsgBox "Debe seleccionar Minuto de la Hora de Inicio", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo4.ListIndex = -1 Then
        MsgBox "Debe seleccionar Hora de la Hora de Finaización", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo5.ListIndex = -1 Then
        MsgBox "Debe seleccionar Minuto de la Hora de Finaización", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    
    If Not IsNumeric(txtPermanencia.Text) Then
        MsgBox "El tiempo de permanencia debe ser numerico", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    
    
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    If validarDatos Then
        Dim HoraInicio As String
        Dim HoraFin As String

        HoraInicio = completarConCeros(CStr(Combo2.ItemData(Combo2.ListIndex)), 2) & completarConCeros(CStr(Combo3.ItemData(Combo3.ListIndex)), 2)
        HoraFin = completarConCeros(CStr(Combo4.ItemData(Combo4.ListIndex)), 2) & completarConCeros(CStr(Combo5.ItemData(Combo5.ListIndex)), 2)

        If Not onUpdate Then
            If AdminPerfilesService.PerfilOrm.crearPrfVal(db_perfilID, Combo1.ListIndex, HoraInicio, HoraFin, txtPermanencia.Text) <> -1 Then
                enableEdition
                onUpdate = True
                ParentWindow.Destroy
            Else
                MsgBox "No se puede crear Item de Perfil", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminPerfilesService.PerfilOrm.actualizarPrfVal(db_perfilID, db_ItemID, Combo1.ListIndex, HoraInicio, HoraFin, txtPermanencia.Text) Then
                ParentWindow.Destroy
            Else
                MsgBox "No se puede crear Item de Perfil", vbCritical, "Atención"
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
