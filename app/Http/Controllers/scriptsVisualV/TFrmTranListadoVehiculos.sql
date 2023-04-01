VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{1C0489F8-9EFD-423D-887A-315387F18C8F}#1.0#0"; "vsflex8l.ocx"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "mscomctl.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Object = "{8B6D834A-8282-4EB6-B890-E586074D41E5}#1.0#0"; "DianaPlantilla.ocx"
Object = "{EF47DDAB-8EF4-49C1-AAF8-18F692F4FB1C}#1.0#0"; "DianaBuscar.ocx"
Begin VB.Form FrmTranListadoVehiculos 
   BackColor       =   &H00C0C0FF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "DIANASIS"
   ClientHeight    =   8520
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   12285
   Icon            =   "FrmTranListadoVehiculos.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   8520
   ScaleWidth      =   12285
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox TxtVehIdStSubcentroCosto 
      Height          =   285
      Left            =   10395
      TabIndex        =   31
      Text            =   "Text1"
      Top             =   2250
      Visible         =   0   'False
      Width           =   870
   End
   Begin VB.TextBox TxtVehIdStCentroCosto 
      Height          =   285
      Left            =   10350
      TabIndex        =   30
      Text            =   "Text1"
      Top             =   1845
      Visible         =   0   'False
      Width           =   915
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
      Height          =   2400
      Left            =   225
      TabIndex        =   13
      Top             =   720
      Width           =   10005
      Begin VB.TextBox TxtPlaca 
         Height          =   315
         Left            =   1305
         TabIndex        =   14
         Top             =   353
         Width           =   1500
      End
      Begin BuscarDiana.Busqueda BusVehIdStMarcaVehiculo 
         Height          =   405
         Left            =   1260
         TabIndex        =   16
         Top             =   720
         Width           =   3525
         _ExtentX        =   6218
         _ExtentY        =   714
         CodigoWidth     =   500
         NombreWidth     =   2500
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin DianaPlantilla.CtlPlantillaBuscar PlaCentroCosto 
         Height          =   405
         Left            =   5895
         TabIndex        =   17
         Top             =   315
         Width           =   3825
         _ExtentX        =   6747
         _ExtentY        =   714
         CodigoWidth     =   800
         NombreWidth     =   2500
         TipoPlantilla   =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
         DesVisible      =   0   'False
      End
      Begin BuscarDiana.Busqueda BusVehIdStClaseVehiculo 
         Height          =   405
         Left            =   5895
         TabIndex        =   18
         Top             =   720
         Width           =   3525
         _ExtentX        =   6218
         _ExtentY        =   714
         CodigoWidth     =   500
         NombreWidth     =   2500
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin BuscarDiana.Busqueda BusVehIdStGrupoCapacidad 
         Height          =   405
         Left            =   1260
         TabIndex        =   19
         Top             =   1125
         Width           =   3525
         _ExtentX        =   6218
         _ExtentY        =   714
         CodigoWidth     =   500
         NombreWidth     =   2500
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin BuscarDiana.Busqueda BusVehIdStNivelServicio 
         Height          =   405
         Left            =   1260
         TabIndex        =   20
         Top             =   1530
         Width           =   3525
         _ExtentX        =   6218
         _ExtentY        =   714
         CodigoWidth     =   500
         NombreWidth     =   2500
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin BuscarDiana.Busqueda BusVehIdStLineaServicio 
         Height          =   405
         Left            =   5895
         TabIndex        =   21
         Top             =   1125
         Width           =   3525
         _ExtentX        =   6218
         _ExtentY        =   714
         CodigoWidth     =   500
         NombreWidth     =   2500
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin BuscarDiana.Busqueda BusVehIdStTipoCombustible 
         Height          =   405
         Left            =   1260
         TabIndex        =   22
         Top             =   1935
         Width           =   3525
         _ExtentX        =   6218
         _ExtentY        =   714
         CodigoWidth     =   500
         NombreWidth     =   2500
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin BuscarDiana.Busqueda BusPropietario 
         Height          =   405
         Left            =   5895
         TabIndex        =   32
         Top             =   1530
         Width           =   3525
         _ExtentX        =   6218
         _ExtentY        =   714
         CodigoWidth     =   500
         NombreWidth     =   2500
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Propietario:"
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
         Left            =   4815
         TabIndex        =   33
         Top             =   1620
         Width           =   960
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Combustible:"
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
         TabIndex        =   29
         Top             =   1980
         Width           =   1110
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Linea:"
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
         Left            =   4815
         TabIndex        =   28
         Top             =   1215
         Width           =   495
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Nivel:"
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
         TabIndex        =   27
         Top             =   1620
         Width           =   435
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Capacidad:"
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
         TabIndex        =   26
         Top             =   1215
         Width           =   885
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Clase:"
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
         Left            =   4815
         TabIndex        =   25
         Top             =   810
         Width           =   510
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Marca:"
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
         TabIndex        =   24
         Top             =   810
         Width           =   540
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "C. Costo:"
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
         Left            =   4815
         TabIndex        =   23
         Top             =   405
         Width           =   750
      End
      Begin VB.Label LblFechai 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Placa:"
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
         TabIndex        =   15
         Top             =   390
         Width           =   465
      End
   End
   Begin VSFlex8LCtl.VSFlexGrid FGexportar 
      Height          =   2220
      Left            =   1350
      TabIndex        =   12
      Top             =   4410
      Visible         =   0   'False
      Width           =   6150
      _cx             =   10848
      _cy             =   3916
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
      BackColor       =   16777152
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   16777152
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
      Cols            =   10
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
   Begin VB.Frame Frabusqueda 
      BackColor       =   &H80000018&
      Caption         =   "Parametros de Busquedas"
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
      Height          =   690
      Left            =   1980
      TabIndex        =   5
      Top             =   8415
      Visible         =   0   'False
      Width           =   9105
      Begin VB.ComboBox CobCampos 
         Height          =   315
         ItemData        =   "FrmTranListadoVehiculos.frx":46B2
         Left            =   1080
         List            =   "FrmTranListadoVehiculos.frx":46B4
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   270
         Width           =   2445
      End
      Begin VB.CommandButton CmdBuscar 
         BackColor       =   &H80000018&
         Height          =   375
         Left            =   7650
         Picture         =   "FrmTranListadoVehiculos.frx":46B6
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   240
         Width           =   1350
      End
      Begin VB.TextBox TxtBusqueda 
         Height          =   315
         Left            =   5265
         TabIndex        =   2
         Top             =   270
         Width           =   2265
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Columnas:"
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
         TabIndex        =   7
         Top             =   330
         Width           =   885
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Digite la Informaci�n"
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
         Height          =   420
         Left            =   3555
         TabIndex        =   6
         Top             =   330
         Width           =   1680
         WordWrap        =   -1  'True
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
      Height          =   375
      Left            =   8100
      Picture         =   "FrmTranListadoVehiculos.frx":6188
      Style           =   1  'Graphical
      TabIndex        =   4
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   945
      Visible         =   0   'False
      Width           =   1350
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGvehiculos 
      Height          =   3480
      Left            =   180
      TabIndex        =   0
      Top             =   3195
      Width           =   11610
      _cx             =   20479
      _cy             =   6138
      Appearance      =   1
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
      BackColor       =   12648384
      ForeColor       =   0
      BackColorFixed  =   16711680
      ForeColorFixed  =   12632256
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483635
      BackColorBkg    =   8421504
      BackColorAlternate=   12648384
      GridColor       =   12632256
      GridColorFixed  =   0
      TreeColor       =   -2147483632
      FloodColor      =   192
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
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   7695
      Top             =   855
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   4
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoVehiculos.frx":7C5A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoVehiculos.frx":819E
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoVehiculos.frx":82AA
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoVehiculos.frx":86FE
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComDlg.CommonDialog ComArchivo 
      Left            =   3915
      Top             =   270
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin Crystal.CrystalReport Jreporte 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin BarraDiana.BarraOperaciones BarraOperaciones 
      Height          =   945
      Left            =   10350
      TabIndex        =   8
      Top             =   990
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
   End
   Begin VSFlex8LCtl.VSFlexGrid FGConductores 
      Height          =   1680
      Left            =   6345
      TabIndex        =   10
      Top             =   6750
      Width           =   5430
      _cx             =   9578
      _cy             =   2963
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
      BackColor       =   12648384
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   12648384
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
      Cols            =   10
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
   Begin VSFlex8LCtl.VSFlexGrid FGPropietarios 
      Height          =   1725
      Left            =   180
      TabIndex        =   11
      Top             =   6750
      Width           =   6150
      _cx             =   10848
      _cy             =   3043
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
      BackColor       =   12648384
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   12648384
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
      Cols            =   10
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
   Begin ComctlLib.ProgressBar Progres 
      Height          =   240
      Left            =   5490
      TabIndex        =   34
      Top             =   315
      Visible         =   0   'False
      Width           =   6270
      _ExtentX        =   11060
      _ExtentY        =   423
      _Version        =   327682
      Appearance      =   1
   End
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "      Informe de Vehiculos"
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   12.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False'
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   0
      TabIndex        =   9
      Top             =   255
      Width           =   12720
   End
End
Attribute VB_Name = "FrmTranListadoVehiculos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Tis As String, Tsa As String, RegFor As Variant, ColN As Integer

