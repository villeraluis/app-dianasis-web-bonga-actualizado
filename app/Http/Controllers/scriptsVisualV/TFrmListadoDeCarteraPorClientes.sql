VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "mscomctl.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Object = "{8B1596DD-B10E-4E63-9FAD-EF1063DE32CF}#1.0#0"; "DianaCombo.ocx"
Begin VB.Form FrmListadoDeCarteraPorClientes 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8520
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11865
   Icon            =   "FrmListadoDeCarteraPorClientes.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8520
   ScaleWidth      =   11865
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Cmdplano 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   9945
      Picture         =   "FrmListadoDeCarteraPorClientes.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   17
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   1710
      Width           =   1350
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGdatos 
      Height          =   1770
      Left            =   360
      TabIndex        =   13
      Top             =   6390
      Visible         =   0   'False
      Width           =   7365
      _cx             =   12991
      _cy             =   3122
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   12640511
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   12640511
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   1
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   50
      Cols            =   30
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      AutoSearchDelay =   2
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0
      ShowComboButton =   1
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
      ComboSearch     =   3
      AutoSizeMouse   =   -1  'True
      FrozenRows      =   0
      FrozenCols      =   0
      AllowUserFreezing=   0
      BackColorFrozen =   0
      ForeColorFrozen =   0
      WallPaperAlignment=   9
      AccessibleName  =   ""
      AccessibleDescription=   ""
      AccessibleValue =   ""
      AccessibleRole  =   24
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGcartera 
      Height          =   5820
      Left            =   405
      TabIndex        =   14
      Top             =   2385
      Width           =   11280
      _cx             =   19897
      _cy             =   10266
      Appearance      =   0
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   16777215
      ForeColor       =   12632319
      BackColorFixed  =   4194304
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483647
      ForeColorSel    =   -2147483635
      BackColorBkg    =   8421504
      BackColorAlternate=   16777215
      GridColor       =   12632256
      GridColorFixed  =   0
      TreeColor       =   -2147483632
      FloodColor      =   16576
      SheetBorder     =   0
      FocusRect       =   1
      HighLight       =   2
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   50
      Cols            =   15
      FixedRows       =   1
      FixedCols       =   0
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   2
      AutoSearchDelay =   2
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   1
      OutlineCol      =   3
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0
      ShowComboButton =   1
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
      ComboSearch     =   3
      AutoSizeMouse   =   -1  'True
      FrozenRows      =   0
      FrozenCols      =   0
      AllowUserFreezing=   0
      BackColorFrozen =   0
      ForeColorFrozen =   0
      WallPaperAlignment=   9
      AccessibleName  =   ""
      AccessibleDescription=   ""
      AccessibleValue =   ""
      AccessibleRole  =   24
   End
   Begin VB.CommandButton CmdFijar 
      BackColor       =   &H00E7D6B8&
      Caption         =   "F"
      Height          =   285
      Left            =   9405
      Style           =   1  'Graphical
      TabIndex        =   8
      ToolTipText     =   "Fijar Columnas"
      Top             =   900
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FEFDE0&
      Caption         =   "Parametros de Consulta"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   1545
      Left            =   405
      TabIndex        =   5
      Top             =   765
      Width           =   8790
      Begin VB.CommandButton CmdTercero 
         Height          =   315
         Left            =   8190
         Picture         =   "FrmListadoDeCarteraPorClientes.frx":6184
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   495
         Width           =   315
      End
      Begin VB.TextBox TxtNombre 
         Enabled         =   0   'False
         Height          =   285
         Left            =   4590
         TabIndex        =   12
         Top             =   510
         Width           =   3570
      End
      Begin VB.TextBox TxtTercero 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3240
         TabIndex        =   10
         Top             =   510
         Width           =   1320
      End
      Begin MSComCtl2.DTPicker DTfechaI 
         Height          =   315
         Left            =   405
         TabIndex        =   0
         Top             =   495
         Width           =   1365
         _ExtentX        =   2408
         _ExtentY        =   556
         _Version        =   393216
         CalendarBackColor=   16777215
         CalendarForeColor=   0
         CalendarTitleBackColor=   16777088
         CalendarTitleForeColor=   0
         CalendarTrailingForeColor=   -2147483632
         CustomFormat    =   "dd-MM-yyyy"
         Format          =   113704963
         CurrentDate     =   38681
      End
      Begin MSComCtl2.DTPicker DTfechaF 
         Height          =   315
         Left            =   1800
         TabIndex        =   15
         Top             =   495
         Width           =   1365
         _ExtentX        =   2408
         _ExtentY        =   556
         _Version        =   393216
         CalendarBackColor=   16777215
         CalendarForeColor=   0
         CalendarTitleBackColor=   16777088
         CalendarTitleForeColor=   0
         CalendarTrailingForeColor=   -2147483632
         CustomFormat    =   "dd-MM-yyyy"
         Format          =   113704963
         CurrentDate     =   38681
      End
      Begin DianaCombo.Combox CobConceptoCartera 
         Height          =   405
         Left            =   3195
         TabIndex        =   19
         Top             =   1035
         Width           =   4230
         _ExtentX        =   7461
         _ExtentY        =   714
         CobWidth        =   2985
         TexWidth        =   1095
         TexVisible      =   0   'False
         Bloqueado       =   -1  'True
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Conceptos de Cartera"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   210
         Left            =   3240
         TabIndex        =   20
         Top             =   855
         Width           =   1815
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha Final"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   210
         Left            =   1800
         TabIndex        =   16
         Top             =   270
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Clientes"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   210
         Left            =   3240
         TabIndex        =   11
         Top             =   270
         Width           =   690
      End
      Begin VB.Label LblFechai 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha Inicial"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   210
         Left            =   405
         TabIndex        =   9
         Top             =   270
         Width           =   990
      End
   End
   Begin Crystal.CrystalReport RepCartera 
      Left            =   135
      Top             =   900
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "1"
      Height          =   285
      Index           =   0
      Left            =   9315
      Style           =   1  'Graphical
      TabIndex        =   1
      ToolTipText     =   "Ver a Nivel de Cuentas.."
      Top             =   1755
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "2"
      Height          =   285
      Index           =   1
      Left            =   9585
      Style           =   1  'Graphical
      TabIndex        =   2
      ToolTipText     =   "Ver a Nivel de Subcuentas"
      Top             =   1755
      Visible         =   0   'False
      Width           =   285
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   5535
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   3
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoDeCarteraPorClientes.frx":6746
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoDeCarteraPorClientes.frx":6C8A
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoDeCarteraPorClientes.frx":6D96
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ProgressBar Progres 
      Height          =   240
      Left            =   6390
      TabIndex        =   4
      Top             =   360
      Visible         =   0   'False
      Width           =   4515
      _ExtentX        =   7964
      _ExtentY        =   423
      _Version        =   393216
      Appearance      =   1
      Max             =   10000
      Scrolling       =   1
   End
   Begin MSComDlg.CommonDialog ComArchivo 
      Left            =   4950
      Top             =   -45
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin BarraDiana.BarraOperaciones BarraOperaciones 
      Height          =   945
      Left            =   9945
      TabIndex        =   6
      Top             =   675
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
   End
   Begin VB.Label LblNit 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "NIt"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   225
      Left            =   1485
      TabIndex        =   7
      Top             =   1845
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "      Analisis de Cartera por Clientes"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   0
      TabIndex        =   3
      Top             =   250
      Width           =   12000
   End
   Begin VB.Menu Menur 
      Caption         =   "Opciones"
      Visible         =   0   'False
      Begin VB.Menu Menu 
         Caption         =   "General"
         Index           =   1
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   2
      End
      Begin VB.Menu Menu 
         Caption         =   "Detallado"
         Index           =   3
      End
   End
