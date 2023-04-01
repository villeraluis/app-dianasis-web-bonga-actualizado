VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "mscomctl.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Object = "{EF47DDAB-8EF4-49C1-AAF8-18F692F4FB1C}#1.0#0"; "DianaBuscar.ocx"
Begin VB.Form FrmTranListadoCuadreCajaPunto 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   9165
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   12735
   Icon            =   "FrmTranListadoCuadreCajaPunto.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9165
   ScaleWidth      =   12735
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FrameTipo 
      Height          =   465
      Left            =   405
      TabIndex        =   20
      Top             =   2610
      Width           =   7710
      Begin VB.OptionButton OptListado 
         Caption         =   "Detallado de traslados"
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
         Index           =   2
         Left            =   4185
         TabIndex        =   23
         Top             =   180
         Width           =   2220
      End
      Begin VB.OptionButton OptListado 
         Caption         =   "Detallado por dias"
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
         Index           =   1
         Left            =   2205
         TabIndex        =   22
         Top             =   180
         Width           =   2220
      End
      Begin VB.OptionButton OptListado 
         Caption         =   "Consolidado"
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
         Height          =   195
         Index           =   0
         Left            =   225
         TabIndex        =   21
         Top             =   180
         Value           =   -1  'True
         Width           =   1590
      End
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
      Left            =   11970
      Picture         =   "FrmTranListadoCuadreCajaPunto.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   11
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   1170
      Visible         =   0   'False
      Width           =   1350
   End
   Begin VB.CommandButton CmdFijar 
      BackColor       =   &H00E7D6B8&
      Caption         =   "F"
      Height          =   285
      Left            =   9900
      Style           =   1  'Graphical
      TabIndex        =   8
      ToolTipText     =   "Fijar Columnas"
      Top             =   2250
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
      Height          =   1860
      Left            =   360
      TabIndex        =   6
      Top             =   720
      Width           =   7800
      Begin MSComCtl2.DTPicker DTfechaI 
         Height          =   315
         Left            =   1665
         TabIndex        =   0
         Top             =   360
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
         Format          =   140771331
         CurrentDate     =   38681
      End
      Begin MSComCtl2.DTPicker DTfechaF 
         Height          =   315
         Left            =   4230
         TabIndex        =   1
         Top             =   360
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
         Format          =   140771331
         CurrentDate     =   38681
      End
      Begin BuscarDiana.Busqueda BusAgencias 
         Height          =   405
         Left            =   1620
         TabIndex        =   12
         Top             =   1035
         Width           =   5325
         _ExtentX        =   9393
         _ExtentY        =   714
         CodigoWidth     =   1095
         NombreWidth     =   3700
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin BuscarDiana.Busqueda BusPuntos 
         Height          =   405
         Left            =   1620
         TabIndex        =   15
         Top             =   1395
         Width           =   5925
         _ExtentX        =   10451
         _ExtentY        =   714
         CodigoWidth     =   1095
         NombreWidth     =   4300
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin BuscarDiana.Busqueda BusResponsables 
         Height          =   405
         Left            =   1620
         TabIndex        =   17
         Top             =   675
         Width           =   5325
         _ExtentX        =   9393
         _ExtentY        =   714
         CodigoWidth     =   1095
         NombreWidth     =   3700
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
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
         Left            =   135
         TabIndex        =   18
         Top             =   765
         Width           =   1080
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
         Left            =   135
         TabIndex        =   16
         Top             =   1485
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
         Left            =   135
         TabIndex        =   13
         Top             =   1125
         Width           =   660
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
         Left            =   135
         TabIndex        =   10
         Top             =   405
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
         Left            =   3195
         TabIndex        =   9
         Top             =   405
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
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "1"
      Height          =   285
      Index           =   0
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   2
      ToolTipText     =   "Ver a Nivel de Cuentas.."
      Top             =   1845
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "2"
      Height          =   285
      Index           =   1
      Left            =   630
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Ver a Nivel de Subcuentas"
      Top             =   1845
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
            Picture         =   "FrmTranListadoCuadreCajaPunto.frx":6184
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoCuadreCajaPunto.frx":66C8
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoCuadreCajaPunto.frx":67D4
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ProgressBar Progres 
      Height          =   240
      Left            =   7155
      TabIndex        =   5
      Top             =   270
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
      Left            =   9045
      TabIndex        =   7
      Top             =   1125
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGcuadres 
      Height          =   6360
      Left            =   360
      TabIndex        =   14
      Top             =   3105
      Width           =   11280
      _cx             =   19897
      _cy             =   11218
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
      BackColor       =   16777215
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   16777215
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
   Begin VSFlex8DAOCtl.VSFlexGrid FGdiario 
      Height          =   6360
      Left            =   360
      TabIndex        =   19
      Top             =   3105
      Width           =   11280
      _cx             =   19897
      _cy             =   11218
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
      BackColor       =   16777215
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   16777215
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
   Begin VSFlex8DAOCtl.VSFlexGrid FGtraslados 
      Height          =   6360
      Left            =   360
      TabIndex        =   24
      Top             =   3105
      Width           =   11280
      _cx             =   19897
      _cy             =   11218
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
      BackColor       =   16777215
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   16777215
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
      Caption         =   "      Listado de Cuadres de Caja por Rango de Fecha"
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
      TabIndex        =   4
      Top             =   210
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
Attribute VB_Name = "FrmTranListadoCuadreCajaPunto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Mes As Integer, RegFor As Variant, vFiltro As String