Private Enum Datos
        NoRegs
        EmprMatriculado
        Placa
        NumeroInt
        Descripcion
        Clase
        Marca
        NoChasis
        TipoCombustible
        LineaServicio
        NoMotor
        NoPuestos
        Modelo
        Capacidad
        NivelServicio
        NoContrato
        AyudaMutua
        FondoMulta
        FechaAfiliacion
        Estado
        CentroCosto
        SubcentroCosto
        vBloqueoDespacho
        TarjetaOperacion
        FecvenTarjetaOper
        ReqTarjetaOper
        SegObligatorio
        FecvenSegOblig
        ReqSeguroObli
        CertificadoTm
        FecvenCerTm
        ReqCertificadoTm
        SeguroContractual
        FecvenSegContratual
        ReqSegContratual
        SeguroTodoRiesgo
        FecvenSegTodoRiesgo
        ReqSegTodoRiesgo
        SegExtraContratual
        FecvenSegExtraContratual
        ReqSegExtraContratual
        CertificadoTmBimestral
        FecvenCerTmBimestral
        ReqCertificadoTmBimestral
        FecvenExtintor
        FondoAccidente
        FondoReposicion
        ContijenciaJudicial
        FechaRetiro
        CedulaPropietraio
        NomPropietario
        CedulaPropRunt
        NombrePropRunt
        CedulaConductor
        NomConductor
        Licencia
        Categoria
        OrganismoTransito
        IdOrganismo
        
        SoliAporteDiario
        AporteDiario
        HoraAporte
        AporteDiarioCero
        AporteDiaAnterior
        AporDiarioParametro
        MostrarControles
        
End Enum

Private Enum Conductor
        Sel = 0
        Cedula = 1
        Nombre = 2
        Estado = 3
        Principal = 4
        Modi = 5
        Placa = 6
End Enum

Private Enum Propietario
        Sel = 0
        Cedula = 1
        Nombre = 2
        Porcentaje = 3
        Estado = 4
        Principal = 5
        ResponRunt = 6
        Modi = 7
        Placa = 8
