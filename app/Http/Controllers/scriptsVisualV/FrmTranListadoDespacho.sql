VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "mscomctl.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Object = "{EF47DDAB-8EF4-49C1-AAF8-18F692F4FB1C}#1.0#0"; "DianaBuscar.ocx"
Begin VB.Form FrmTranListadoDespacho 
   BackColor       =   &H00FFFF80&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   9405
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11910
   Icon            =   "FrmTranListadoDespacho.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9405
   ScaleWidth      =   11910
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame3 
      Caption         =   "Aportes"
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
      Height          =   1050
      Left            =   8685
      TabIndex        =   35
      Top             =   2970
      Width           =   2985
      Begin VB.Label Label18 
         BackColor       =   &H000000FF&
         Height          =   195
         Left            =   135
         TabIndex        =   41
         Top             =   315
         Width           =   555
      End
      Begin VB.Label Label17 
         BackColor       =   &H0080C0FF&
         Height          =   195
         Left            =   135
         TabIndex        =   40
         Top             =   540
         Width           =   555
      End
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "No realizo pago de Aporte"
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
         Left            =   720
         TabIndex        =   39
         Top             =   300
         Width           =   2130
      End
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Cartera Cero - Solicitud"
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
         Left            =   720
         TabIndex        =   38
         Top             =   525
         Width           =   1920
      End
      Begin VB.Label Label14 
         BackColor       =   &H00FFFF80&
         Height          =   195
         Left            =   135
         TabIndex        =   37
         Top             =   765
         Width           =   555
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Excentos"
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
         Left            =   720
         TabIndex        =   36
         Top             =   750
         Width           =   750
      End
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGaportes 
      Height          =   1815
      Left            =   1305
      TabIndex        =   33
      Top             =   8955
      Visible         =   0   'False
      Width           =   3855
      _cx             =   6800
      _cy             =   3201
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
      BackColor       =   12648447
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   12648447
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
   Begin VB.Frame Frame2 
      Caption         =   "Contigencia"
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
      Height          =   1050
      Left            =   8640
      TabIndex        =   25
      Top             =   1890
      Width           =   2985
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Paquete de planilla"
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
         Left            =   720
         TabIndex        =   31
         Top             =   750
         Width           =   1545
      End
      Begin VB.Label Label11 
         BackColor       =   &H0000FFFF&
         Height          =   195
         Left            =   135
         TabIndex        =   30
         Top             =   765
         Width           =   555
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Pago de planilla posterior"
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
         Left            =   720
         TabIndex        =   29
         Top             =   525
         Width           =   2100
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "No realizo pago de planilla"
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
         Left            =   720
         TabIndex        =   28
         Top             =   300
         Width           =   2130
      End
      Begin VB.Label Label8 
         BackColor       =   &H00FF0000&
         Height          =   195
         Left            =   135
         TabIndex        =   27
         Top             =   540
         Width           =   555
      End
      Begin VB.Label Label7 
         BackColor       =   &H000000FF&
         Height          =   195
         Left            =   135
         TabIndex        =   26
         Top             =   315
         Width           =   555
      End
   End
   Begin VB.CommandButton CmdFijar 
      BackColor       =   &H00E7D6B8&
      Caption         =   "F"
      Height          =   285
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   24
      ToolTipText     =   "Fijar Columnas"
      Top             =   3735
      Width           =   255
   End
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
      Left            =   720
      Picture         =   "FrmTranListadoDespacho.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   10
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   3600
      Width           =   1350
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
      Height          =   2805
      Left            =   360
      TabIndex        =   5
      Top             =   765
      Width           =   8205
      Begin VB.OptionButton OptPlanilla 
         BackColor       =   &H00FEFDE0&
         Caption         =   "Aportes"
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
         Height          =   240
         Index           =   3
         Left            =   5265
         TabIndex        =   32
         Top             =   2475
         Width           =   1005
      End
      Begin VB.OptionButton OptPlanilla 
         BackColor       =   &H00FEFDE0&
         Caption         =   "Contigencia"
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
         Height          =   240
         Index           =   1
         Left            =   3825
         TabIndex        =   23
         Top             =   2475
         Width           =   1320
      End
      Begin VB.OptionButton OptPlanilla 
         BackColor       =   &H00FEFDE0&
         Caption         =   "Normal"
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
         Height          =   240
         Index           =   0
         Left            =   2835
         TabIndex        =   22
         Top             =   2475
         Width           =   915
      End
      Begin VB.OptionButton OptPlanilla 
         BackColor       =   &H00FEFDE0&
         Caption         =   "Todos"
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
         Height          =   240
         Index           =   2
         Left            =   1890
         TabIndex        =   20
         Top             =   2475
         Value           =   -1  'True
         Width           =   825
      End
      Begin VB.TextBox TxtPlaca 
         Height          =   285
         Left            =   1935
         TabIndex        =   17
         Top             =   2115
         Width           =   1545
      End
      Begin MSComCtl2.DTPicker DTfechaI 
         Height          =   315
         Left            =   1935
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
         Format          =   132841475
         CurrentDate     =   38681
      End
      Begin MSComCtl2.DTPicker DTfechaF 
         Height          =   315
         Left            =   3465
         TabIndex        =   1
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
         Format          =   132841475
         CurrentDate     =   38681
      End
      Begin BuscarDiana.Busqueda BusPuntos 
         Height          =   405
         Left            =   1890
         TabIndex        =   11
         Top             =   1665
         Width           =   5925
         _ExtentX        =   10451
         _ExtentY        =   714
         CodigoWidth     =   1095
         NombreWidth     =   4300
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin BuscarDiana.Busqueda BusAgencias 
         Height          =   405
         Left            =   1890
         TabIndex        =   12
         Top             =   1260
         Width           =   5325
         _ExtentX        =   9393
         _ExtentY        =   714
         CodigoWidth     =   1095
         NombreWidth     =   3700
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin BuscarDiana.Busqueda BusResponsables 
         Height          =   405
         Left            =   1890
         TabIndex        =   13
         Top             =   855
         Width           =   5325
         _ExtentX        =   9393
         _ExtentY        =   714
         CodigoWidth     =   1095
         NombreWidth     =   3700
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Tipo Planilla"
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
         TabIndex        =   21
         Top             =   2475
         Width           =   975
      End
      Begin VB.Label LblVehiculo 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
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
         Left            =   3600
         TabIndex        =   19
         Top             =   2145
         Width           =   45
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Placa"
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
         TabIndex        =   18
         Top             =   2145
         Width           =   420
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Punto de Recaudo"
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
         TabIndex        =   16
         Top             =   1755
         Width           =   1485
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Agencia"
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
         TabIndex        =   15
         Top             =   1350
         Width           =   660
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Rango de Fechas"
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
         TabIndex        =   14
         Top             =   540
         Width           =   1395
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Responsable"
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
         Top             =   945
         Width           =   1080
      End
      Begin VB.Label LblFechai 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha Inicial:"
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
         Left            =   1935
         TabIndex        =   8
         Top             =   270
         Width           =   1035
      End
      Begin VB.Label LblFechaf 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha Final:"
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
         Left            =   3465
         TabIndex        =   7
         Top             =   270
         Width           =   945
      End
   End
   Begin Crystal.CrystalReport RptReciboCaja 
      Left            =   135
      Top             =   900
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
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
            Picture         =   "FrmTranListadoDespacho.frx":6184
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoDespacho.frx":66C8
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoDespacho.frx":67D4
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
      Left            =   8685
      TabIndex        =   6
      Top             =   765
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGdespachos 
      Height          =   5280
      Left            =   315
      TabIndex        =   2
      Top             =   4095
      Width           =   11280
      _cx             =   19897
      _cy             =   9313
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
      BackColor       =   16777088
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   16777088
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
   Begin VSFlex8DAOCtl.VSFlexGrid FGcontrolAporte 
      Height          =   1815
      Left            =   5715
      TabIndex        =   34
      Top             =   8145
      Visible         =   0   'False
      Width           =   3855
      _cx             =   6800
      _cy             =   3201
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
      BackColor       =   12648447
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   12648447
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
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "      Listado Despacho de Veh�culos"
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
         Caption         =   "Nivel Dos"
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
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   4
      End
      Begin VB.Menu Menu 
         Caption         =   "Pantalla"
         Index           =   5
      End
   End
