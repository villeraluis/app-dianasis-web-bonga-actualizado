VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{1C0489F8-9EFD-423D-887A-315387F18C8F}#1.0#0"; "vsflex8l.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmDetalleListadoEgresoBanco 
   BackColor       =   &H00C0C0FF&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   7200
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11910
   Icon            =   "FrmDetalleListadoEgresoBanco.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7200
   ScaleWidth      =   11910
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox TxtNomComprobante 
      Enabled         =   0   'False
      Height          =   285
      Left            =   675
      TabIndex        =   42
      Top             =   6525
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.TextBox TxtTMovimiento 
      Enabled         =   0   'False
      Height          =   285
      Left            =   180
      TabIndex        =   40
      Top             =   6525
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.TextBox TxtTipo 
      Enabled         =   0   'False
      Height          =   285
      Left            =   765
      TabIndex        =   39
      Top             =   6705
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.TextBox TxtSwCartera 
      Enabled         =   0   'False
      Height          =   285
      Left            =   180
      TabIndex        =   38
      Top             =   6840
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.TextBox TxtTipoEgreso 
      Height          =   285
      Left            =   7425
      TabIndex        =   36
      Top             =   5400
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.TextBox TxtFormato 
      Height          =   285
      Left            =   4230
      TabIndex        =   34
      Top             =   5580
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.TextBox TxtSwCheque 
      Height          =   285
      Left            =   3015
      TabIndex        =   31
      Text            =   "SwCheque"
      Top             =   5535
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.TextBox TxtPprInExcedentes 
      Enabled         =   0   'False
      Height          =   285
      Left            =   4860
      TabIndex        =   27
      Top             =   5220
      Visible         =   0   'False
      Width           =   1770
   End
   Begin VB.CommandButton CmdImprimir 
      Height          =   375
      Left            =   10440
      Picture         =   "FrmDetalleListadoEgresoBanco.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   6705
      Width           =   1350
   End
   Begin VB.TextBox TxtPprInValor 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1170
      TabIndex        =   12
      Top             =   5175
      Visible         =   0   'False
      Width           =   1770
   End
   Begin VB.TextBox TxtPprInRetefuente 
      Enabled         =   0   'False
      Height          =   285
      Left            =   3015
      TabIndex        =   11
      Top             =   5220
      Visible         =   0   'False
      Width           =   1770
   End
   Begin VB.TextBox TxtPprInValorDescuento 
      Height          =   285
      Left            =   1170
      TabIndex        =   10
      Top             =   5535
      Visible         =   0   'False
      Width           =   1770
   End
   Begin VB.Frame Frame1 
      Height          =   1455
      Left            =   135
      TabIndex        =   1
      Top             =   45
      Width           =   11670
      Begin VB.Frame Frame2 
         Height          =   960
         Left            =   9135
         TabIndex        =   24
         Top             =   270
         Width           =   2445
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "TOTAL EGRESO"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   495
            TabIndex        =   26
            Top             =   180
            Width           =   1515
         End
         Begin VB.Label LblTotal 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C00000&
            Height          =   285
            Left            =   1125
            TabIndex        =   25
            Top             =   540
            Width           =   135
         End
      End
      Begin VB.Label LblBeneficiarioCheque 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   240
         Left            =   1440
         TabIndex        =   33
         Top             =   1125
         Width           =   4140
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ben.Cheque :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   180
         TabIndex        =   32
         Top             =   1125
         Width           =   1185
      End
      Begin VB.Label LblExcedentes 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   240
         Left            =   7515
         TabIndex        =   29
         Top             =   1125
         Width           =   105
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Vr. Excedentes:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   5985
         TabIndex        =   28
         Top             =   1125
         Width           =   1410
      End
      Begin VB.Label lblReteFuente 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   240
         Left            =   7515
         TabIndex        =   16
         Top             =   810
         Width           =   105
      End
      Begin VB.Label lblDescuento 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   240
         Left            =   7515
         TabIndex        =   15
         Top             =   495
         Width           =   105
      End
      Begin VB.Label lblValor 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   240
         Left            =   7515
         TabIndex        =   14
         Top             =   180
         Width           =   105
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Vr. Retefuente:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   5985
         TabIndex        =   13
         Top             =   810
         Width           =   1305
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Vr. Descuento:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   5985
         TabIndex        =   9
         Top             =   495
         Width           =   1305
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Valor:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   5985
         TabIndex        =   8
         Top             =   180
         Width           =   510
      End
      Begin VB.Label LblCliente 
         BackStyle       =   0  'Transparent
         Caption         =   "ANTONIO MOVILLA QUINTERO"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   240
         Left            =   1305
         TabIndex        =   7
         Top             =   810
         Width           =   4140
      End
      Begin VB.Label lblNombre 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Proveedor:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   180
         TabIndex        =   6
         Top             =   810
         Width           =   915
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   180
         TabIndex        =   5
         Top             =   495
         Width           =   600
      End
      Begin VB.Label LblFecha 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "10/20/2008"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   240
         Left            =   1305
         TabIndex        =   4
         Top             =   495
         Width           =   960
      End
      Begin VB.Label LblEgreso 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "301"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   240
         Left            =   1305
         TabIndex        =   3
         Top             =   180
         Width           =   315
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "No Egreso:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   180
         TabIndex        =   2
         Top             =   180
         Width           =   975
      End
   End
   Begin Crystal.CrystalReport EgresoReporte 
      Left            =   -180
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VSFlex8LCtl.VSFlexGrid FGMovimiento 
      Height          =   4590
      Left            =   135
      TabIndex        =   17
      Top             =   1935
      Width           =   11670
      _cx             =   20585
      _cy             =   8096
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
   Begin VSFlex8DAOCtl.VSFlexGrid FGdetalle 
      Height          =   4575
      Left            =   135
      TabIndex        =   18
      Top             =   1935
      Width           =   11670
      _cx             =   20585
      _cy             =   8070
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
   Begin VSFlex8DAOCtl.VSFlexGrid FGProveedores 
      Height          =   2250
      Left            =   1350
      TabIndex        =   35
      Top             =   6000
      Visible         =   0   'False
      Width           =   9345
      _cx             =   16484
      _cy             =   3969
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
      BackColor       =   16777152
      ForeColor       =   12632319
      BackColorFixed  =   4194304
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483647
      ForeColorSel    =   -2147483635
      BackColorBkg    =   8421504
      BackColorAlternate=   16777152
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
   Begin VSFlex8DAOCtl.VSFlexGrid FGInforme 
      Height          =   1590
      Left            =   6120
      TabIndex        =   37
      Top             =   6075
      Visible         =   0   'False
      Width           =   6780
      _cx             =   11959
      _cy             =   2805
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
   Begin VSFlex8LCtl.VSFlexGrid FGMovimientos2 
      Height          =   1440
      Left            =   9990
      TabIndex        =   41
      Top             =   3420
      Visible         =   0   'False
      Width           =   11670
      _cx             =   20585
      _cy             =   2540
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
   Begin VB.Label lblCuentaBanco 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Cuenta Banco"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   240
      Left            =   3735
      TabIndex        =   30
      Top             =   5805
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.Label LblDescripcion 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Descripcion del Egreso"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   240
      Left            =   4455
      TabIndex        =   23
      Top             =   4680
      Visible         =   0   'False
      Width           =   2460
   End
   Begin VB.Label LblCheque 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "No. Cheque"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   240
      Left            =   3060
      TabIndex        =   22
      Top             =   4725
      Visible         =   0   'False
      Width           =   1230
   End
   Begin VB.Label LblBanco 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Nombre del Banco"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   240
      Left            =   90
      TabIndex        =   21
      Top             =   4950
      Visible         =   0   'False
      Width           =   1950
   End
   Begin VB.Label LblCedula 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "cedula del Cliente"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   240
      Left            =   720
      TabIndex        =   19
      Top             =   4680
      Visible         =   0   'False
      Width           =   1890
   End
   Begin VB.Label Lbltitulo 
      BackColor       =   &H00A8753C&
      Caption         =   "      Detalle de Egreso de Bancos"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   135
      TabIndex        =   0
      Top             =   1665
      Width           =   11670
   End