End Enum

Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        N = Me.FGvehiculos.Left + 300
        FGvehiculos.Width = Me.Width - N
        FGvehiculos.Height = Me.Height - FGvehiculos.Top - vHeightFor - Me.FGPropietarios.Height
        M = Round(FGvehiculos.Width / 2, 0)
        FGconductores.Top = Me.FGvehiculos.Top + Me.FGvehiculos.Height + 100
        FGPropietarios.Top = Me.FGvehiculos.Top + Me.FGvehiculos.Height + 100
        FGPropietarios.Width = M
        Me.FGconductores.Left = Me.FGPropietarios.Width + 100
        Me.FGconductores.Width = M - 100
        
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        On Error GoTo Salida
        Dim Mh As String, GF As String, Iw As String, vColConductor As New Collection, vColPropietario As New Collection, vVehiculos As New Collection
        Dim vFiltroTercero As String
                    
        With FGvehiculos
            If Permisos(3) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
            vFiltroTercero = Empty
            If Trim(TxtPlaca.Text) <> Empty Then vFiltro = " AND VehIdStPlaca LIKE '" & Trim(TxtPlaca.Text) & "%'"
            If PlaCentroCosto.Text <> Empty Then
                X = Mid(PlaCentroCosto.Text, 1, 2): Y = Mid(PlaCentroCosto.Text, 3, 6)
                vFiltro = vFiltro & " AND VehIdStCentroCosto ='" & X & "' AND VehIdStSubcentroCosto = '" & Y & "'"
            End If
            If Trim(BusVehIdStClaseVehiculo.Text) <> Empty Then vFiltro = vFiltro & " AND VehIdStClaseVehiculo ='" & BusVehIdStClaseVehiculo.Text & "' AND VehIdStTablaClase = '" & vParamTransporte(1) & "'"
            If Trim(BusVehIdStTipoCombustible.Text) <> Empty Then vFiltro = vFiltro & " AND VehIdStTipoCombustible ='" & BusVehIdStTipoCombustible.Text & "' AND VehIdStTablaTipoCombustible = '" & vParamTransporte(4) & "'"
            If Trim(BusVehIdStLineaServicio.Text) <> Empty Then vFiltro = vFiltro & " AND VehIdStLineaServicio ='" & BusVehIdStLineaServicio.Text & "' AND VehIdStTablaLineaServicio = '" & vParamTransporte(2) & "'"
            If Trim(BusVehIdStGrupoCapacidad.Text) <> Empty Then vFiltro = vFiltro & " AND VehIdStGrupoCapacidad ='" & BusVehIdStGrupoCapacidad.Text & "' AND VehIdStTablaGrupoCapacidad = '" & vParamTransporte(3) & "'"
            If Trim(BusVehIdStNivelServicio.Text) <> Empty Then vFiltro = vFiltro & " AND VehIdStNivelServicio ='" & BusVehIdStNivelServicio.Text & "' AND VehIdStTablaNivelServicio = '" & vParamTransporte(5) & "'"
            If Trim(BusVehIdStMarcaVehiculo.Text) <> Empty Then vFiltro = vFiltro & " AND VehIdStMarcaVehiculo ='" & BusVehIdStMarcaVehiculo.Text & "' AND VehIdStTablaMarca = '" & vParamTransporte(0) & "'"
                            
            A = Empty
            FGconductores.Rows = 1: FGPropietarios.Rows = 1
            .Rows = 2: i = 1
            Sql = "SELECT A.*,B.TmaStDescripcionUna AS Clase,C.TmaStDescripcionUna AS Combustible,D.TmaStDescripcionUna AS Linea,E.TmaStDescripcionUna AS Capacidad," & _
                  "F.TmaStDescripcionUna AS Nivel,G.TmaStDescripcionUna AS Marca,H.*,I.CliStNombreCliente,J.*,K.CliStNombreCliente AS Propietario,S.CduStNumeroLicencia,S.CduIdStCategoriaLicencia,R.OtrStNombre,R.OtrStJuridiscion " & _
                  "FROM TRANVEHICULOS A " & _
                  "INNER JOIN TRANMAESTROS B ON (A.VehIdStClaseVehiculo= B.TmaIdStCodigo AND A.VehIdStTablaClase=B.TmaIdInTransTablas) " & _
                  "INNER JOIN TRANMAESTROS C ON (A.VehIdStTipoCombustible= C.TmaIdStCodigo AND A.VehIdStTablaTipoCombustible=C.TmaIdInTransTablas) " & _
                  "INNER JOIN TRANMAESTROS D ON (A.VehIdStLineaServicio= D.TmaIdStCodigo AND A.VehIdStTablaLineaServicio=D.TmaIdInTransTablas) " & _
                  "INNER JOIN TRANMAESTROS E ON (A.VehIdStGrupoCapacidad= E.TmaIdStCodigo AND A.VehIdStTablaGrupoCapacidad=E.TmaIdInTransTablas) " & _
                  "INNER JOIN TRANMAESTROS F ON (A.VehIdStNivelServicio= F.TmaIdStCodigo AND A.VehIdStTablaNivelServicio=F.TmaIdInTransTablas) " & _
                  "INNER JOIN TRANMAESTROS G ON (A.VehIdStMarcaVehiculo= G.TmaIdStCodigo AND A.VehIdStTablaMarca=G.TmaIdInTransTablas) " & _
                  "LEFT OUTER JOIN TRANORGANISMOTRANSITO R ON (A.VehIdInOrganismoTransito= R.OtrIdInOrganismo) " & _
                  "LEFT OUTER JOIN TRANVEHICULOCONDUCTOR H ON (A.VehIdStEmpresa = H.VcdIdStEmpresa AND A.VehIdStPlaca=H.VcdIdStPlacaVehiculo) " & _
                  "LEFT OUTER JOIN CLIENTES I ON (H.VcdIdStEmpresa = I.CliEmpr AND H.VcdIdStConductor = I.CliNit) " & _
                  "LEFT OUTER JOIN TRANCONDUCTORES S ON (H.VcdIdStEmpresa = S.CduIdStEmpresa AND H.VcdIdStConductor=S.CduIdStConductor) "
             If Trim(BusPropietario.Text) <> Empty Then
                 Sql = Sql & "INNER JOIN TRANVEHICULOPROPIETARIOS J ON (A.VehIdStEmpresa = J.VpoIdStEmpresa AND A.VehIdStPlaca=J.VpoIdStPlacaVehiculo AND J.VpoIdStPropietario = '" & Me.BusPropietario.Text & "') " & _
                             "INNER JOIN CLIENTES K ON (J.VpoIdStEmpresa = K.CliEmpr AND J.VpoIdStPropietario = K.CliNit) " & _
                             "WHERE (A.VehIdStEmpresa = '" & Empresa & "'" & vFiltro & " ) " & _
                             "ORDER BY VehIdStPlaca"
             Else
                Sql = Sql & "LEFT OUTER JOIN TRANVEHICULOPROPIETARIOS J ON (A.VehIdStEmpresa = J.VpoIdStEmpresa AND A.VehIdStPlaca=J.VpoIdStPlacaVehiculo) " & _
                     "LEFT OUTER JOIN CLIENTES K ON (J.VpoIdStEmpresa = K.CliEmpr AND J.VpoIdStPropietario = K.CliNit) " & _
                     "WHERE (A.VehIdStEmpresa = '" & Empresa & "'" & vFiltro & " ) " & _
                     "ORDER BY VehIdStPlaca"
            End If

            If Buscar_Res(rdoRs, Sql) = BDOk Then
                  Progres.Visible = True: Progres.Min = 1: Progres.Max = rdoRs.RecordCount + 5: Progres.value = 1
                  
                  While Not rdoRs.EOF
                        Progres.value = Progres.value + 1
                        On Error Resume Next
                        V1 = Trim(rdoRs!VehIdStPlaca)
                        Z = "-1"
                        Z = vVehiculos(V1)
                        If Z = "-1" Then
                            .AddItem ""
                            .TextMatrix(.Rows - 1, Datos.NoRegs) = i
                            .TextMatrix(.Rows - 1, Datos.Placa) = Trim(rdoRs!VehIdStPlaca)
                            .TextMatrix(.Rows - 1, Datos.NumeroInt) = Trim("" & rdoRs!VehIdInNumero)
                            .TextMatrix(.Rows - 1, Datos.Descripcion) = Trim("" & rdoRs!VehStDescripcion)
                            .TextMatrix(.Rows - 1, Datos.Clase) = Trim("" & rdoRs!Clase)
                            .TextMatrix(.Rows - 1, Datos.TipoCombustible) = Trim("" & rdoRs!Combustible)
                            .TextMatrix(.Rows - 1, Datos.LineaServicio) = Trim("" & rdoRs!Linea)
                            .TextMatrix(.Rows - 1, Datos.Capacidad) = Trim("" & rdoRs!Capacidad)
                            .TextMatrix(.Rows - 1, Datos.NivelServicio) = Trim("" & rdoRs!Nivel)
                            .TextMatrix(.Rows - 1, Datos.Marca) = Trim("" & rdoRs!Marca)
                            .TextMatrix(.Rows - 1, Datos.FondoMulta) = Val("" & rdoRs!VehStSwFondoMultas)
                            .TextMatrix(.Rows - 1, Datos.AyudaMutua) = Val("" & rdoRs!VehStSwAyudaMutua)
                            .TextMatrix(.Rows - 1, Datos.Estado) = Val("" & rdoRs!VehStEstado)
                            .TextMatrix(.Rows - 1, Datos.vBloqueoDespacho) = Val("" & rdoRs!VehStBloquearDespacho)
                                                  
                            .TextMatrix(.Rows - 1, Datos.NoPuestos) = Val("" & rdoRs!VehInNumeroPuestos)
                            .TextMatrix(.Rows - 1, Datos.NoContrato) = Trim("" & rdoRs!VehIdStNumeroContrato)
                            .TextMatrix(.Rows - 1, Datos.FechaAfiliacion) = Trim("" & rdoRs!VehDaFechaAfiliacion)
                            .TextMatrix(.Rows - 1, Datos.FechaRetiro) = Format(Trim("" & rdoRs!VehDaFechaRetiro), "dd-mm-yyyy")
                            
                            .TextMatrix(.Rows - 1, Datos.TarjetaOperacion) = Trim("" & rdoRs!VehStTarjetaOperacion)
                            .TextMatrix(.Rows - 1, Datos.FecvenTarjetaOper) = Format(Trim("" & rdoRs!VehDaFechaVenTarjeta), "dd-mm-yyyy")
                            .TextMatrix(.Rows - 1, Datos.ReqTarjetaOper) = Val("" & rdoRs!VehSwReqTarjeta)
                            
                            .TextMatrix(.Rows - 1, Datos.SegObligatorio) = Trim("" & rdoRs!VehStSeguroObligatorio) & " "
                            .TextMatrix(.Rows - 1, Datos.FecvenSegOblig) = Format(Trim("" & rdoRs!VehDaFechaVenSeguro), "dd-mm-yyyy")
                            .TextMatrix(.Rows - 1, Datos.ReqSeguroObli) = Val("" & rdoRs!VehSwReqSeguro)
                            
                            .TextMatrix(.Rows - 1, Datos.CertificadoTm) = Trim("" & rdoRs!VehStCertificadoTM) & " "
                            .TextMatrix(.Rows - 1, Datos.FecvenCerTm) = Format(Trim("" & rdoRs!VehDaFechaVenCertificadoTM), "dd-mm-yyyy")
                            .TextMatrix(.Rows - 1, Datos.ReqCertificadoTm) = Val("" & rdoRs!VehSwReqCertificadoTM)
                            
                            .TextMatrix(.Rows - 1, Datos.CertificadoTmBimestral) = Trim("" & rdoRs!VehStCertificadoTMBimestral) & " "
                            .TextMatrix(.Rows - 1, Datos.FecvenCerTmBimestral) = Format(Trim("" & rdoRs!VehDaFechaVenCerTMBBimestral), "dd-mm-yyyy")
                            .TextMatrix(.Rows - 1, Datos.ReqCertificadoTmBimestral) = Val("" & rdoRs!VehSwReqCerTMBBimestral)
                            
                            .TextMatrix(.Rows - 1, Datos.SeguroContractual) = Trim("" & rdoRs!VehStSeguroContratual) & " "
                            .TextMatrix(.Rows - 1, Datos.FecvenSegContratual) = Format(Trim("" & rdoRs!VehDaFechaVenSeguroContratual), "dd-mm-yyyy")
                            .TextMatrix(.Rows - 1, Datos.ReqSegContratual) = Val("" & rdoRs!VehSwReqSeguroContratual)
                            
                            .TextMatrix(.Rows - 1, Datos.SegExtraContratual) = Trim("" & rdoRs!VehStSeguroExtraContratual) & " "
                            .TextMatrix(.Rows - 1, Datos.FecvenSegExtraContratual) = Format(Trim("" & rdoRs!VehDaFechaVenSegExtraCon), "dd-mm-yyyy")
                            .TextMatrix(.Rows - 1, Datos.ReqSegExtraContratual) = Val("" & rdoRs!VehStSwReqSegExtraCon)
                            
                            .TextMatrix(.Rows - 1, Datos.SeguroTodoRiesgo) = Trim("" & rdoRs!VehStSeguroTodoRiesgo) & " "
                            .TextMatrix(.Rows - 1, Datos.FecvenSegTodoRiesgo) = Format(Trim("" & rdoRs!VehDaFechaVenSeguroTR), "dd-mm-yyyy")
                            .TextMatrix(.Rows - 1, Datos.FecvenExtintor) = Format(Trim("" & rdoRs!VehDaFechaVenExtintor), "dd-mm-yyyy")
                            .TextMatrix(.Rows - 1, Datos.ReqSegTodoRiesgo) = Val("" & rdoRs!VehStSwReqSeguroTR)
                            
                            .TextMatrix(.Rows - 1, Datos.NoChasis) = Trim("" & rdoRs!VehStNumeroChasis) & " "
                            .TextMatrix(.Rows - 1, Datos.NoMotor) = Trim("" & rdoRs!VehStNumeroMotor) & " "
                            .TextMatrix(.Rows - 1, Datos.Modelo) = Trim("" & rdoRs!VehInModeloVehiculo) & " "
                            
                            .TextMatrix(.Rows - 1, Datos.FondoAccidente) = Val("" & rdoRs!VehInVrFondoAccidente)
                            .TextMatrix(.Rows - 1, Datos.ContijenciaJudicial) = Val("" & rdoRs!VehInVrContijenciaJudicial)
                            .TextMatrix(.Rows - 1, Datos.FondoReposicion) = Val("" & rdoRs!VehInVrFondoReposicion)
                            
                            
                            .TextMatrix(.Rows - 1, Datos.CentroCosto) = Trim("" & rdoRs!VehIdStCentroCosto) & " "
                            .TextMatrix(.Rows - 1, Datos.SubcentroCosto) = Trim("" & rdoRs!VehIdStSubcentroCosto) & " "
                            
                            .TextMatrix(.Rows - 1, Datos.OrganismoTransito) = Trim("" & rdoRs!OtrStNombre) & " "
                            .TextMatrix(.Rows - 1, Datos.IdOrganismo) = Trim("" & rdoRs!OtrStJuridiscion) & " "
                            
                            
                            .TextMatrix(.Rows - 1, Datos.AporDiarioParametro) = Val("" & rdoRs!VehStControlarAportesDiarios)
                            .TextMatrix(.Rows - 1, Datos.AporteDiaAnterior) = Val("" & rdoRs!VehStControlarAporteDiaAnterior)
                            .TextMatrix(.Rows - 1, Datos.AporteDiario) = Val("" & rdoRs!VehInVrAporteDiario)
                            .TextMatrix(.Rows - 1, Datos.AporteDiarioCero) = Val("" & rdoRs!VehInVrFondoReposicion)


                            If Trim("" & rdoRs!VehDtHoraMinimaAporte) <> Empty Then .TextMatrix(.Rows - 1, Datos.HoraAporte) = Format(rdoRs!VehDtHoraMinimaAporte, "hh:mm:ss am/pm")
                            
                            .TextMatrix(.Rows - 1, Datos.MostrarControles) = Val("" & rdoRs!VehStMostrarAportesControles)
                            .TextMatrix(.Rows - 1, Datos.SoliAporteDiario) = Val("" & rdoRs!VehStRequiereAportesDiarios)
                            
                            
                            
                            If Trim("" & rdoRs!VcdStPrincipal) = "1" Then
                                .TextMatrix(.Rows - 1, Datos.NomConductor) = Trim("" & rdoRs!CliStNombreCliente)
                                .TextMatrix(.Rows - 1, Datos.CedulaConductor) = Trim("" & rdoRs!VcdIdStConductor)
                                
                                .TextMatrix(.Rows - 1, Datos.Licencia) = Trim("" & rdoRs!CduStNumeroLicencia)
                                .TextMatrix(.Rows - 1, Datos.Categoria) = Trim("" & rdoRs!CduIdStCategoriaLicencia)
                            End If
                            If Trim("" & rdoRs!VpoStPrincipal) = "1" Then
                                .TextMatrix(.Rows - 1, Datos.NomPropietario) = Trim("" & rdoRs!Propietario)
                                .TextMatrix(.Rows - 1, Datos.CedulaPropietraio) = Trim("" & rdoRs!VpoIdStPropietario)
                            End If
                            
                            If Trim("" & rdoRs!VpoStResponsableRunt) = "1" Then
                                .TextMatrix(.Rows - 1, Datos.NombrePropRunt) = Trim("" & rdoRs!Propietario)
                                .TextMatrix(.Rows - 1, Datos.CedulaPropRunt) = Trim("" & rdoRs!VpoIdStPropietario)
                            End If
                            vVehiculos.Add .Rows - 1, V1
                            i = i + 1
                        Else
                            If Trim("" & rdoRs!VcdStPrincipal) = "1" Then .TextMatrix(Z, Datos.NomConductor) = Trim("" & rdoRs!CliStNombreCliente): .TextMatrix(Z, Datos.CedulaConductor) = Trim("" & rdoRs!VcdIdStConductor)
                            If Trim("" & rdoRs!VpoStPrincipal) = "1" Then .TextMatrix(Z, Datos.NomPropietario) = Trim("" & rdoRs!Propietario): .TextMatrix(Z, Datos.CedulaPropietraio) = Trim("" & rdoRs!VpoIdStPropietario)
                            If Trim("" & rdoRs!VpoStResponsableRunt) = "1" Then .TextMatrix(Z, Datos.NombrePropRunt) = Trim("" & rdoRs!Propietario): .TextMatrix(Z, Datos.CedulaPropRunt) = Trim("" & rdoRs!VpoIdStPropietario)
                        End If
                        
                                                
                        With FGconductores
                             If Trim("" & rdoRs!VcdIdStConductor) <> Empty Then
                                 On Error Resume Next
                                 x1 = Trim(rdoRs!VehIdStPlaca) & "-" & Trim("" & rdoRs!VcdIdStConductor)
                                 Y = "-1"
                                 Y = vColConductor(x1)
                                 If Y = "-1" Then
                                      .AddItem ""
                                      .TextMatrix(.Rows - 1, Conductor.Cedula) = Trim("" & rdoRs!VcdIdStConductor)
                                      .TextMatrix(.Rows - 1, Conductor.Nombre) = Trim("" & rdoRs!CliStNombreCliente)
                                      .TextMatrix(.Rows - 1, Conductor.Estado) = Trim("" & rdoRs!VcdStEstado)
                                      .TextMatrix(.Rows - 1, Conductor.Principal) = Trim("" & rdoRs!VcdStPrincipal)
                                      .TextMatrix(.Rows - 1, Conductor.Placa) = Trim(rdoRs!VehIdStPlaca)
                                      
                                      vColConductor.Add x1, x1
                                 End If
                             End If
                        End With
                        
                        With FGPropietarios
                             If Trim("" & rdoRs!VpoIdStPropietario) <> Empty Then
                                    On Error Resume Next
                                    x1 = Trim(rdoRs!VehIdStPlaca) & "-" & Trim("" & rdoRs!VpoIdStPropietario)
                                    Y = "-1"
                                    Y = vColPropietario(x1)
                                    If Y = "-1" Then
                                       .AddItem ""
                                       .TextMatrix(.Rows - 1, Propietario.Cedula) = Trim("" & rdoRs!VpoIdStPropietario)
                                       .TextMatrix(.Rows - 1, Propietario.Nombre) = Trim("" & rdoRs!Propietario)
                                       .TextMatrix(.Rows - 1, Propietario.Estado) = Trim("" & rdoRs!VpoStEstado)
                                       .TextMatrix(.Rows - 1, Propietario.Porcentaje) = Val("" & rdoRs!VpoInPorParticipacion)
                                       .TextMatrix(.Rows - 1, Propietario.Principal) = Val("" & rdoRs!VpoStPrincipal)
                                       .TextMatrix(.Rows - 1, Propietario.ResponRunt) = Val("" & rdoRs!VpoStResponsableRunt)
                                       .TextMatrix(.Rows - 1, Propietario.Placa) = Trim(rdoRs!VehIdStPlaca)
                                       vColPropietario.Add x1, x1
                                   End If
                             End If
                        End With
                        A = Trim("" & rdoRs!VehIdStPlaca)
                        
                        rdoRs.MoveNext
                  Wend
                  'Frabusqueda.Visible = True

                  
            Else
                MsgBox "No hay informaci�n para mostrar", vbInformation + vbOKOnly, "Atenci�n"
            End If
            If .Rows > 3 Then .SetFocus: .Select 2, Datos.Descripcion
             
            .AutoSize 0, .Cols - 1
            .AllowUserResizing = flexResizeColumns
            Progres.Visible = False
        End With
        Exit Sub
