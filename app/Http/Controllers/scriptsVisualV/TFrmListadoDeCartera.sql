VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "mscomctl.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Object = "{8B1596DD-B10E-4E63-9FAD-EF1063DE32CF}#1.0#0"; "DianaCombo.ocx"
Begin VB.Form FrmListadoDeCartera 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8550
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11865
   Icon            =   "FrmListadoDeCartera.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8550
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
      Picture         =   "FrmListadoDeCartera.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   16
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   1665
      Width           =   1350
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGdatos 
      Height          =   1770
      Left            =   360
      TabIndex        =   14
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
      Height          =   5775
      Left            =   450
      TabIndex        =   15
      Top             =   2430
      Width           =   11280
      _cx             =   19897
      _cy             =   10186
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
      Width           =   7395
      Begin VB.CommandButton CmdTercero 
         Height          =   315
         Left            =   6840
         Picture         =   "FrmListadoDeCartera.frx":6184
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   495
         Width           =   315
      End
      Begin VB.TextBox TxtNombre 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3240
         TabIndex        =   12
         Top             =   510
         Width           =   3570
      End
      Begin VB.TextBox TxtTercero 
         Enabled         =   0   'False
         Height          =   285
         Left            =   1890
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
         Format          =   123142147
         CurrentDate     =   38681
      End
      Begin DianaCombo.Combox CobConceptoCartera 
         Height          =   405
         Left            =   1845
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
      Begin VB.Label Label2 
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
         Left            =   1890
         TabIndex        =   20
         Top             =   855
         Width           =   1815
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
         Left            =   1890
         TabIndex        =   11
         Top             =   270
         Width           =   690
      End
      Begin VB.Label LblFechai 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha de Corte:"
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
         Width           =   1290
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
            Picture         =   "FrmListadoDeCartera.frx":6746
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoDeCartera.frx":6C8A
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoDeCartera.frx":6D96
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
   Begin MSComCtl2.DTPicker DTfechaF 
      Height          =   315
      Left            =   2430
      TabIndex        =   13
      Top             =   1845
      Visible         =   0   'False
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
      Format          =   123142147
      CurrentDate     =   38681
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGnovedades 
      Height          =   3345
      Left            =   2835
      TabIndex        =   18
      Top             =   5625
      Visible         =   0   'False
      Width           =   9345
      _cx             =   16484
      _cy             =   5900
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
      Caption         =   "      Analisis de Cartera por Edades"
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
Attribute VB_Name = "FrmListadoDeCartera"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Mes As Integer, RegFor As Variant, vFiltro As String, vFecha As Date, vFechaFin As Date, vDias As Long

Private Enum Datos
        Item
        Cedula
        Cliente
        Factura
        Sucursal
        Concepto
        Fecha
        Dias
        FechaVen
        cartera
        Total
        vDeuda
        Deuda30
        Deuda60
        Deuda90
        Deuda180
        Deuda360
        MDeuda
End Enum

Private Enum SaldoCx
        Cedula
        Nombre
        Factura
        Concepto
        Sucursal
        Fecha
        Valor
        Dias
        DiaFinal
        FFinal
        cartera
End Enum

Private Enum Novedad
        Item = 0
        Comprobante = 1
        numero = 2
        Cliente = 3
        Fecha = 4
        ComprobanteDoc = 5
        ConsecutivoDoc = 6
        ConceptoCartera = 7
        vValor = 8
        Descri = 9
                
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
        Progres.Max = 20
        vFiltro = Empty
        Progres.Visible = True: Progres.Value = Progres.Value + 1
        Call Cartera_Clientes
                
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        If Permisos(4) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        PopupMenu Menur
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
        If KeyCode = 13 Then SendKeys "{TAB}"
End Sub

Private Sub DTfechaF_LostFocus()
        FGcartera.Rows = 1
End Sub

Private Sub DTfechaI_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then SendKeys "{TAB}"
End Sub

Private Sub DTfechaI_LostFocus()
        FGcartera.Rows = 1
End Sub

Private Sub FGcartera_AfterCollapse(ByVal Row As Long, ByVal State As Integer)
        If Row <> 0 Then
               If State = 0 Then
                    FGcartera.ColHidden(Datos.Fecha) = False
                    FGcartera.ColHidden(Datos.FechaVen) = False
                    FGcartera.ColHidden(Datos.Dias) = False
               Else
                    FGcartera.ColHidden(Datos.Fecha) = True
                    FGcartera.ColHidden(Datos.FechaVen) = True
                    FGcartera.ColHidden(Datos.Dias) = True
               End If
        Else
        
        End If
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
'                    If (Shift = 2) And (BarraOperaciones.BotonActivo(Imprimir) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Imprimir)
               
        End Select
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
        If KeyAscii = vbKeyReturn Then
            SendKeys "{TAB}"
            KeyAscii = 0
        End If
End Sub