End
Attribute VB_Name = "FrmDetalleListadoEgresoBanco"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Entrada As Boolean, Saldo As Variant, Numeros As New clsNumeros, Habitacion As String, FacturaSin As String, FacFolio As Boolean
Dim ValorAnticipo, vRegistro As String, vUsuarioFac As String, vEntrada As Boolean
Dim vTotal As Variant
Private Enum Detalle
        NumE
        Cod
        Factura
        DescriPago
        Fecha
        Valor
        Proveedor
        Nombre
        Centro
End Enum

Private Enum Men
        Item = 0
        Cuenta = 1
        NombreCta = 2
        Desc = 3
        ValorDeb = 4
        ValorCre = 5
        NumeroEgre = 6
End Enum
Private Enum Men2
        Cuenta
        Centro
        Nit
        Descripcion
        Debito
        Credito
End Enum
Private Enum Prov
        Proveedor
        Nombre
        vPago
End Enum


Private Sub CmdImprimir_Click()
        On Error GoTo Salida
        
        On Error GoTo Salida
        Dim Mh As String, GF As String, Iw As String
        
        If Trim(TxtTipo.Text) = "1" Then Call Imptimir_Recibo_Bonga: Exit Sub
        
        With FGdetalle
             Letras = Numeros.NroEnLetras(vTotal) + " PESOS"
                                          
             If Val(TxtTipoEgreso.Text) = 2 Then
                Call Totalizar_proveedores
                Call Cargar_FGInforme
                
                Call Transaccion(BDBegin)
                Sql = "DELETE FROM INFORMEEGRESOS"
                If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                                 
                With FGInforme
                    For i = 0 To .Rows - 1
                       Sql = "INSERT INTO INFORMEEGRESOS(InfDes2,infsnit,Infnomb,InfDesc,infdes3,Infdes4,infval1,infval2) " & _
                             "VALUES ('" & .TextMatrix(i, 0) & "','" & .TextMatrix(i, 1) & "','" & .TextMatrix(i, 2) & "','" & .TextMatrix(i, 3) & "'," & _
                             "'" & .TextMatrix(i, 4) & "','" & Trim(.TextMatrix(i, 5)) & "'," & vTotal & "," & Val(.TextMatrix(i, 6)) & ")"
                       If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                    Next i
                End With
                Iw = "InfEgresoBancogeneral" & Empresa & ".rpt"
                
             Else
                Call Transaccion(BDBegin)
                Sql = "DELETE FROM INFORME3"
                If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                
                If FGdetalle.Visible = True Then
                       For i = 1 To .Rows - 1
                            Sql = "INSERT INTO INFORME3(InfDesc,InfDes2,InfVal3,infdes3,infval1) " & _
                                  "VALUES ('" & .TextMatrix(i, Detalle.Fecha) & "','" & .TextMatrix(i, Detalle.Factura) & "'," & _
                                  "" & Val(.TextMatrix(i, Detalle.Valor)) & ",'" & .TextMatrix(i, Detalle.DescriPago) & "'," & vTotal & ")"
                            If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                             
                       Next i
                       If TxtFormato.Text = "1" Then
                           Iw = "InfEgresoBancoTres.rpt"
                       Else
                           Iw = "InfEgresoBanco" & Empresa & ".rpt"
                       End If
                Else
                       For i = 1 To FGMovimiento.Rows - 1
                             If FGMovimiento.TextMatrix(i, Men.Cuenta) <> Empty Then
                                   Y1 = Trim(FGMovimiento.TextMatrix(i, Men.Cuenta))
                                   Y1 = Mid(Trim(Y1) & " " & Trim(FGMovimiento.TextMatrix(i, Men.NombreCta)), 1, 60)
                                   Sql = "INSERT INTO INFORME3(InfDes2,InfDesc,InfVal3,InfVal4,infval1) " & _
                                         "VALUES ('" & Y1 & "','" & Mid(FGMovimiento.TextMatrix(i, Men.Desc), 1, 60) & "'," & _
                                         "" & Val(FGMovimiento.TextMatrix(i, Men.ValorDeb)) & "," & Val(FGMovimiento.TextMatrix(i, Men.ValorCre)) & "," & _
                                         "" & vTotal & ")"
                                  If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                             End If
                       Next i
                       If TxtFormato.Text = "1" Then
                           Iw = "InfEgresoBancoDos.rpt"
                       Else
                           Iw = "InfEgresoBancoUno" & Empresa & ".rpt"
                       End If
                End If
             End If
             Call Transaccion(BDCommit)
             
             NitEmp = "Nit: " + DatosEmpresa(0)
             Ciudad = DatosEmpresa(3) + "  -  " + DatosEmpresa(11)
             TelEmp = "Teléfono: " + DatosEmpresa(4)
             ValSubTot = lblValor.Caption
             Valdesc = lblDescuento.Caption
             ValReteFuente = lblReteFuente.Caption
             ValExcedentes = LblExcedentes.Caption
             
             If TxtSwCheque.Text = "0" Then
                 SwChe = "No.Cheque"
             Else
                 SwChe = "No.Traslado"
             End If
             
             EgresoReporte.DiscardSavedData = True
             EgresoReporte.Formulas(1) = "Letras= '" & Letras & "'"
             EgresoReporte.Formulas(2) = "Empresa= '" & DatosEmpresa(1) & "'"
             EgresoReporte.Formulas(3) = "Cedula= '" & LblCedula.Caption & "'"
             EgresoReporte.Formulas(4) = "Cliente= '" & LblCliente.Caption & "'"
             EgresoReporte.Formulas(5) = "Factura = '" & LblEgreso.Caption & "'"
             EgresoReporte.Formulas(6) = "FechaVenDia = '" & Mid(LblFecha.Caption, 1, 2) & "'"
             EgresoReporte.Formulas(7) = "FechaVenMes = '" & Mid(LblFecha.Caption, 4, 2) & "'"
             EgresoReporte.Formulas(8) = "FechaVenAno = '" & Mid(LblFecha.Caption, 7, 4) & "'"
             EgresoReporte.Formulas(9) = "Direccion = '" & LblDescripcion.Caption & "'"
             EgresoReporte.Formulas(10) = "Banco = '" & LblBanco.Caption & "'"
             EgresoReporte.Formulas(11) = "NumeroCheque= '" & LblCheque.Caption & "'"
             EgresoReporte.Formulas(12) = "TelEmpresa= '" & TelEmp & "'"
             EgresoReporte.Formulas(13) = "NitEmpresa = '" & NitEmp & "'"
             EgresoReporte.Formulas(14) = "DirEmpresa = '" & Ciudad & "'"
             EgresoReporte.Formulas(15) = "valor = '" & ValSubTot & "'"
             EgresoReporte.Formulas(16) = "descuento = '" & Valdesc & "'"
             EgresoReporte.Formulas(17) = "retencion = '" & ValReteFuente & "'"
             EgresoReporte.Formulas(18) = "excedentes = '" & ValExcedentes & "'"
             EgresoReporte.Formulas(19) = "valor2 = '" & ValSubTot & "'"
             EgresoReporte.Formulas(20) = "FechaFacDia = '" & Mid(LblFecha.Caption, 1, 2) & "'"
             EgresoReporte.Formulas(21) = "FechaFacMes = '" & Mid(LblFecha.Caption, 4, 2) & "'"
             EgresoReporte.Formulas(22) = "FechaFacAno = '" & Mid(LblFecha.Caption, 7, 4) & "'"
             EgresoReporte.Formulas(23) = "Cliente2= '" & LblBeneficiarioCheque.Caption & "'"
             EgresoReporte.Formulas(24) = "Letras2= '" & Letras & "'"
             EgresoReporte.Formulas(25) = "CtaBanco= '" & lblCuentaBanco.Caption & "'"
             If Val(TxtTipoEgreso.Text) <> 2 Then EgresoReporte.Formulas(26) = "ChequeTraslado= '" & SwChe & "'"
                          
             X = Inf + Iw: EgresoReporte.ReportFileName = X
             EgresoReporte.Destination = crptToWindow
             EgresoReporte.WindowTitle = "EGRESO DE BANCO"
             EgresoReporte.WindowMinButton = True
             EgresoReporte.WindowMaxButton = True
             EgresoReporte.WindowState = crptMaximized