End
Attribute VB_Name = "FrmTranListadoDespacho"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Mes As Integer, RegFor As Variant, vFiltro As String, vEmpresaVehiculo As String
Private Enum Datos
        Item
        numero
        Fecha
        Agencia
        Punto
        CodUsuario
        Vehiculo
        NomEmpVehi
        Propie
        NomCon
        Ruta
        Destino
        Tipo
        FechaSalida
        FechaRegreso
        CodVehi
        CedCon
        DesVehi
        CodEmpVehi
        FechaOrden
        TipoPlanilla
        NumPlanilla
        Observacion
        PagoPlanilla
        PagoAportes
        vValorAporte
        TarjetaOperacion
        SeguroObligatorio
        Tecnicomecanica
        SeguroContractual
        SeguroTodoRiesgo
        SeguroExtraContractual
        PasadoJudicial
        LicenciaConduccion
        Carnet
        vContigencia
        VBrevisaContg
        vAnoPlanilla
        vMesPlanilla
        vDiaPlanilla
        vNumAlcolemia
        vValorAlcolemia
        Estado
        TelefonoConductor
        RespuestaEncuesta
        ReqAporteDiario
        vValorAporteDiario
        vReqCarteraCero
        vHoraAporte
        vCodAgencia
        VBcontigencia
        VBusuario
        VBFechaHora
        
End Enum

Private Enum ctAporte
        empresac
        vehiculoc
        Aportadoc
        caterac
        sobrantec
        Control1
        control2
        control3
        control4
        
        
