VERSION 5.00
Begin VB.UserControl WorkstationOpcionGUI 
   ClientHeight    =   3270
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   8880
   KeyPreview      =   -1  'True
   ScaleHeight     =   3270
   ScaleWidth      =   8880
   Begin VB.TextBox txtValor 
      Height          =   1965
      Left            =   1080
      MaxLength       =   8192
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Top             =   600
      Width           =   7575
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   7320
      TabIndex        =   2
      Top             =   2880
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   5760
      TabIndex        =   1
      Top             =   2880
      Width           =   1335
   End
   Begin VB.TextBox txtNombre 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1080
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   3375
   End
   Begin VB.Label lblValor 
      Caption         =   "Valor:"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   600
      Width           =   735
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   8760
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Label lblParametro 
      Caption         =   "Parámetro:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   735
   End
End
Attribute VB_Name = "WorkstationOpcionGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminWorkstationsService As AdminWorkstationSVR
Private WksOptDataObject As WksOptDAO

Public db_WorkstationID As Long
Public db_OpcionID As Long

Private Sub UserControl_Initialize()
    Set AdminWorkstationsService = New AdminWorkstationSVR
    Set WksOptDataObject = New WksOptDAO
End Sub

Private Sub UserControl_Terminate()
    Set AdminWorkstationsService = Nothing
    Set WksOptDataObject = Nothing
End Sub

Property Let WorkstationID(value As Long)
    Let db_WorkstationID = value
End Property

Property Let OpcionID(value As Long)
    Let db_OpcionID = value
End Property

Sub init()
    If db_OpcionID <> 0 Then
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
    Set WksOptDataObject = AdminWorkstationsService.WorkstationOrm.obtenerWksOpt(db_WorkstationID, db_OpcionID)

    If Not (WksOptDataObject Is Nothing) Then
        txtNombre.Text = WksOptDataObject.Nombre
        txtValor.Text = WksOptDataObject.Valor
    Else
        MsgBox "No se puede leer Opción de Configuración", vbCritical, "Atención"
        Exit Sub
    End If
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
            db_OpcionID = AdminWorkstationsService.WorkstationOrm.crearWksOpt(db_WorkstationID, txtNombre.Text, StringToDBField(txtValor.Text), 0)
            If db_OpcionID <> -1 Then
                enableEdition
                onUpdate = True
                ParentWindow.Destroy
            Else
                MsgBox "No se puede crear Opción", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminWorkstationsService.WorkstationOrm.actualizarWksOpt(db_WorkstationID, db_OpcionID, txtNombre.Text, StringToDBField(txtValor.Text)) Then
                ParentWindow.Destroy
            Else
                MsgBox "No se puede actualizar Opción", vbCritical, "Atención"
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