Salida: MsgBox "Consultar con el Adm. del Sistema", vbInformation + vbOKOnly, "Atenci�n"
Progres.Visible = False

End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        On Error GoTo Salida
        Dim Cont As Integer
        Dim vNombreReporte As String
        If Permisos(4) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        
        If Permisos(4) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        If FGvehiculos.Rows - 2 < 1 Then MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        
        If vRutaInfXls = Empty Then MsgBox "Se�or usuario definir la ruta de informes en excel", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        If Dir(vRutaInfXls, vbDirectory) = Empty Then MsgBox "Se�or usuario la ruta configurada de informes en excel no existe", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        
        If Me.FGvehiculos.Rows > 2 Then
           vNombreReporte = "LISTADO DE VEHICULOS.XLS"
           
           
           ComArchivo.CancelError = False
           ComArchivo.Flags = cdlOFNHideReadOnly
           ComArchivo.DefaultExt = "xls"
           ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
           ComArchivo.ShowSave
           If ComArchivo.FileName <> Empty Then
                 FGvehiculos.SaveGrid ComArchivo.FileName, flexFileExcel, 3
           End If
           
           
'           FGvehiculos.SaveGrid vRutaInfXls & vNombreReporte, flexFileExcel, 3
'           Call Abrir_LibroExcel(vRutaInfXls & vNombreReporte)
                      
           
           Exit Sub
           If MsgBox("Se�or usuario el proceso de exportar archivo" & Chr(13) & "puede tardar unos minutos. �Desea continuar?.", vbYesNo + vbQuestion, "Atenci�n") = vbNo Then Exit Sub
           With FGvehiculos
                FGexportar.Cols = 50
                FGexportar.Rows = 0
                FGexportar.BackColor = &HD8E4F8   'vbWhite
                FGexportar.FixedCols = 0
                FGexportar.ForeColor = vbBlack
                FGexportar.GridLines = flexGridExcel
                
                For K = 0 To FGexportar.Cols - 1
                     FGexportar.ColHidden(K) = False
                Next K
                
                Progres.Visible = True
                Progres.value = 1: Progres.Min = 1: Progres.Max = FGvehiculos.Rows - 1 + 10: Progres.Visible = True
                Progres.value = Progres.value + 1
                
                FGexportar.AddItem ""
                FGexportar.AddItem "" & vbTab & DatosEmpresa(1)
                FGexportar.Cell(flexcpFontSize, FGexportar.Rows - 1, 1, FGexportar.Rows - 1, 1) = 11
                FGexportar.Cell(flexcpFontBold, FGexportar.Rows - 1, 1, FGexportar.Rows - 1, 1) = True
            
                FGexportar.Cell(flexcpBackColor, 1, 1, FGexportar.Rows - 1, 1) = &HD8E4F8 '&HEFB885
                FGexportar.AddItem "" & vbTab & "REPORTE DE VEHICULOS"
                FGexportar.Cell(flexcpFontSize, FGexportar.Rows - 1, 1, FGexportar.Rows - 1, 1) = 11
                FGexportar.Cell(flexcpFontBold, FGexportar.Rows - 1, 1, FGexportar.Rows - 1, 1) = True
                FGexportar.Cell(flexcpBackColor, FGexportar.Rows - 1, 1, FGexportar.Rows - 1, 1) = &HD8E4F8 ' &HEFB885
                FGexportar.AddItem "": FGexportar.AddItem ""
                FGexportar.ColDataType(3) = flexDTStringC
                
                With FGexportar
                     Cont = 1
                     .AddItem ""
                     .TextMatrix(.Rows - 1, Cont) = "No.": Cont = Cont + 1
                     .TextMatrix(.Rows - 1, Cont) = "Placa": Cont = Cont + 1
                     .TextMatrix(.Rows - 1, Cont) = "No. Interno": Cont = Cont + 1
                     .TextMatrix(.Rows - 1, Cont) = "Descripci�n": Cont = Cont + 1
                     .Cell(flexcpBackColor, .Rows - 1, 0, .Rows - 1, Cont) = &H80C0FF
                     .Cell(flexcpAlignment, .Rows - 1, 0, .Rows - 1, Cont) = flexAlignLeftCenter
                     .Cell(flexcpFontSize, .Rows - 1, 1, .Rows - 1, 1) = 9
                     .Cell(flexcpFontBold, .Rows - 1, 1, .Rows - 1, 1) = True
                     .ColDataType(12) = flexDTStringC
                End With
                
                N = 1: Cont = 1
                For i = 2 To .Rows - 1
                       Cont = 1
                       FGexportar.AddItem ""
                       FGexportar.TextMatrix(FGexportar.Rows - 1, 1) = N: Cont = Cont + 1
                       FGexportar.TextMatrix(FGexportar.Rows - 1, Cont) = Trim(.TextMatrix(i, Datos.Placa)): Cont = Cont + 1
                       FGexportar.TextMatrix(FGexportar.Rows - 1, Cont) = Trim(.TextMatrix(i, Datos.NumeroInt)): Cont = Cont + 1
                       FGexportar.TextMatrix(FGexportar.Rows - 1, Cont) = Trim(.TextMatrix(i, Datos.Descripcion)): Cont = Cont + 1
                       
                       
                       N = N + 1
                Next i
                
                
                FGexportar.AutoSize 2, FGexportar.Cols - 1
                FGexportar.AllowUserResizing = flexResizeColumns
                Progres.Visible = False
              
                