Private Sub Form_Load()
        Iempresa = Empresa
        Call Configurar_Pantalla
        Call Obtener_FechaServidor
        DTfechaI.Value = FechaServidor
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
             .Cols = 18
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
             .TextMatrix(0, Datos.Cedula) = "Cedula o Nit"
             .TextMatrix(0, Datos.Factura) = "Documento"
             .TextMatrix(0, Datos.Sucursal) = "Sucursal"
             .TextMatrix(0, Datos.Concepto) = "Concepto"
             .TextMatrix(0, Datos.Cliente) = ""
             .TextMatrix(0, Datos.Dias) = "Dias"
             .TextMatrix(0, Datos.vDeuda) = "Por Vencer"
             .TextMatrix(0, Datos.cartera) = "Cartera"
             .TextMatrix(0, Datos.Total) = "Total Deuda"
             .TextMatrix(0, Datos.Deuda360) = "De 181 a 360"
             .TextMatrix(0, Datos.Deuda180) = "De 91 a 180"
             .TextMatrix(0, Datos.Deuda90) = "De 61 a 90"
             .TextMatrix(0, Datos.Deuda60) = "De 31 a 60"
             .TextMatrix(0, Datos.Deuda30) = "De 01 a 30"
             .TextMatrix(0, Datos.MDeuda) = "Mas de 360"
             .TextMatrix(0, Datos.Cedula) = "Cedula"
             .TextMatrix(0, Datos.Fecha) = "Fecha"
             .TextMatrix(0, Datos.FechaVen) = "Vencimiento"
             For K = Datos.cartera To Datos.MDeuda
                .ColFormat(K) = "#,###.00"
                .ColWidth(K) = 1200
             Next K
             .ColFormat(Datos.Dias) = "#,###"
             .ColWidth(Datos.Cliente) = 3500
             .ColWidth(Datos.Concepto) = 3000
             .ColWidth(Datos.Sucursal) = 2500
             .ColWidth(Datos.Cedula) = 1200
             .ColWidth(Datos.FechaVen) = 1200
             .ColWidth(Datos.Dias) = 800
             .ColWidth(Datos.Item) = 200
             .ColWidth(Datos.cartera) = 50
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .OutlineBar = flexOutlineBarComplete
             .OutlineCol = Datos.Cliente
             .ColHidden(Datos.Factura) = True
             .ColHidden(Datos.Fecha) = False
             .ColHidden(Datos.Fecha) = False
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
        End With
                
        With FGdatos
             .Rows = 1
             .Cols = 16
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
             .TextMatrix(0, SaldoCx.Cedula) = "Cedula"
             .TextMatrix(0, SaldoCx.Nombre) = "Nombre del Cliente"
             .TextMatrix(0, SaldoCx.Dias) = "Dias"
             .TextMatrix(0, SaldoCx.Fecha) = "Fecha"
             .TextMatrix(0, SaldoCx.Valor) = "Valor"
             .TextMatrix(0, SaldoCx.Factura) = "Factura"
             .TextMatrix(0, SaldoCx.Concepto) = "Concepto"
             .TextMatrix(0, SaldoCx.FFinal) = "Fecha Final"
             .TextMatrix(0, SaldoCx.cartera) = "Cartera Actual"
             .TextMatrix(0, SaldoCx.Sucursal) = "Sucursal"
             .ColFormat(SaldoCx.Valor) = "#,###.00"
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
        End With
        
        With FGNovedades
             .Rows = 1
             .Cols = 12
             .FixedCols = 0
             .FontName = "Tahoma"
             .FontSize = 8
             .GridLines = flexGridFlat
             .BackColorBkg = &H80000018
             .BackColorFixed = vbWhite
             .ForeColorFixed = &H40C0&
             .BackColorSel = &H808000
             .ForeColorSel = vbWhite
             .AllowUserResizing = flexResizeNone
             .ExtendLastCol = False
             .MergeCells = flexMergeFree
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .TextMatrix(0, Novedad.Cliente) = "Cliente"
             .TextMatrix(0, Novedad.Comprobante) = "Comprobante a Pagar"
             .TextMatrix(0, Novedad.ConsecutivoDoc) = "No. Recibo"
             .TextMatrix(0, Novedad.ComprobanteDoc) = "Comprobante"
             .TextMatrix(0, Novedad.Fecha) = "Fecha"
             .TextMatrix(0, Novedad.vValor) = "Valor"
             .TextMatrix(0, Novedad.Item) = "Item"
             .TextMatrix(0, Novedad.numero) = "No. Factura"
             .TextMatrix(0, Novedad.ConceptoCartera) = "Concepto"
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .AllowUserResizing = flexResizeColumns
             .AutoSearch = flexSearchFromCursor
             .FocusRect = flexFocusSolid
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