End
Attribute VB_Name = "FrmListadoDeCarteraPorClientes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Mes As Integer, RegFor As Variant, vFiltro As String, vFecha As Date, vFechaFin As Date, vDias As Long
Dim vSaldoIni As Variant
Private Enum Datos
        Item
        Descri
        Sucursal
        Concepto
        Fecha
        Factura
        Total
        vDebito
        vCredito
        vSaldo
End Enum

Private Enum SaldoCx
        Fecha
        Nombre
        Factura
        Concepto
        Saldo
        vDebitos
        vCreditos
        Dias
        FechaMos
        Sucursal
End Enum

Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        N = FGcartera.Left + 300
        FGcartera.Width = Me.Width - N
        FGcartera.Height = Me.Height - FGcartera.Top - vHeightFor
        
        
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        
        If Permisos(3) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        Progres.Value = 1: Progres.Min = 1
        Progres.Max = 10
        If DTfechaI.Value > DTfechaF.Value Then MsgBox "Seleccione bien el intervalo de fecha", vbExclamation + vbOKOnly, "Atenci�n": DTfechaI.SetFocus: Exit Sub
        If DTfechaI.Value = DTfechaF.Value Then MsgBox "Seleccione bien el intervalo de fecha", vbExclamation + vbOKOnly, "Atenci�n": DTfechaI.SetFocus: Exit Sub
        
        If Trim(TxtTercero.Text) = Empty Then MsgBox "Se�or usuario seleccione el cliente", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        
        vFiltro = Empty
        Progres.Visible = True: Progres.Value = Progres.Value + 1
        Call Analisis_Cartera
                
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        If Permisos(4) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        Call Imprimir_Informe
End Sub