'             If TxtFormato.Text = "1" Then
                 EgresoReporte.PrinterSelect
'             End If
             EgresoReporte.PrintReport
             
        End With
        Exit Sub
Salida:
        Call MensajeAdministrador("Error al imprimir el recibo de caja")
       
End Sub
Private Sub Imptimir_Recibo_Bonga()
        On Error GoTo Salida
        
        tCartera = 0: tDebito = 0: tCredito = 0
        
        Call Cargar_Registros_Contables
        
        Letras = Numeros.NroEnLetras(vTotal) + " PESOS"
        
        Call Transaccion(BDBegin)
             
        Sql = "DELETE FROM INFORMEEGRESOS"
        If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             
        If Val(TxtSwCartera.Text) = 1 Then
            'encabezado de cartera
            G = "DOCUMENTO   CEN.COS.  CONCEPTO                                         FECHA        P/A        VR.CANCELADO"
            Sql = "INSERT INTO INFORMEEGRESOS(InfDesc,InfVal2) VALUES ('" & G & "',1)"
            If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
            
            With FGdetalle
                For i = 1 To .Rows - 1
                      If Val(.TextMatrix(i, Detalle.Valor)) > 0 Then
                          Texto = Trim(.TextMatrix(i, Detalle.DescriPago)): Call Espacios_Informe(5, True): X1 = Texto
                          Texto = Trim(.TextMatrix(i, Detalle.Factura)): Call Espacios_Informe(11, True): Fa = Texto
                          If Trim(.TextMatrix(i, Detalle.Centro)) <> Empty Then
                              Texto = Trim(.TextMatrix(i, Detalle.Centro)): Call Espacios_Informe(8, True): CC = Texto
                          Else
                              Texto = "        "
                          End If
                          CC = Texto
                          If Trim(.TextMatrix(i, Detalle.DescriPago)) <> Empty Then
                              E = Trim(.TextMatrix(i, Detalle.DescriPago))
                          Else
                              E = Trim(.TextMatrix(i, Detalle.DescriPago))
                          End If
                          Texto = Trim(Mid(E, 1, 46)): Call Espacios_Informe(46, True): E = Texto
                          Texto = Trim(.TextMatrix(i, Detalle.Fecha)): Call Espacios_Informe(12, True): Fe = Texto
                          Texto = Trim(.TextMatrix(i, Detalle.Valor)): Call Separador_Numerico(True): Call Espacios_Informe(15, False): X = Texto
                          G = Fa & " " & CC & "  " & E & " " & Fe & "   " & X1 & "   " & X
                          Sql = "INSERT INTO INFORMEEGRESOS(InfDesc,InfVal2) VALUES ('" & G & "',0)"
                          If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                          tCartera = tCartera + Val(.TextMatrix(i, Detalle.Valor))
                     End If
                Next i
            End With
            Texto = Trim(tCartera): Call Separador_Numerico(True): Call Espacios_Informe(15, False)
            X = Texto
            G = "-                                                 == TOTAL CUENTAS POR PAGAR CANCELADA ==>  " & X
            Sql = "INSERT INTO INFORMEEGRESOS(InfDesc,InfVal2) VALUES ('" & G & "',1)"
            If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
            'se ingresa una linea en blanco
            Sql = "INSERT INTO INFORMEEGRESOS(InfDesc,InfVal2) VALUES (' ',0)"
            If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
        End If
        
        'encabezado contable
        G = "CUENTA     CEN.COS. CC O NIT      DESCRIPCION                                     VR.DEBITO      VR.CREDITO"
        Sql = "INSERT INTO INFORMEEGRESOS(InfDesc,InfVal2) VALUES ('" & G & "',1)"
        If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
        
        With FGMovimientos2
             For i = 1 To .Rows - 1
                Cu = Trim(.TextMatrix(i, Men2.Cuenta))
                If Trim(.TextMatrix(i, Men2.Centro)) <> Empty Then
                    Texto = Trim(.TextMatrix(i, Men2.Centro)): Call Espacios_Informe(8, True): CC = Texto
                Else
                    Texto = "        "
                End If
                CC = Texto
                If Trim(.TextMatrix(i, Men2.Nit)) <> Empty Then
                    Texto = Trim(.TextMatrix(i, Men2.Nit)): Call Espacios_Informe(12, True): S = Texto
                Else
                    S = "            "
                End If
                Texto = Trim(Mid(.TextMatrix(i, Men2.Descripcion), 1, 41)): Call Espacios_Informe(41, True) 'concepto factura
                E = Texto
                If Trim(.TextMatrix(i, Men2.Debito)) <> Empty Then
                    Texto = Trim(.TextMatrix(i, Men2.Debito)): Call Separador_Numerico(True): Call Espacios_Informe(15, False): X = Texto
                Else
                    X = "               "
                End If
                If Trim(.TextMatrix(i, Men2.Credito)) <> Empty Then
                    Texto = Trim(.TextMatrix(i, Men2.Credito)): Call Separador_Numerico(True): Call Espacios_Informe(15, False): Y = Texto
                Else
                    Y = "               "
                End If
                G = Cu & " " & CC & " " & S & "  " & E & " " & X & " " & Y
                Sql = "INSERT INTO INFORMEEGRESOS(InfDesc,InfVal2) VALUES ('" & G & "',0)"
                If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                tDebito = tDebito + Val(.TextMatrix(i, Men2.Debito))
                tCredito = tCredito + Val(.TextMatrix(i, Men2.Credito))
             Next i
        End With
        Texto = Trim(tDebito): Call Separador_Numerico(True): Call Espacios_Informe(15, False): X = Texto
        Texto = Trim(tCredito): Call Separador_Numerico(True): Call Espacios_Informe(15, False): Y = Texto
        G = "-                                                 == TOTALES CONTABLES ==>  " & X & " " & Y
        Sql = "INSERT INTO INFORMEEGRESOS(InfDesc,InfVal2) VALUES ('" & G & "',1)"
        If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
        'se ingresa una linea en blanco
        Sql = "INSERT INTO INFORMEEGRESOS(InfDesc,InfVal2) VALUES (' ',0)"
        If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             
        Iw = "InfIngresoEgresoBancoBonga" & Empresa & ".rpt"
             
             
        Call Transaccion(BDCommit)
        NitEmp = "Nit: " + DatosEmpresa(0)
        Ciudad = DatosEmpresa(3) + "  -  " + DatosEmpresa(11)
        Tel = "Teléfono: " + DatosEmpresa(4)
        ValSubTot = Empty
             
        If Val(vTotal) <> 0 Then
           Texto = vTotal: Call Separador_Numerico(True)
           ValSubTot = Texto
        End If
        
        TipoRe = Trim(TxtNomComprobante.Text)
        D = LblDescripcion.Caption
        NumChe = LblBanco.Caption & " " & lblCuentaBanco.Caption & " - No.: " & LblCheque.Caption
             
        EgresoReporte.DiscardSavedData = True
        EgresoReporte.Formulas(1) = "Letras= '" & Letras & "'"
        EgresoReporte.Formulas(2) = "Empresa= '" & DatosEmpresa(1) & "'"
        EgresoReporte.Formulas(3) = "Cedula= '" & LblCedula.Caption & "'"
        EgresoReporte.Formulas(4) = "Cliente= '" & LblCliente.Caption & "'"
        EgresoReporte.Formulas(5) = "Factura = '" & LblEgreso.Caption & "'"
        EgresoReporte.Formulas(6) = "FechaVenDia = '" & Mid(LblFecha.Caption, 1, 2) & "'"
        EgresoReporte.Formulas(7) = "FechaVenMes = '" & Mid(LblFecha.Caption, 4, 2) & "'"
        EgresoReporte.Formulas(8) = "FechaVenAno = '" & Mid(LblFecha.Caption, 7, 4) & "'"
        EgresoReporte.Formulas(9) = "Direccion = '" & D & "'"
        EgresoReporte.Formulas(10) = "TipoRecibo = '" & TipoRe & "'"
        EgresoReporte.Formulas(11) = "NumeroCheque = '" & NumChe & "'"
        EgresoReporte.Formulas(13) = "TelEmpresa= '" & Tel & "'"
        EgresoReporte.Formulas(14) = "NitEmpresa = '" & NitEmp & "'"
        EgresoReporte.Formulas(15) = "DirEmpresa = '" & Ciudad & "'"
        EgresoReporte.Formulas(16) = "valor = '" & ValSubTot & "'"
                          
        X = Inf + Iw: EgresoReporte.ReportFileName = X
        EgresoReporte.Destination = crptToWindow
        EgresoReporte.WindowTitle = "EGRESO DE BANCO"
        EgresoReporte.WindowMinButton = True
        EgresoReporte.WindowMaxButton = True
        EgresoReporte.WindowState = crptMaximized
        EgresoReporte.PrinterSelect
        EgresoReporte.PrintReport
        
        Exit Sub