End Enum

Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        N = FGdespachos.Left + 300
        FGdespachos.Width = Me.Width - N
        FGdespachos.Height = Me.Height - FGdespachos.Top - vHeightFor
        
        
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        On Error GoTo SAlida
        Dim vFechaIni As Date, vFechaFin As Date
                
        With FGdespachos
              If Permisos(3) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
              Progres.value = 1: Progres.Min = 1
              Progres.Max = 15
              vFiltro = Empty
                                        
              Progres.Visible = True: Progres.value = Progres.value + 1
              If DTfechaI.value > DTfechaF.value Then MsgBox "Seleccione bien el intervalo de fecha", vbExclamation + vbOKOnly, "Atenci�n": DTfechaI.SetFocus: Exit Sub
                                        
              vFechaIni = DTfechaI.value
              vFechaFin = DTfechaF.value
              
              If Trim(BusResponsables.Text) <> Empty Then vFiltro = " AND PdoStUsuario = '" & Trim(BusResponsables.Text) & "'"
              If Trim(BusAgencias.Text) <> Empty Then vFiltro = vFiltro & " AND PdoIdStAgencia = '" & Trim(BusAgencias.Text) & "'"
              If Trim(BusPuntos.Text) <> Empty Then vFiltro = vFiltro & " AND PdoIdStPuntoRecaudo = '" & Trim(BusPuntos.Text) & "'"
              If Trim(TxtPlaca.Text) <> Empty Then
                   If vEmpresaVehiculo = Empty Then MsgBox "Se�or usuario digite la placa de forma correcta", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
                   vFiltro = vFiltro & " AND A.PdoIdStEmpresaVehiculo = '" & vEmpresaVehiculo & "' AND A.PdoIdStPlaca = '" & Trim(TxtPlaca.Text) & "'"
              Else
                  LblVehiculo.Caption = Empty
              End If
              
              If OptPlanilla(0).value = True Then
                  vFiltro = vFiltro & " AND PdoStTipoPlanilla = '0'"
              Else
                  If OptPlanilla(1).value = True Then vFiltro = vFiltro & " AND PdoStTipoPlanilla = '1'"
              End If
              
              A = Empty:  M = 0: b = Empty: D = Empty
              .Rows = 1
              FGdespachos.FixedCols = 0: CmdFijar.Caption = "F"
              Nz = 1
              
              Sql = "SELECT A.*,D.AgeStDescripcion,E.CliStNombreCliente,F.CliStNombreCliente AS NomConductor, " & _
                    "G.empsigl,H.VehIdInNumero,H.VehStDescripcion,H.VehInVrAporteDiario,H.VehStRequiereAportesDiarios,H.VehStControlarAporteDiarioCartera," & _
                    "H.VehDtHoraMinimaAporte,I.Munnomb, J.TmaStDescripcionUna, K.RtpStDescripcion, M.CliStNombreCliente AS NomUsuario,X.TvpStEstado,X.TvpFechaHora,X.TvpStUsuario,P.PtrStValidarContigencia  " & _
                    "FROM TRANPLANILLADESPACHO A " & _
                    "INNER JOIN TRANAGENCIAS D ON (A.PdoIdStEmpresa = D.AgeIdStEmpresa AND A.PdoIdStAgencia = D.AgeIdStAgencia) " & _
                    "INNER JOIN TRANPUNTORECAUDOS P ON (A.PdoIdStEmpresa = P.PtrIdStEmpresa AND A.PdoIdStAgencia = P.PtrIdStAgencia AND A.PdoIdStPuntoRecaudo = P.PtrIdStPuntoRecaudo) " & _
                    "LEFT OUTER JOIN CLIENTES E ON (A.PdoIdStEmpresaVehiculo = E.cliempr AND A.PdoIdStPropietario = E.clinit) " & _
                    "LEFT OUTER JOIN CLIENTES F ON (A.PdoIdStEmpresaVehiculo = F.cliempr AND A.PdoIdStConductor = F.clinit) " & _
                    "INNER JOIN EMPRESAS G ON (A.PdoIdStEmpresaVehiculo = G.empcodi) " & _
                    "INNER JOIN TRANVEHICULOS H ON (A.PdoIdStEmpresaVehiculo = H.VehIdStEmpresa AND A.PdoIdStPlaca = H.VehIdStPlaca) " & _
                    "INNER JOIN MUNICIPIO I ON (A.PdoIdInPaisDestino = I.Munpais AND A.PdoIdInDptoDestino = I.Mundpto AND A.PdoIdInMunicipioDestino = I.Muncodi) " & _
                    "INNER JOIN TRANMAESTROS J ON (A.PdoIdStTablaRecorrido = J.TmaIdInTransTablas AND A.PdoIdStRecorrido = J.TmaIdStCodigo) " & _
                    "INNER JOIN TRANRUTASTRANSPORTE K ON (A.PdoIdStEmpresaVehiculo = K.RtpIdStEmpresa AND A.PdoIdInRuta = K.RtpIdInRuta) " & _
                    "INNER JOIN GENTUSUARIOS L ON (A.PdoStUsuario = L.UsuStIdUsuario) " & _
                    "LEFT OUTER JOIN CLIENTES M ON (A.PdoIdStEmpresa = M.cliempr AND L.UsuIdStNitCliente = M.clinit) " & _
                    "LEFT OUTER JOIN TRANVALIDARPLANILLACONTIGENCIA X ON (A.PdoIdStEmpresa = X.TvpIdStEmpresa AND A.PdoIdStNumDespacho = X.TvpIdStNumDespacho) " & _
                    "WHERE (A.PdoIdStEmpresa = '" & Empresa & "' AND " & _
                        "PdoDaFecha BETWEEN '" & Format(vFechaIni, FormatoFecha) & "' AND '" & Format(vFechaFin, FormatoFecha) & "' " & _
                        "" & vFiltro & ") " & _
                    "ORDER BY PdoIdStNumDespacho"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                                     
                   While Not rdoRs.EOF
                         If A <> Trim(rdoRs!PdoIdStNumDespacho) Then
                                .AddItem ""
                                .TextMatrix(.Rows - 1, Datos.Item) = Nz
                                .TextMatrix(.Rows - 1, Datos.Vehiculo) = Trim("" & rdoRs!PdoIdStPlaca)
                                .TextMatrix(.Rows - 1, Datos.Fecha) = Format(rdoRs!PdoDaFecha, "dd-mm-yyyy")
                                .TextMatrix(.Rows - 1, Datos.vAnoPlanilla) = Year(rdoRs!PdoDaFecha)
                                .TextMatrix(.Rows - 1, Datos.vMesPlanilla) = Month(rdoRs!PdoDaFecha)
                                .TextMatrix(.Rows - 1, Datos.vDiaPlanilla) = Day(rdoRs!PdoDaFecha)
                                .TextMatrix(.Rows - 1, Datos.numero) = Trim("" & rdoRs!PdoIdStNumDespacho)
                                .TextMatrix(.Rows - 1, Datos.Agencia) = Trim("" & rdoRs!AgeStDescripcion)
                                .TextMatrix(.Rows - 1, Datos.Punto) = Trim("" & rdoRs!PdoIdStPuntoRecaudo)
                                .TextMatrix(.Rows - 1, Datos.vCodAgencia) = Trim("" & rdoRs!PdoIdStAgencia)
                                .TextMatrix(.Rows - 1, Datos.CodUsuario) = Trim("" & rdoRs!NomUsuario)
                                .TextMatrix(.Rows - 1, Datos.Propie) = Trim("" & rdoRs!CliStNombreCliente)
                                .TextMatrix(.Rows - 1, Datos.NomCon) = Trim("" & rdoRs!NomConductor)
                                .TextMatrix(.Rows - 1, Datos.CedCon) = Trim("" & rdoRs!PdoIdStConductor)
                                .TextMatrix(.Rows - 1, Datos.CodEmpVehi) = Trim("" & rdoRs!PdoIdStEmpresaVehiculo)
                                .TextMatrix(.Rows - 1, Datos.NomEmpVehi) = Trim("" & rdoRs!EmpSigl)
                                .TextMatrix(.Rows - 1, Datos.CodVehi) = Trim("" & rdoRs!VehIdInNumero)
                                .TextMatrix(.Rows - 1, Datos.DesVehi) = Trim("" & rdoRs!VehStDescripcion)
                                .TextMatrix(.Rows - 1, Datos.Destino) = Trim("" & rdoRs!MunNomb)
                                .TextMatrix(.Rows - 1, Datos.Ruta) = Trim("" & rdoRs!RtpStDescripcion)
                                .TextMatrix(.Rows - 1, Datos.Tipo) = Trim("" & rdoRs!TmaStDescripcionUna)
                                .TextMatrix(.Rows - 1, Datos.FechaSalida) = Format(rdoRs!PdoFechaHoraSalida, "dd-mm-yyyy hh:mm:ss am/pm")
                                .TextMatrix(.Rows - 1, Datos.FechaRegreso) = Format(rdoRs!PdoFechaHoraRegreso, "dd-mm-yyyy hh:mm:ss am/pm")
                                .TextMatrix(.Rows - 1, Datos.FechaOrden) = Format(rdoRs!PdoFechaHoraSalida, "dd-mm-yyyy hh:mm:ss")
                                If Val("" & rdoRs!PdoStTipoPlanilla) = 0 Then
                                    .TextMatrix(.Rows - 1, Datos.TipoPlanilla) = "Planilla Normal"
                                Else
                                    .TextMatrix(.Rows - 1, Datos.TipoPlanilla) = "Planilla Contingencia"
                                End If
                                
                                .TextMatrix(.Rows - 1, Datos.Observacion) = Trim("" & rdoRs!PdoStObservacion)
                                .TextMatrix(.Rows - 1, Datos.NumPlanilla) = Trim("" & rdoRs!PdoStNumeroPlanilla)
                                
                                .TextMatrix(.Rows - 1, Datos.TarjetaOperacion) = Val("" & rdoRs!PdoStSwTarjetaOperacion)
                                .TextMatrix(.Rows - 1, Datos.SeguroContractual) = Val("" & rdoRs!PdoStSwSeguroContractual)
                                .TextMatrix(.Rows - 1, Datos.SeguroExtraContractual) = Val("" & rdoRs!PdoStSwSeguroExtracontractual)
                                .TextMatrix(.Rows - 1, Datos.SeguroObligatorio) = Val("" & rdoRs!PdoStSwSeguroObligatorio)
                                .TextMatrix(.Rows - 1, Datos.SeguroTodoRiesgo) = Val("" & rdoRs!PdoStSwSeguroTodoRiesgo)
                                .TextMatrix(.Rows - 1, Datos.Tecnicomecanica) = Val("" & rdoRs!PdoStSwTecnomecanica)
                                .TextMatrix(.Rows - 1, Datos.PagoAportes) = Val("" & rdoRs!PdoStAportes)
                                .TextMatrix(.Rows - 1, Datos.PagoPlanilla) = Val("" & rdoRs!PdoStPlanillaAdm)
                                .TextMatrix(.Rows - 1, Datos.PasadoJudicial) = Val("" & rdoRs!PdoStSwPasadoJudicial)
                                .TextMatrix(.Rows - 1, Datos.LicenciaConduccion) = Val("" & rdoRs!PdoStSwLicenciaConduccion)
                                .TextMatrix(.Rows - 1, Datos.Carnet) = Val("" & rdoRs!PdoStSwCarnet)
                                .TextMatrix(.Rows - 1, Datos.vContigencia) = Val("" & rdoRs!PdoStTipoPlanilla)
                                
                                .TextMatrix(.Rows - 1, Datos.vValorAlcolemia) = Trim("" & rdoRs!PdoInValorAlcolemia)
                                .TextMatrix(.Rows - 1, Datos.vNumAlcolemia) = Trim("" & rdoRs!PdoStNumAlcolemia)
                                
                                .TextMatrix(.Rows - 1, Datos.ReqAporteDiario) = Val("" & rdoRs!VehStRequiereAportesDiarios)
                                .TextMatrix(.Rows - 1, Datos.vValorAporteDiario) = Val("" & rdoRs!VehInVrAporteDiario)
                                .TextMatrix(.Rows - 1, Datos.vReqCarteraCero) = Val("" & rdoRs!VehStControlarAporteDiarioCartera)
                                If Trim("" & rdoRs!VehDtHoraMinimaAporte) <> Empty Then
                                     .TextMatrix(.Rows - 1, Datos.vHoraAporte) = Format(rdoRs!VehDtHoraMinimaAporte, "HH:mm:ss am/pm")
                                End If
                                                    
                                If Trim("" & rdoRs!PdoStEstado) = "A" Then
                                    .TextMatrix(.Rows - 1, Datos.Estado) = "ACTIVO"
                                Else
                                    .TextMatrix(.Rows - 1, Datos.Estado) = "*** DESPACHO ANULADO ***"
                                End If
                                .TextMatrix(.Rows - 1, Datos.TelefonoConductor) = Trim("" & rdoRs!PdoStTelefonoConductor)
                                .TextMatrix(.Rows - 1, Datos.RespuestaEncuesta) = Trim("" & rdoRs!PdoStRespuestaEncuesta)
                                .TextMatrix(.Rows - 1, Datos.VBcontigencia) = Val("" & rdoRs!TvpStEstado)
                                .TextMatrix(.Rows - 1, Datos.VBFechaHora) = Trim("" & rdoRs!TvpFechaHora)
                                .TextMatrix(.Rows - 1, Datos.VBusuario) = Trim("" & rdoRs!TvpStUsuario)
                                .TextMatrix(.Rows - 1, Datos.VBrevisaContg) = Val("" & rdoRs!PtrStValidarContigencia)
                                
                                Nz = Nz + 1
                         End If
                         
                         A = Trim(rdoRs!PdoIdStNumDespacho)
                         
                         rdoRs.MoveNext
                   Wend
              End If
                               
              If .Rows <= 1 Then MsgBox "No hay informaci�n para mostrar", vbInformation + vbOKOnly, "Atenci�n": Progres.Visible = False:  Exit Sub
                           
              Progres.value = Progres.value + 1
              
              If .Rows > 1 Then
                  Progres.value = Progres.value + 1
                  If OptPlanilla(3).value Then
                      Call Buscar_PagosAportes
                      FGdespachos.ColHidden(Datos.vValorAporte) = False
                  Else
                      Call Buscar_PagosPlanillas
                      FGdespachos.ColHidden(Datos.vValorAporte) = True
                  End If
                  Progres.value = Progres.value + 1
                  .AutoSize 0, FGdespachos.Cols - 1
                  .AllowUserResizing = flexResizeColumns
                  .Select 1, Datos.FechaOrden
                  .Sort = flexSortStringAscending
                  .SetFocus: .Select 1, Datos.numero
                  .ColWidth(Datos.Observacion) = 5000
              End If
              Progres.Visible = False
              
        End With
        Exit Sub