'                ComArchivo.CancelError = False
'                ComArchivo.Flags = cdlOFNFileMustExist + cdlOFNLongNames + cdlOFNPathMustExist
'                ComArchivo.Filter = "(*.Xls)|*.xls"
'                ComArchivo.ShowSave
'                Screen.MousePointer = vbHourglass
'                If ComArchivo.FileName <> Empty Then
'                     FGexportar.SaveGrid ComArchivo.FileName, flexFileExcel, 3
'                     Call MensajeOk
'                End If
'                Screen.MousePointer = vbDefault

           End With
        Else
            MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n"
        End If
        Exit Sub
Salida: Call MensajeAdministrador

End Sub

Private Sub BusPropietario_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGvehiculos.Rows = 2
        FGconductores.Rows = 1: FGPropietarios.Rows = 1
End Sub

Private Sub BusVehIdStClaseVehiculo_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGvehiculos.Rows = 2
        FGconductores.Rows = 1: FGPropietarios.Rows = 1
End Sub

Private Sub BusVehIdStGrupoCapacidad_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGvehiculos.Rows = 2
        FGconductores.Rows = 1: FGPropietarios.Rows = 1
End Sub

Private Sub BusVehIdStLineaServicio_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGvehiculos.Rows = 2
        FGconductores.Rows = 1: FGPropietarios.Rows = 1
End Sub

Private Sub BusVehIdStMarcaVehiculo_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGvehiculos.Rows = 2
        FGconductores.Rows = 1: FGPropietarios.Rows = 1
End Sub

Private Sub BusVehIdStNivelServicio_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGvehiculos.Rows = 2
        FGconductores.Rows = 1: FGPropietarios.Rows = 1
End Sub

Private Sub BusVehIdStTipoCombustible_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGvehiculos.Rows = 2
        FGconductores.Rows = 1: FGPropietarios.Rows = 1
End Sub

Private Sub CmdBuscar_Click()
        If FGvehiculos.Rows < 3 Then MsgBox "No hay informaci�n para buscar", vbExclamation + vbOKOnly, "Atenci�n": Exit Sub
        If CobCampos.Text = Empty Then MsgBox "Seleccione la Columna por la cual desea buscar", vbInformation + vbOKOnly, "Atenci�n": CobCampos.SetFocus: Exit Sub
        If Trim(TxtBusqueda.Text) = Empty Then MsgBox "Digite la informaci�n a buscar", vbInformation + vbOKOnly, "Atenci�n": TxtBusqueda.SetFocus: Exit Sub
        RegIni = RegFor
        If Buscar_datos(FGvehiculos, Trim(TxtBusqueda.Text), ColN) = True Then
            RegFor = RegIni
        Else
            MsgBox "No hay informaci�n para mostrar de acuerdo a los parametros seleccionados", vbExclamation + vbOKOnly, "Atenci�n"
            RegFor = 1
        End If
End Sub

Private Sub CmdBuscar_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        CmdBuscar.Picture = LoadResPicture(BotonSeleccionado.ConsultarS, vbResBitmap)
End Sub

Private Sub Cmdplano_Click()
        On Error GoTo Salida
        If FGvehiculos.Rows - 1 < 1 Then MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then FGvehiculos.SaveGrid ComArchivo.FileName, flexFileExcel, 3
        Exit Sub
Salida: MsgBox "Consultar con el Adm. del Sistema", vbCritical + vbOKOnly, "Atenci�n"
End Sub

Private Sub Cmdplano_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.ExportarS, vbResBitmap)
End Sub

Private Sub CobCampos_Click()
        Select Case CobCampos.Text
               Case "CC o Placa": ColN = Datos.Placa
               Case "NOMBRE O RAZON SOCIAL": ColN = Datos.Descripcion
               Case "DIRECCION": ColN = Datos.NoPuestos
               
        End Select
        RegFor = 1
        
End Sub

Private Sub FGvehiculos_RowColChange()
        If FGvehiculos.Rows > 2 Then
           
           X = Trim(FGvehiculos.TextMatrix(Me.FGvehiculos.Row, Datos.Placa))
           For i = 1 To FGconductores.Rows - 1
                 If X = Trim(FGconductores.TextMatrix(i, Conductor.Placa)) Then FGconductores.RowHidden(i) = False Else FGconductores.RowHidden(i) = True
           Next i
              
           For i = 1 To FGPropietarios.Rows - 1
                 If X = Trim(FGPropietarios.TextMatrix(i, Propietario.Placa)) Then FGPropietarios.RowHidden(i) = False Else FGPropietarios.RowHidden(i) = True
           Next i
        End If
End Sub