Salida: Call MensajeAdministrador("Error al imprimir el Egreso")
End Sub

Private Sub CmdImprimir_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        CmdImprimir.Picture = LoadResPicture(BotonSeleccionado.ImprimirS, vbResBitmap)
End Sub

Private Sub Form_Activate()
        If vEntrada = True Then
             vEntrada = False
             Call Sumar_Registros
        End If
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
        If KeyAscii = vbKeyReturn Then
             SendKeys "{TAB}"
             KeyAscii = 0
        End If
End Sub

Private Sub Form_Load()
        vEntrada = True
        Me.BackColor = Bcolor1
        Me.Frame2.BackColor = Bcolor1
        Frame1.BackColor = Bcolor1
        Lbltitulo.BackColor = Bfcolor
        Lbltitulo.ForeColor = Fcolor1
        Lbltitulo.Font = TipoLetraTitulo: Lbltitulo.FontBold = NegLetraTitulo: Lbltitulo.FontSize = 11
        Lbltitulo.Height = 315
        Me.Caption = Trim(Titul)
        Call DGRILLA
        Call Configurar_Pantalla
        Entrada = True
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
        With FGdetalle
             .Rows = 1
             .Cols = 9
             .FontName = "Arial"
             .FontSize = 8
             .Font.Bold = False
             .BackColor = ColorGrilla
             .BackColorFixed = vbWhite
             .BackColorSel = &HA8753C
             .BackColorBkg = &H80000018
             .TextStyleFixed = flexTextFlat
             .ForeColorFixed = &HC00000
             .ForeColorFixed = vColorFixed
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
             .TextMatrix(0, Detalle.Cod) = "Código"
             .TextMatrix(0, Detalle.DescriPago) = "P/A"
             .TextMatrix(0, Detalle.Valor) = "Valor"
             .TextMatrix(0, Detalle.Fecha) = "Fecha"
             .TextMatrix(0, Detalle.Factura) = "Documento"
             .TextMatrix(0, Detalle.Proveedor) = "Proveedor"
             .TextMatrix(0, Detalle.Nombre) = "Nombre o Razón Social"
             .ColFormat(Detalle.Valor) = "#,###.##"
             .ColWidth(Detalle.DescriPago) = 1500
             .ColWidth(Detalle.Cod) = 1000
             .ColWidth(Detalle.Valor) = 1500
             .ColWidth(Detalle.Fecha) = 1300
             .ColWidth(Detalle.Factura) = 2000
             .ColWidth(Detalle.Proveedor) = 1500
             .ColWidth(Detalle.Nombre) = 4500
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .ColHidden(Detalle.NumE) = True
             .ColHidden(Detalle.Cod) = True
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
        End With
        
        With FGMovimiento
             .Rows = 1
             .Cols = 7
             .FontName = "Arial"
             .Font.Bold = False
             .BackColor = ColorGrilla
             .BackColorFixed = vbWhite
             .BackColorSel = &HA8753C
             .BackColorBkg = &H80000018
             .TextStyleFixed = flexTextFlat
             .ForeColorFixed = &HC00000
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
             .TextMatrix(0, Men.Cuenta) = "Cuenta"
             .TextMatrix(0, Men.Desc) = "Descripcion"
             .TextMatrix(0, Men.ValorCre) = "Valor Credito"
             .TextMatrix(0, Men.NombreCta) = "Nombre"
             .TextMatrix(0, NumeroEgre) = "Numero"
             .TextMatrix(0, Men.ValorDeb) = "Valor Debito"
             .ColWidth(Men.Item) = 700
             .ColWidth(Men.Desc) = 4300
             .ColWidth(Men.Cuenta) = 1400
             .ColWidth(Men.NombreCta) = 3000
             .ColWidth(Men.ValorDeb) = 1300
             .ColWidth(Men.ValorCre) = 1300
             .ColFormat(Men.ValorDeb) = "##,###.##"
             .ColFormat(Men.ValorCre) = "##,###.##"
             .ColWidth(NumeroEgre) = 1200
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = False
             .ColHidden(Men.NumeroEgre) = True
             .ColHidden(Men.Item) = True
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
              If Screen.Width >= 15360 Then
                   .ColWidth(Men.Desc) = 6500
                   .ColWidth(Men.NombreCta) = 4000
                   .ColWidth(Men.ValorDeb) = 1500
                   .ColWidth(Men.ValorCre) = 1500
              End If
        End With
                
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        CmdImprimir.Picture = LoadResPicture(BotonSeleccionado.imprimir, vbResBitmap)
End Sub