SAlida: Call MensajeAdministrador
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        If Permisos(4) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        Call Imprimir_Informe
End Sub

Private Sub BusAgencias_LostFocus()
        BusPuntos.QueryBuscar
End Sub


Private Sub BusAgencias_Retorno(RowReturn As Collection, ByHelp As Boolean)
         FGdespachos.Rows = 1
         If Trim(BusAgencias.Text) <> Empty Then
            Sql = "SELECT PtrIdStPuntoRecaudo,PtrStDescripcion FROM TRANPUNTORECAUDOS WHERE PtrIdStEmpresa = '" & Empresa & "' AND PtrIdStAgencia = '" & BusAgencias.Text & "' AND " & _
                  "PtrStEstado = 'A' "
            
            BusPuntos.Sql = Sql
            BusPuntos.Enabled = True
            BusPuntos.SetFocus
                                
         End If

End Sub

Private Sub BusPuntos_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGdespachos.Rows = 1
End Sub

Private Sub BusResponsables_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGdespachos.Rows = 1
End Sub

Private Sub CmdFijar_Click()
        If CmdFijar.Caption = "F" Then
             CmdFijar.Caption = "V": FGdespachos.FixedCols = 7
        Else
             FGdespachos.FixedCols = 0: CmdFijar.Caption = "F"
        End If
End Sub

Private Sub Cmdplano_Click()
        On Error GoTo Mt
        If FGdespachos.Rows - 1 <= 1 Then MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
             FGdespachos.SaveGrid ComArchivo.FileName, flexFileExcel, 3
             
        End If
        Exit Sub
Mt: MsgBox "Consultar con el Adm. del Sistema", vbCritical + vbOKOnly, "Atenci�n"

End Sub

Private Sub Cmdplano_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.ExportarS, vbResBitmap)
End Sub

Private Sub DTfechaF_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaF_LostFocus()
        FGdespachos.Rows = 1
End Sub

Private Sub DTfechaI_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaI_LostFocus()
        FGdespachos.Rows = 1
End Sub