Private Sub Imprimir_Informe(vTipo As Integer)
        With FGcartera
             On Error GoTo Imprime
             
             Dim Mh As String, GF As String, Iw As String
             If .Rows = 1 Then MsgBox "No hay informaci�n para imprimir", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
                                                                                          
             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME3"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             M = -1: Ax = Empty
             N = 0
             If Trim(TxtTercero.Text) <> Empty Then K = 1 Else K = 2
             
             K = 1
             If vTipo = 1 Then
                 For i = K To .Rows - 1
                      If .RowOutlineLevel(i) = 1 Then
                            Sql = "INSERT INTO INFORME3(InfDesc,InfDes2,InfDes3,InfDes4,InfDes5,Infval1,Infval2,Infval3,Infval4," & _
                                  "Infval5,Infval6,Infval7,Infval8)" & _
                                  "VALUES('" & Trim(.TextMatrix(i, Datos.Cliente)) & "','" & Trim(.TextMatrix(i, Datos.Cedula)) & "'," & _
                                  "'" & Trim(.TextMatrix(i, Datos.Factura)) & "','" & Trim(.TextMatrix(i, Datos.Fecha)) & "'," & _
                                  "'" & Trim(.TextMatrix(i, Datos.FechaVen)) & "'," & Val(.TextMatrix(i, Datos.Total)) & "," & _
                                  "" & Val(.TextMatrix(i, Datos.vDeuda)) & "," & Val(.TextMatrix(i, Datos.Deuda30)) & "," & _
                                  "" & Val(.TextMatrix(i, Datos.Deuda60)) & "," & Val(.TextMatrix(i, Datos.Deuda90)) & "," & _
                                  "" & Val(.TextMatrix(i, Datos.Deuda180)) & "," & Val(.TextMatrix(i, Datos.Deuda360)) & "," & _
                                  "" & Val(.TextMatrix(i, Datos.MDeuda)) & ")"
                                  
                            If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                      End If
                 Next i
             Else
                 For i = K To .Rows - 1
                      If .RowOutlineLevel(i) = 1 Then
                          X = Trim(.TextMatrix(i, Datos.Cliente))
                      Else
                          X = "    " & Trim(.TextMatrix(i, Datos.Cliente)) & " " & Trim(.TextMatrix(i, Datos.Fecha))
                      End If
                      
                      Sql = "INSERT INTO INFORME3(InfDesc,InfDes2,InfDes3,InfDes4,InfDes5,Infval1,Infval2,Infval3,Infval4," & _
                            "Infval5,Infval6,Infval7,Infval8)" & _
                            "VALUES('" & X & "','" & Trim(.TextMatrix(i, Datos.Cedula)) & "'," & _
                            "'" & Trim(.TextMatrix(i, Datos.Factura)) & "','" & Trim(.TextMatrix(i, Datos.Fecha)) & "'," & _
                            "'" & Trim(.TextMatrix(i, Datos.FechaVen)) & "'," & Val(.TextMatrix(i, Datos.Total)) & "," & _
                            "" & Val(.TextMatrix(i, Datos.vDeuda)) & "," & Val(.TextMatrix(i, Datos.Deuda30)) & "," & _
                            "" & Val(.TextMatrix(i, Datos.Deuda60)) & "," & Val(.TextMatrix(i, Datos.Deuda90)) & "," & _
                            "" & Val(.TextMatrix(i, Datos.Deuda180)) & "," & Val(.TextMatrix(i, Datos.Deuda360)) & "," & _
                            "" & Val(.TextMatrix(i, Datos.MDeuda)) & ")"
                          
                      If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                 Next i
             End If
             Call Transaccion(BDCommit)
                                               
             R = "FECHA DE CORTE: " & Format(DTfechaI.Value, "dd/mm/yyyy")
             RepCartera.DiscardSavedData = True
             RepCartera.Formulas(1) = "Empresa= '" & Sigl & "'"
             RepCartera.Formulas(2) = "Parametro= '" & R & "'"
'             RepCartera.Formulas(2) = "Titulo= 'ANALISIS DE CARTERA POR EDADES'"
             X = Inf + "AnalisisDeCartera.rpt"
             RepCartera.ReportFileName = X
             RepCartera.Destination = crptToWindow
             RepCartera.WindowTitle = "LISTADO DE ANALISIS DE CARTERA POR EDADES"
             RepCartera.WindowMinButton = True
             RepCartera.WindowMaxButton = True
             RepCartera.WindowState = crptMaximized
             RepCartera.PrintReport
        End With
        Exit Sub
Imprime:
   MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atenci�n"

End Sub