Private Enum Cuadre
        Agencia
        Punto
        FechaCx
        Usuario
        VrRecaudado
        VrTrasladado
        VrSaldo
        Enblanco
        VrEnviado
        VrRecibido
        Diferencia
        VrFaltante
        FechaHoraEnviado
        FechaHoraRecibido
        Observacion
End Enum

Private Enum trasladop
        Agencia
        Punto
        FechaCx
        Usuario
        VrEnviado
        VrRecibido
        Diferencia
        VrFaltante
        FechaHoraEnviado
        FechaHoraRecibido
        Observacion
End Enum


Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        N = FGcuadres.Left + 300
        FGcuadres.Width = Me.Width - N
        FGcuadres.Height = Me.Height - FGcuadres.Top - vHeightFor
        
        FGdiario.Width = Me.Width - N
        FGdiario.Height = Me.Height - FGdiario.Top - vHeightFor
        
        FGtraslados.Width = Me.Width - N
        FGtraslados.Height = Me.Height - FGtraslados.Top - vHeightFor
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        On Error GoTo SAlida
        Dim vLista As String, vCuadre As New Collection, vColDiario As New Collection
                
        With FGcuadres
              If Permisos(3) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
              Progres.value = 1: Progres.Min = 1
              Progres.Max = 10
              vFiltro = Empty: vFiltro2 = Empty
                                        
              Progres.Visible = True: Progres.value = Progres.value + 1
              If DTfechaI.value > DTfechaF.value Then MsgBox "Seleccione bien el intervalo de fecha", vbExclamation + vbOKOnly, "Atención": DTfechaI.SetFocus: Exit Sub
              If Trim(BusAgencias.Text) <> Empty Then
                   vFiltro = " AND RcdIdStAgencia = '" & Trim(BusAgencias.Text) & "'"
                   vFiltro2 = " AND TcaIdStAgencia = '" & Trim(BusAgencias.Text) & "'"
                   
                   If Trim(BusPuntos.Text) <> Empty Then
                        vFiltro = " AND RcdIdStPuntoRecaudo = '" & Trim(BusPuntos.Text) & "'"
                        vFiltro2 = " AND TcaIdStPuntoRecaudo = '" & Trim(BusPuntos.Text) & "'"
                   End If
              End If
              
              If Trim(BusResponsables.Text) <> Empty Then
                   vFiltro = vFiltro & " AND RcdStUsuario = '" & Trim(BusResponsables.Text) & "'"
                   vFiltro2 = vFiltro2 & " AND TcaIdStResponsable = '" & Trim(BusResponsables.Text) & "'"
              End If
              A = Empty:  M = 0: b = Empty: D = Empty
              
              .Rows = 1
              FGcuadres.Rows = 1: Me.FGdiario.Rows = 1:: FGtraslados.Rows = 1
              vLista = Empty
              Sql = "SELECT A.*,B.AgeStDescripcion, C.CliStNombreCliente FROM TRANRECAUDOS A " & _
                    "INNER JOIN TRANAGENCIAS B ON (A.RcdIdStEmpresa = B.AgeIdStEmpresa AND A.RcdIdStAgencia = B.AgeIdStAgencia) " & _
                    "INNER JOIN GENTUSUARIOS D ON (A.RcdStUsuario = D.UsuStIdUsuario) " & _
                    "LEFT OUTER JOIN CLIENTES C ON (A.RcdIdStEmpresa = C.cliempr AND D.UsuIdStNitCliente = C.clinit) " & _
                    "WHERE (A.RcdIdStEmpresa = '" & Empresa & "' AND A.RcdDaFecha BETWEEN '" & Format(DTfechaI.value, FormatoFecha) & "' AND '" & Format(DTfechaF.value, FormatoFecha) & "' AND " & _
                           "A.RcdStEstado = '" & EAprobado & "' " & _
                           "" & vFiltro & ") "
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                        On Error Resume Next
                        V1 = Trim("" & rdoRs!RcdIdStAgencia) & Trim("" & rdoRs!RcdIdStPuntoRecaudo) & Trim("" & rdoRs!RcdStUsuario)
                        Z = "-1"
                        Z = vCuadre(V1)
                        If Z = "-1" Then
                            .AddItem ""
                            .TextMatrix(.Rows - 1, Cuadre.Agencia) = Trim("" & rdoRs!AgeStDescripcion)
                            .TextMatrix(.Rows - 1, Cuadre.Punto) = Trim("" & rdoRs!RcdIdStPuntoRecaudo)
                            .TextMatrix(.Rows - 1, Cuadre.Usuario) = Trim("" & rdoRs!CliStNombreCliente)
                            .TextMatrix(.Rows - 1, Cuadre.VrRecaudado) = Val("" & rdoRs!RcdInValorTotal)
                            .TextMatrix(.Rows - 1, Cuadre.VrTrasladado) = 0
                            .TextMatrix(.Rows - 1, Cuadre.VrSaldo) = Val("" & rdoRs!RcdInValorTotal)
                            .TextMatrix(.Rows - 1, Cuadre.VrEnviado) = 0
                            .TextMatrix(.Rows - 1, Cuadre.VrRecibido) = 0
                            .TextMatrix(.Rows - 1, Cuadre.Diferencia) = 0
                             vCuadre.Add .Rows - 1, V1
                        Else
                            .TextMatrix(Z, Cuadre.VrRecaudado) = Val(.TextMatrix(Z, Cuadre.VrRecaudado)) + Val("" & rdoRs!RcdInValorTotal)
                            .TextMatrix(Z, Cuadre.VrSaldo) = Val(.TextMatrix(Z, Cuadre.VrSaldo)) + Val("" & rdoRs!RcdInValorTotal)
                        End If
        
                       With FGdiario
                            On Error Resume Next
                            V1 = Trim("" & rdoRs!RcdIdStAgencia) & Trim("" & rdoRs!RcdIdStPuntoRecaudo) & Trim("" & rdoRs!RcdDaFecha) & Trim("" & rdoRs!RcdStUsuario)
                            Z = "-1"
                            Z = vColDiario(V1)
                            If Z = "-1" Then
                                .AddItem ""
                                .TextMatrix(.Rows - 1, Cuadre.Agencia) = Trim("" & rdoRs!AgeStDescripcion)
                                .TextMatrix(.Rows - 1, Cuadre.Punto) = Trim("" & rdoRs!RcdIdStPuntoRecaudo)
                                .TextMatrix(.Rows - 1, Cuadre.Usuario) = Trim("" & rdoRs!CliStNombreCliente)
                                .TextMatrix(.Rows - 1, Cuadre.FechaCx) = Format(rdoRs!RcdDaFecha, "dd-MM-yyyy")
                                .TextMatrix(.Rows - 1, Cuadre.VrRecaudado) = Val("" & rdoRs!RcdInValorTotal)
                                .TextMatrix(.Rows - 1, Cuadre.VrTrasladado) = 0
                                .TextMatrix(.Rows - 1, Cuadre.VrSaldo) = Val("" & rdoRs!RcdInValorTotal)
                                .TextMatrix(.Rows - 1, Cuadre.VrEnviado) = 0
                                .TextMatrix(.Rows - 1, Cuadre.VrRecibido) = 0
                                .TextMatrix(.Rows - 1, Cuadre.Diferencia) = 0
                                 vColDiario.Add .Rows - 1, V1
                            Else
                                .TextMatrix(Z, Cuadre.VrRecaudado) = Val(.TextMatrix(Z, Cuadre.VrRecaudado)) + Val("" & rdoRs!RcdInValorTotal)
                                .TextMatrix(Z, Cuadre.VrSaldo) = Val(.TextMatrix(Z, Cuadre.VrSaldo)) + Val("" & rdoRs!RcdInValorTotal)
                            End If
                       End With
                        rdoRs.MoveNext
                   Wend
              End If
              
              Sql = "SELECT A.*,B.AgeStDescripcion, C.CliStNombreCliente FROM TRANTRASLADOCAJA A " & _
                    "INNER JOIN TRANAGENCIAS B ON (A.TcaIdStEmpresa = B.AgeIdStEmpresa AND A.TcaIdStAgencia = B.AgeIdStAgencia) " & _
                    "LEFT OUTER JOIN CLIENTES C ON (A.TcaIdStEmpresa = C.cliempr AND A.TcaIdStResponsable = C.clinit) " & _
                    "WHERE (A.TcaIdStEmpresa = '" & Empresa & "' AND A.TcaDaFecha BETWEEN '" & Format(DTfechaI.value, FormatoFecha) & "' AND '" & Format(DTfechaF.value, FormatoFecha) & "' AND " & _
                           "TcaIdStEstado <> '" & EAnulado & "' " & _
                           "" & vFiltro2 & ") " & _
                    "ORDER BY TcaIdStNumTraslado"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                        On Error Resume Next
                        V1 = Trim("" & rdoRs!TcaIdStAgencia) & Trim("" & rdoRs!TcaIdStPuntoRecaudo) & Trim("" & rdoRs!TcaStUsuario)
                        Z = "-1"
                        Z = vCuadre(V1)
                        If Z = "-1" Then
                            .AddItem ""
                            .TextMatrix(.Rows - 1, Cuadre.Agencia) = Trim("" & rdoRs!AgeStDescripcion)
                            .TextMatrix(.Rows - 1, Cuadre.Punto) = Trim("" & rdoRs!TcaIdStPuntoRecaudo)
                            .TextMatrix(.Rows - 1, Cuadre.Usuario) = Trim("" & rdoRs!CliStNombreCliente)
                            .TextMatrix(.Rows - 1, Cuadre.VrRecaudado) = 0
                            .TextMatrix(.Rows - 1, Cuadre.VrTrasladado) = Val("" & rdoRs!TcaInValorEnviado)
                            .TextMatrix(.Rows - 1, Cuadre.VrSaldo) = Val("" & rdoRs!TcaInValorEnviado) * -1
                            .TextMatrix(.Rows - 1, Cuadre.VrEnviado) = Val("" & rdoRs!TcaInValorEnviado)
                            .TextMatrix(.Rows - 1, Cuadre.VrRecibido) = Val("" & rdoRs!TcaInValorRecibido)
                            .TextMatrix(.Rows - 1, Cuadre.VrFaltante) = Val("" & rdoRs!TcaInValorFaltante)
                            .TextMatrix(.Rows - 1, Cuadre.Diferencia) = Val("" & rdoRs!TcaInValorEnviado) - Val("" & rdoRs!TcaInValorRecibido)
                            .TextMatrix(.Rows - 1, Cuadre.FechaHoraEnviado) = Trim("" & rdoRs!TcaFechaHoraCreado)
                            .TextMatrix(.Rows - 1, Cuadre.FechaHoraRecibido) = Trim("" & rdoRs!TcaFechaHoraAprobado)
                            .TextMatrix(.Rows - 1, Cuadre.Observacion) = Trim("" & rdoRs!TcaStObservacion)
                             vCuadre.Add .Rows - 1, V1
                        Else
                            .TextMatrix(Z, Cuadre.VrTrasladado) = Val(.TextMatrix(Z, Cuadre.VrTrasladado)) + Val("" & rdoRs!TcaInValorEnviado)
                            .TextMatrix(Z, Cuadre.VrSaldo) = Val(.TextMatrix(Z, Cuadre.VrSaldo)) - Val("" & rdoRs!TcaInValorEnviado)
                            .TextMatrix(Z, Cuadre.VrEnviado) = Val(.TextMatrix(Z, Cuadre.VrEnviado)) + Val("" & rdoRs!TcaInValorEnviado)
                            .TextMatrix(Z, Cuadre.VrRecibido) = Val(.TextMatrix(Z, Cuadre.VrRecibido)) + Val("" & rdoRs!TcaInValorRecibido)
                            .TextMatrix(Z, Cuadre.Diferencia) = Val(.TextMatrix(Z, Cuadre.Diferencia)) + Val("" & rdoRs!TcaInValorEnviado) - Val("" & rdoRs!TcaInValorRecibido)
                            .TextMatrix(Z, Cuadre.FechaHoraEnviado) = Trim("" & rdoRs!TcaFechaHoraCreado)
                            .TextMatrix(Z, Cuadre.FechaHoraRecibido) = Trim("" & rdoRs!TcaFechaHoraAprobado)
                            .TextMatrix(Z, Cuadre.VrFaltante) = Val(.TextMatrix(Z, Cuadre.VrFaltante)) + Val("" & rdoRs!TcaInValorFaltante)
                            
                            If Trim(.TextMatrix(Z, Cuadre.Observacion)) <> Empty Then
                                .TextMatrix(Z, Cuadre.Observacion) = Trim(.TextMatrix(Z, Cuadre.Observacion)) & " - " & Trim("" & rdoRs!TcaStObservacion)
                            Else
                                .TextMatrix(Z, Cuadre.Observacion) = Trim("" & rdoRs!TcaStObservacion)
                            End If
                        End If
                        
                        With FGdiario
                             On Error Resume Next
                             V1 = Trim("" & rdoRs!TcaIdStAgencia) & Trim("" & rdoRs!TcaIdStPuntoRecaudo) & Trim("" & rdoRs!TcaDaFecha) & Trim("" & rdoRs!TcaStUsuario)
                             Z = "-1"
                             Z = vColDiario(V1)
                             If Z = "-1" Then
                                .AddItem ""
                                .TextMatrix(.Rows - 1, Cuadre.Agencia) = Trim("" & rdoRs!AgeStDescripcion)
                                .TextMatrix(.Rows - 1, Cuadre.Punto) = Trim("" & rdoRs!TcaIdStPuntoRecaudo)
                                .TextMatrix(.Rows - 1, Cuadre.Usuario) = Trim("" & rdoRs!CliStNombreCliente)
                                .TextMatrix(.Rows - 1, Cuadre.FechaCx) = Format(rdoRs!TcaDaFecha, "dd-MM-yyyy")
                                .TextMatrix(.Rows - 1, Cuadre.VrRecaudado) = 0
                                .TextMatrix(.Rows - 1, Cuadre.VrTrasladado) = Val("" & rdoRs!TcaInValorEnviado)
                                .TextMatrix(.Rows - 1, Cuadre.VrSaldo) = Val("" & rdoRs!TcaInValorEnviado) * -1
                                .TextMatrix(.Rows - 1, Cuadre.VrEnviado) = Val("" & rdoRs!TcaInValorEnviado)
                                .TextMatrix(.Rows - 1, Cuadre.VrRecibido) = Val("" & rdoRs!TcaInValorRecibido)
                                .TextMatrix(.Rows - 1, Cuadre.VrFaltante) = Val("" & rdoRs!TcaInValorFaltante)
                                .TextMatrix(.Rows - 1, Cuadre.Diferencia) = Val("" & rdoRs!TcaInValorEnviado) - Val("" & rdoRs!TcaInValorRecibido)
                                .TextMatrix(.Rows - 1, Cuadre.FechaHoraEnviado) = Trim("" & rdoRs!TcaFechaHoraCreado)
                                .TextMatrix(.Rows - 1, Cuadre.FechaHoraRecibido) = Trim("" & rdoRs!TcaFechaHoraAprobado)
                                .TextMatrix(.Rows - 1, Cuadre.Observacion) = Trim("" & rdoRs!TcaStObservacion)
                                 vColDiario.Add .Rows - 1, V1
                             Else
                                 .TextMatrix(Z, Cuadre.VrTrasladado) = Val(.TextMatrix(Z, Cuadre.VrTrasladado)) + Val("" & rdoRs!TcaInValorEnviado)
                                 .TextMatrix(Z, Cuadre.VrSaldo) = Val(.TextMatrix(Z, Cuadre.VrSaldo)) - Val("" & rdoRs!TcaInValorEnviado)
                                 .TextMatrix(Z, Cuadre.VrEnviado) = Val(.TextMatrix(Z, Cuadre.VrEnviado)) + Val("" & rdoRs!TcaInValorEnviado)
                                 .TextMatrix(Z, Cuadre.VrRecibido) = Val(.TextMatrix(Z, Cuadre.VrRecibido)) + Val("" & rdoRs!TcaInValorRecibido)
                                 .TextMatrix(Z, Cuadre.Diferencia) = Val(.TextMatrix(Z, Cuadre.Diferencia)) + Val("" & rdoRs!TcaInValorEnviado) - Val("" & rdoRs!TcaInValorRecibido)
                                 .TextMatrix(Z, Cuadre.FechaHoraEnviado) = Trim("" & rdoRs!TcaFechaHoraCreado)
                                 .TextMatrix(Z, Cuadre.FechaHoraRecibido) = Trim("" & rdoRs!TcaFechaHoraAprobado)
                                 .TextMatrix(Z, Cuadre.VrFaltante) = Val(.TextMatrix(Z, Cuadre.VrFaltante)) + Val("" & rdoRs!TcaInValorFaltante)
                                
                                 If Trim(.TextMatrix(Z, Cuadre.Observacion)) <> Empty Then
                                    .TextMatrix(Z, Cuadre.Observacion) = Trim(.TextMatrix(Z, Cuadre.Observacion)) & " - " & Trim("" & rdoRs!TcaStObservacion)
                                 Else
                                    .TextMatrix(Z, Cuadre.Observacion) = Trim("" & rdoRs!TcaStObservacion)
                                 End If
                             End If
                        End With
                        
                        With FGtraslados
                             .AddItem ""
                             .TextMatrix(.Rows - 1, trasladop.Agencia) = Trim("" & rdoRs!AgeStDescripcion)
                             .TextMatrix(.Rows - 1, trasladop.Punto) = Trim("" & rdoRs!TcaIdStPuntoRecaudo)
                             .TextMatrix(.Rows - 1, trasladop.Usuario) = Trim("" & rdoRs!CliStNombreCliente)
                             .TextMatrix(.Rows - 1, trasladop.FechaCx) = Format(rdoRs!TcaDaFecha, "dd-MM-yyyy")
                             .TextMatrix(.Rows - 1, trasladop.VrEnviado) = Val("" & rdoRs!TcaInValorEnviado)
                             .TextMatrix(.Rows - 1, trasladop.VrRecibido) = Val("" & rdoRs!TcaInValorRecibido)
                             .TextMatrix(.Rows - 1, trasladop.VrFaltante) = Val("" & rdoRs!TcaInValorFaltante)
                             .TextMatrix(.Rows - 1, trasladop.Diferencia) = Val("" & rdoRs!TcaInValorEnviado) - Val("" & rdoRs!TcaInValorRecibido)
                             .TextMatrix(.Rows - 1, trasladop.FechaHoraEnviado) = Trim("" & rdoRs!TcaFechaHoraCreado)
                             .TextMatrix(.Rows - 1, trasladop.FechaHoraRecibido) = Trim("" & rdoRs!TcaFechaHoraAprobado)
                             .TextMatrix(.Rows - 1, trasladop.Observacion) = Trim("" & rdoRs!TcaStObservacion)
                        End With
                        rdoRs.MoveNext
                   Wend
              End If
                          
              If .Rows <= 1 Then MsgBox "No hay información para mostrar", vbInformation + vbOKOnly, "Atención": Progres.Visible = False:  Exit Sub
                    
              If .Rows > 1 Then
                    .AddItem ""
                    .TextMatrix(.Rows - 1, Cuadre.Agencia) = "=TOTALES=>"
                    .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                    .Cell(flexcpFontBold, .Rows - 1, 0, .Rows - 1, .Cols - 1) = True
                    For i = 1 To .Rows - 2
                        .TextMatrix(.Rows - 1, Cuadre.VrRecaudado) = Val(.TextMatrix(.Rows - 1, Cuadre.VrRecaudado)) + Val(.TextMatrix(i, Cuadre.VrRecaudado))
                        .TextMatrix(.Rows - 1, Cuadre.VrTrasladado) = Val(.TextMatrix(.Rows - 1, Cuadre.VrTrasladado)) + Val(.TextMatrix(i, Cuadre.VrTrasladado))
                        .TextMatrix(.Rows - 1, Cuadre.VrSaldo) = Val(.TextMatrix(.Rows - 1, Cuadre.VrSaldo)) + Val(.TextMatrix(i, Cuadre.VrSaldo))
                        
                        .TextMatrix(.Rows - 1, Cuadre.VrEnviado) = Val(.TextMatrix(.Rows - 1, Cuadre.VrEnviado)) + Val(.TextMatrix(i, Cuadre.VrEnviado))
                        .TextMatrix(.Rows - 1, Cuadre.VrRecibido) = Val(.TextMatrix(.Rows - 1, Cuadre.VrRecibido)) + Val(.TextMatrix(i, Cuadre.VrRecibido))
                        .TextMatrix(.Rows - 1, Cuadre.Diferencia) = Val(.TextMatrix(.Rows - 1, Cuadre.Diferencia)) + Val(.TextMatrix(i, Cuadre.Diferencia))
                        
                        .TextMatrix(.Rows - 1, Cuadre.VrFaltante) = Val(.TextMatrix(.Rows - 1, Cuadre.VrFaltante)) + Val(.TextMatrix(i, Cuadre.VrFaltante))
                    Next i
              End If
              
              With FGdiario
                   If .Rows > 1 Then
                      .AddItem ""
                      .TextMatrix(.Rows - 1, Cuadre.Agencia) = "=TOTALES=>"
                      .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                      .Cell(flexcpFontBold, .Rows - 1, 0, .Rows - 1, .Cols - 1) = True
                      For i = 1 To .Rows - 2
                        .TextMatrix(.Rows - 1, Cuadre.VrRecaudado) = Val(.TextMatrix(.Rows - 1, Cuadre.VrRecaudado)) + Val(.TextMatrix(i, Cuadre.VrRecaudado))
                        .TextMatrix(.Rows - 1, Cuadre.VrTrasladado) = Val(.TextMatrix(.Rows - 1, Cuadre.VrTrasladado)) + Val(.TextMatrix(i, Cuadre.VrTrasladado))
                        .TextMatrix(.Rows - 1, Cuadre.VrSaldo) = Val(.TextMatrix(.Rows - 1, Cuadre.VrSaldo)) + Val(.TextMatrix(i, Cuadre.VrSaldo))
                        
                        .TextMatrix(.Rows - 1, Cuadre.VrEnviado) = Val(.TextMatrix(.Rows - 1, Cuadre.VrEnviado)) + Val(.TextMatrix(i, Cuadre.VrEnviado))
                        .TextMatrix(.Rows - 1, Cuadre.VrRecibido) = Val(.TextMatrix(.Rows - 1, Cuadre.VrRecibido)) + Val(.TextMatrix(i, Cuadre.VrRecibido))
                        .TextMatrix(.Rows - 1, Cuadre.Diferencia) = Val(.TextMatrix(.Rows - 1, Cuadre.Diferencia)) + Val(.TextMatrix(i, Cuadre.Diferencia))
                        
                        .TextMatrix(.Rows - 1, Cuadre.VrFaltante) = Val(.TextMatrix(.Rows - 1, Cuadre.VrFaltante)) + Val(.TextMatrix(i, Cuadre.VrFaltante))
                      Next i
                   End If
              End With
              
              With FGtraslados
                   If .Rows > 1 Then
                      .AddItem ""
                      .TextMatrix(.Rows - 1, trasladop.Agencia) = "=TOTALES=>"
                      .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbBlue
                      .Cell(flexcpFontBold, .Rows - 1, 0, .Rows - 1, .Cols - 1) = True
                      For i = 1 To .Rows - 2
                             .TextMatrix(.Rows - 1, trasladop.VrEnviado) = Val(.TextMatrix(.Rows - 1, trasladop.VrEnviado)) + Val(.TextMatrix(i, trasladop.VrEnviado))
                             .TextMatrix(.Rows - 1, trasladop.VrRecibido) = Val(.TextMatrix(.Rows - 1, trasladop.VrRecibido)) + Val(.TextMatrix(i, trasladop.VrRecibido))
                             .TextMatrix(.Rows - 1, trasladop.Diferencia) = Val(.TextMatrix(.Rows - 1, trasladop.Diferencia)) + Val(.TextMatrix(i, trasladop.Diferencia))
                             .TextMatrix(.Rows - 1, trasladop.VrFaltante) = Val(.TextMatrix(.Rows - 1, trasladop.VrFaltante)) + Val(.TextMatrix(i, trasladop.VrFaltante))
                      Next i
                   End If
              End With
                       
              
              Progres.Visible = False:
        End With
        Exit Sub