Private Sub FGdespachos_BeforeEdit(ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
        If Col <> Datos.Item And Col <> Datos.vContigencia Then Cancel = True
End Sub

Private Sub FGdespachos_CellButtonClick(ByVal Row As Long, ByVal Col As Long)
        If Col = Datos.Item And Row > 0 Then
               If FGdespachos.TextMatrix(Row, Datos.Estado) <> "ACTIVO" Then Exit Sub
               
               'FrmTranAnularDespachoVehiculos (DESPUES SE ACTIVA CON ESTE PARAMETRO)
               
               Sql = "SELECT A.* FROM GENROPCIONESGRUPO A " & _
                     "INNER JOIN GENTOPCIONES B ON (A.RopStIdOpcion = B.OpcStIdOpcion AND OpcStFormulario= 'FrmTranAnularRecibodeCaja') " & _
                     "WHERE RopStIdEmpresa = '" & Empresa & "'"
               If Buscar_Res(rdoRs, Sql) = BDOk Then
                    FrmTranAnularDespachoVehiculos.TxtNumDespacho.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.numero))
                    FrmTranAnularDespachoVehiculos.DtpFecha.value = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Fecha))
                    FrmTranAnularDespachoVehiculos.TxtPlaca.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Vehiculo))
                    FrmTranAnularDespachoVehiculos.TxtPuntoRecaudo.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Punto))
                    FrmTranAnularDespachoVehiculos.TxtNumeroVehiculo.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.CodVehi))
                    FrmTranAnularDespachoVehiculos.TxtDescripcionVehiculo.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.DesVehi))
                    FrmTranAnularDespachoVehiculos.TxtNombrePropietario.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Propie))
                    FrmTranAnularDespachoVehiculos.TxtConductor.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.NomCon))
                    FrmTranAnularDespachoVehiculos.TxtDestino.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Destino))
                    FrmTranAnularDespachoVehiculos.TxtAgenciaOrigen.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Agencia))
                    FrmTranAnularDespachoVehiculos.TxtCodEmpVeh.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.CodEmpVehi))
                    'FrmTranAnularDespachoVehiculos.TxtEstado.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Estado))
                    FrmTranAnularDespachoVehiculos.TxtRuta.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Ruta))
                    FrmTranAnularDespachoVehiculos.TxtRecorrido.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Tipo))
                    FrmTranAnularDespachoVehiculos.Show vbModal
               Else
                    MsgBox "Se�or usuario no tiene autorizaci�n para ejecutar la opci�n", vbInformation + vbOKOnly, "Atenci�n"
               End If
               
        Else
            If Col = Datos.vContigencia And Val(FGdespachos.TextMatrix(Row, Datos.vContigencia)) = 1 Then
               '
                 FrmTranValidarDespachoContigencia.TxtNumDespacho.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.numero))
                 FrmTranValidarDespachoContigencia.DtpFecha.value = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Fecha))
                 FrmTranValidarDespachoContigencia.TxtPlaca.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Vehiculo))
                 FrmTranValidarDespachoContigencia.TxtPuntoRecaudo.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Punto))
                 FrmTranValidarDespachoContigencia.TxtNumeroVehiculo.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.CodVehi))
                 FrmTranValidarDespachoContigencia.TxtDescripcionVehiculo.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.DesVehi))
                 FrmTranValidarDespachoContigencia.TxtNombrePropietario.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Propie))
                 FrmTranValidarDespachoContigencia.TxtConductor.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.NomCon))
                 FrmTranValidarDespachoContigencia.TxtDestino.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Destino))
                 FrmTranValidarDespachoContigencia.TxtAgenciaOrigen.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Agencia))
                 FrmTranValidarDespachoContigencia.TxtCodEmpVeh.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.CodEmpVehi))
                 FrmTranValidarDespachoContigencia.TxtRuta.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Ruta))
                 FrmTranValidarDespachoContigencia.TxtRecorrido.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Tipo))
                 FrmTranValidarDespachoContigencia.TxtCodAgencia.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.vCodAgencia))
                 FrmTranValidarDespachoContigencia.Show vbModal
            End If
        End If
        
End Sub

Private Sub FGdespachos_DblClick()
        If FGdespachos.Rows > 1 And Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.numero)) <> Empty Then
            FrmTranDetalleListadoDespacho.TxtNumDespacho.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.numero))
            FrmTranDetalleListadoDespacho.TxtFecha.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Fecha))
            FrmTranDetalleListadoDespacho.TxtPlaca.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Vehiculo))
            FrmTranDetalleListadoDespacho.TxtPuntoRecaudo.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Punto))
            FrmTranDetalleListadoDespacho.TxtNumeroVehiculo.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.CodVehi))
            FrmTranDetalleListadoDespacho.TxtDescripcionVehiculo.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.DesVehi))
            FrmTranDetalleListadoDespacho.TxtNombrePropietario.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Propie))
            FrmTranDetalleListadoDespacho.TxtConductor.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.NomCon))
            FrmTranDetalleListadoDespacho.TxtCedCon.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.CedCon))
            FrmTranDetalleListadoDespacho.TxtDestino.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Destino))
            FrmTranDetalleListadoDespacho.TxtCodEmpVeh.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.CodEmpVehi))
            FrmTranDetalleListadoDespacho.TxtUsuario.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.CodUsuario))
            FrmTranDetalleListadoDespacho.TxtAgencia.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Agencia))
            FrmTranDetalleListadoDespacho.TxtEstado.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Estado))
            FrmTranDetalleListadoDespacho.TxtRuta.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Ruta))
            FrmTranDetalleListadoDespacho.TxtRecorrido.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.Tipo))
            FrmTranDetalleListadoDespacho.TxtSalida.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.FechaSalida))
            FrmTranDetalleListadoDespacho.TxtRegreso.Text = Trim(FGdespachos.TextMatrix(FGdespachos.Row, Datos.FechaRegreso))
            
            FrmTranDetalleListadoDespacho.Show vbModal
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
                    'If (Shift = 2) And (BarraOperaciones.BotonActivo(Imprimir) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Imprimir)
               
        End Select
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
        If KeyAscii = vbKeyReturn Then
            WshShell.SendKeys "{Tab}"
            KeyAscii = 0
        End If
End Sub