Private Sub CmdFijar_Click()
        If CmdFijar.Caption = "F" Then
             CmdFijar.Caption = "V": FGExistencias.FixedCols = 3
        Else
             FGExistencias.FixedCols = 0: CmdFijar.Caption = "F"
        End If
End Sub

Private Sub CmdNivel_Click(Index As Integer)
            With FGcartera
                If Index = 0 Then
                   .Outline (2)
                   .Outline (1)
                Else
                    .Outline (2)
                End If
                           
           End With
End Sub

Private Sub Cmdplano_Click()
        On Error GoTo Mt
        If FGcartera.Rows - 1 <= 1 Then MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
             FGcartera.SaveGrid ComArchivo.FileName, flexFileExcel, 3
             
        End If
        Exit Sub
Mt: MsgBox "Consultar con el Adm. del Sistema", vbCritical + vbOKOnly, "Atenci�n"

End Sub


Private Sub Cmdplano_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.ExportarS, vbResBitmap)
End Sub

Private Sub CmdTercero_Click()
        Set Informe = New ColInfo
        Informe.Add "CliStNombreCliente", "NOMBRE", 5000
        Informe.Add "Nit", "Nit o Cedula ", 1500
        Sql = "SELECT Concat(CliNit,' ') As Nit,CliStNombreCliente FROM CLIENTES WHERE CliEmpr = '" & Empresa & "' ORDER BY CliStNombreCliente"
        If Buscar_Info(Informe, Sql) = BDOk Then
             TxtTercero.Text = Trim(Informe.Item("Nit").Valor)
             TxtNombre.Text = Trim(Informe.Item("CliStNombreCliente").Valor)
        Else
             LblNit.Caption = Empty
             TxtTercero.Text = Empty
             TxtNombre.Text = Empty
        End If
        FGcartera.Rows = 1
End Sub

Private Sub CmdTercero_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        CmdTercero.Picture = LoadResPicture(BotonSeleccionado.BusquedaS, vbResBitmap)
End Sub

Private Sub CobConceptoCartera_Retorno()
        FGcartera.Rows = 1
End Sub

Private Sub DTfechaF_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaF_LostFocus()
        FGcartera.Rows = 1
End Sub

Private Sub DTfechaI_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaI_LostFocus()
        FGcartera.Rows = 1
End Sub