SAlida: Call MensajeAdministrador
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        If Permisos(4) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
        Call Exportar_Informe
End Sub


Private Sub BusAgencias_LostFocus()
         BusPuntos.QueryBuscar
End Sub

Private Sub BusAgencias_Retorno(RowReturn As Collection, ByHelp As Boolean)
         FGcuadres.Rows = 1: FGtraslados.Rows = 1: Me.FGdiario.Rows = 1
         If Trim(BusAgencias.Text) <> Empty Then
             BusPuntos.Text = Empty
             Sql = "SELECT PtrIdStPuntoRecaudo,PtrStDescripcion FROM TRANPUNTORECAUDOS WHERE PtrIdStEmpresa = '" & Empresa & "' AND PtrIdStAgencia = '" & BusAgencias.Text & "' AND " & _
                  "PtrStEstado = 'A' "
             BusPuntos.Sql = Sql
             BusPuntos.Enabled = True
             BusPuntos.SetFocus
         Else
              BusPuntos.Sql = Empty
              BusPuntos.Enabled = False
         End If
End Sub

Private Sub BusPuntos_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGcuadres.Rows = 1: FGtraslados.Rows = 1: Me.FGdiario.Rows = 1
End Sub

Private Sub BusResponsables_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGcuadres.Rows = 1: Me.FGdiario.Rows = 1: FGtraslados.Rows = 1
End Sub