Private Sub Form_Load()
        Iempresa = Empresa
        Call Configurar_Pantalla
        Call Obtener_FechaServidor
        DTfechaI.value = FechaServidor
        DTfechaF.value = FechaServidor
        
        Me.BackColor = Bcolor1
        Me.Caption = Trim(Titul)
        Frame2.BackColor = Bcolor1
        Frame1.BackColor = Bcolor1
        OptPlanilla(0).BackColor = Bcolor1: OptPlanilla(1).BackColor = Bcolor1: OptPlanilla(2).BackColor = Bcolor1: OptPlanilla(3).BackColor = Bcolor1
                
        LblTitle.BackColor = Bfcolor
        LblTitle.ForeColor = Fcolor1
        LblTitle.Font = TipoLetraTitulo: LblTitle.FontBold = NegLetraTitulo: LblTitle.FontSize = Tama�oLetraTitulo
        LblTitle.Height = 315
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana

        With BarraOperaciones
              .BarUso = BaConsulta
              .Tabla = ""
              .BarBuscar = EstCancel
        End With
        
        With BusResponsables
             .Enabled = False
             .TexVisible = True
             .CodigoWidth = 1200
             .NombreWidth = 4300
             .ColCampos.Add 0, "CEDULA", "UsuIdStNitCliente", adVarChar, 1200, False
             .ColCampos.Add 1, "NOMBRE DEL RESPONSABLE", "CliStNombreCliente", adVarChar, 5000, True
             .ColRet = 1
             .Sql = "SELECT A.*, B.CliStNombreCliente FROM GENTUSUARIOS A " & _
                    "INNER JOIN CLIENTES B ON (A.UsuIdStNitCliente = B.CliNit AND B.CliEmpr = '" & Empresa & "') "
             .TitleGrid = "LISTADO USUARIOS"
             .ColLlaves.Add "UsuIdStNitCliente", "", adVarChar
             .PosicionTop = 800
             .TipoBusqueda = BxCompleta
             .PosicionLeft = .Left
             .TooltipBoton = "Buscar Usuarios"
        End With
               
        With BusAgencias
             .Enabled = False
             .TexVisible = True
             .CodigoWidth = 1200
             .NombreWidth = 4300
             .ColCampos.Add 0, "CODIGO", "AgeIdStAgencia", adVarChar, 1200, False
             .ColCampos.Add 1, "DESCRIPCION", "AgeStDescripcion", adVarChar, 5000, True
             .ColRet = 1
             .Sql = "SELECT AgeIdStAgencia,AgeStDescripcion FROM TRANAGENCIAS WHERE AgeIdStEmpresa = '" & Empresa & "'"
             .TitleGrid = "LISTADO AGENCIAS"
             .ColLlaves.Add "AgeIdStAgencia", "", adVarChar
             .PosicionTop = 800
             .TipoBusqueda = BxCompleta
             .PosicionLeft = .Left
             .TooltipBoton = "Buscar Agencias"
        End With
               
        With BusPuntos
             .Enabled = False
             .TexVisible = True
             .CodigoWidth = 1200
             .NombreWidth = 4300
             .ColCampos.Add 0, "CODIGO", "PtrIdStPuntoRecaudo", adVarChar, 1200, False
             .ColCampos.Add 1, "DESCRIPCION", "PtrStDescripcion", adVarChar, 5000, True
             .ColRet = 1
             .Sql = ""
             .TitleGrid = "MAESTROS TRANPUNTORECAUDOS"
             .ColLlaves.Add "PtrIdStPuntoRecaudo", "", adVarChar
             .PosicionTop = 800
             .TipoBusqueda = BxCompleta
             .PosicionLeft = .Left
             .TooltipBoton = "Buscar Registro"
        End With
               
        BusResponsables.Enabled = True
        BusAgencias.Enabled = True
        
        J = 0: K = Empty
        Idx = 0
        Call DGRILLA
                                
        RegFor = 1
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
        On Error GoTo SAlida
        
        With FGdespachos
             .Rows = 1
             .Cols = 53
             .FixedCols = 0
             .FontName = "Arial"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColor = ColorGrilla
             .BackColorBkg = ColorGrilla
             .BackColorFixed = vbWhite
             .BackColorSel = &H808000
             .ForeColorSel = vbWhite
             .ForeColorFixed = vColorFixed
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .OutlineCol = 0
             .SelectionMode = flexSelectionByRow
             .AutoSearch = flexSearchFromCursor
             .TextMatrix(0, Datos.Item) = "Item"
             .TextMatrix(0, Datos.numero) = "N�mero"
             .TextMatrix(0, Datos.Fecha) = "Fecha"
             .TextMatrix(0, Datos.Agencia) = "Agencia"
             .TextMatrix(0, Datos.Punto) = "Punto"
             .TextMatrix(0, Datos.CodUsuario) = "Usuario"
             .TextMatrix(0, Datos.Vehiculo) = "Veh�culo"
             .TextMatrix(0, Datos.NomEmpVehi) = "Empresa Veh�culo"
             .TextMatrix(0, Datos.Propie) = "Propietario"
             .TextMatrix(0, Datos.NomCon) = "Conductor"
             .TextMatrix(0, Datos.Ruta) = "Ruta"
             .TextMatrix(0, Datos.Destino) = "Destino"
             .TextMatrix(0, Datos.Tipo) = "Recorrido"
             .TextMatrix(0, Datos.FechaSalida) = "Fecha Salida"
             .TextMatrix(0, Datos.FechaRegreso) = "Fecha Regreso"
             .TextMatrix(0, Datos.CodVehi) = "C�digo Veh�culo"
             .TextMatrix(0, Datos.Estado) = "Estado "
             .TextMatrix(0, Datos.DesVehi) = "descripcion Vehiculo"
             .TextMatrix(0, Datos.CodEmpVehi) = "CodEmpVehi"
             .TextMatrix(0, Datos.FechaOrden) = "Orden"
             .TextMatrix(0, Datos.TarjetaOperacion) = "Tarjeta Operaci�n"
             .TextMatrix(0, Datos.SeguroContractual) = "Seguro Contractual"
             .TextMatrix(0, Datos.SeguroExtraContractual) = "Seguro Extracontractual"
             .TextMatrix(0, Datos.SeguroObligatorio) = "Seguro Obligatorio"
             .TextMatrix(0, Datos.SeguroTodoRiesgo) = "Seg. Todo Riesgo"
             .TextMatrix(0, Datos.Tecnicomecanica) = "Rev. Tecnicomecanica"
             .TextMatrix(0, Datos.TipoPlanilla) = "Tipo Planilla"
             .TextMatrix(0, Datos.NumPlanilla) = "No. Planilla"
             .TextMatrix(0, Datos.Carnet) = "Carnet"
             .TextMatrix(0, Datos.LicenciaConduccion) = "Licencia Conducci�n"
             .TextMatrix(0, Datos.PasadoJudicial) = "Pasado Judicial"
             .TextMatrix(0, Datos.PagoAportes) = "Aportes"
             .TextMatrix(0, Datos.PagoPlanilla) = "Planilla"
             .TextMatrix(0, Datos.Observacion) = "Observaci�n"
             .TextMatrix(0, Datos.vContigencia) = "Contigencia"
             .TextMatrix(0, Datos.vAnoPlanilla) = "A�o"
             .TextMatrix(0, Datos.vMesPlanilla) = "Mes"
             .TextMatrix(0, Datos.vNumAlcolemia) = "No. Alcoholemia"
             .TextMatrix(0, Datos.vValorAlcolemia) = "Vr. Alcoholemia"
             .TextMatrix(0, Datos.vValorAporte) = "Vr. Aporte"
             .TextMatrix(0, Datos.TelefonoConductor) = "Celular"
             .TextMatrix(0, Datos.RespuestaEncuesta) = "Encuesta"
             .TextMatrix(0, Datos.ReqAporteDiario) = "Req. Aporte Diario"
             .TextMatrix(0, Datos.vValorAporteDiario) = "Vr Aporte Diario"
             .TextMatrix(0, Datos.vReqCarteraCero) = "Control Cartera Cero"
             .TextMatrix(0, Datos.vHoraAporte) = "Hora Aporte"
             .TextMatrix(0, Datos.vCodAgencia) = "Id Agencia"
             .TextMatrix(0, Datos.VBcontigencia) = "VoB Contigencia"
             .TextMatrix(0, Datos.VBFechaHora) = "VoB Fecha Hora"
             .TextMatrix(0, Datos.VBusuario) = "VoB Usuario"
             .TextMatrix(0, Datos.VBrevisaContg) = "Revisa Contigencia"
             
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             .ColWidth(Datos.numero) = 1000
             .ColWidth(Datos.Fecha) = 1000
             .ColWidth(Datos.Agencia) = 2500
             .ColWidth(Datos.Punto) = 800
             .ColWidth(Datos.CodUsuario) = 1400
             .ColWidth(Datos.Vehiculo) = 1000
             .ColWidth(Datos.NomEmpVehi) = 2000
             .ColWidth(Datos.Propie) = 2700
             .ColWidth(Datos.NomCon) = 2700
             .ColWidth(Datos.Ruta) = 2300
             .ColWidth(Datos.Destino) = 1500
             .ColWidth(Datos.vNumAlcolemia) = 1300
             .ColWidth(Datos.vValorAlcolemia) = 1500
             .ColWidth(Datos.vValorAporte) = 1200
             .ColWidth(Datos.Tipo) = 1400
             .ColWidth(Datos.FechaSalida) = 2000
             .ColWidth(Datos.FechaRegreso) = 2000
             .ColWidth(Datos.Estado) = 1300
             .ColHidden(Datos.CedCon) = True
             .ColHidden(Datos.CodVehi) = True
             .ColHidden(Datos.Destino) = True
             .ColHidden(Datos.DesVehi) = True
             .ColHidden(Datos.CodEmpVehi) = True
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .ColDataType(Datos.VBcontigencia) = flexDTBoolean
             .ExplorerBar = flexExSortShowAndMove
             .ColHidden(Datos.FechaOrden) = True
             .ColHidden(Datos.FechaOrden) = True
             .ColHidden(Datos.vMesPlanilla) = True
             .ColHidden(Datos.vAnoPlanilla) = True
             .ColHidden(Datos.vDiaPlanilla) = True
             .ColHidden(Datos.vCodAgencia) = True
             .ColDataType(Datos.Fecha) = flexDTStringC
             .ColDataType(Datos.VBFechaHora) = flexDTStringC
             .ColDataType(Datos.VBrevisaContg) = flexDTBoolean
             
             .ColFormat(Datos.vValorAlcolemia) = "#,###"
             .ColFormat(Datos.vValorAporte) = "#,###"
             .ColFormat(Datos.vValorAporteDiario) = "#,###"
             For K = Datos.PagoPlanilla To Datos.Carnet
                    If K <> Datos.vValorAporte Then .ColDataType(K) = flexDTBoolean
             Next K
             .Editable = flexEDKbd
             .ColComboList(Datos.Item) = "..."
             .ColComboList(Datos.vContigencia) = "..."
             .ColHidden(Datos.Estado) = False
             .ColDataType(Datos.ReqAporteDiario) = flexDTBoolean
             .ColDataType(Datos.vReqCarteraCero) = flexDTBoolean
        End With
        
        
        With FGaportes
             .Rows = 1
             .Cols = 4
             .FixedCols = 0
             .FontName = "Arial"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColor = ColorGrilla
             .BackColorBkg = ColorGrilla
             .BackColorFixed = vbWhite
             .BackColorSel = &H808000
             .ForeColorSel = vbWhite
             .ForeColorFixed = vColorFixed
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .OutlineCol = 0
             .SelectionMode = flexSelectionByRow
             .AutoSearch = flexSearchFromCursor

        End With
        
        With FGcontrolAporte
             .Rows = 1
             .Cols = 10
             .FixedCols = 0
             .FontName = "Arial"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColor = ColorGrilla
             .BackColorBkg = ColorGrilla
             .BackColorFixed = vbWhite
             .BackColorSel = &H808000
             .ForeColorSel = vbWhite
             .ForeColorFixed = vColorFixed
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .OutlineCol = 0
             .SelectionMode = flexSelectionByRow
             .AutoSearch = flexSearchFromCursor

        End With
        
        Exit Sub