Private Sub Form_Resize()
        On Error Resume Next
        If Screen.Width >= 15360 And Screen.Height >= 10800 Then
              f = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0)
              Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0)
               
              Me.Move f + AnchoMenu, Y + TopMenu, Me.Width, Me.Height
        End If
End Sub

Private Sub Sumar_Registros()
        vTotal = Val(TxtPprInValor.Text) - Val(TxtPprInValorDescuento.Text) - Val(TxtPprInRetefuente.Text) + Val(TxtPprInExcedentes.Text)
        
        Texto = vTotal
        Call Separador_Numerico(True): LblTotal.Caption = "$ " & Texto
        
        Texto = TxtPprInValor.Text
        Call Separador_Numerico(True): lblValor.Caption = "$ " & Texto
        
        Texto = TxtPprInRetefuente.Text
        Call Separador_Numerico(True): lblReteFuente.Caption = "$ " & Texto
        
        Texto = TxtPprInValorDescuento.Text
        Call Separador_Numerico(True): lblDescuento.Caption = "$ " & Texto
        
        Texto = TxtPprInExcedentes.Text
        Call Separador_Numerico(True): LblExcedentes.Caption = "$ " & Texto
            
End Sub

Private Sub Configurar_Pantalla()
                
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        N = FGMovimiento.Left + 300
        FGMovimiento.Width = Me.Width - N
        FGdetalle.Width = Me.Width - N
        Lbltitulo.Width = Me.FGMovimiento.Width
        Frame1.Width = FGMovimiento.Width
                                              