Private Sub Form_Activate()
        On Error Resume Next
        If Iempresa <> Empresa Then
           Iempresa = Empresa
           Me.BackColor = Bcolor1
           Me.Caption = Trim(Titul)
           Call Define_Grids(FGvehiculos)
           Call DGRILLA
        End If
 
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
        
        Me.BackColor = Bcolor1
        Me.Caption = Trim(Titul)
        Call Define_Grids(FGvehiculos)
        Call DGRILLA
        
        LblTitle.BackColor = Bfcolor
        LblTitle.ForeColor = Fcolor1
        LblTitle.Font = TipoLetraTitulo: LblTitle.FontBold = NegLetraTitulo: LblTitle.FontSize = Tama�oLetraTitulo
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana
        
        CobCampos.Clear
        CobCampos.AddItem "PLACA"
        CobCampos.AddItem "PROPIETARIOS"
        CobCampos.AddItem ""
        RegFor = 1

        With BarraOperaciones
             .BarUso = BaConsulta
             .Tabla = "TRANVEHICULOS"
             .BarBuscar = EstCancel
             .BarGuardar = EstOk
        End With
        
        With BusVehIdStMarcaVehiculo
             .Enabled = True
             .TexVisible = True
             .CodigoWidth = 500
             .NombreWidth = 2500
             .ColCampos.Add 0, "codigo", "TmaIdStCodigo", adChar, 1200, False
             .ColCampos.Add 1, "Nombre", "TmaStDescripcionUna", adVarChar, 5000, True
             .ColRet = 1
             .Sql = "SELECT TmaIdStCodigo,TmaStDescripcionUna FROM TRANMAESTROS WHERE TmaIdInTransTablas = '" & vParamTransporte(0) & "' AND " & _
                    "TmaStEstado = 'A' "
             .TitleGrid = "LISTADO MARCAS"
             .ColLlaves.Add "TmaIdStCodigo", "", adChar
             .PosicionTop = 800
             .TipoBusqueda = BxCompleta
             .PosicionLeft = .Left
             .TooltipBoton = "Buscar Marcas del vehiculo"
        End With
        
        With BusPropietario
             .Enabled = True
             .TexVisible = True
             .CodigoWidth = 1000
             .NombreWidth = 2400
             .ColCampos.Add 0, "codigo", "VpoIdStPropietario", adChar, 1200, False
             .ColCampos.Add 1, "Nombre", "CliStNombreCliente", adVarChar, 5000, True
             .ColRet = 1
             .Sql = "SELECT DISTINCT A.VpoIdStPropietario, B.CliStNombreCliente  FROM TRANVEHICULOPROPIETARIOS A " & _
                    "INNER JOIN CLIENTES B ON (A.VpoIdStEmpresa = B.cliempr AND A.VpoIdStPropietario = B.clinit) " & _
                    "WHERE A.VpoIdStEmpresa = '" & Empresa & "' AND A.VpoStPrincipal = '1' "
             .TitleGrid = "LISTADO PROPIETARIOS"
             .ColLlaves.Add "VpoIdStPropietario", "", adChar
             .PosicionTop = 800
             .TipoBusqueda = BxCompleta
             .PosicionLeft = .Left
             .TooltipBoton = "Buscar Propietario"
        End With
        
        With BusVehIdStClaseVehiculo
             .Enabled = True
             .TexVisible = True
             .CodigoWidth = 900
             .NombreWidth = 2500
             .ColCampos.Add 0, "codigo", "TmaIdStCodigo", adChar, 1200, False
             .ColCampos.Add 1, "Nombre", "TmaStDescripcionUna", adVarChar, 5000, True
             .ColRet = 1
             If vParamTransporte(1) <> Empty Then
                .Sql = "SELECT TmaIdStCodigo,TmaStDescripcionUna FROM TRANMAESTROS WHERE TmaIdInTransTablas = '" & vParamTransporte(1) & "' AND " & _
                       "TmaStEstado = 'A' "
             Else
                .Sql = Empty
             End If
             .TitleGrid = "LISTADO CLASES"
             .ColLlaves.Add "TmaIdStCodigo", "", adChar
             .PosicionTop = 800
             .TipoBusqueda = BxCompleta
             .PosicionLeft = .Left
             .TooltipBoton = "Buscar clases de vehiculo"
        End With
        
        With BusVehIdStGrupoCapacidad
             .Enabled = True
             .TexVisible = True
             .CodigoWidth = 500
             .NombreWidth = 2500
             .ColCampos.Add 0, "codigo", "TmaIdStCodigo", adChar, 1200, False
             .ColCampos.Add 1, "Nombre", "TmaStDescripcionUna", adVarChar, 5000, True
             .ColRet = 1
             If vParamTransporte(3) <> Empty Then
                .Sql = "SELECT TmaIdStCodigo,TmaStDescripcionUna FROM TRANMAESTROS WHERE TmaIdInTransTablas = '" & vParamTransporte(3) & "' AND " & _
                       "TmaStEstado = 'A' "
             Else
                .Sql = Empty
             End If
             .TitleGrid = "LISTADO GRUPO DE CAPACIDAD"
             .ColLlaves.Add "TmaIdStCodigo", "", adChar
             .PosicionTop = 800
             .TipoBusqueda = BxCompleta
             .PosicionLeft = .Left
             .TooltipBoton = "Buscar grupo de capacidad"
        End With
        
        With BusVehIdStLineaServicio
             .Enabled = True
             .TexVisible = True
             .CodigoWidth = 900
             .NombreWidth = 2500
             .ColCampos.Add 0, "codigo", "TmaIdStCodigo", adChar, 1200, False
             .ColCampos.Add 1, "Nombre", "TmaStDescripcionUna", adVarChar, 5000, True
             .ColRet = 1
             If vParamTransporte(2) <> Empty Then
                 .Sql = "SELECT * FROM TRANMAESTROS WHERE TmaIdInTransTablas = '" & vParamTransporte(2) & "' AND " & _
                        "TmaStEstado = 'A' "
             Else
                 .Sql = Empty
             End If
             .TitleGrid = "LISTADO LINEA DE SERVICIOS"
             .ColLlaves.Add "TmaIdStCodigo", "", adChar
             .PosicionTop = 800
             .TipoBusqueda = BxCompleta
             .PosicionLeft = .Left
             .TooltipBoton = "Buscar linea de servicio"
        End With

        With BusVehIdStNivelServicio
             .Enabled = True
             .TexVisible = True
             .CodigoWidth = 500
             .NombreWidth = 2500
             .ColCampos.Add 0, "codigo", "TmaIdStCodigo", adChar, 1200, False
             .ColCampos.Add 1, "Nombre", "TmaStDescripcionUna", adVarChar, 5000, True
             .ColRet = 1
             If vParamTransporte(5) <> Empty Then
                 .Sql = "SELECT * FROM TRANMAESTROS WHERE TmaIdInTransTablas = '" & vParamTransporte(5) & "' AND " & _
                        "TmaStEstado = 'A' "
             Else
                 .Sql = Empty
             End If
             .TitleGrid = "LISTADO NIVEL DE SERVICIOS"
             .ColLlaves.Add "TmaIdStCodigo", "", adChar
             .PosicionTop = 800
             .TipoBusqueda = BxCompleta
             .PosicionLeft = .Left
             .TooltipBoton = "Buscar nivel de servicio"
        End With

        With BusVehIdStTipoCombustible
             .Enabled = True
             .TexVisible = True
             .CodigoWidth = 500
             .NombreWidth = 2500
             .ColCampos.Add 0, "codigo", "TmaIdStCodigo", adChar, 1200, False
             .ColCampos.Add 1, "Nombre", "TmaStDescripcionUna", adVarChar, 5000, True
             .ColRet = 1
             If vParamTransporte(0) <> Empty Then
                .Sql = "SELECT * FROM TRANMAESTROS WHERE TmaIdInTransTablas = '" & vParamTransporte(4) & "' AND " & _
                       "TmaStEstado = 'A' "
             Else
                .Sql = Empty
             End If
             .TitleGrid = "LISTADO TIPOS DE COMBUSTIBLE"
             .ColLlaves.Add "TmaIdStCodigo", "", adChar
             .PosicionTop = 800
             .TipoBusqueda = BxCompleta
             .PosicionLeft = .Left
             .TooltipBoton = "Buscar Tipo de combustible"
        End With
                         
        With PlaCentroCosto
             .Enabled = True
             .TexVisible = True
             .CodigoWidth = 900
             .NombreWidth = 2500
             .DesVisible = True
             .TipoPlantilla = BxCompleta
             .TooltipBoton = "Buscar Centro de costos"
        End With
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
    On Error GoTo Salida
    
    With FGvehiculos
          .Rows = 2
          .Cols = 66
          .FixedRows = 2
          .FontName = "Arial"
          .FontSize = 8
          .GridLines = flexGridFlat
          .BackColorBkg = ColorGrilla
          .BackColorFixed = vbWhite
          .ForeColorFixed = vColorFixed
          .BackColorSel = &H808000
          .BackColorSel = &HA8753C
          .ForeColorSel = vbWhite
          .BackColor = ColorGrilla
          .ForeColor = vbBlack
          .AllowUserResizing = flexResizeColumns
          .ExtendLastCol = False
          .ExplorerBar = flexExSortShowAndMove
          .SelectionMode = flexSelectionByRow
          .ScrollBars = flexScrollBarBoth
          .ColDataType(Datos.ReqCertificadoTm) = flexDTBoolean
          .ColDataType(Datos.ReqSegContratual) = flexDTBoolean
          .ColDataType(Datos.ReqSegExtraContratual) = flexDTBoolean
          .ColDataType(Datos.ReqSegTodoRiesgo) = flexDTBoolean
          .ColDataType(Datos.ReqSeguroObli) = flexDTBoolean
          .ColDataType(Datos.ReqTarjetaOper) = flexDTBoolean
          .ColDataType(Datos.FondoMulta) = flexDTBoolean
          .ColDataType(Datos.AyudaMutua) = flexDTBoolean
          
          .ColHidden(Datos.EmprMatriculado) = True
          .TextMatrix(0, Datos.NoRegs) = "No.": .TextMatrix(1, Datos.NoRegs) = "No."
          .TextMatrix(0, Datos.Placa) = "Placa": .TextMatrix(1, Datos.Placa) = "Placa"
          .TextMatrix(0, Datos.NumeroInt) = "Numero": .TextMatrix(1, Datos.NumeroInt) = "Numero"
          .TextMatrix(0, Datos.Clase) = "Clase": .TextMatrix(1, Datos.Clase) = "Clase"
          .TextMatrix(0, Datos.Marca) = "Marca": .TextMatrix(1, Datos.Marca) = "Marca"
          .TextMatrix(0, Datos.Descripcion) = "Descripcion": .TextMatrix(1, Datos.Descripcion) = "Descripcion"
          .TextMatrix(0, Datos.FondoMulta) = "Fondo": .TextMatrix(1, Datos.FondoMulta) = "Multa"
          .TextMatrix(0, Datos.AyudaMutua) = "Fondo": .TextMatrix(1, Datos.AyudaMutua) = "Ayuda"
          .TextMatrix(0, Datos.NoContrato) = "No. Contrato": .TextMatrix(1, Datos.NoContrato) = "No. Contrato"
          .TextMatrix(0, Datos.FechaAfiliacion) = "Fecha": .TextMatrix(1, Datos.FechaAfiliacion) = "Afiliacion"
          .TextMatrix(0, Datos.Estado) = "Estado": .TextMatrix(1, Datos.Estado) = "Estado"
          .TextMatrix(0, Datos.CertificadoTm) = "Certificado": .TextMatrix(1, Datos.CertificadoTm) = "Tecnicomecanica"
          .TextMatrix(0, Datos.FecvenCerTm) = "Fecha Vencimiento": .TextMatrix(1, Datos.FecvenCerTm) = "Tecnicomecanica"
          .TextMatrix(0, Datos.ReqCertificadoTm) = "Requerido": .TextMatrix(1, Datos.ReqCertificadoTm) = "Tecnicomecanica"
          .TextMatrix(0, Datos.FechaRetiro) = "Fecha": .TextMatrix(1, Datos.FechaRetiro) = "Retiro"
          .TextMatrix(0, Datos.Licencia) = "Licencia de Conducci�n": .TextMatrix(1, Datos.Licencia) = "Numero"
          .TextMatrix(0, Datos.Categoria) = "Licencia de Conducci�n": .TextMatrix(1, Datos.Categoria) = "Categoria"
          
          
          .TextMatrix(0, Datos.CertificadoTmBimestral) = "Certificado": .TextMatrix(1, Datos.CertificadoTmBimestral) = "CDA/CEA Bimestral"
          .TextMatrix(0, Datos.FecvenCerTmBimestral) = "Fecha Vencimiento": .TextMatrix(1, Datos.FecvenCerTmBimestral) = "CDA/CEA Bimestral"
          .TextMatrix(0, Datos.ReqCertificadoTmBimestral) = "Requerido": .TextMatrix(1, Datos.ReqCertificadoTmBimestral) = "CDA/CEA Bimestral"
                    
          .TextMatrix(0, Datos.FecvenSegOblig) = "Fecha Vencimiento": .TextMatrix(1, Datos.FecvenSegOblig) = "Seguro Obligatorio"
          .TextMatrix(0, Datos.ReqSeguroObli) = "Requiere": .TextMatrix(1, Datos.ReqSeguroObli) = "Seguro Obligatorio"
          .TextMatrix(0, Datos.NoPuestos) = "No. Puestos": .TextMatrix(1, Datos.NoPuestos) = "No. Puestos"
          .TextMatrix(0, Datos.TarjetaOperacion) = "Tarjeta": .TextMatrix(1, Datos.TarjetaOperacion) = "Operacion"
          .TextMatrix(0, Datos.FecvenTarjetaOper) = "Fecha Vencimiento": .TextMatrix(1, Datos.FecvenTarjetaOper) = "Tarjeta Operacion"
          .TextMatrix(0, Datos.FecvenExtintor) = "Fecha Vencimiento": .TextMatrix(1, Datos.FecvenExtintor) = "Extintor"
          .TextMatrix(0, Datos.ReqTarjetaOper) = "Requiere": .TextMatrix(1, Datos.ReqTarjetaOper) = "Tarjeta Operacion"
          .TextMatrix(0, Datos.SegObligatorio) = "Seguro Obligatorio": .TextMatrix(1, Datos.SegObligatorio) = "Seguro Obligatorio"
                    
          .TextMatrix(0, Datos.NivelServicio) = "Nivel": .TextMatrix(1, Datos.NivelServicio) = "Servicio"
          .TextMatrix(0, Datos.NoChasis) = "No. Chasis": .TextMatrix(1, Datos.NoChasis) = "No. Chasis"
          .TextMatrix(0, Datos.TipoCombustible) = "Tipo": .TextMatrix(1, Datos.TipoCombustible) = "Cobustible"
          .TextMatrix(0, Datos.LineaServicio) = "Linea": .TextMatrix(1, Datos.LineaServicio) = "Servicio"
          .TextMatrix(0, Datos.NoMotor) = "No. Motor": .TextMatrix(1, Datos.NoMotor) = "No. Motor"
          .TextMatrix(0, Datos.Modelo) = "Modelo": .TextMatrix(1, Datos.Modelo) = "Modelo"
          .TextMatrix(0, Datos.Capacidad) = "Capacidad": .TextMatrix(1, Datos.Capacidad) = "Capacidad"
                    
          .TextMatrix(0, Datos.SeguroContractual) = "Seguro": .TextMatrix(1, Datos.SeguroContractual) = "Contractual"
          .TextMatrix(0, Datos.FecvenSegContratual) = "Fecha Vencimiento": .TextMatrix(1, Datos.FecvenSegContratual) = "Contractual"
          .TextMatrix(0, Datos.ReqSegContratual) = "Requerido": .TextMatrix(1, Datos.ReqSegContratual) = "Contractual"
          
          .TextMatrix(0, Datos.SegExtraContratual) = "Seguro": .TextMatrix(1, Datos.SegExtraContratual) = "Extracontratual"
          .TextMatrix(0, Datos.FecvenSegExtraContratual) = "Fecha Vencimiento": .TextMatrix(1, Datos.FecvenSegExtraContratual) = "Extracontratual"
          .TextMatrix(0, Datos.ReqSegExtraContratual) = "Requerido": .TextMatrix(1, Datos.ReqSegExtraContratual) = "Extracontratual"
          
          .TextMatrix(0, Datos.SeguroTodoRiesgo) = "Seguro": .TextMatrix(1, Datos.SeguroTodoRiesgo) = "Todo Riesgo"
          .TextMatrix(0, Datos.FecvenSegTodoRiesgo) = "Fecha Vencimiento": .TextMatrix(1, Datos.FecvenSegTodoRiesgo) = "Todo Riesgo"
          .TextMatrix(0, Datos.ReqSegTodoRiesgo) = "Requerido": .TextMatrix(1, Datos.ReqSegTodoRiesgo) = "Todo Riesgo"
          
          .TextMatrix(0, Datos.FondoAccidente) = "Valor": .TextMatrix(1, Datos.FondoAccidente) = "Fondo Accidente"
          .TextMatrix(0, Datos.FondoReposicion) = "Valor": .TextMatrix(1, Datos.FondoReposicion) = "Fondo Reposici�n"
          .TextMatrix(0, Datos.ContijenciaJudicial) = "Valor": .TextMatrix(1, Datos.ContijenciaJudicial) = "Contingencia Judicial"
          .TextMatrix(0, Datos.NomPropietario) = "Propietario Principal": .TextMatrix(1, Datos.NomPropietario) = "Propietario Principal"
          .TextMatrix(0, Datos.NomConductor) = "Conductor Principal": .TextMatrix(1, Datos.NomConductor) = "Conductor Principal"
          
          .TextMatrix(0, Datos.CedulaPropietraio) = "Cedula": .TextMatrix(1, Datos.CedulaPropietraio) = "Propietario"
          .TextMatrix(0, Datos.CedulaConductor) = "Cedula": .TextMatrix(1, Datos.CedulaConductor) = "Conductor"
          
          .TextMatrix(0, Datos.CedulaPropRunt) = "Cedula": .TextMatrix(1, Datos.CedulaPropRunt) = "Propietario Runt"
          .TextMatrix(0, Datos.NombrePropRunt) = "Propietario Runt": .TextMatrix(1, Datos.NombrePropRunt) = "Propietario Runt"
          
          .TextMatrix(0, Datos.CentroCosto) = "Centro": .TextMatrix(1, Datos.CentroCosto) = "Costos"
          .TextMatrix(0, Datos.SubcentroCosto) = "SubCentro": .TextMatrix(1, Datos.SubcentroCosto) = "Costos"
          .TextMatrix(0, Datos.OrganismoTransito) = "Orgamismo de Transito": .TextMatrix(1, Datos.OrganismoTransito) = "Nombre"
          .TextMatrix(0, Datos.IdOrganismo) = "Orgamismo de Transito": .TextMatrix(1, Datos.IdOrganismo) = "Jurisdici�n"
          .TextMatrix(0, Datos.vBloqueoDespacho) = "Bloqueado": .TextMatrix(1, Datos.vBloqueoDespacho) = "Para despacho"
          
          .TextMatrix(0, Datos.SoliAporteDiario) = "Aporte Diario": .TextMatrix(1, Datos.SoliAporteDiario) = "Solicita"
          .TextMatrix(0, Datos.AporteDiario) = "Aporte Diario": .TextMatrix(1, Datos.AporteDiario) = "Valor"
          .TextMatrix(0, Datos.HoraAporte) = "Aporte Diario": .TextMatrix(1, Datos.HoraAporte) = "Hora"
          
          .TextMatrix(0, Datos.AporteDiarioCero) = "Aporte Diario": .TextMatrix(1, Datos.AporteDiarioCero) = "Cartera Cero"
          .TextMatrix(0, Datos.AporteDiaAnterior) = "Controlar Aportes": .TextMatrix(1, Datos.AporteDiaAnterior) = "Dia Anterior"
          .TextMatrix(0, Datos.AporDiarioParametro) = "Aporte Diario": .TextMatrix(1, Datos.AporDiarioParametro) = "Por Parametros"
          .TextMatrix(0, Datos.MostrarControles) = "Mostrar": .TextMatrix(1, Datos.MostrarControles) = "Controles"
                    
          
          .ColWidth(Datos.NoRegs) = 900
          .ColWidth(Datos.Placa) = 500
          .FocusRect = flexFocusRaised
          .OutlineBar = flexOutlineBarComplete
          .Cell(flexcpAlignment, 0, 0, 1, .Cols - 1) = flexAlignCenterCenter
          .Editable = False
          .Cell(flexcpFontBold, 0, 0, 1, .Cols - 1) = True
          .AutoSize 0, .Cols - 1
          .MergeCells = flexMergeFixedOnly
          For K = 0 To .Cols - 1
               .MergeCol(K) = True
          Next K
          .MergeRow(0) = True
          .ColDataType(Datos.vBloqueoDespacho) = flexDTBoolean
          .ColComboList(Datos.Estado) = "|#0;Activo|#1;Inactivo|#2;Retirado|#3;Taller|#4;Creado"
          .ColDataType(Datos.FechaAfiliacion) = flexDTStringC
          .ColDataType(Datos.FechaRetiro) = flexDTStringC
          .ColDataType(Datos.FecvenCerTm) = flexDTStringC
          .ColDataType(Datos.FecvenSegContratual) = flexDTStringC
          .ColDataType(Datos.FecvenSegExtraContratual) = flexDTStringC
          .ColDataType(Datos.FecvenSegOblig) = flexDTStringC
          .ColDataType(Datos.FecvenSegTodoRiesgo) = flexDTStringC
          .ColDataType(Datos.FecvenTarjetaOper) = flexDTStringC
          .ColDataType(Datos.FecvenExtintor) = flexDTStringC
          .ColDataType(Datos.FecvenCerTmBimestral) = flexDTStringC
          .ColDataType(Datos.HoraAporte) = flexDTStringC
          .ColDataType(Datos.AporteDiarioCero) = flexDTBoolean
          .ColDataType(Datos.AporteDiaAnterior) = flexDTBoolean
          .ColDataType(Datos.MostrarControles) = flexDTBoolean
          .ColDataType(Datos.SoliAporteDiario) = flexDTBoolean
          .ColDataType(Datos.AporDiarioParametro) = flexDTBoolean
          .ColFormat(Datos.AporteDiario) = "#,###.00"
     End With

     With Me.FGconductores
             .Rows = 1
             .Cols = 7
             .FontName = "Arial"
             .FontSize = 8
             .Font.Bold = False
             .BackColor = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = vColorFixed
             .BackColorSel = &HA8753C
             .BackColorBkg = &H80000018
             .TextStyleFixed = flexTextFlat
             .ForeColor = &HC00000
             .GridLines = flexGridFlat
             .FocusRect = flexFocusRaised
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .FixedCols = 0
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .Editable = flexEDKbd
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .AllowUserResizing = flexResizeBoth
             .ExtendLastCol = False
             .SelectionMode = flexSelectionByRow
             .Editable = flexEDNone
             .TextMatrix(0, Conductor.Cedula) = "Identificaci�n"
             .TextMatrix(0, Conductor.Sel) = "Sel"
             .TextMatrix(0, Conductor.Nombre) = "Nombres del Conductor"
             .TextMatrix(0, Conductor.Estado) = "Estado"
             .TextMatrix(0, Conductor.Principal) = "Principal"
             .TextMatrix(0, Conductor.Placa) = "Placa"
             
             .ColWidth(Conductor.Cedula) = 1700
             .ColWidth(Conductor.Nombre) = 4000
             .ColWidth(Conductor.Estado) = 1200
             .ColWidth(Conductor.Principal) = 1200
             .ColWidth(Conductor.Modi) = 500
             .FocusRect = flexFocusRaised
             .ColHidden(Conductor.Sel) = True
             .ColHidden(Conductor.Modi) = True
             .ColComboList(Conductor.Cedula) = "..."
             
             .ColComboList(Conductor.Estado) = "#A;Activo|#I;Inactivo"
             .ColDataType(Conductor.Principal) = flexDTBoolean
             .ColDataType(Conductor.Sel) = flexDTBoolean
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .Editable = flexEDNone
        End With
        
        With FGPropietarios
             .Rows = 1
             .Cols = 9
             .FontName = "Arial"
             .FontSize = 8
             .Font.Bold = False
             .BackColor = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = vColorFixed
             .BackColorSel = &HA8753C
             .BackColorBkg = &H80000018
             .TextStyleFixed = flexTextFlat
             .ForeColor = &HC00000
             .GridLines = flexGridFlat
             .FocusRect = flexFocusRaised
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .FixedCols = 0
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .Editable = flexEDKbd
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .AllowUserResizing = flexResizeBoth
             .ExtendLastCol = False
             .SelectionMode = flexSelectionByRow
             .Editable = flexEDNone
             .TextMatrix(0, Propietario.Cedula) = "Identificaci�n"
             .TextMatrix(0, Propietario.Sel) = "Sel"
             .TextMatrix(0, Propietario.Nombre) = "Nombres del Propietario"
             .TextMatrix(0, Propietario.Estado) = "Estado"
             .TextMatrix(0, Propietario.Porcentaje) = "Porcentaje"
             .TextMatrix(0, Propietario.Principal) = "Principal"
             .TextMatrix(0, Propietario.ResponRunt) = "Resp.Runt"
             .TextMatrix(0, Propietario.Placa) = "Placa"
             
             .ColWidth(Propietario.Cedula) = 1500
             .ColWidth(Propietario.Nombre) = 4000
             .ColWidth(Propietario.Estado) = 800
             .ColWidth(Propietario.Porcentaje) = 1000
             .ColWidth(Propietario.Principal) = 1000
             .ColWidth(Propietario.ResponRunt) = 1000
             .ColWidth(Propietario.Modi) = 500
             .FocusRect = flexFocusRaised
             .ColHidden(Propietario.Sel) = True
             .ColHidden(Propietario.Modi) = True
             .ColComboList(Propietario.Cedula) = "..."
             .ColComboList(Propietario.Estado) = "#A;Activo|#I;Inactivo"
             .ColDataType(Propietario.Sel) = flexDTBoolean
             .ColDataType(Propietario.Principal) = flexDTBoolean
             .ColDataType(Propietario.ResponRunt) = flexDTBoolean
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .Editable = flexEDNone
        End With
        
        With Me.FGexportar
             .Rows = 1
             .Cols = 50
             .FontName = "Arial"
             .FontSize = 8
             .Font.Bold = False
             .BackColor = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = vColorFixed
             .ForeColor = vbBlack
        End With
     Exit Sub