Private Sub Form_Activate()
        On Error Resume Next
        Call AsignarPermisos_Usuarios(Me)
        LblPeriodo.Caption = "Periodo Activo: " + NombreMes(vPeriodoInv(1)) + " - " + Trim(Str(vPeriodoInv(0)))
                
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
        Dim SetFoc As Object
        Dim FGFocus As VSFlexGrid
        Select Case KeyCode
               Case vbKeyB:
                    If (Shift = 2) And (BarraOperaciones.BotonActivo(Buscar) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Buscar)
               Case vbKeyI:
                    If (Shift = 2) And (BarraOperaciones.BotonActivo(imprimir) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(imprimir)
               
        End Select
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
         Select Case KeyAscii
               Case 13: WshShell.SendKeys "{Tab}"
               Case 48 To 57   ' Permite los d�gitos
               Case 8      ' Permite el car�cter de retroceso
               Case Else
                    KeyAscii = 0
                    
        End Select
End Sub

Private Sub Form_Load()
        Iempresa = Empresa
        Call Configurar_Pantalla
        Call Obtener_FechaServidor
        DTfechaI.Value = Year(FechaServidor) & "-" & Month(FechaServidor) & "-01"
        DTfechaF.Value = FechaServidor
        
        Me.BackColor = Bcolor1
        Me.Caption = Trim(Titul)
        LblTitle.BackColor = Bfcolor
        LblTitle.ForeColor = Fcolor1
        LblTitle.Font = TipoLetraTitulo: LblTitle.FontBold = NegLetraTitulo: LblTitle.FontSize = Tama�oLetraTitulo
        LblTitle.Height = 315
        CmdNivel(0).BackColor = Bcolor1
        CmdNivel(1).BackColor = Bcolor1

        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana
        
        With BarraOperaciones
              .BarUso = BaConsulta
              .Tabla = ""
              .BarBuscar = EstCancel
        End With
               
        With CobConceptoCartera
             .Enabled = True
             .CobWidth = 5300
             .TexWidth = 800
             .TexVisible = False
             .ColCamposGL.Add 0, "Codigo", "CcaIdInConceptoCartera", adInteger, 800, True
             .ColCamposGL.Add 1, "Descripci�n", "CcaStDescripcion", adVarChar, 5300, False
             .ColRet = 1
             .Sql = "SELECT * FROM CONCEPTOSCARTERA WHERE CcaIdStEmpresa = '" & Empresa & "'"
             .ColForeingKey.Add "CcaIdInConceptoCartera", "", adInteger
             .CampoNul = True
        End With
               
        J = 0: K = Empty
        Call Define_Grids(FGcartera)
        Call Define_Grids(FGdatos)
        Idx = 0
        Call DGRILLA
        LblNit.Caption = Empty
                                
        RegFor = 1
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
                
        With FGcartera
             .Rows = 1
             .Cols = 10
             .FixedCols = 0
             .FontName = "Tahoma"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColor = ColorGrilla
             .BackColorBkg = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = &H40C0&
             .BackColorSel = &H808000
             .ForeColorSel = vbWhite
             .ForeColor = vbBlack
             .ForeColorFixed = vColorFixed
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .OutlineCol = 0
             .SelectionMode = flexSelectionByRow
             .AutoSearch = flexSearchFromCursor
             .TextMatrix(0, Datos.Item) = ""
             .TextMatrix(0, Datos.Factura) = "No. Documento"
             .TextMatrix(0, Datos.Concepto) = "Concepto"
             .TextMatrix(0, Datos.Descri) = ""
             .TextMatrix(0, Datos.vCredito) = "Valor Credito"
             .TextMatrix(0, Datos.Total) = "Saldo Anterior"
             .TextMatrix(0, Datos.vSaldo) = "Nuevo Saldo"
             .TextMatrix(0, Datos.vDebito) = "Valor Debito"
             .TextMatrix(0, Datos.Fecha) = "Fecha"
             .TextMatrix(0, Datos.Sucursal) = "Sucursal"
             For K = Datos.Total To Datos.vSaldo
                .ColFormat(K) = "#,###.00"
                .ColWidth(K) = 1300
             Next K
             .ColWidth(Datos.Item) = 200
             .ColWidth(Datos.Descri) = 6000
             .ColWidth(Datos.Concepto) = 3000
             .ColWidth(Datos.Fecha) = 1200
             .ColWidth(Datos.Sucursal) = 2500
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .OutlineBar = flexOutlineBarComplete
             .OutlineCol = Datos.Descri
             .ColHidden(Datos.Factura) = True
             .ColHidden(Datos.Fecha) = False
             
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
        End With
                
        With FGdatos
             .Rows = 1
             .Cols = 10
             .FixedCols = 0
             .FontName = "Tahoma"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColor = ColorGrilla
             .BackColorBkg = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = &H40C0&
             .BackColorSel = &H808000
             .ForeColorSel = vbWhite
             .ForeColorFixed = vColorFixed
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .OutlineCol = 0
             .SelectionMode = flexSelectionByRow
             .AutoSearch = flexSearchFromCursor
             .TextMatrix(0, SaldoCx.Nombre) = "Nombre del Descri"
             .TextMatrix(0, SaldoCx.Dias) = "Dias"
             .TextMatrix(0, SaldoCx.Fecha) = "Fecha"
             .TextMatrix(0, SaldoCx.Saldo) = "Saldo"
             .TextMatrix(0, SaldoCx.Factura) = "Factura"
             .TextMatrix(0, SaldoCx.Concepto) = "Concepto"
             .TextMatrix(0, SaldoCx.FechaMos) = "Fecha Mostrar"
             .TextMatrix(0, SaldoCx.Sucursal) = "Sucursal"
             .ColFormat(SaldoCx.Saldo) = "#,###.00"
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
        End With
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Call BarraOperaciones.Estado_Botones
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.Exportar, vbResBitmap)
        CmdTercero.Picture = LoadResPicture(BotonSeleccionado.Busqueda, vbResBitmap)
End Sub

Private Sub Form_Resize()
        On Error Resume Next
        If Screen.Width >= 15360 And Screen.Height >= 10800 Then
              f = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0)
              Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0)
               
              Me.Move f + AnchoMenu, Y + TopMenu, Me.Width, Me.Height
        End If
End Sub