End Sub
Private Sub Totalizar_proveedores()
        On Error GoTo Salida
        
        Dim vColProveedor As New Collection
        Set vColProveedor = Nothing
        
        With FGProveedores
             .Cols = 3: .Rows = 0
             For i = 1 To FGdetalle.Rows - 1
                 If Trim(FGdetalle.TextMatrix(i, Detalle.Proveedor)) <> Empty And Trim(FGdetalle.TextMatrix(i, Detalle.Valor)) > 0 Then
                    M = Trim(FGdetalle.TextMatrix(i, Detalle.Proveedor))
                    On Error Resume Next
                    T = "-1"
                    T = vColProveedor(M)
                    If T <> "-1" Then
                       .TextMatrix(T, Prov.vPago) = Val(.TextMatrix(T, Prov.vPago)) + Val(FGdetalle.TextMatrix(i, Detalle.Valor))
                    Else
                       .AddItem ""
                       .TextMatrix(.Rows - 1, Prov.Proveedor) = Trim(FGdetalle.TextMatrix(i, Detalle.Proveedor))
                       .TextMatrix(.Rows - 1, Prov.Nombre) = Trim(FGdetalle.TextMatrix(i, Detalle.Nombre))
                       .TextMatrix(.Rows - 1, Prov.vPago) = Val(FGdetalle.TextMatrix(i, Detalle.Valor))
                       vColProveedor.Add .Rows - 1, M
                    End If
                 End If
             Next i
             
             If .Rows > 1 Then
                 .AddItem ""
                 .TextMatrix(.Rows - 1, Prov.Nombre) = "TOTALES"
                 .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                 .Cell(flexcpFontBold, .Rows - 1, 0, .Rows - 1, .Cols - 1) = True
                 For i = 0 To FGProveedores.Rows - 2
                     .TextMatrix(.Rows - 1, Prov.vPago) = Val(.TextMatrix(.Rows - 1, Prov.vPago)) + Val(.TextMatrix(i, Prov.vPago))
                 Next i
             End If
             
        End With
        
        Exit Sub