Salida:      Call MensajeAdministrador
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.Exportar, vbResBitmap)
        CmdBuscar.Picture = LoadResPicture(BotonSeleccionado.Consultar, vbResBitmap)
        Call BarraOperaciones.Estado_Botones
End Sub

Private Sub Form_Resize()
        On Error Resume Next
        If Screen.Width >= 15360 And Screen.Height >= 10800 Then
              F = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0)
              Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0)
               
              Me.Move F + AnchoMenu, Y + TopMenu, Me.Width, Me.Height
        End If
End Sub


Private Sub PrintSelection(FG As VSFlexGrid)
        'save current settings
        Dim hl%, tr&, lc&, rd%
        hl = FG.HighLight: tr = FG.TopRow: lc = FG.LeftCol: rd = FG.Redraw
        FG.HighLight = 0
        FG.GridLines = flexGridNone
        FG.Redraw = flexRDNone
        FG.ForeColor = &H0&
        
        FG.TopRow = FG.FixedRows
        FG.LeftCol = FG.FixedCols
       'print visible area
        FG.PrintGrid , CobMaestro.Text
    
        FG.TopRow = tr: FG.LeftCol = lc: FG.HighLight = hl
        FG.Redraw = rd
        FG.ForeColor = &H8000000D
        FG.GridLines = flexGridFlat

  End Sub