Private Sub Cartera_Clientes()
        On Error GoTo Salida
        
        Dim vDevolucionSinSoporte As Boolean, vReciboSinSoporte As Boolean, Tactual As Integer, vLLamado As String
        Dim vColCartera As New Collection, vColDevVenta As New Collection
        Set vColCartera = Nothing
        Set vColDevVenta = Nothing
        
        vDevolucionSinSoporte = False: vReciboSinSoporte = False
        FGNovedades.Rows = 1
        
        With FGdatos
             .Rows = 1: FGdatos.Redraw = flexRDNone
             Progres.Value = Progres.Value + 1
             vFiltro = Empty
             If Trim(TxtTercero.Text) <> Empty Then
                 vFiltro = " AND CarIdStCliente = '" & TxtTercero.Text & "' "
             End If
             
             If Trim(CobConceptoCartera.Text) <> Empty Then
                 vFiltro = vFiltro & " AND CarIdInConceptoCartera = " & Val(CobConceptoCartera.Text) & " "
             End If
             
             Ini = Year(DTfechaI.Value) - 1: Fin = Year(DTfechaI.Value)
             Progres.Value = Progres.Value + 1
             
             Tx = Year(DTfechaI.Value) - 1
             
             '**** Informaci�n de cartera actual
             Ty = Year(DTfechaI.Value) 'Perido actual
             Tactual = Year(DTfechaI.Value)
             Sql = "SELECT A.*,B.CliStNombreCliente,C.CcaStDescripcion,M.VenStPrefijoNumeracion, M.VenStEstadoRegistro,N.SucStNombreSucursal FROM CARTERA A " & _
                   "INNER JOIN CLIENTES B ON (A.CarIdStEmpresa = B.CliEmpr AND A.CarIdStCliente = B.CliNit) " & _
                   "INNER JOIN CONCEPTOSCARTERA C ON (A.CarIdStEmpresa = C.CcaIdStEmpresa AND A.CarIdInConceptoCartera = C.CcaIdInConceptoCartera) " & _
                   "LEFT OUTER JOIN VENTAS M ON (A.CarIdStEmpresa = M.VenIdStEmpresa AND A.CarIdStComprobante = M.VenIdStComprobante AND A.CarIdInDocumento = M.VenIdInDocumento AND A.CarIdStCliente = M.VenIdStCliente) " & _
                   "LEFT OUTER JOIN SUCURSALCLIENTES N ON (A.CarIdStEmpresa = N.SucIdStEmpresa AND A.CarIdStCliente = N.SucIdStCliente AND A.CarStSucursalClientes = N.SucIdInSucursal) " & _
                   "WHERE CarIdStEmpresa = '" & Empresa & "' AND CarIdStPeriodoAplicativo = '3' AND CarDaFechaFactura <= '" & Format(DTfechaI.Value, FormatoFecha) & "' " & vFiltro & _
                   "ORDER BY CarIdStCliente,CarDaFechaFactura"
             
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                      If Trim("" & rdoRs!CarIdStCliente) <> Empty And Trim("" & rdoRs!VenStEstadoRegistro) <> "C" Then
                        .AddItem ""
                        .TextMatrix(.Rows - 1, SaldoCx.Cedula) = Trim("" & rdoRs!CarIdStCliente)
                        .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("" & rdoRs!CliStNombreCliente)
                        .TextMatrix(.Rows - 1, SaldoCx.Valor) = Val("" & rdoRs!CarInValor) ' - Val("" & rdoRs!CarInAbono)
                        .TextMatrix(.Rows - 1, SaldoCx.Fecha) = Trim("" & rdoRs!CarDaFechaFactura)
                        .TextMatrix(.Rows - 1, SaldoCx.Dias) = Val("" & rdoRs!CarInDias)
                        .TextMatrix(.Rows - 1, SaldoCx.Concepto) = Trim("" & rdoRs!CcaStDescripcion)
                        .TextMatrix(.Rows - 1, SaldoCx.cartera) = Val("" & rdoRs!CarInValor) - Val("" & rdoRs!CarInAbono)
                        .TextMatrix(.Rows - 1, SaldoCx.Sucursal) = Trim("" & rdoRs!SucStNombreSucursal)
                        
                        If Trim("" & rdoRs!CarInFactura) <> Empty Then
                            .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("Factura de Venta No. " & Trim("" & rdoRs!VenStPrefijoNumeracion) & rdoRs!CarInFactura)
                        Else
                            .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("Nota Debito No. " & rdoRs!CarIdInDocumento)
                        End If


                        vFecha = Trim("" & rdoRs!CarDaFechaFactura)
                        If Val("" & rdoRs!CarInDias) > 0 Then vFecha = vFecha + Val("" & rdoRs!CarInDias)
                        .TextMatrix(.Rows - 1, SaldoCx.FFinal) = vFecha
                        '.TextMatrix(.Rows - 1, SaldoCx.DiaFinal) = DateDiff("d", vFecha, FechaServidor)
                         .TextMatrix(.Rows - 1, SaldoCx.DiaFinal) = DateDiff("d", vFecha, DTfechaI.Value)
                        
                        X = Trim("" & rdoRs!CarIdStCliente) & "p" & Trim("" & rdoRs!CarIdStComprobante) & "p" & Trim("" & rdoRs!CarIdInDocumento) & "p" & Trim("" & rdoRs!CarIdInConceptoCartera)
                        Y = Trim("" & rdoRs!CarIdStCliente) & "p" & Trim("" & rdoRs!CarIdStComprobante) & "p" & Trim("" & rdoRs!VenStPrefijoNumeracion) & Trim("" & rdoRs!CarInFactura) & "p" & Trim("" & rdoRs!CarIdInConceptoCartera)
                        vLLamado = "Cliente:" & Trim("" & rdoRs!CarIdStCliente) & Chr(13) & "Comprobante:" & Trim("" & rdoRs!CarIdStComprobante) & Chr(13) & "Numero Documento:" & Trim("" & rdoRs!CarIdInDocumento) & Chr(13) & "Factura No.:" & Trim("" & rdoRs!VenStPrefijoNumeracion) & Trim("" & rdoRs!CarInFactura)
                        
                        
                        vColCartera.Add .Rows - 1, X
                        If Trim("" & rdoRs!CarInFactura) <> Empty Then vColDevVenta.Add .Rows - 1, Y
                      End If
                     
                      rdoRs.MoveNext
                Wend
             End If
             Progres.Value = Progres.Value + 1
             
           '**** Busqueda de pagos del perido actual con corte a la fecha *********************
             vFechaIni = Trim(Str(Tactual)) & "-01-01-"
             Progres.Value = Progres.Value + 1
             
             vFiltro = Empty
             If Trim(TxtTercero.Text) <> Empty Then
                 vFiltro = " AND RecIdStCliente = '" & TxtTercero.Text & "' "
             End If
                                 
             vFiltro2 = Empty
             If Trim(CobConceptoCartera.Text) <> Empty Then
                 vFiltro2 = " AND B.MreIdInConceptoCartera = " & Val(CobConceptoCartera.Text) & " "
             End If
                                 
             Sql = "SELECT A.*,B.MreIdStComprobanteVenta,B.MreIdStDocumentoVenta,B.MreInValor,B.MreIdInConceptoCartera,C.CcaStDescripcion FROM RECIBOCAJA A " & _
                   "INNER JOIN MOVRECIBOCAJA B ON (A.RecIdStEmpresa = B.MreIdStEmpresa AND A.RecIdStComprobante = B.MreIdComprobante AND A.RecIdInDocumento = B.MreIdInDocumento " & vFiltro2 & " )" & _
                   "INNER JOIN CONCEPTOSCARTERA C ON (B.MreIdStEmpresa = C.CcaIdStEmpresa AND B.MreIdInConceptoCartera = C.CcaIdInConceptoCartera) " & _
                   "WHERE (A.RecIdStEmpresa = '" & Empresa & "' AND " & _
                          "RecDaFechaRecibo <= '" & Format(DTfechaI.Value, FormatoFecha) & "' AND RecInTipoRecibo <>1 AND RecStEstadoRegistro = '" & EAprobado & "'" & vFiltro & ") "
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                      M = Trim("" & rdoRs!RecIdStCliente) & "p" & Trim("" & rdoRs!MreIdStComprobanteVenta) & "p" & Trim("" & rdoRs!MreIdStDocumentoVenta) & "p" & Trim("" & rdoRs!MreIdInConceptoCartera)
                      On Error Resume Next
                      T = "-1"
                      T = vColCartera(M)
                      If T <> "-1" Then
                           .TextMatrix(T, SaldoCx.Valor) = Val(.TextMatrix(T, SaldoCx.Valor)) - Val("" & rdoRs!MreInValor)
                      Else
                          With FGNovedades
                               .AddItem ""
                               .TextMatrix(.Rows - 1, Novedad.Cliente) = Trim("" & rdoRs!RecIdStCliente)
                               .TextMatrix(.Rows - 1, Novedad.Comprobante) = Trim("" & rdoRs!MreIdStComprobanteVenta)
                               .TextMatrix(.Rows - 1, Novedad.Fecha) = Trim("" & rdoRs!RecDaFechaRecibo)
                               .TextMatrix(.Rows - 1, Novedad.numero) = Trim("" & rdoRs!MreIdStDocumentoVenta)
                               .TextMatrix(.Rows - 1, Novedad.ConceptoCartera) = Trim("" & rdoRs!MreIdInConceptoCartera)
                               .TextMatrix(.Rows - 1, Novedad.vValor) = Val("" & rdoRs!MreInValor)
                               .TextMatrix(.Rows - 1, Novedad.ComprobanteDoc) = Trim("" & rdoRs!RecIdStComprobante)
                               .TextMatrix(.Rows - 1, Novedad.ConsecutivoDoc) = Trim("" & rdoRs!RecIdInDocumento)
                               .TextMatrix(.Rows - 1, Novedad.Descri) = "RECIBOS DE CAJA"
                          End With
                          vReciboSinSoporte = True
                      End If
                      rdoRs.MoveNext
                Wend
             End If
             Progres.Value = Progres.Value + 1
            '************************************************************************************

            '********* Devoluciones en Ventas ***************************************************
             vFiltro = Empty
             If Trim(TxtTercero.Text) <> Empty Then
                 vFiltro = " AND VenIdStCliente = '" & TxtTercero.Text & "' "
             End If
             
             vFiltro2 = Empty
             If Trim(CobConceptoCartera.Text) <> Empty Then
                 vFiltro2 = " AND MveIdInConceptoCartera = " & Val(CobConceptoCartera.Text) & " "
             End If
             
             A = Empty
             Sql = "SELECT VenInFactura,VenIdStCliente,VenIdStComprobante,VenIdInDocumento,VenInValorPropina,VenDaFechaDoc,VenIdStComprobantePedido,VenStPrefijoNumeracion, K.* " & _
                   "FROM VENTAS A " & _
                   "INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa " & vFiltro2 & ") " & _
                   "WHERE (A.VenIdStEmpresa = '" & Empresa & "' AND A.VenIdStTipoComprobante = '" & vTipoComprobante(6) & "' AND VenStCruzaaCartera = '1' and " & _
                        "VenDaFechaDoc <= '" & Format(DTfechaI.Value, FormatoFecha) & "' AND VenStEstadoRegistro = '" & EAprobado & "'" & vFiltro & ") " & _
                        "ORDER BY VenIdStCliente,VenIdStComprobante,VenIdInDocumento"
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF  '***en el comprobante de pedido se guarda el comprobante de la factura devuelta
                      M = Trim("" & rdoRs!VenIdStCliente) & "p" & Trim("" & rdoRs!VenIdStComprobantePedido) & "p" & Trim("" & rdoRs!VenStPrefijoNumeracion) & Trim("" & rdoRs!VenInFactura) & "p" & Trim("" & rdoRs!MveIdInConceptoCartera)
                      
                      On Error Resume Next
                      T = "-1"
                      T = vColDevVenta(M)
                      If T <> "-1" Then
                           If Val("" & rdoRs!VenInValorPropina) > 0 Then
                                If A <> Trim("" & rdoRs!VenIdStCliente) & "-" & Trim("" & rdoRs!VenIdStComprobante) & "-" & Trim("" & rdoRs!VenIdInDocumento) Then      'para restar la propina
                                     PP = Val("" & rdoRs!VenInValorPropina)
                                Else
                                     PP = 0
                                End If
                           End If
                           .TextMatrix(T, SaldoCx.Valor) = Val(.TextMatrix(T, SaldoCx.Valor)) - (Val(rdoRs!MveInValor) - Val(rdoRs!MveInDescuento) - Val(rdoRs!MveInValorReteFuente) - Val(rdoRs!MveInValorReteIva) + PP)
                      Else
                          With FGNovedades
                              .AddItem ""
                              .TextMatrix(.Rows - 1, Novedad.Cliente) = Trim("" & rdoRs!VenIdStCliente)
                              .TextMatrix(.Rows - 1, Novedad.Comprobante) = Trim("" & rdoRs!VenIdStTipoComprobante)
                              .TextMatrix(.Rows - 1, Novedad.Fecha) = Trim("" & rdoRs!VenDaFechaDoc)
                              .TextMatrix(.Rows - 1, Novedad.ConceptoCartera) = Trim("" & rdoRs!MveIdInConceptoCartera)
                              .TextMatrix(.Rows - 1, Novedad.numero) = Trim("" & rdoRs!VenInFactura)
                              .TextMatrix(.Rows - 1, Novedad.vValor) = Val("" & rdoRs!MveInValor) + Val("" & rdoRs!MveInValorIva) - Val("" & rdoRs!MveInDescuento)
                              .TextMatrix(.Rows - 1, Novedad.ComprobanteDoc) = Trim("" & rdoRs!VenIdStComprobante)
                              .TextMatrix(.Rows - 1, Novedad.ConsecutivoDoc) = Trim("" & rdoRs!VenIdInDocumento)
                              .TextMatrix(.Rows - 1, Novedad.Descri) = "DEVOLUCIONES EN VENTA"
                          End With
                          vDevolucionSinSoporte = True
                      End If
                      A = Trim("" & rdoRs!VenIdStCliente) & "-" & Trim("" & rdoRs!VenIdStComprobante) & "-" & Trim("" & rdoRs!VenIdInDocumento)
                      rdoRs.MoveNext
                                            
                Wend
             End If
             Progres.Value = Progres.Value + 1
            
            '********************************************************************************************
             If vDevolucionSinSoporte = True Or vReciboSinSoporte = True Then
                 If vReciboSinSoporte = True Then
                      MsgBox "Se�or usuario hay recibos de caja sin soporte", vbInformation + vbOKOnly, "Atenci�n"
                 Else
                     MsgBox "Se�or usuario hay Devoluciones de ventas sin soporte", vbInformation + vbOKOnly, "Atenci�n"
                 End If
                 Mx = Format(FechaServidor, "yyyymmdd")
                 FGNovedades.SaveGrid App.Path & "\NOVEDADES DE CARTERA-" & Mx & ".xls", flexFileExcel, 3
                 MsgBox "Se�or usuario se genero el archivo llamado NOVEDADES DE CARTERA-" & Mx & ".xls", vbInformation + vbOKOnly, "Atenci�n"
                 Exit Sub
             End If
                          
           '*********************************************************************************************************************************
                                       
             If FGdatos.Rows > 1 Then
                   FGdatos.Select 1, SaldoCx.Cedula
                   FGdatos.Sort = flexSortGenericAscending
                   FGdatos.Redraw = flexRDDirect
                              
                   
                   FGdatos.AutoSize 0, FGdatos.Cols - 1
                   FGdatos.AllowUserResizing = flexResizeColumns
                   Progres.Value = Progres.Value + 1
                   
                
                   FGcartera.Rows = 1: A = Empty
                   If Trim(TxtTercero.Text) = Empty Then
                        FGcartera.AddItem "": vIni = FGcartera.Rows - 1
                        FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Cliente) = "TOTAL"
                        FGcartera.Cell(flexcpForeColor, FGcartera.Rows - 1, 0, FGcartera.Rows - 1, FGcartera.Cols - 1) = ColorNivelDos
                        Call Agrupar_Niveles(FGcartera, FGcartera.Rows - 1, 1)
                   Else
                        vIni = 0
                   End If
                   

                   For i = 1 To .Rows - 1


                       If A <> Trim(.TextMatrix(i, SaldoCx.Cedula)) Then
                            FGcartera.AddItem ""
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Cedula) = Trim(.TextMatrix(i, SaldoCx.Cedula))
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Cliente) = Trim(.TextMatrix(i, SaldoCx.Nombre))
                            FGcartera.Cell(flexcpForeColor, FGcartera.Rows - 1, 0, FGcartera.Rows - 1, FGcartera.Cols - 1) = vbBlue
                            Call Agrupar_Niveles(FGcartera, FGcartera.Rows - 1, 1)
                            X1 = FGcartera.Rows - 1
                       End If
                       



                       If Round(Val(.TextMatrix(i, SaldoCx.Valor)), 2) > 0 Then
                            FGcartera.AddItem ""
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Cedula) = Trim(.TextMatrix(i, SaldoCx.Cedula))
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Factura) = Trim(.TextMatrix(i, SaldoCx.Factura))
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Concepto) = Trim(.TextMatrix(i, SaldoCx.Concepto))
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Sucursal) = Trim(.TextMatrix(i, SaldoCx.Sucursal))
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Fecha) = Trim(.TextMatrix(i, SaldoCx.Fecha))
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.FechaVen) = Trim(.TextMatrix(i, SaldoCx.FFinal))
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Cliente) = Trim(.TextMatrix(i, SaldoCx.Factura))
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Dias) = Trim(.TextMatrix(i, SaldoCx.Dias))
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Total) = Val(.TextMatrix(i, SaldoCx.Valor))
                            FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.cartera) = Val(.TextMatrix(i, SaldoCx.cartera))
                            FGcartera.TextMatrix(X1, Datos.Total) = Val(FGcartera.TextMatrix(X1, Datos.Total)) + Val(.TextMatrix(i, SaldoCx.Valor))
                            FGcartera.TextMatrix(X1, Datos.cartera) = Val(FGcartera.TextMatrix(X1, Datos.cartera)) + Val(.TextMatrix(i, SaldoCx.cartera))
                            vDias = Val(.TextMatrix(i, SaldoCx.DiaFinal))
                            If vDias <= 0 Then
                                FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.vDeuda) = Val(.TextMatrix(i, SaldoCx.Valor))
                                FGcartera.TextMatrix(X1, Datos.vDeuda) = Val(FGcartera.TextMatrix(X1, Datos.vDeuda)) + Val(.TextMatrix(i, SaldoCx.Valor))
                            Else
                                If vDias > 0 And vDias <= 30 Then
                                     FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Deuda30) = Val(.TextMatrix(i, SaldoCx.Valor))
                                     FGcartera.TextMatrix(X1, Datos.Deuda30) = Val(FGcartera.TextMatrix(X1, Datos.Deuda30)) + Val(.TextMatrix(i, SaldoCx.Valor))
                                Else
                                     If vDias > 30 And vDias <= 60 Then
                                          FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Deuda60) = Val(.TextMatrix(i, SaldoCx.Valor))
                                          FGcartera.TextMatrix(X1, Datos.Deuda60) = Val(FGcartera.TextMatrix(X1, Datos.Deuda60)) + Val(.TextMatrix(i, SaldoCx.Valor))
                                     Else
                                          If vDias > 60 And vDias <= 90 Then
                                                FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Deuda90) = Val(.TextMatrix(i, SaldoCx.Valor))
                                                FGcartera.TextMatrix(X1, Datos.Deuda90) = Val(FGcartera.TextMatrix(X1, Datos.Deuda90)) + Val(.TextMatrix(i, SaldoCx.Valor))
                                          Else
                                               If vDias > 90 And vDias <= 180 Then
                                                    FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Deuda180) = Val(.TextMatrix(i, SaldoCx.Valor))
                                                    FGcartera.TextMatrix(X1, Datos.Deuda180) = Val(FGcartera.TextMatrix(X1, Datos.Deuda180)) + Val(.TextMatrix(i, SaldoCx.Valor))
                                               Else
                                                    If vDias > 180 And vDias <= 360 Then
                                                        FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.Deuda360) = Val(.TextMatrix(i, SaldoCx.Valor))
                                                        FGcartera.TextMatrix(X1, Datos.Deuda360) = Val(FGcartera.TextMatrix(X1, Datos.Deuda360)) + Val(.TextMatrix(i, SaldoCx.Valor))
                                                    Else
                                                        FGcartera.TextMatrix(FGcartera.Rows - 1, Datos.MDeuda) = Val(.TextMatrix(i, SaldoCx.Valor))
                                                        FGcartera.TextMatrix(X1, Datos.MDeuda) = Val(FGcartera.TextMatrix(X1, Datos.MDeuda)) + Val(.TextMatrix(i, SaldoCx.Valor))
                                                    End If
                                               End If
                                          End If
                                     End If
                                End If
                            End If
                            
                            If vIni > 0 Then
                                 For K = Datos.cartera To Datos.MDeuda
                                      FGcartera.TextMatrix(vIni, K) = Val(FGcartera.TextMatrix(vIni, K)) + Val(FGcartera.TextMatrix(FGcartera.Rows - 1, K))
                                 Next K
                            End If
                       End If
                       
                       
                       A = Trim(.TextMatrix(i, SaldoCx.Cedula))
                   Next i
                   
                   For i = 1 To FGcartera.Rows - 1
                       If i < FGcartera.Rows Then
                            If Val(FGcartera.TextMatrix(i, Datos.Total)) = 0 Then
                                  FGcartera.RemoveItem (i): i = i - 1
                            End If
                       End If
                   Next i
                   
                   If FGcartera.Rows > 1 Then FGcartera.Select 1, Datos.Cliente: FGcartera.SetFocus
             Else
                  MsgBox "No hay informaci�n para mostrar", vbInformation + vbOKOnly, "Atenci�n"
             End If
             Progres.Value = Progres.Value + 1
             Progres.Visible = False
             FGcartera.Outline (1)
             
        End With
        Exit Sub