SAlida: Call MensajeAdministrador
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Call BarraOperaciones.Estado_Botones
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.Exportar, vbResBitmap)
End Sub

Private Sub Form_Resize()
        On Error Resume Next
        If Screen.Width >= 15360 And Screen.Height >= 10800 Then
              F = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0)
              Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0)
               
              Me.Move F + AnchoMenu, Y + TopMenu, Me.Width, Me.Height
        End If
End Sub

Private Sub Imprimir_Informe()
'        With FGdespachos
'             On Error GoTo Imprime
'
'             Dim Mh As String, GF As String, Iw As String
'             If .Rows = 1 Then MsgBox "No hay informaci�n para imprimir", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
'
'             Call Transaccion(BDBegin)
'             Sql = "DELETE FROM INFORME3"
'             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
'             M = -1: Ax = Empty
'             N = 0
'             If .Rows = 2 Then N = 1 Else N = .Rows - 2
'             For i = 1 To N
'                   Sql = "INSERT INTO INFORME3(InfDesc,InfDes2,infnatu,Infval1,Infval2,Infval4,Infval6,Infval5)" & _
'                         "VALUES('" & Trim(.TextMatrix(i, Datos.Cliente)) & "','" & Trim(.TextMatrix(i, Datos.Fecha)) & "'," & _
'                         "'" & Trim(.TextMatrix(i, Datos.Numero)) & "'," & Val(.TextMatrix(i, Datos.VrRecibo)) & "," & _
'                         "" & Val(.TextMatrix(i, Datos.VrDescuento)) & "," & Val(.TextMatrix(i, Datos.VrRetefuente)) & "," & Val(.TextMatrix(i, Datos.VrTotal)) & "," & _
'                         "" & Val(.TextMatrix(i, Datos.VrSobrantes)) & ")"
'                   If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
'             Next i
'             Call Transaccion(BDCommit)
'
'             R = "FECHA DE CORTE: " & Format(DTfechaI.Value, "dd/mm/yyyy") & " HASTA " & Format(DTfechaF.Value, "dd/mm/yyyy")
'             RptReciboCaja.DiscardSavedData = True
'             RptReciboCaja.Formulas(1) = "Empresa= '" & DatosEmpresa(1) & "'"
'             RptReciboCaja.Formulas(2) = "Parametro= '" & R & "'"
'             X = Inf + "ListadoReciboCaja.rpt"
'             RptReciboCaja.ReportFileName = X
'             RptReciboCaja.Destination = crptToWindow
'             RptReciboCaja.WindowTitle = "LISTADO RECIBO DE CAJA"
'             RptReciboCaja.WindowMinButton = True
'             RptReciboCaja.WindowMaxButton = True
'             RptReciboCaja.WindowState = crptMaximized
'             RptReciboCaja.PrintReport
'        End With
        Exit Sub
    Imprime:
   MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atenci�n"

End Sub


Private Sub OptPlanilla_Click(Index As Integer)
        FGdespachos.Rows = 1
        Select Case Index
               Case 0:
                    For K = Datos.NumPlanilla To Datos.Carnet
                          FGdespachos.ColHidden(K) = True
                    Next K
               Case 1, 2:
                    For K = Datos.NumPlanilla To Datos.Carnet
                           FGdespachos.ColHidden(K) = False
                    Next K
        End Select
        
End Sub

Private Sub TxtPlaca_LostFocus()
        FGdespachos.Rows = 1:
        LblVehiculo.Caption = Empty
        If Trim(TxtPlaca.Text) <> Empty Then
             TxtPlaca.Text = UCase(TxtPlaca.Text)
             vEmpresaVehiculo = Empty
             Sql = "SELECT VehIdStEmpresa,VehStDescripcion FROM TRANVEHICULOS WHERE VehIdStPlaca= '" & Me.TxtPlaca.Text & "' AND VehStEstado = '0'"
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                  vEmpresaVehiculo = Trim("" & rdoRs!VehIdStEmpresa)
                  LblVehiculo.Caption = Trim("" & rdoRs!VehStDescripcion)
             Else
                 MsgBox "Se�or usuario el vehiculo no esta registrado", vbInformation + vbOKOnly, "Atenci�n"
             End If
        End If
End Sub