Private Sub Imprimir_Informe()
        With FGcartera
             On Error GoTo Imprime
             
             Dim Mh As String, GF As String, Iw As String
             If .Rows = 1 Then MsgBox "No hay informaci�n para imprimir", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
                                                                                          
             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME3"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             M = -1: Ax = Empty
             N = 0
             For i = 1 To .Rows - 1
                   Sql = "INSERT INTO INFORME3(InfDesc,InfDes2,Infval1,Infval2,Infval3,Infval4)" & _
                         "VALUES('" & Trim(.TextMatrix(i, Datos.Descri)) & "','" & Trim(.TextMatrix(i, Datos.Fecha)) & "'," & _
                         "" & Val(.TextMatrix(i, Datos.Total)) & "," & Val(.TextMatrix(i, Datos.vDebito)) & "," & _
                         "" & Val(.TextMatrix(i, Datos.vCredito)) & "," & Val(.TextMatrix(i, Datos.vSaldo)) & ")"
                   If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             Next i
             Call Transaccion(BDCommit)
                                               
             R = " " & Format(DTfechaI.Value, "dd/mm/yyyy") & "" & " HASTA " & Format(DTfechaF.Value, "dd/mm/yyyy")
             RepCartera.DiscardSavedData = True
             RepCartera.Formulas(1) = "Empresa= '" & Sigl & "'"
             RepCartera.Formulas(2) = "Parametro= '" & R & "'"
             RepCartera.Formulas(3) = "Cliente= '" & TxtNombre.Text & "'"
'             RepCartera.Formulas(3) = "Titulo= 'ANALISIS DE CARTERA POR CLIENTES'"
             X = Inf + "AnalisisDeCarteraCliente.rpt"
             RepCartera.ReportFileName = X
             RepCartera.Destination = crptToWindow
             RepCartera.WindowTitle = "LISTADO DE ANALISIS DE CARTERA POR CLIENTES"
             RepCartera.WindowMinButton = True
             RepCartera.WindowMaxButton = True
             RepCartera.WindowState = crptMaximized
             RepCartera.PrintReport
        End With
        Exit Sub
Imprime:
   MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atenci�n"

End Sub

