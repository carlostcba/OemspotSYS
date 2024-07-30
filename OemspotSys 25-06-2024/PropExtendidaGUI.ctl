VERSION 5.00
Begin VB.UserControl PropExtendidaGUI 
   ClientHeight    =   3645
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9270
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   3645
   ScaleWidth      =   9270
   Begin VB.TextBox txtDescripcion 
      Height          =   2175
      Left            =   1200
      TabIndex        =   1
      Top             =   600
      Width           =   7815
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   1200
      MaxLength       =   64
      TabIndex        =   0
      Top             =   120
      Width           =   3855
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   7560
      TabIndex        =   3
      Top             =   3240
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Cancel          =   -1  'True
      Caption         =   "Guardar"
      Height          =   255
      Left            =   6000
      TabIndex        =   2
      Top             =   3240
      Width           =   1335
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   975
   End
   Begin VB.Label lblDescripcion 
      Caption         =   "Descripción:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   720
      Width           =   975
   End
   Begin VB.Line Line6 
      BorderColor     =   &H80000006&
      X1              =   120
      X2              =   9120
      Y1              =   3000
      Y2              =   3000
   End
End
Attribute VB_Name = "PropExtendidaGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminPropExtendidasService As AdminPropExtendidasSVR
Private PrxDataObject As PrxDAO

Public db_PropExtendidaID As Long

Private Sub UserControl_Initialize()
    Set AdminPropExtendidasService = New AdminPropExtendidasSVR
    Set PrxDataObject = New PrxDAO
End Sub

Private Sub UserControl_Terminate()
    Set AdminPropExtendidasService = Nothing
    Set PrxDataObject = Nothing
End Sub

Property Let PropExtendidaID(value As Long)
    Let db_PropExtendidaID = value
End Property

Sub init()
    If db_PropExtendidaID <> 0 Then
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
    Set PrxDataObject = AdminPropExtendidasService.PropExtendidasOrm.obtenerPropiedad(db_PropExtendidaID)

    If Not (PrxDataObject Is Nothing) Then
        txtNombre.Text = PrxDataObject.Nombre
        txtDescripcion.Text = PrxDataObject.Descripcion
    Else
        MsgBox "No se puede leer Propiedad Extendida", vbCritical, "Atención"
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
            db_PropExtendidaID = AdminPropExtendidasService.PropExtendidasOrm.crearPropiedad(txtNombre.Text, txtDescripcion.Text)
            If db_PropExtendidaID <> -1 Then
                enableEdition
                onUpdate = True
                
                ParentWindow.UpdateWindow
                ParentWindow.Destroy
            Else
                MsgBox "No se puede crear Propiedad Extendida", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminPropExtendidasService.PropExtendidasOrm.actualizarPropiedad(db_PropExtendidaID, txtNombre.Text, txtDescripcion.Text) Then
                ParentWindow.Destroy
            Else
                MsgBox "No se puede actualizar Propiedad Extendida", vbCritical, "Atención"
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