Private Sub Buscar_PagosPlanillas()
        On Error GoTo SAlida
        Dim vCampo As String
         
        With FGdespachos
             For i = 1 To .Rows - 1
                   If Val(.TextMatrix(i, Datos.vContigencia)) = 1 Then
                          vCampo = "CovStDia" & Trim(.TextMatrix(i, Datos.vDiaPlanilla))
                                                   
                          Sql = "SELECT CovStPaquetePlanilla," & vCampo & " As DiaPago FROM TRANCONTROLVEHICULOS " & _
                                "WHERE CovIdStEmpresa ='" & Trim(.TextMatrix(i, Datos.CodEmpVehi)) & "' AND CovIdStPlaca ='" & Trim(.TextMatrix(i, Datos.Vehiculo)) & "' AND " & _
                                "CovInAno=" & Trim(.TextMatrix(i, Datos.vAnoPlanilla)) & " AND CovInMes=" & Trim(.TextMatrix(i, Datos.vMesPlanilla)) & ""
                          If Buscar_Res(rdoRs, Sql) = BDOk Then
                             If Trim(.TextMatrix(i, Datos.PagoPlanilla)) = "1" Then 'pago la planilla verificar si es por paquete de planilla
                                  If Val(rdoRs!CovStPaquetePlanilla) = 1 Then
                                       .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = vbYellow
                                  End If
                             Else
                                  '----- verificar el pago de planilla
                                  If Val(rdoRs!DiaPago) = 1 Then
                                       .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = vbBlue
                                  Else
                                      .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = vbRed
                                  End If
                                  
                             End If
                          End If
                   End If
             Next i
        End With
        Exit Sub
SAlida: Call MensajeAdministrador
End Sub

Private Sub Buscar_PagosAportes()
        On Error GoTo SAlida
        Dim vColAportes As New Collection, vColControlVehDespacho As New Collection
                
        FGaportes.Rows = 1
        Sql = "SELECT A.RcdIdStPlaca,A.RcdDaFecha,B.MvrInValorTotal FROM TRANRECAUDOS A " & _
              "INNER JOIN TRANMOVRECAUDOS B ON (A.RcdIdStEmpresa = B.MvrIdStEmpresa AND A.RcdIdStNumRecaudo = B.MvrIdStNumRecaudo) " & _
              "INNER JOIN TRANCONCEPTOSRECAUDOS C ON (B.MvrIdStEmpresaVehiculo = C.CrdIdStEmpresa AND B.MvrIdStConceptoRecaudo = C.CrdIdStConceptoRecaudo AND CrdIdInTipoRecaudo = '002') " & _
              "WHERE (A.RcdIdStEmpresa = '" & Empresa & "' AND A.RcdIdStComprobante = '" & vParametros(10) & "' AND " & _
                  "RcdDaFecha BETWEEN '" & Format(DTfechaI.value, FormatoFecha) & "' AND '" & Format(DTfechaF.value, FormatoFecha) & "') "
        If Buscar_Res(rdoRs, Sql) = BDOk Then
            While Not rdoRs.EOF
                  S = Trim("" & rdoRs!RcdIdStPlaca) & Format(rdoRs!RcdDaFecha, "dd-mm-yyyy")
                  M = "-1"
                  On Error Resume Next
                  M = vColAportes(S)
                  If M = "-1" Then
                        FGaportes.AddItem ""
                        FGaportes.TextMatrix(FGaportes.Rows - 1, 0) = Trim("" & rdoRs!RcdIdStPlaca)
                        FGaportes.TextMatrix(FGaportes.Rows - 1, 1) = Format(rdoRs!RcdDaFecha, "dd-mm-yyyy")
                        FGaportes.TextMatrix(FGaportes.Rows - 1, 2) = Val("" & rdoRs!MvrInValorTotal)
                        vColAportes.Add FGaportes.Rows - 1, S
                  Else
                        FGaportes.TextMatrix(M, 2) = Val(FGaportes.TextMatrix(M, 2)) + Val("" & rdoRs!MvrInValorTotal)
                  End If
                  rdoRs.MoveNext
            Wend
        End If
                    
        FGcontrolAporte.Rows = 1
        With FGcontrolAporte
             S1 = Year(Me.DTfechaF.value): s2 = Month(Me.DTfechaF.value)
             Sql = "SELECT CovIdStEmpresa,CovIdStPlaca,CovInControlUno,CovInControlDos,CovInControlTres,CovInControlCuatro,CovInValorFaltante,CovInValorAportes,CovInValorSobrante " & _
                   "FROM TRANCONTROLVEHICULOS WHERE CovInAno = " & S1 & " AND CovInMes = " & s2
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                      M1 = Val("" & rdoRs!CovInValorAportes) + Val("" & rdoRs!CovInValorSobrante)
                      M2 = Val("" & rdoRs!CovInControlCuatro) + Val("" & rdoRs!CovInValorFaltante)
                      If M1 >= M2 Then
                             .AddItem ""
                             .TextMatrix(.Rows - 1, ctAporte.vehiculoc) = Trim("" & rdoRs!CovIdStPlaca)
                             .TextMatrix(.Rows - 1, ctAporte.empresac) = Trim("" & rdoRs!CovIdStEmpresa)
                             .TextMatrix(.Rows - 1, ctAporte.Aportadoc) = Val("" & rdoRs!CovInValorAportes)
                             .TextMatrix(.Rows - 1, ctAporte.sobrantec) = Val("" & rdoRs!CovInValorSobrante)
                             .TextMatrix(.Rows - 1, ctAporte.caterac) = Val("" & rdoRs!CovInValorSobrante)
                             .TextMatrix(.Rows - 1, ctAporte.control4) = Val("" & rdoRs!CovInControlCuatro)
                             
                             Gy = Trim("" & rdoRs!CovIdStEmpresa) & "-" & Trim("" & rdoRs!CovIdStPlaca)
                             
                             vColControlVehDespacho.Add .Rows - 1, Gy
                      End If
                      rdoRs.MoveNext
                Wend
             End If
        End With
                    
                    
                    
        With FGdespachos
             For i = 1 To .Rows - 1
                   If Trim(.TextMatrix(i, Datos.Fecha)) <> Empty And Trim(.TextMatrix(i, Datos.Vehiculo)) <> Empty Then
                         S = Trim(.TextMatrix(i, Datos.Vehiculo)) & Trim(.TextMatrix(i, Datos.Fecha))
                         M = "-1"
                         On Error Resume Next
                         M = vColAportes(S)
                         If M <> "-1" Then
                               .TextMatrix(i, Datos.vValorAporte) = Val(FGaportes.TextMatrix(M, 2))
                         End If
                         
                         If Val(.TextMatrix(i, Datos.vValorAporte)) = 0 And Val(.TextMatrix(i, Datos.vValorAporteDiario)) > 0 And Val(.TextMatrix(i, Datos.ReqAporteDiario)) = 1 Then
                              .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = vbRed
                         Else
                             If Val(.TextMatrix(i, Datos.vValorAporte)) = 0 And Val(.TextMatrix(i, Datos.vValorAporteDiario)) = 0 Then
                                  .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = &HFFFF80
                             End If
                         End If
                         
                         If Val(.TextMatrix(i, Datos.vReqCarteraCero)) = 1 Then
                                sr = Trim(.TextMatrix(i, Datos.CodEmpVehi)) & "-" & Trim(.TextMatrix(i, Datos.Vehiculo))
                                M = "-1"
                                On Error Resume Next
                                M = vColControlVehDespacho(sr)
                                If M <> "-1" Then
                                      .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = &H80C0FF
                                End If
                         End If
                   End If
             Next i
        End With
        Exit Sub
SAlida: Call MensajeAdministrador
End Sub