Private Sub Cmdplano_Click()
        On Error GoTo Mt
        If FGcuadres.Rows - 1 <= 1 Then MsgBox "No hay información para exportar", vbInformation + vbOKOnly, "Atención": Exit Sub
        
        vNombreReporte = "Listado Cuadre de Caja Puntos de Recaudo.xls"
        FGcuadres.SaveGrid vRutaInfXls & vNombreReporte, flexFileExcel, 1
        Call Abrir_LibroExcel(vRutaInfXls & vNombreReporte)
        
        
'        ComArchivo.CancelError = False
'        ComArchivo.Flags = cdlOFNHideReadOnly
'        ComArchivo.DefaultExt = "xls"
'        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
'        ComArchivo.ShowSave
'        If ComArchivo.FileName <> Empty Then
'             FGcuadres.SaveGrid ComArchivo.FileName, flexFileExcel, 3
             
'        End If
        Exit Sub
Mt: MsgBox "Consultar con el Adm. del Sistema", vbCritical + vbOKOnly, "Atención"

End Sub

Private Sub Cmdplano_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.ExportarS, vbResBitmap)
End Sub

Private Sub DTfechaF_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaF_LostFocus()
        FGcuadres.Rows = 1:: Me.FGdiario.Rows = 1: Me.FGtraslados.Rows = 1