Salida: Call MensajeAdministrador
End Sub

Private Sub Cargar_FGInforme()
        On Error GoTo Salida
        
        With FGInforme
             .Cols = 7
             .Rows = 1
             .TextMatrix(0, 2) = "                        CONSOLIDADO POR PROVEEDOR"
             .TextMatrix(0, 6) = 1
             .AddItem ""
             .TextMatrix(1, 1) = "PROVEEDOR"
             .TextMatrix(1, 2) = "NOMBRE O RAZON SOCIAL"
             .TextMatrix(1, 5) = "VALOR TOTAL"
             .TextMatrix(1, 6) = 1
             
             For i = 0 To FGProveedores.Rows - 2
                  If Val(FGProveedores.TextMatrix(i, Prov.vPago)) > 0 Then
                       .AddItem ""
                       .TextMatrix(.Rows - 1, 1) = Trim(FGProveedores.TextMatrix(i, Prov.Proveedor))
                       .TextMatrix(.Rows - 1, 2) = Trim(FGProveedores.TextMatrix(i, Prov.Nombre))
                       Texto = Trim(FGProveedores.TextMatrix(i, Prov.vPago))
                       Call Separador_Numerico(True): .TextMatrix(.Rows - 1, 5) = Texto
                       .TextMatrix(.Rows - 1, 6) = 0
                  End If
             Next i
             .AddItem ""
             .TextMatrix(.Rows - 1, 2) = "TOTAL CANCELADO"
             Texto = Trim(FGProveedores.TextMatrix(FGProveedores.Rows - 1, Prov.vPago))
             Call Separador_Numerico(True): .TextMatrix(.Rows - 1, 5) = Texto
             .TextMatrix(.Rows - 1, 6) = 1
             
             .AddItem ""
             .AddItem ""
             .TextMatrix(.Rows - 1, 2) = "                          DETALLE DE FACTURAS"
             .TextMatrix(.Rows - 1, 6) = 1
             .AddItem ""
             .TextMatrix(.Rows - 1, 0) = "FACTURA"
             .TextMatrix(.Rows - 1, 1) = "PROVEEDOR"
             .TextMatrix(.Rows - 1, 2) = "NOMBRE O RAZON SOCIAL"
             .TextMatrix(.Rows - 1, 3) = "FECHA FACT"
             .TextMatrix(.Rows - 1, 4) = "P/A"
             .TextMatrix(.Rows - 1, 5) = "VALOR TOTAL"
             .TextMatrix(.Rows - 1, 6) = 1
             
             For i = 1 To FGdetalle.Rows - 1
                  If Val(FGdetalle.TextMatrix(i, Detalle.Valor)) > 0 And Trim(FGdetalle.TextMatrix(i, Detalle.Proveedor)) <> Empty Then
                       .AddItem ""
                       .TextMatrix(.Rows - 1, 0) = Trim(FGdetalle.TextMatrix(i, Detalle.Factura))
                       .TextMatrix(.Rows - 1, 1) = Trim(FGdetalle.TextMatrix(i, Detalle.Proveedor))
                       .TextMatrix(.Rows - 1, 2) = Trim(FGdetalle.TextMatrix(i, Detalle.Nombre))
                       .TextMatrix(.Rows - 1, 3) = Trim(FGdetalle.TextMatrix(i, Detalle.Fecha))
                       .TextMatrix(.Rows - 1, 4) = Trim(FGdetalle.TextMatrix(i, Detalle.DescriPago))
                       Texto = Trim(FGdetalle.TextMatrix(i, Detalle.Valor))
                       Call Separador_Numerico(True): .TextMatrix(.Rows - 1, 5) = Texto
                       .TextMatrix(.Rows - 1, 6) = 0
                  End If
             Next i
             .AddItem ""
             .TextMatrix(.Rows - 1, 2) = "TOTAL CANCELADO"
             Texto = Trim(vTotal)
             Call Separador_Numerico(True): .TextMatrix(.Rows - 1, 5) = Texto
             .TextMatrix(.Rows - 1, 6) = 1
        End With
        
        Exit Sub