Private Sub Analisis_Cartera()
        On Error GoTo Salida
        
        Dim vColDevVenta As New Collection
        Set vColDevVenta = Nothing
        
        With FGdatos
             .Rows = 1: FGdatos.Redraw = flexRDNone
             Progres.Value = Progres.Value + 1
             vSaldoIni = 0
                  
             vFiltro = Empty
             If Trim(CobConceptoCartera.Text) <> Empty Then
                 vFiltro = vFiltro & " AND CarIdInConceptoCartera = " & Val(CobConceptoCartera.Text) & " "
             End If
                  

             '**** SE LE QUITO EL COMPROBANTE
             Sql = "SELECT A.*, B.CcaStDescripcion, C.VenStPrefijoNumeracion,C.VenIdStTipoComprobante,N.SucStNombreSucursal FROM CARTERA A " & _
                   "INNER JOIN CONCEPTOSCARTERA B ON(B.CcaIdStEmpresa = A.CarIdStEmpresa AND B.CcaIdInConceptoCartera = A.CarIdInConceptoCartera) " & _
                   "INNER JOIN VENTAS C ON(C.VenIdStEmpresa = A.CarIdStEmpresa AND C.VenIdStComprobante = A.CarIdStComprobante AND C.VenIdInDocumento = A.CarIdInDocumento) " & _
                   "LEFT OUTER JOIN SUCURSALCLIENTES N ON (A.CarIdStEmpresa = N.SucIdStEmpresa AND A.CarIdStCliente = N.SucIdStCliente AND A.CarStSucursalClientes = N.SucIdInSucursal) " & _
                   "WHERE A.CarIdStEmpresa = '" & Empresa & "' AND A.CarIdStPeriodoAplicativo = '3' AND A.CarDaFechaFactura <= '" & Format(DTfechaF.Value, FormatoFecha) & "' AND " & _
                   "A.CarIdStCliente = '" & TxtTercero.Text & "' " & vFiltro & " " & _
                   "ORDER BY CarDaFechaFactura"
                   
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                      vFecha = rdoRs!CarDaFechaFactura
                      If vFecha < DTfechaI.Value Then
                            vSaldoIni = vSaldoIni + Val("" & rdoRs!CarInValor)
                      Else
                           .AddItem ""
                           .TextMatrix(.Rows - 1, SaldoCx.Fecha) = Format(rdoRs!CarDaFechaFactura, FormatoFecha)
                           .TextMatrix(.Rows - 1, SaldoCx.FechaMos) = Format(rdoRs!CarDaFechaFactura, "dd-MM-yyyy")
                           .TextMatrix(.Rows - 1, SaldoCx.vDebitos) = Val("" & rdoRs!CarInValor)
                           .TextMatrix(.Rows - 1, SaldoCx.Concepto) = Trim("" & rdoRs!CcaStDescripcion)
                           .TextMatrix(.Rows - 1, SaldoCx.Sucursal) = Trim("" & rdoRs!SucStNombreSucursal)
                           'If Trim("" & rdoRs!CarIdStComprobante) = vParametros(12) Then ***ANTERIOR/* falta */
                           If Trim("" & rdoRs!VenIdStTipoComprobante) = vTipoComprobante(4) Then
                                If Trim("" & rdoRs!CarInFactura) <> Empty Then
                                    .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Factura No. " & Trim("" & rdoRs!VenStPrefijoNumeracion) & rdoRs!CarInFactura)
                                    .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("" & rdoRs!CarInFactura)
                                Else
                                    .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Factura No. " & rdoRs!CarIdInDocumento)
                                    .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("" & rdoRs!CarIdInDocumento)
                                End If
                           Else
                                .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Nota Debito No. " & rdoRs!CarIdInDocumento)
                                .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("" & rdoRs!CarIdInDocumento)
                           End If
                      End If
                      rdoRs.MoveNext
                Wend
             End If
             Progres.Value = Progres.Value + 1
                        
              
            '****** recibos de caja - pagos de facturas
             vFiltro = Empty
             If Trim(CobConceptoCartera.Text) <> Empty Then
                 vFiltro = " AND K.MreIdInConceptoCartera = " & Val(CobConceptoCartera.Text) & " "
             End If
                            
             Sql = "SELECT A.*,K.*, M.CcaStDescripcion,C.comnomb,D.VenInFactura,D.VenStPrefijoNumeracion FROM RECIBOCAJA A " & _
                    "INNER JOIN MOVRECIBOCAJA K ON (A.RecIdStEmpresa =K.MreIdStEmpresa AND A.RecIdStComprobante =K.MreIdComprobante AND " & _
                    "A.RecIdInDocumento = K.MreIdInDocumento " & vFiltro & ") " & _
                    "INNER JOIN CONCEPTOSCARTERA M ON(M.CcaIdStEmpresa = K.MreIdStEmpresa AND M.CcaIdInConceptoCartera = K.MreIdInConceptoCartera) " & _
                    "INNER JOIN COMPROBANTES C ON(K.MreIdStEmpresa = C.comempr AND K.MreIdStComprobanteVenta = C.comcodi) " & _
                    "INNER JOIN VENTAS D ON(K.MreIdStEmpresa = D.VenIdStEmpresa AND K.MreIdStComprobanteVenta = D.VenIdStComprobante AND K.MreIdStDocumentoVenta = D.VenIdInDocumento) " & _
                    "WHERE (A.RecIdStEmpresa = '" & Empresa & "' AND " & _
                          "RecDaFechaRecibo <='" & Format(DTfechaF.Value, FormatoFecha) & "' AND " & _
                          "A.RecIdStCliente = '" & TxtTercero.Text & "' AND RecInTipoRecibo <> 1 AND RecStEstadoRegistro = '" & EAprobado & "') " & _
                    "ORDER BY RecDaFechaRecibo"
             
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                      vFecha = rdoRs!RecDaFechaRecibo
                      If vFecha < DTfechaI.Value Then
                            vSaldoIni = vSaldoIni - Val("" & rdoRs!MreInValor)
                      Else
                            .AddItem ""
                            .TextMatrix(.Rows - 1, SaldoCx.Fecha) = Format(rdoRs!RecDaFechaRecibo, FormatoFecha)
                            .TextMatrix(.Rows - 1, SaldoCx.FechaMos) = Format(rdoRs!RecDaFechaRecibo, "dd-MM-yyyy")
                            .TextMatrix(.Rows - 1, SaldoCx.vCreditos) = Val("" & rdoRs!MreInValor)
                            .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("" & rdoRs!RecIdInDocumento)
                            .TextMatrix(.Rows - 1, SaldoCx.Concepto) = Trim("" & rdoRs!CcaStDescripcion)
                            If Trim(rdoRs!RecIdStTipoComprobante) = vTipoComprobante(2) Then
                                 .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Recibo de Caja No. " & rdoRs!RecIdInDocumento) & " - " & Trim("" & rdoRs!MreStDescripcion) & " " & rdoRs!ComNomb & " N�mero " & Trim("" & rdoRs!VenStPrefijoNumeracion) & rdoRs!VenInFactura
                                 
                            Else
                                 If Trim(rdoRs!RecIdStTipoComprobante) = vTipoComprobante(9) Then
                                      .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Nota Credito No. " & rdoRs!RecIdInDocumento) & " - " & Trim("" & rdoRs!MreStDescripcion) & " " & rdoRs!ComNomb & " N�mero " & Trim("" & rdoRs!VenStPrefijoNumeracion) & rdoRs!VenInFactura
                                 Else
                                      .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Ingreso a Banco No. " & rdoRs!RecIdInDocumento) & " - " & Trim("" & rdoRs!MreStDescripcion) & " " & rdoRs!ComNomb & " N�mero " & Trim("" & rdoRs!VenStPrefijoNumeracion) & rdoRs!VenInFactura
                                 End If
                            End If
                      End If
                      rdoRs.MoveNext
                Wend
             End If
             Progres.Value = Progres.Value + 1
            '************************************************************************************
            
            '********* Devoluciones en Ventas ***************************************************
             vFiltro = Empty
             If Trim(CobConceptoCartera.Text) <> Empty Then
                 vFiltro = " AND K.MveIdInConceptoCartera = " & Val(CobConceptoCartera.Text) & " "
             End If
             
             A = Empty 'para diferenciar cada documento de la devolucion
             
             Sql = "SELECT A.*, K.*,M.CcaStDescripcion,C.comnomb FROM VENTAS A " & _
                   "INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa " & vFiltro & ") " & _
                   "INNER JOIN CONCEPTOSCARTERA M ON (K.MveIdStEmpresa = M.CcaIdStEmpresa AND K.MveIdInConceptoCartera = M.CcaIdInConceptoCartera) " & _
                   "INNER JOIN COMPROBANTES C ON(A.VenIdStEmpresa = C.comempr AND A.VenIdStComprobantePedido = C.comcodi) " & _
                   "WHERE (A.VenIdStEmpresa = '" & Empresa & "' AND A.VenIdStTipoComprobante = '" & vTipoComprobante(6) & "' AND VenStCruzaaCartera = '1' AND " & _
                        "VenDaFechaDoc <='" & Format(DTfechaF.Value, FormatoFecha) & "' AND VenStEstadoRegistro = '" & EAprobado & "' AND VenIdStCliente ='" & TxtTercero.Text & "') " & _
                    "ORDER BY VenDaFechaDoc,VenIdStComprobante,VenIdInDocumento"
                        
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                      vFecha = rdoRs!VenDaFechaDoc
                      If vFecha < DTfechaI.Value Then
                          vSaldoIni = vSaldoIni - Val("" & rdoRs!MveInValor)
                          
                          If Val("" & rdoRs!VenInCopago) > 0 Or Val("" & rdoRs!VenInCuotaModeradora) > 0 Then
                             If A <> Trim("" & rdoRs!VenIdStComprobante) & "-" & Trim("" & rdoRs!VenIdInDocumento) Then 'para restar el copago y cuota moderadora
                                  vSaldoIni = vSaldoIni - Val("" & rdoRs!VenInCopago) - Val("" & rdoRs!VenInCuotaModeradora)
                             End If
                          End If
                      Else
                          M = "p" & Trim("" & rdoRs!VenIdInDocumento) & "p" & Trim("" & rdoRs!CcaStDescripcion)
                          On Error Resume Next
                          T = "-1"
                          T = vColDevVenta(M)
                          If T = "-1" Then
                            .AddItem ""
                            .TextMatrix(.Rows - 1, SaldoCx.Fecha) = Format(rdoRs!VenDaFechaDoc, FormatoFecha)
                            .TextMatrix(.Rows - 1, SaldoCx.FechaMos) = Format(rdoRs!VenDaFechaDoc, "dd-MM-yyyy")
                            .TextMatrix(.Rows - 1, SaldoCx.vCreditos) = Val("" & rdoRs!MveInValor) - Val("" & rdoRs!MveInDescuento) - Val("" & rdoRs!MveInValorReteFuente) - Val("" & rdoRs!MveInValorReteIva)
                            .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("" & rdoRs!VenIdInDocumento)
                            .TextMatrix(.Rows - 1, SaldoCx.Concepto) = Trim("" & rdoRs!CcaStDescripcion)
                            .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Devolucion en Ventas No. " & rdoRs!VenIdInDocumento) & " - A " & Trim(rdoRs!ComNomb) & " N�mero " & Trim("" & rdoRs!VenStPrefijoNumeracion) & Trim("" & rdoRs!VenInFactura)
                            
                            If Val("" & rdoRs!VenInCopago) > 0 Or Val("" & rdoRs!VenInCuotaModeradora) > 0 Then
                                 If A <> Trim("" & rdoRs!VenIdStComprobante) & "-" & Trim("" & rdoRs!VenIdInDocumento) Then 'para restar el copago y cuota moderadora
                                      .TextMatrix(.Rows - 1, SaldoCx.vCreditos) = Val(.TextMatrix(.Rows - 1, SaldoCx.vCreditos)) - Val("" & rdoRs!VenInCopago) - Val("" & rdoRs!VenInCuotaModeradora)
                                 End If
                            End If
                            
                            If Val("" & rdoRs!VenInValorPropina) > 0 Then
                                 If A <> Trim("" & rdoRs!VenIdStComprobante) & "-" & Trim("" & rdoRs!VenIdInDocumento) Then 'para restar la propina
                                      .TextMatrix(.Rows - 1, SaldoCx.vCreditos) = Val(.TextMatrix(.Rows - 1, SaldoCx.vCreditos)) + Val("" & rdoRs!VenInValorPropina)
                                 End If
                            End If
                            
                            
                            vColDevVenta.Add .Rows - 1, M
                          Else
                            .TextMatrix(T, SaldoCx.vCreditos) = Val(.TextMatrix(T, SaldoCx.vCreditos)) + Val("" & rdoRs!MveInValor) - Val("" & rdoRs!MveInDescuento) - Val("" & rdoRs!MveInValorReteFuente) - Val("" & rdoRs!MveInValorReteIva)
                          End If
                      End If
                      A = Trim("" & rdoRs!VenIdStComprobante) & "-" & Trim("" & rdoRs!VenIdInDocumento)
                      rdoRs.MoveNext
                Wend
             End If
             Progres.Value = Progres.Value + 1
            '********************************************************************************************
             
             If FGdatos.Rows > 1 Then
                   FGdatos.Select 1, SaldoCx.Fecha
                   FGdatos.Sort = flexSortGenericAscending
                   FGdatos.Redraw = flexRDDirect
                   
                   FGdatos.AutoSize 0, FGdatos.Cols - 1
                   FGdatos.AllowUserResizing = flexResizeColumns
                   Progres.Value = Progres.Value + 1
                   FGcartera.Rows = 1
                                      
                   For i = 1 To .Rows - 1
                       FGcartera.AddItem ""
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Factura) = Trim(.TextMatrix(i, SaldoCx.Factura))
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Concepto) = Trim(.TextMatrix(i, SaldoCx.Concepto))
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Fecha) = Trim(.TextMatrix(i, SaldoCx.FechaMos))
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Descri) = Trim(.TextMatrix(i, SaldoCx.Nombre))
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Sucursal) = Trim(.TextMatrix(i, SaldoCx.Sucursal))
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Total) = vSaldoIni
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.vCredito) = Val(.TextMatrix(i, SaldoCx.vCreditos))
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.vDebito) = Val(.TextMatrix(i, SaldoCx.vDebitos))
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.vSaldo) = vSaldoIni + Val(.TextMatrix(i, SaldoCx.vDebitos)) - Val(.TextMatrix(i, SaldoCx.vCreditos))
                       vSaldoIni = Val(FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.vSaldo))
                   Next i
                   If FGcartera.Rows > 1 Then FGcartera.Select 1, Datos.Descri: FGcartera.SetFocus
             Else
                  FGdatos.Redraw = flexRDDirect
                  If vSaldoIni = 0 Then
                       MsgBox "Se�or usuario el cliente no tiene deuda a la fecha seleccionada", vbInformation + vbOKOnly, "Atenci�n"
                  Else
                       FGcartera.AddItem ""
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Fecha) = DTfechaI.Value - 1
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Descri) = "SALDO DEL CLIENTE"
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Total) = vSaldoIni
                       FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.vSaldo) = vSaldoIni
                  End If
             End If
             Progres.Value = Progres.Value + 1
             Progres.Visible = False
                           
             With FGcartera
                If .Rows > 2 Then
                     .AddItem ""
                     .TextMatrix(.Rows - 1, Datos.Concepto) = "TOTALES"
                     .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                     For i = 1 To .Rows - 2
                         .TextMatrix(.Rows - 1, Datos.vDebito) = Val(.TextMatrix(.Rows - 1, Datos.vDebito)) + Val(.TextMatrix(i, Datos.vDebito))
                         .TextMatrix(.Rows - 1, Datos.vCredito) = Val(.TextMatrix(.Rows - 1, Datos.vCredito)) + Val(.TextMatrix(i, Datos.vCredito))
                     Next i
                End If
             End With
        End With
        Exit Sub
Salida: Call MensajeAdministrador
FGdatos.Redraw = flexRDDirect
End Sub