End Sub

Private Sub DTfechaI_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaI_LostFocus()
        FGcuadres.Rows = 1: Me.FGdiario.Rows = 1: FGtraslados.Rows = 1
End Sub

Private Sub FGcuadres_RowColChange()
        With FGcuadres
'             If .Row = 0 Then Exit Sub
'             X = Trim(.TextMatrix(.Row, Cuadre.Cuadre))
'             For i = 1 To Me.FGrecibo.Rows - 1
'                   If X = Trim(Me.FGrecibo.TextMatrix(i, Datos.Cuadre)) Then Me.FGrecibo.RowHidden(i) = False Else FGrecibo.RowHidden(i) = True
'             Next i
             
        End With
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
        
        Frame1.BackColor = Bcolor1
        Me.BackColor = Bcolor1
        Me.Caption = Trim(Titul)
        LblTitle.BackColor = Bfcolor
        LblTitle.ForeColor = Fcolor1
        LblTitle.Font = TipoLetraTitulo: LblTitle.FontBold = NegLetraTitulo: LblTitle.FontSize = TamañoLetraTitulo
        LblTitle.Height = 315
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana
        Me.FrameTipo.BackColor = Bcolor1
        Me.OptListado(0).BackColor = Bcolor1: Me.OptListado(1).BackColor = Bcolor1: Me.OptListado(2).BackColor = Bcolor1

        With BarraOperaciones
              .BarUso = BaConsulta
              .Tabla = ""
              .BarBuscar = EstCancel
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
               
        With BusResponsables
             .Enabled = True
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
               
        BusAgencias.Enabled = True
        
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
        
        
'        Busconcepto.Enabled = True
        
        Call DGRILLA
                                
        RegFor = 1
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
        With FGcuadres
             .Rows = 1
             .Cols = 15
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
             .TextMatrix(0, Cuadre.Agencia) = "Agencia"
             .TextMatrix(0, Cuadre.Punto) = "Punto"
             .TextMatrix(0, Cuadre.Usuario) = "Usuario "
             .TextMatrix(0, Cuadre.VrRecaudado) = "Vr. Recaudo"
             .TextMatrix(0, Cuadre.VrTrasladado) = "Vr. Trasladado"
             .TextMatrix(0, Cuadre.VrSaldo) = "Saldo"
             .TextMatrix(0, Cuadre.Enblanco) = " - "
             .TextMatrix(0, Cuadre.VrEnviado) = "Vr. Enviado"
             .TextMatrix(0, Cuadre.VrRecibido) = "Vr. Recibido"
             .TextMatrix(0, Cuadre.Diferencia) = "Diferencia"
             .TextMatrix(0, Cuadre.FechaHoraEnviado) = "Fecha Hora Enviada"
             .TextMatrix(0, Cuadre.FechaHoraRecibido) = "Fecha Hora Aprobada"
             .TextMatrix(0, Cuadre.Observacion) = "Observaciones"
             .TextMatrix(0, Cuadre.VrFaltante) = "Vr. Faltante/Ajuste"
             .ColFormat(Cuadre.VrRecaudado) = "#,###"
             .ColFormat(Cuadre.VrTrasladado) = "#,###"
             .ColFormat(Cuadre.VrSaldo) = "#,###"
             .ColFormat(Cuadre.VrEnviado) = "#,###"
             .ColFormat(Cuadre.VrRecibido) = "#,###"
             .ColFormat(Cuadre.Diferencia) = "#,###"
             .ColFormat(Cuadre.VrFaltante) = "#,###"
             .ColWidth(Cuadre.Agencia) = 2500
             .ColWidth(Cuadre.Punto) = 800
             .ColWidth(Cuadre.Usuario) = 3000
             .ColWidth(Cuadre.VrRecaudado) = 1500
             .ColWidth(Cuadre.VrTrasladado) = 1500
             .ColWidth(Cuadre.VrSaldo) = 1500
             .ColWidth(Cuadre.VrEnviado) = 1500
             .ColWidth(Cuadre.VrRecibido) = 1500
             .ColWidth(Cuadre.Diferencia) = 1500
             .ColWidth(Cuadre.VrFaltante) = 1700
             .ColWidth(Cuadre.FechaHoraEnviado) = 2000
             .ColWidth(Cuadre.FechaHoraRecibido) = 2000
             .ColWidth(Cuadre.Observacion) = 4000
             .ColHidden(Cuadre.Enblanco) = True
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .ExplorerBar = flexExSortShowAndMove
             .ColDataType(Cuadre.FechaHoraEnviado) = flexDTStringC
             .ColDataType(Cuadre.FechaHoraRecibido) = flexDTStringC
             .ColHidden(Cuadre.FechaCx) = True
             .RowHeight(0) = 500
        End With
        
        With Me.FGdiario
             .Rows = 1
             .Cols = 15
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
             .TextMatrix(0, Cuadre.Agencia) = "Agencia"
             .TextMatrix(0, Cuadre.Punto) = "Punto"
             .TextMatrix(0, Cuadre.FechaCx) = "Fecha"
             .TextMatrix(0, Cuadre.Usuario) = "Usuario"
             .TextMatrix(0, Cuadre.VrRecaudado) = "Vr. Recaudo"
             .TextMatrix(0, Cuadre.VrTrasladado) = "Vr. Trasladado"
             .TextMatrix(0, Cuadre.VrSaldo) = "Saldo"
             .TextMatrix(0, Cuadre.Enblanco) = " - "
             .TextMatrix(0, Cuadre.VrEnviado) = "Vr. Enviado"
             .TextMatrix(0, Cuadre.VrRecibido) = "Vr. Recibido"
             .TextMatrix(0, Cuadre.Diferencia) = "Diferencia"
             .TextMatrix(0, Cuadre.FechaHoraEnviado) = "Fecha Hora Enviada"
             .TextMatrix(0, Cuadre.FechaHoraRecibido) = "Fecha Hora Aprobada"
             .TextMatrix(0, Cuadre.Observacion) = "Observaciones"
             .TextMatrix(0, Cuadre.VrFaltante) = "Vr. Faltante/Ajuste"
             .ColFormat(Cuadre.VrRecaudado) = "#,###"
             .ColFormat(Cuadre.VrTrasladado) = "#,###"
             .ColFormat(Cuadre.VrSaldo) = "#,###"
             .ColFormat(Cuadre.VrEnviado) = "#,###"
             .ColFormat(Cuadre.VrRecibido) = "#,###"
             .ColFormat(Cuadre.Diferencia) = "#,###"
             .ColFormat(Cuadre.VrFaltante) = "#,###"
             .ColWidth(Cuadre.Agencia) = 2500
             .ColWidth(Cuadre.Punto) = 800
             .ColWidth(Cuadre.Usuario) = 3000
             .ColWidth(Cuadre.FechaCx) = 1100
             .ColWidth(Cuadre.VrRecaudado) = 1500
             .ColWidth(Cuadre.VrTrasladado) = 1500
             .ColWidth(Cuadre.VrSaldo) = 1500
             .ColWidth(Cuadre.VrEnviado) = 1500
             .ColWidth(Cuadre.VrRecibido) = 1500
             .ColWidth(Cuadre.Diferencia) = 1500
             .ColWidth(Cuadre.VrFaltante) = 1700
             .ColWidth(Cuadre.FechaHoraEnviado) = 2000
             .ColWidth(Cuadre.FechaHoraRecibido) = 2000
             .ColWidth(Cuadre.Observacion) = 4000
             .ColHidden(Cuadre.Enblanco) = True
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .ExplorerBar = flexExSortShowAndMove
             .ColDataType(Cuadre.FechaHoraEnviado) = flexDTStringC
             .ColDataType(Cuadre.FechaHoraRecibido) = flexDTStringC
             .ColDataType(Cuadre.FechaCx) = flexDTStringC
             .RowHeight(0) = 500
        End With
                
        With FGtraslados
             .Rows = 1
             .Cols = 12
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
             .TextMatrix(0, trasladop.Agencia) = "Agencia"
             .TextMatrix(0, trasladop.Punto) = "Punto"
             .TextMatrix(0, trasladop.Usuario) = "Usuario "
             .TextMatrix(0, trasladop.VrEnviado) = "Vr. Enviado"
             .TextMatrix(0, trasladop.VrRecibido) = "Vr. Recibido"
             .TextMatrix(0, trasladop.FechaCx) = "Fecha"
             .TextMatrix(0, trasladop.Diferencia) = "Diferencia"
             .TextMatrix(0, trasladop.FechaHoraEnviado) = "Fecha Hora Enviada"
             .TextMatrix(0, trasladop.FechaHoraRecibido) = "Fecha Hora Aprobada"
             .TextMatrix(0, trasladop.Observacion) = "Observaciones"
             .TextMatrix(0, trasladop.VrFaltante) = "Vr. Faltante/Ajuste"
             .ColFormat(trasladop.VrEnviado) = "#,###"
             .ColFormat(trasladop.VrRecibido) = "#,###"
             .ColFormat(trasladop.Diferencia) = "#,###"
             .ColFormat(trasladop.VrFaltante) = "#,###"
             .ColWidth(trasladop.Agencia) = 2500
             .ColWidth(trasladop.Punto) = 800
             .ColWidth(trasladop.Usuario) = 3000
             .ColWidth(trasladop.FechaCx) = 1200
             .ColWidth(trasladop.VrEnviado) = 1500
             .ColWidth(trasladop.VrRecibido) = 1500
             .ColWidth(trasladop.Diferencia) = 1500
             .ColWidth(trasladop.VrFaltante) = 1700
             .ColWidth(trasladop.FechaHoraEnviado) = 2000
             .ColWidth(trasladop.FechaHoraRecibido) = 2000
             .ColWidth(trasladop.Observacion) = 4000
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .ExplorerBar = flexExSortShowAndMove
             .ColDataType(trasladop.FechaHoraEnviado) = flexDTStringC
             .ColDataType(trasladop.FechaHoraRecibido) = flexDTStringC
             .ColDataType(trasladop.FechaCx) = flexDTStringC
             .RowHeight(0) = 500
        End With
        
        
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
        On Error GoTo Imprime
        
        vNombreReporte = "Listado Cuadre de Caja Puntos de Recaudo.xls"
        FGcuadres.SaveGrid vRutaInfXls & vNombreReporte, flexFileExcel, 1
        Call Abrir_LibroExcel(vRutaInfXls & vNombreReporte)
        
        Exit Sub
Imprime:
   MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atención"

End Sub

Private Sub Exportar_Informe()
        On Error GoTo SAlida
        
        If FGcuadres.Rows = 1 Then MsgBox "No hay información para exportar", vbInformation + vbOKOnly, "Atención": Exit Sub
        
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
             If Me.FGcuadres.Visible = True Then
                FGcuadres.SaveGrid ComArchivo.FileName, flexFileExcel, 3
             Else
                If FGdiario.Visible = True Then
                    FGdiario.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                Else
                    FGtraslados.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                End If
             End If
        End If
        Exit Sub
SAlida: Call MensajeAdministrador
End Sub

Private Sub OptListado_Click(Index As Integer)
        Select Case Index
               Case 0
                    Me.FGcuadres.Visible = True
                    Me.FGdiario.Visible = False
               Case 1
                    Me.FGcuadres.Visible = False
                    Me.FGdiario.Visible = True
              Case 2
                   Me.FGcuadres.Visible = False
                    Me.FGdiario.Visible = False
                    
        End Select
End Sub