Salida: Call MensajeAdministrador
End Sub
Private Sub Cargar_Registros_Contables()
        On Error GoTo Salida
        
        With FGMovimientos2
            .Cols = 6
            .Rows = 1
            Sql = "SELECT * FROM MOVIMIENTOS " & _
                  "WHERE movempr = '" & Empresa & "' AND movcons = " & Val(TxtTMovimiento.Text) & " "
            If Buscar_Res(rdoRs, Sql) = BDOk Then
                  While Not rdoRs.EOF
                      .AddItem ""
                      .TextMatrix(.Rows - 1, Men2.Cuenta) = Trim("" & rdoRs!movcuen) & Trim("" & rdoRs!movscue) & Trim("" & rdoRs!movauxi) & Trim("" & rdoRs!movauxl)
                      .TextMatrix(.Rows - 1, Men2.Centro) = Trim("" & rdoRs!MovCent) & Trim("" & rdoRs!MovScen)
                      .TextMatrix(.Rows - 1, Men2.Nit) = Trim("" & rdoRs!MovNit)
                      .TextMatrix(.Rows - 1, Men2.Descripcion) = Trim("" & rdoRs!MovDesc)
                      If Val("" & rdoRs!MovValr) > 0 Then
                          .TextMatrix(.Rows - 1, Men2.Debito) = Val("" & rdoRs!MovValr)
                      Else
                          .TextMatrix(.Rows - 1, Men2.Credito) = Val("" & rdoRs!MovValr) * -1
                      End If
                      
                      rdoRs.MoveNext
                  Wend
            End If
        End With
        
        Exit Sub
Salida: Call MensajeAdministrador
End Sub
Private Sub Espacios_Informe(N As Long, Tipo As Boolean)
        On Error GoTo Salida
        
        X = Len(Texto)
        Z = Empty
        If X < N Then
            T = N - X
            For J = 1 To T
                 Z = Z & " "
            Next J
            If Tipo = True Then Texto = Texto & Z Else Texto = Z & Texto
        End If
        Exit Sub
Salida: Call MensajeAdministrador("Procedimiento Item No. 25")
End Sub