Private Sub Imprimir_Informe()
        With FGvehiculos
             On Error GoTo Imprime
             Dim Mh As String, GF As String, Iw As String
             If .Rows - 1 < 2 Then MsgBox "No hay informaci�n para imprimir", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
                                      
             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             
             Sql = "INSERT INTO INFORME(InfDesc) VALUES ('')"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             
             M = -1: Ax = Empty
             For i = 1 To .Rows - 1
                   A = Mid(.TextMatrix(i, Datos.NoRegs), 1, 1)
                                     
                   Sql = "INSERT INTO INFORME(InfNit,InfDesc,InfDes2,InfDes3,InfTdoc,InfCent) VALUES (" & Trim(.TextMatrix(i, Datos.Placa)) & ",'" & Trim(.TextMatrix(i, Datos.Descripcion)) & "','" & Trim(.TextMatrix(i, Datos.NoPuestos)) & "','" & .TextMatrix(i, Datos.Clase) & "','" & A & "','" & .TextMatrix(i, Datos.NumeroInt) & "')"
                   If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             Next i
             Iw = "Anexos.rpt"
             
             Call Transaccion(BDCommit)
             
             Jreporte.DiscardSavedData = True
             Jreporte.Formulas(1) = "Empresa= '" & Sigl & "'"
             X = Inf + Iw: Jreporte.ReportFileName = X
             Jreporte.Destination = crptToWindow
             Jreporte.WindowTitle = "LISTADO DE TERCEROS"
             Jreporte.WindowMinButton = True
             Jreporte.WindowMaxButton = True
             Jreporte.WindowState = crptMaximized
             Jreporte.PrintReport
        End With
        Exit Sub
Imprime: MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atenci�n"
End Sub


Private Sub PlaCentroCosto_BusquedaCodigo(Estado As DianaPlantilla.ResEstado)
        If PlaCentroCosto.Text <> Empty Then
             FGvehiculos.Rows = 2
             FGconductores.Rows = 1: FGPropietarios.Rows = 1
             vValidarCentro = False
             X = Mid(PlaCentroCosto.Text, 1, 2)
             Y = Mid(PlaCentroCosto.Text, 3, 6)
             Sql = "SELECT * FROM SCENTROS " & _
                   "WHERE (SceEmpr = '" & Empresa & "' AND SceCent = '" & X & "' AND SceCodi = '" & Y & "') "
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                If Mid(PlaCentroCosto.Text, 5, 4) <> "0000" Then
                    PlaCentroCosto.TextDescripcion = Trim(rdoRs!scenomb)
                    Estado = EstOk
                    'TxtConIdStCentroActual.Text = Mid(PlaCentroCosto.Text, 1, 2)
                    'TxtConIdStSubcentroActual.Text = Mid(PlaCentroCosto.Text, 3, 6)
                Else
                    MsgBox "Se�or usuario debe seleccionar un centro de costo de movimientos", vbInformation + vbOKOnly, "Atencion"
                    vValidarCentro = True
                    Estado = EstCancel
                End If
             Else
                  MsgBox "El codigo digitado no existe", vbInformation + vbOKOnly, "Atenci�n"
                  Estado = EstCancel
             End If
        End If
End Sub

Private Sub PlaCentroCosto_BusquedaInformacion(Estado As DianaPlantilla.ResEstado)
        vValidarCentro = False
        Set Informe = New ColInfo
        Informe.Add "SceCent", "COD", 800
        Informe.Add "CenNomb", "NOMBRE DEL CENTROS", 2500
        Informe.Add "SceCodi", "COD", 800
        Informe.Add "SceNomb", "NOMBRE DEL SUBCENTRO", 3000
        Sql = "SELECT A.CenNomb,B.* FROM CENTROSC A " & _
              "INNER JOIN SCENTROS B ON (A.CenEmpr  = B.SceEmpr AND A.CenCodi = B.SceCent) " & _
              "WHERE CenEmpr = '" & Empresa & "' ORDER BY CenCodi,SceCodi"
        If Buscar_Info(Informe, Sql) = BDOk Then
            FGvehiculos.Rows = 2
            FGconductores.Rows = 1: FGPropietarios.Rows = 1
            If Mid(Informe.Item("SceCodi").Valor, 3, 4) <> "0000" Then
                PlaCentroCosto.Text = Trim(Informe.Item("SceCent").Valor + Informe.Item("SceCodi").Valor)
                TxtVehIdStCentroCosto.Text = Mid(PlaCentroCosto.Text, 1, 2)
                TxtVehIdStSubcentroCosto.Text = Mid(PlaCentroCosto.Text, 3, 6)
                If BusVehIdStMarcaVehiculo.Enabled = True Then BusVehIdStMarcaVehiculo.SetFocus
                Estado = EstOk
            Else
                vValidarCentro = True
                MsgBox "Se�or usuario debe seleccionar un centro de costo de movimientos", vbInformation + vbOKOnly, "Atencion"
                PlaCentroCosto.Text = Empty
                TxtVehIdStCentroCosto.Text = Empty
                TxtVehIdStSubcentroCosto.Text = Empty
                Estado = EstCancel
            End If
        End If
End Sub

Private Sub TxtPlaca_LostFocus()
        FGvehiculos.Rows = 2
        FGconductores.Rows = 1: FGPropietarios.Rows = 1
End Sub