Salida: Call MensajeAdministrador
MsgBox vLLamado
FGdatos.Redraw = flexRDDirect
End Sub

'Private Sub Cartera_Anual()
'        With Me.FGcartera
'        Sql = "SELECT A.*,B.CliStNombreCliente FROM CARTERAANUAL A " & _
'                   "INNER JOIN CLIENTES B ON (A.CarIdStEmpresa = B.CliEmpr AND A.CarIdStCliente = B.CliNit) " & _
'                   "WHERE CarIdStEmpresa = '" & Empresa & "' AND CarIdInPeriodoAno = " & Ini & " AND CarIdInPeriodoMes = 12 AND " & _
'                   "CarIdStPeriodoAplicativo = '3' AND CarInValor > CarInAbono AND " & vFiltro & _
'                   "ORDER BY CarIdStCliente,CarDaFechaFactura"
'             If Buscar_Res(rdoRs, Sql) = BDOk Then
'                While Not rdoRs.EOF
'                      .AddItem ""
'                      .TextMatrix(.Rows - 1, SaldoCx.Cedula) = Trim("" & rdoRs!CarIdStCliente)
'                      .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("" & rdoRs!CliStNombreCliente)
'                      .TextMatrix(.Rows - 1, SaldoCx.Valor) = Val("" & rdoRs!CarInValor) - Val("" & rdoRs!CarInAbono)
'                      .TextMatrix(.Rows - 1, SaldoCx.Fecha) = Trim("" & rdoRs!CarDaFechaFactura)
'                      .TextMatrix(.Rows - 1, SaldoCx.Dias) = Val("" & rdoRs!CarInDias)
'                      If Trim("" & rdoRs!CarInFactura) <> Empty Then
'                           .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("Factura No. " & rdoRs!CarInFactura)
'                      Else
'                           .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("Nota No. " & rdoRs!CarIdInDocumento)
'                      End If
'
'                      vFecha = Trim("" & rdoRs!CarDaFechaFactura)
'                      If Val("" & rdoRs!CarInDias) > 0 Then vFecha = vFecha + Val("" & rdoRs!CarInDias)
'                      .TextMatrix(.Rows - 1, SaldoCx.FFinal) = vFecha
'                      .TextMatrix(.Rows - 1, SaldoCx.DiaFinal) = DateDiff("d", vFecha, FechaServidor)
'
'                      rdoRs.MoveNext
'                Wend
'             End If
'       End With
'End Sub

Private Sub Menu_Click(Index As Integer)
        Call Imprimir_Informe(Index)
End Sub

