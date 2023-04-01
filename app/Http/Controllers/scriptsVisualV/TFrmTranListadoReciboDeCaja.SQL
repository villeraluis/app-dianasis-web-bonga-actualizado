VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{1C0489F8-9EFD-423D-887A-315387F18C8F}#1.0#0"; "vsflex8l.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "mscomctl.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Object = "{EF47DDAB-8EF4-49C1-AAF8-18F692F4FB1C}#1.0#0"; "DianaBuscar.ocx"
Begin VB.Form FrmTranListadoReciboDeCaja 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   9405
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   12015
   Icon            =   "FrmTranListadoReciboDeCaja.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9405
   ScaleWidth      =   12015
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton CmdVerificar 
      BackColor       =   &H00C0FFFF&
      Height          =   330
      Left            =   8640
      Picture         =   "FrmTranListadoReciboDeCaja.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   44
      Top             =   3645
      Visible         =   0   'False
      Width           =   1410
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5190
      Left            =   45
      TabIndex        =   34
      Top             =   4095
      Width           =   11985
      _ExtentX        =   21140
      _ExtentY        =   9155
      _Version        =   393216
      Tabs            =   7
      TabsPerRow      =   7
      TabHeight       =   520
      TabCaption(0)   =   "General"
      TabPicture(0)   =   "FrmTranListadoReciboDeCaja.frx":6184
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "FGrecibo"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "FGagrupado"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Recaudos Gps"
      TabPicture(1)   =   "FrmTranListadoReciboDeCaja.frx":61A0
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "FGabonosGPS"
      Tab(1).Control(1)=   "FGporcentaje"
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "Recaudos Minutos"
      TabPicture(2)   =   "FrmTranListadoReciboDeCaja.frx":61BC
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "FGminutos"
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "Recaudos Velocidad"
      TabPicture(3)   =   "FrmTranListadoReciboDeCaja.frx":61D8
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "FGvelocidad"
      Tab(3).ControlCount=   1
      TabCaption(4)   =   "Recaudos por Usuarios Gps"
      TabPicture(4)   =   "FrmTranListadoReciboDeCaja.frx":61F4
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "FGusuarios"
      Tab(4).ControlCount=   1
      TabCaption(5)   =   "Medios Pagos"
      TabPicture(5)   =   "FrmTranListadoReciboDeCaja.frx":6210
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "FGmediosPagos"
      Tab(5).Control(1)=   "FGdetalleMediosPagos"
      Tab(5).ControlCount=   2
      TabCaption(6)   =   "Recaudos Cartera"
      TabPicture(6)   =   "FrmTranListadoReciboDeCaja.frx":622C
      Tab(6).ControlEnabled=   0   'False
      Tab(6).Control(0)=   "FGabonosCartera"
      Tab(6).ControlCount=   1
      Begin VSFlex8DAOCtl.VSFlexGrid FGabonosGPS 
         Height          =   4605
         Left            =   -70860
         TabIndex        =   35
         Top             =   705
         Visible         =   0   'False
         Width           =   7770
         _cx             =   13705
         _cy             =   8123
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
      Begin VSFlex8DAOCtl.VSFlexGrid FGagrupado 
         Height          =   2000
         Left            =   90
         TabIndex        =   36
         Top             =   705
         Width           =   11730
         _cx             =   20690
         _cy             =   3528
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
         Rows            =   7
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
      Begin VSFlex8DAOCtl.VSFlexGrid FGrecibo 
         Height          =   2625
         Left            =   90
         TabIndex        =   37
         Top             =   2775
         Width           =   11775
         _cx             =   20770
         _cy             =   4630
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
      Begin VSFlex8DAOCtl.VSFlexGrid FGminutos 
         Height          =   4605
         Left            =   -74910
         TabIndex        =   38
         Top             =   750
         Visible         =   0   'False
         Width           =   11730
         _cx             =   20690
         _cy             =   8123
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
      Begin VSFlex8DAOCtl.VSFlexGrid FGvelocidad 
         Height          =   4605
         Left            =   -74910
         TabIndex        =   39
         Top             =   750
         Visible         =   0   'False
         Width           =   11730
         _cx             =   20690
         _cy             =   8123
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
      Begin VSFlex8DAOCtl.VSFlexGrid FGusuarios 
         Height          =   4605
         Left            =   -74910
         TabIndex        =   40
         Top             =   750
         Visible         =   0   'False
         Width           =   11730
         _cx             =   20690
         _cy             =   8123
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
      Begin VSFlex8DAOCtl.VSFlexGrid FGporcentaje 
         Height          =   4605
         Left            =   -74910
         TabIndex        =   41
         Top             =   705
         Width           =   4000
         _cx             =   7056
         _cy             =   8123
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
         Rows            =   7
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
      Begin VSFlex8DAOCtl.VSFlexGrid FGmediosPagos 
         Height          =   1995
         Left            =   -74910
         TabIndex        =   42
         Top             =   750
         Width           =   11730
         _cx             =   20690
         _cy             =   3528
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
         Rows            =   7
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
      Begin VSFlex8DAOCtl.VSFlexGrid FGdetalleMediosPagos 
         Height          =   2625
         Left            =   -74910
         TabIndex        =   43
         Top             =   2775
         Width           =   11775
         _cx             =   20770
         _cy             =   4630
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
      Begin VSFlex8DAOCtl.VSFlexGrid FGabonosCartera 
         Height          =   2625
         Left            =   -74910
         TabIndex        =   45
         Top             =   630
         Width           =   11595
         _cx             =   20452
         _cy             =   4630
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
   End
   Begin VB.CheckBox CheAbonos 
      Caption         =   "Mostrar Abonos Gps"
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
      Left            =   8685
      TabIndex        =   33
      Top             =   3690
      Visible         =   0   'False
      Width           =   2040
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   510
      Left            =   10710
      TabIndex        =   26
      Top             =   1080
      Visible         =   0   'False
      Width           =   2130
   End
   Begin VB.CheckBox CheConsolidado 
      Caption         =   "Informe Consolidado por Conceptos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   195
      Left            =   8730
      TabIndex        =   25
      Top             =   4230
      Visible         =   0   'False
      Width           =   3390
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
      Left            =   8910
      Picture         =   "FrmTranListadoReciboDeCaja.frx":6248
      Style           =   1  'Graphical
      TabIndex        =   19
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   1800
      Width           =   1350
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGdatos 
      Height          =   1740
      Left            =   360
      TabIndex        =   17
      Top             =   6390
      Visible         =   0   'False
      Width           =   11265
      _cx             =   19870
      _cy             =   3069
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
   Begin VB.CommandButton CmdFijar 
      BackColor       =   &H00E7D6B8&
      Caption         =   "F"
      Height          =   285
      Left            =   405
      Style           =   1  'Graphical
      TabIndex        =   14
      ToolTipText     =   "Fijar Columnas"
      Top             =   4005
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
      Height          =   3345
      Left            =   360
      TabIndex        =   11
      Top             =   675
      Width           =   8205
      Begin VB.CommandButton CmdConductores 
         Height          =   360
         Left            =   7515
         Picture         =   "FrmTranListadoReciboDeCaja.frx":7D1A
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   2850
         Width           =   360
      End
      Begin VB.TextBox TxtNombreConductor 
         Height          =   285
         Left            =   3420
         Locked          =   -1  'True
         TabIndex        =   31
         Top             =   2925
         Width           =   4065
      End
      Begin VB.TextBox TxtConductores 
         Height          =   285
         Left            =   1935
         TabIndex        =   30
         Top             =   2925
         Width           =   1500
      End
      Begin VB.TextBox TxtPlaca 
         Height          =   285
         Left            =   1935
         TabIndex        =   5
         Top             =   2123
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
         Format          =   111345667
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
         Format          =   111345667
         CurrentDate     =   38681
      End
      Begin BuscarDiana.Busqueda BusPuntos 
         Height          =   405
         Left            =   1890
         TabIndex        =   4
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
         TabIndex        =   3
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
         TabIndex        =   2
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
      Begin BuscarDiana.Busqueda Busconcepto 
         Height          =   405
         Left            =   1890
         TabIndex        =   6
         Top             =   2475
         Width           =   5925
         _ExtentX        =   10451
         _ExtentY        =   714
         CodigoWidth     =   1095
         NombreWidth     =   4300
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Conductores"
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
         TabIndex        =   29
         Top             =   2970
         Width           =   1080
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Conceptos"
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
         TabIndex        =   28
         Top             =   2565
         Width           =   900
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
         Left            =   3555
         TabIndex        =   27
         Top             =   2160
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
         TabIndex        =   23
         Top             =   2160
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
         TabIndex        =   22
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
         TabIndex        =   21
         Top             =   1350
         Width           =   660
      End
      Begin VB.Label labelxx 
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
         TabIndex        =   20
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
         TabIndex        =   18
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
         TabIndex        =   16
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
         TabIndex        =   15
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
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "1"
      Height          =   285
      Index           =   0
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   7
      ToolTipText     =   "Ver a Nivel de Cuentas.."
      Top             =   3420
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "2"
      Height          =   285
      Index           =   1
      Left            =   675
      Style           =   1  'Graphical
      TabIndex        =   8
      ToolTipText     =   "Ver a Nivel de Subcuentas"
      Top             =   3420
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
            Picture         =   "FrmTranListadoReciboDeCaja.frx":82DC
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoReciboDeCaja.frx":8820
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoReciboDeCaja.frx":892C
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ProgressBar Progres 
      Height          =   240
      Left            =   6390
      TabIndex        =   10
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
      Left            =   8730
      TabIndex        =   12
      Top             =   765
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
   End
   Begin VSFlex8LCtl.VSFlexGrid FGaportes 
      Height          =   1995
      Left            =   360
      TabIndex        =   24
      Top             =   6930
      Visible         =   0   'False
      Width           =   11280
      _cx             =   19897
      _cy             =   3519
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
   Begin Crystal.CrystalReport RptMinutos 
      Left            =   10575
      Top             =   2565
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin Crystal.CrystalReport RptVelocidad 
      Left            =   10665
      Top             =   1980
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin Crystal.CrystalReport RptUsuarios 
      Left            =   10755
      Top             =   1440
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
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
      TabIndex        =   13
      Top             =   3285
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "      Listado de Recibo de Caja"
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
      TabIndex        =   9
      Top             =   230
      Width           =   12000
   End
   Begin VB.Menu Opciones 
      Caption         =   "Menu General"
      Visible         =   0   'False
      Begin VB.Menu Menux 
         Caption         =   "-"
         Index           =   0
      End
      Begin VB.Menu Menux 
         Caption         =   "Exportar Recaudos"
         Index           =   1
      End
      Begin VB.Menu Menux 
         Caption         =   "-"
         Index           =   2
      End
      Begin VB.Menu Menux 
         Caption         =   "Imprimir Recaudos"
         Index           =   3
      End
      Begin VB.Menu Menux 
         Caption         =   "-"
         Index           =   4
      End
      Begin VB.Menu Menux 
         Caption         =   "Imprimir Recaudos por Minutos"
         Index           =   5
      End
      Begin VB.Menu Menux 
         Caption         =   "-"
         Index           =   6
      End
      Begin VB.Menu Menux 
         Caption         =   "Imprimir Recaudos por Velocidad"
         Index           =   7
      End
      Begin VB.Menu Menux 
         Caption         =   "-"
         Index           =   8
      End
      Begin VB.Menu Menux 
         Caption         =   "Imprimir Recaudos por Usuarios"
         Index           =   9
      End
   End
End
Attribute VB_Name = "FrmTranListadoReciboDeCaja"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Mes As Integer, RegFor As Variant, vFiltro As String, vEmpresaVehiculo As String
Dim vColAgrupar As New Collection, vColAbonosGps As New Collection, vPorcentajeCuotaAdm As Long, vColPorcentajeAdm As New Collection
Private Enum Datos
        Numero
        Fecha
        Cuadre
        Agencia
        Punto
        CodUsuario
        Vehiculo
        VrRecibo
        VrIva
        VrTotal
        VrAnticipo
        VrPlanilla
        VrComplemento
        VrAporte
        vOtros
        VrConceptos
        NomEmpVehi
        Ruta
        Destino
        CedulaProp
        Propie
        NomCon
        CodEmpVehi
        CedCon
        CodVehi
        AporteMes
        Hora
        Estado
        NumRecaudadora
        VrDbRecaudadora
        vDfRecaudadora
        CuadreRecaudadora
        NumMandante
        VrCrMandante
        vDfMandante
        CuadreMandante
End Enum

Private Enum Recibo
        Item = 0
        Codigo = 1
        Nombre = 2
        Cantidad = 3
        Valor = 4
        PorIva = 5
        ValorIva = 6
        ValorTotal = 7
        TipoConcepto = 8
        Factura = 9
         
        
End Enum

Private Enum mGrupos
        Codigo
        Nombre
        Valor
        Anticipo
        Total
End Enum

Private Enum Abonos
        Numero
        Fecha
        Agencia
        Punto
        Vehiculo
        EmpresaVehiculo
        Propie
        NombrePropVehiculo
        PropietarioRecibe
        ClienteRecibe
        EmpresaRecibe
        PlacaRecibe
        VrMInutos
        VrVelocidad
        vResponsable
        vCuotaAdm
        vDevolucion
        PorcAdministracion
        IDEmpresaRecibe
End Enum

Private Enum vMinutos
        Sel
        CedulaPro
        NombrePro
        Vehiculo
        vRecaudo
        vCuotaAdm
        vDevolucion
        
End Enum

Private Enum vVelocidad
        Sel
        EmpresaRecibe
        Vehiculo
        CedulaPro
        NombrePro
        VrVelocidad
                
End Enum


Private Enum RespRecaudo
        Cedula
        NombreCompleto
        vRecaudo
        PorRecaudo
        vPropina
End Enum

Private Enum PorcentajeAdm
        IDnovedad
        IDempresa
        IDpropietario
        IdVehiculo
        vporcentajeAdm
End Enum

Private Enum MediosP
        Numero
        Fecha
        Agencia
        Punto
        IdMediopago
        NombreMedio
        VrTotal
        Cantidad
        Vehiculo
        NomEmpVehi
        CedulaProp
        Propie
        CedCon
        NomCon
        VrBase
        Banco
        NumCheque
        Referencia
        FechaMedio
        CodUsuario
        Hora
        Estado
          
End Enum

Private Enum PagosCartera
        Numero
        Fecha
        Agencia
        Punto
        Vehiculo
        EmpresaVehiculo
        Propie
        NombrePropVehiculo
        VrAbono
        vResponsable
End Enum



Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
                       
        SSTab1.Height = Me.Height - SSTab1.Top - 400
        SSTab1.Width = Me.Width - Me.SSTab1.Left - 100
        
        FGporcentaje.Left = 90: FGabonosGps.Top = 405
        FGabonosGps.Left = 4140: FGabonosGps.Top = 405
        FGminutos.Left = 90: FGminutos.Top = 405
        FGvelocidad.Left = 90: FGvelocidad.Top = 405
        FGrecibo.Left = 90: FGrecibo.Top = 2475
        FGusuarios.Left = 90: FGusuarios.Top = 405
        FGagrupado.Left = 90: FGagrupado.Top = 405
        FGabonosCartera.Left = 90: FGabonosCartera.Top = 405
        
        
        FGagrupado.Width = SSTab1.Width - FGagrupado.Left - 200
        FGrecibo.Width = SSTab1.Width - FGrecibo.Left - 200
        FGrecibo.Height = SSTab1.Height - FGrecibo.Top - 200
        
        FGabonosGps.Width = SSTab1.Width - FGabonosGps.Left - 200
        FGabonosGps.Height = SSTab1.Height - FGabonosGps.Top - 200
        
        FGminutos.Width = SSTab1.Width - FGminutos.Left - 200
        FGminutos.Height = SSTab1.Height - FGminutos.Top - 200
        
        FGvelocidad.Width = SSTab1.Width - FGvelocidad.Left - 200
        FGvelocidad.Height = SSTab1.Height - FGvelocidad.Top - 200
        
        FGusuarios.Width = SSTab1.Width - FGusuarios.Left - 200
        FGusuarios.Height = SSTab1.Height - FGusuarios.Top - 200
        
        FGporcentaje.Height = SSTab1.Height - FGporcentaje.Top - 200
        
        FGdetalleMediosPagos.Left = 90: FGdetalleMediosPagos.Top = 2475
        FGmediosPagos.Left = 90: FGmediosPagos.Top = 405
        
        FGmediosPagos.Width = SSTab1.Width - FGmediosPagos.Left - 200
        FGdetalleMediosPagos.Width = SSTab1.Width - FGdetalleMediosPagos.Left - 200
        FGdetalleMediosPagos.Height = SSTab1.Height - FGdetalleMediosPagos.Top - 200
        
        
        FGabonosCartera.Width = SSTab1.Width - FGabonosCartera.Left - 200
        FGabonosCartera.Height = SSTab1.Height - FGabonosCartera.Top - 200
                                                       
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        On Error GoTo Salida
                
        With FGrecibo
              Dim vFiltroConcepto As String
              If Permisos(3) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
              Progres.value = 1: Progres.Min = 1
              Progres.Max = 10
              vFiltro = Empty
                                        
              vFiltroConcepto = Empty

              Progres.Visible = True: Progres.value = Progres.value + 1
              If DTfechaI.value > DTfechaF.value Then MsgBox "Seleccione bien el intervalo de fecha", vbExclamation + vbOKOnly, "Atenci�n": DTfechaI.SetFocus: Exit Sub
              If Trim(BusResponsables.Text) <> Empty Then vFiltro = " AND RcdStUsuario = '" & Trim(BusResponsables.Text) & "'"
              If Trim(BusAgencias.Text) <> Empty Then vFiltro = vFiltro & " AND RcdIdStAgencia = '" & Trim(BusAgencias.Text) & "'"
              If Trim(BusPuntos.Text) <> Empty Then vFiltro = vFiltro & " AND RcdIdStPuntoRecaudo = '" & Trim(BusPuntos.Text) & "'"
              If Trim(TxtPlaca.Text) <> Empty Then
                   If vEmpresaVehiculo = Empty Then MsgBox "Se�or usuario digite la placa de forma correcta", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
                   vFiltro = vFiltro & " AND A.RcdIdStEmpresaVehiculo = '" & vEmpresaVehiculo & "' AND A.RcdIdStPlaca = '" & Trim(TxtPlaca.Text) & "'"
              End If

              If Trim(Me.Busconcepto.Text) <> Empty Then vFiltroConcepto = " AND B.MvrIdStConceptoRecaudo = '" & Busconcepto.Text & "'"
              If Trim(TxtConductores.Text) <> Empty Then
                    vFiltro = vFiltro & " AND A.RcdIdStConductor = '" & TxtConductores.Text & "' "
              End If
                                          
              A = Empty:  M = 0: B = Empty: D = Empty
              .Rows = 1
              
              FGdatos.Rows = 1: FGaportes.Rows = 1: FGagrupado.Rows = 1: Me.FGabonosGps.Rows = 1
              FGabonosGps.Visible = False: FGrecibo.Visible = True: Me.CheAbonos.value = 0
              FGabonosGps.Rows = 1: FGagrupado.Visible = True
              FGminutos.Rows = 1: FGvelocidad.Rows = 1: Me.FGvelocidad.Visible = False: Me.FGminutos.Visible = False
              FGdetalleMediosPagos.Rows = 1: FGmediosPagos.Rows = 1: FGabonosCartera.Rows = 1
              Set vColAgrupar = Nothing
              Set vColAbonosGps = Nothing
              SSTab1.Tab = 0
              
                            
              Sql = "SELECT A.*,B.*,C.CrdStDescripcion, C.CrdIdInTipoRecaudo, D.AgeStDescripcion, E.CliStNombreCliente, F.CliStNombreCliente AS NomPropietario, " & _
                    "G.empsigl, H.VehIdInNumero, I.Munnomb,R.RtpStDescripcion  FROM TRANRECAUDOS A " & _
                    "INNER JOIN TRANMOVRECAUDOS B ON (A.RcdIdStEmpresa = B.MvrIdStEmpresa AND A.RcdIdStNumRecaudo = B.MvrIdStNumRecaudo " & vFiltroConcepto & ") " & _
                    "INNER JOIN TRANCONCEPTOSRECAUDOS C ON (B.MvrIdStEmpresaVehiculo = C.CrdIdStEmpresa AND B.MvrIdStConceptoRecaudo = C.CrdIdStConceptoRecaudo) " & _
                    "INNER JOIN TRANAGENCIAS D ON (A.RcdIdStEmpresaVehiculo = D.AgeIdStEmpresa AND A.RcdIdStAgencia = D.AgeIdStAgencia) " & _
                    "INNER JOIN CLIENTES E ON (A.RcdIdStEmpresaVehiculo = E.cliempr AND A.RcdIdStPropietario = E.clinit) " & _
                    "LEFT OUTER JOIN CLIENTES F ON (A.RcdIdStEmpresaVehiculo = F.cliempr AND A.RcdIdStConductor = F.clinit) " & _
                    "LEFT OUTER JOIN TRANRUTASTRANSPORTE R ON (A.RcdIdStEmpresaVehiculo = R.RtpIdStEmpresa AND A.RcdIdInRuta = R.RtpIdInRuta) " & _
                    "INNER JOIN EMPRESAS G ON (A.RcdIdStEmpresaVehiculo = G.empcodi) " & _
                    "INNER JOIN TRANVEHICULOS H ON (A.RcdIdStEmpresaVehiculo = H.VehIdStEmpresa AND A.RcdIdStPlaca = H.VehIdStPlaca) " & _
                    "LEFT OUTER JOIN MUNICIPIO I ON (A.RcdIdInPaisDestino = I.Munpais AND A.RcdIdInDptoDestino = I.Mundpto AND A.RcdIdInMunicipioDestino = I.Muncodi) " & _
                    "WHERE (A.RcdIdStEmpresa = '" & Empresa & "' AND A.RcdIdStComprobante = '" & vParametros(10) & "' AND " & _
                        "RcdDaFecha BETWEEN '" & Format(DTfechaI.value, FormatoFecha) & "' AND '" & Format(DTfechaF.value, FormatoFecha) & "' " & _
                        "" & vFiltro & ") " & _
                    "ORDER BY RcdDaFecha,RcdIdStNumRecaudo,MvrInItem"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   FGagrupado.Redraw = flexRDNone: Me.FGrecibo.Redraw = flexRDNone
                   While Not rdoRs.EOF
                   
                         If A <> Trim(rdoRs!RcdIdStNumRecaudo) Then
                                .AddItem ""
                                .TextMatrix(.Rows - 1, Datos.Vehiculo) = Trim("" & rdoRs!RcdIdStPlaca)
                                .TextMatrix(.Rows - 1, Datos.Fecha) = Format(rdoRs!RcdDaFecha, "dd-mm-yyyy")
                                .TextMatrix(.Rows - 1, Datos.Cuadre) = Trim(rdoRs!RcdIdStConsecutivoDia)
                                .TextMatrix(.Rows - 1, Datos.Numero) = Trim("" & rdoRs!RcdIdStNumRecaudo)
                                .TextMatrix(.Rows - 1, Datos.Agencia) = Trim("" & rdoRs!AgeStDescripcion)
                                .TextMatrix(.Rows - 1, Datos.Punto) = Trim("" & rdoRs!RcdIdStPuntoRecaudo)
                                .TextMatrix(.Rows - 1, Datos.CodUsuario) = Trim("" & rdoRs!RcdStUsuario)
                                .TextMatrix(.Rows - 1, Datos.Propie) = Trim("" & rdoRs!CliStNombreCliente)
                                .TextMatrix(.Rows - 1, Datos.NomCon) = Trim("" & rdoRs!NomPropietario)
                                .TextMatrix(.Rows - 1, Datos.CedCon) = Trim("" & rdoRs!RcdIdStConductor)
                                .TextMatrix(.Rows - 1, Datos.CodEmpVehi) = Trim("" & rdoRs!RcdIdStEmpresaVehiculo)
                                .TextMatrix(.Rows - 1, Datos.NomEmpVehi) = Trim("" & rdoRs!EmpSigl)
                                .TextMatrix(.Rows - 1, Datos.CodVehi) = Trim("" & rdoRs!VehIdInNumero)
                                .TextMatrix(.Rows - 1, Datos.Destino) = Trim("" & rdoRs!Munnomb)
                                .TextMatrix(.Rows - 1, Datos.Ruta) = Trim("" & rdoRs!RtpStDescripcion)
                                .TextMatrix(.Rows - 1, Datos.CedulaProp) = Trim("" & rdoRs!RcdIdStPropietario)
                                .TextMatrix(.Rows - 1, Datos.Hora) = Format(rdoRs!RcdFechaHoraRegistro, "hh:mm:ss am/pm")
                                                                
                                .TextMatrix(.Rows - 1, Datos.Estado) = " "
                                If Trim("" & rdoRs!RcdIdStNumManual) <> Empty Then
                                    .TextMatrix(.Rows - 1, Datos.Estado) = "Recibo Manual No: " & Trim("" & rdoRs!RcdIdStNumManual)
                                End If
                                If Trim("" & rdoRs!RcdStEstado) = "A" Then
                                     .TextMatrix(.Rows - 1, Datos.VrRecibo) = Val("" & rdoRs!RcdInValorTotal)
                                     .TextMatrix(.Rows - 1, Datos.VrIva) = 0
                                     .TextMatrix(.Rows - 1, Datos.VrTotal) = Val("" & rdoRs!RcdInValorTotal)
                                     .TextMatrix(.Rows - 1, Datos.VrAporte) = Val("" & rdoRs!RcdInValorAportado)
                                     .TextMatrix(.Rows - 1, Datos.VrPlanilla) = Val("" & rdoRs!RcdInValorPlanilla)
                                     .TextMatrix(.Rows - 1, Datos.VrAnticipo) = Val("" & rdoRs!RcdInValorAnticipo)
                                     .TextMatrix(.Rows - 1, Datos.VrComplemento) = 0
                                     .TextMatrix(.Rows - 1, Datos.vOtros) = Val(.TextMatrix(.Rows - 1, Datos.VrTotal)) - Val(.TextMatrix(.Rows - 1, Datos.VrPlanilla)) - Val(.TextMatrix(.Rows - 1, Datos.VrAporte))
                                Else
                                     .TextMatrix(.Rows - 1, Datos.VrRecibo) = 0
                                     .TextMatrix(.Rows - 1, Datos.VrIva) = 0
                                     .TextMatrix(.Rows - 1, Datos.VrTotal) = 0
                                     .TextMatrix(.Rows - 1, Datos.VrAporte) = 0
                                     .TextMatrix(.Rows - 1, Datos.VrPlanilla) = 0
                                     .TextMatrix(.Rows - 1, Datos.VrAnticipo) = 0
                                     .TextMatrix(.Rows - 1, Datos.vOtros) = 0
                                     .TextMatrix(.Rows - 1, Datos.VrComplemento) = 0
                                     .TextMatrix(.Rows - 1, Datos.Estado) = "*** RECIBO ANULADO ***"
                                End If
                         End If
                         
                         
                         '------ codigo nuevo para el complemento de planilla ----------------------------
                         If Trim("" & rdoRs!MvrIdStConceptoRecaudo) = "CPL" And Trim("" & rdoRs!RcdStEstado) = "A" Then
                               .TextMatrix(.Rows - 1, Datos.VrComplemento) = Val(.TextMatrix(.Rows - 1, Datos.VrComplemento)) + Val("" & rdoRs!MvrInValorTotal)
                               .TextMatrix(.Rows - 1, Datos.vOtros) = Val(.TextMatrix(.Rows - 1, Datos.VrTotal)) - Val(.TextMatrix(.Rows - 1, Datos.VrPlanilla)) - Val(.TextMatrix(.Rows - 1, Datos.VrAporte)) - Val(.TextMatrix(.Rows - 1, Datos.VrComplemento))
                         End If
                         '--------------------------------------------------------------------------------
                         
                         
                         If Trim(rdoRs!CrdIdInTipoRecaudo) = "001" Then
                              With FGdatos
                                   .AddItem ""
                                   .TextMatrix(.Rows - 1, Recibo.Item) = Trim("" & rdoRs!MvrInItem)
                                   .TextMatrix(.Rows - 1, Recibo.Factura) = Trim("" & rdoRs!MvrIdStNumRecaudo)
                                   .TextMatrix(.Rows - 1, Recibo.Codigo) = Trim("" & rdoRs!MvrIdStConceptoRecaudo)
                                   .TextMatrix(.Rows - 1, Recibo.Nombre) = Trim("" & rdoRs!CrdStDescripcion)
                                   .TextMatrix(.Rows - 1, Recibo.TipoConcepto) = Trim("" & rdoRs!CrdIdInTipoRecaudo)
                                   .TextMatrix(.Rows - 1, Recibo.PorIva) = 0
                                   If Trim("" & rdoRs!RcdStEstado) = "A" Then
                                       .TextMatrix(.Rows - 1, Recibo.Valor) = Val("" & rdoRs!MvrInValorTotal) - Val("" & rdoRs!MvrInValorIva)
                                       .TextMatrix(.Rows - 1, Recibo.ValorIva) = Val("" & rdoRs!MvrInValorIva)
                                       .TextMatrix(.Rows - 1, Recibo.ValorTotal) = Val("" & rdoRs!MvrInValorTotal)
                                   Else
                                       .TextMatrix(.Rows - 1, Recibo.Valor) = 0
                                       .TextMatrix(.Rows - 1, Recibo.ValorIva) = 0
                                       .TextMatrix(.Rows - 1, Recibo.ValorTotal) = 0
                                   End If
                              End With
                         Else
                              With FGaportes
                                   .AddItem ""
                                   .TextMatrix(.Rows - 1, Recibo.Item) = Trim("" & rdoRs!MvrInItem)
                                   .TextMatrix(.Rows - 1, Recibo.Factura) = Trim("" & rdoRs!MvrIdStNumRecaudo)
                                   .TextMatrix(.Rows - 1, Recibo.Codigo) = Trim("" & rdoRs!MvrIdStConceptoRecaudo)
                                   .TextMatrix(.Rows - 1, Recibo.Nombre) = Trim("" & rdoRs!CrdStDescripcion)
                                   .TextMatrix(.Rows - 1, Recibo.TipoConcepto) = Trim("" & rdoRs!CrdIdInTipoRecaudo)
                                   .TextMatrix(.Rows - 1, Recibo.PorIva) = 0
                                   If Trim("" & rdoRs!RcdStEstado) = "A" Then
                                       .TextMatrix(.Rows - 1, Recibo.Valor) = Val("" & rdoRs!MvrInValorTotal) - Val("" & rdoRs!MvrInValorIva)
                                       .TextMatrix(.Rows - 1, Recibo.ValorIva) = Val("" & rdoRs!MvrInValorIva)
                                       .TextMatrix(.Rows - 1, Recibo.ValorTotal) = Val("" & rdoRs!MvrInValorTotal)
                                   Else
                                       .TextMatrix(.Rows - 1, Recibo.Valor) = 0
                                       .TextMatrix(.Rows - 1, Recibo.ValorIva) = 0
                                       .TextMatrix(.Rows - 1, Recibo.ValorTotal) = 0
                                   End If
                              End With
                         
                         End If
                         
                         If Trim("" & rdoRs!RcdStEstado) = "A" Then
                             .TextMatrix(.Rows - 1, Datos.VrConceptos) = Val("" & rdoRs!MvrInValorTotal)
                             
                             On Error Resume Next
                             X = Trim("" & rdoRs!MvrIdStConceptoRecaudo)
                             M = "-1"
                             M = vColAgrupar(X)
                             If M = "-1" Then
                                  FGagrupado.AddItem ""
                                  FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Codigo) = Trim("" & rdoRs!MvrIdStConceptoRecaudo)
                                  FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Nombre) = Trim("" & rdoRs!CrdStDescripcion)
                                  FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Valor) = Val("" & rdoRs!MvrInValorTotal)
                                  If Trim("" & rdoRs!MvrIdStConceptoRecaudo) = vParamTransporte(10) Then
                                       FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Anticipo) = Val("" & rdoRs!RcdInValorAnticipo)
                                       FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Total) = Val("" & rdoRs!MvrInValorTotal) - Val("" & rdoRs!RcdInValorAnticipo)
                                  Else
                                       FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Total) = Val("" & rdoRs!MvrInValorTotal)
                                  End If
                                  vColAgrupar.Add Me.FGagrupado.Rows - 1, X
                             Else
                                  FGagrupado.TextMatrix(M, mGrupos.Valor) = Val(FGagrupado.TextMatrix(M, mGrupos.Valor)) + Val("" & rdoRs!MvrInValorTotal)
                                  If Trim("" & rdoRs!MvrIdStConceptoRecaudo) = vParamTransporte(10) Then
                                       FGagrupado.TextMatrix(M, mGrupos.Anticipo) = Val(FGagrupado.TextMatrix(M, mGrupos.Anticipo)) + Val("" & rdoRs!RcdInValorAnticipo)
                                       FGagrupado.TextMatrix(M, mGrupos.Total) = Val(FGagrupado.TextMatrix(M, mGrupos.Total)) + Val("" & rdoRs!MvrInValorTotal) - Val("" & rdoRs!RcdInValorAnticipo)
                                  Else
                                       FGagrupado.TextMatrix(M, mGrupos.Total) = Val(FGagrupado.TextMatrix(M, mGrupos.Total)) + Val("" & rdoRs!MvrInValorTotal)
                                  End If
                             End If
                         End If
                         
                         A = Trim(rdoRs!RcdIdStNumRecaudo)
                         
                         rdoRs.MoveNext
                   Wend
              End If
              FGagrupado.Redraw = flexRDDirect: Me.FGrecibo.Redraw = flexRDDirect


              If .Rows <= 1 Then MsgBox "No hay informaci�n para mostrar", vbInformation + vbOKOnly, "Atenci�n": Progres.Visible = False:  Exit Sub
              
              
              If .Rows > 2 Then
                    .AddItem ""
                    .TextMatrix(.Rows - 1, Datos.Vehiculo) = "TOTALES"
                    .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                    .Cell(flexcpFontBold, .Rows - 1, 0, .Rows - 1, .Cols - 1) = True
                    .Cell(flexcpFontSize, .Rows - 1, 0, .Rows - 1, .Cols - 1) = 9
                    .Cell(flexcpBackColor, 1, Datos.VrTotal, .Rows - 1, Datos.VrTotal) = &HFFFFC0
                    .Cell(flexcpBackColor, 1, Datos.VrPlanilla, .Rows - 1, Datos.vOtros) = &HC0FFC0
                    .Cell(flexcpBackColor, 1, Datos.VrComplemento, .Rows - 1, Datos.VrComplemento) = &HC0E0FF
                                                            
                    For i = 1 To .Rows - 2
                        .TextMatrix(.Rows - 1, Datos.VrRecibo) = Val(.TextMatrix(.Rows - 1, Datos.VrRecibo)) + Val(.TextMatrix(i, Datos.VrRecibo))
                        .TextMatrix(.Rows - 1, Datos.VrIva) = Val(.TextMatrix(.Rows - 1, Datos.VrIva)) + Val(.TextMatrix(i, Datos.VrIva))
                        .TextMatrix(.Rows - 1, Datos.VrTotal) = Val(.TextMatrix(.Rows - 1, Datos.VrTotal)) + Val(.TextMatrix(i, Datos.VrTotal))
                        .TextMatrix(.Rows - 1, Datos.VrAnticipo) = Val(.TextMatrix(.Rows - 1, Datos.VrAnticipo)) + Val(.TextMatrix(i, Datos.VrAnticipo))
                        .TextMatrix(.Rows - 1, Datos.VrAporte) = Val(.TextMatrix(.Rows - 1, Datos.VrAporte)) + Val(.TextMatrix(i, Datos.VrAporte))
                        .TextMatrix(.Rows - 1, Datos.VrPlanilla) = Val(.TextMatrix(.Rows - 1, Datos.VrPlanilla)) + Val(.TextMatrix(i, Datos.VrPlanilla))
                        .TextMatrix(.Rows - 1, Datos.vOtros) = Val(.TextMatrix(.Rows - 1, Datos.vOtros)) + Val(.TextMatrix(i, Datos.vOtros))
                        .TextMatrix(.Rows - 1, Datos.VrComplemento) = Val(.TextMatrix(.Rows - 1, Datos.VrComplemento)) + Val(.TextMatrix(i, Datos.VrComplemento))
                        
                        .TextMatrix(.Rows - 1, Datos.VrConceptos) = Val(.TextMatrix(.Rows - 1, Datos.VrConceptos)) + Val(.TextMatrix(i, Datos.VrConceptos))
                    Next i
                    .AutoSize 0, .Cols - 1
                    .AllowUserResizing = flexResizeColumns


                    
                    
                   '--------- ABONOS DE GPS ----------------------------------------------------------------------------------------------------
                    Sql = "SELECT A.*,B.*,E.CliStNombreCliente AS NomPropietario,G.empsigl,K.empsigl AS NombreEmpresaVehiculo,M.CliStNombreCliente AS NombrePropietarioVehiculo " & _
                          "FROM TRANRECAUDOS A " & _
                          "INNER JOIN TRANABONOSCONTROLGPS B ON (A.RcdIdStEmpresa = B.AgpIdStEmpresa AND A.RcdIdStNumRecaudo = B.AgpIdStNumRecaudo) " & _
                          "INNER JOIN EMPRESAS K ON (B.AgpIdStEmpresaVehiculo = K.empcodi) " & _
                          "INNER JOIN CLIENTES M ON (B.AgpIdStEmpresaVehiculo = M.cliempr AND B.AgpIdStPropietario = M.clinit) " & _
                          "LEFT OUTER JOIN CLIENTES E ON (B.AgpIdStEmpresaVehiculoPagar = E.cliempr AND B.AgpIdStPropietarioPagar = E.clinit) " & _
                          "LEFT OUTER JOIN EMPRESAS G ON (B.AgpIdStEmpresaVehiculoPagar = G.empcodi) " & _
                          "WHERE (A.RcdIdStEmpresa = '" & Empresa & "' AND A.RcdIdStComprobante = '" & vParametros(10) & "' AND RcdStEstado= 'A' AND  " & _
                              "RcdDaFecha BETWEEN '" & Format(DTfechaI.value, FormatoFecha) & "' AND '" & Format(DTfechaF.value, FormatoFecha) & "' " & _
                              "" & vFiltro & ") " & _
                          "ORDER BY RcdDaFecha,RcdIdStNumRecaudo"
                    If Buscar_Res(rdoRs, Sql) = BDOk Then
                         FGabonosGps.Redraw = flexRDNone
                         While Not rdoRs.EOF
                               FGabonosGps.AddItem ""
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Numero) = Trim("" & rdoRs!RcdIdStNumRecaudo)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Fecha) = Trim("" & rdoRs!RcdDaFecha)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Agencia) = Trim("" & rdoRs!RcdIdStAgencia)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Punto) = Trim("" & rdoRs!RcdIdStPuntoRecaudo)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.EmpresaRecibe) = Trim("" & rdoRs!EmpSigl)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.PlacaRecibe) = Trim("" & rdoRs!AgpIdStVehiculoPagar)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.ClienteRecibe) = Trim("" & rdoRs!NomPropietario)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.PropietarioRecibe) = Trim("" & rdoRs!AgpIdStPropietarioPagar)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.VrMInutos) = Val("" & rdoRs!AgpInValorTiempo)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.VrVelocidad) = Val("" & rdoRs!AgpInValorVelocidad)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Vehiculo) = Trim("" & rdoRs!RcdIdStPlaca)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Propie) = Trim("" & rdoRs!RcdIdStPropietario)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.vResponsable) = Trim("" & rdoRs!RcdStUsuario)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.EmpresaVehiculo) = Trim("" & rdoRs!NombreEmpresaVehiculo)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.NombrePropVehiculo) = Trim("" & rdoRs!NombrePropietarioVehiculo)
                               FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.IDEmpresaRecibe) = Trim("" & rdoRs!AgpIdStEmpresaVehiculoPagar)
                                                              
                               rdoRs.MoveNext
                         Wend
                         
                         '------ RECAUDOS DIRECTOS AL VEHICULO ---------------------------------------------------
                         For i = 1 To FGdatos.Rows - 1
                               If Trim(FGdatos.TextMatrix(i, Recibo.Codigo)) = "RCTX" Or Trim(FGdatos.TextMatrix(i, Recibo.Codigo)) = "REVX" Then
                                     M1 = Trim(FGdatos.TextMatrix(i, Recibo.Factura))
                                     For J = 1 To FGrecibo.Rows - 1
                                           If M1 = Trim(FGrecibo.TextMatrix(J, Datos.Numero)) Then
                                                 FGabonosGps.AddItem ""
                                                 FGabonosGps.Cell(flexcpForeColor, FGabonosGps.Rows - 1, 0, FGabonosGps.Rows - 1, FGabonosGps.Cols - 1) = vbMagenta
                                                 FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Numero) = Trim(FGrecibo.TextMatrix(J, Datos.Numero))
                                                 FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Fecha) = Trim(FGrecibo.TextMatrix(J, Datos.Fecha))
                                                 FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Agencia) = Trim(FGrecibo.TextMatrix(J, Datos.Agencia))
                                                 FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Punto) = Trim(FGrecibo.TextMatrix(J, Datos.Punto))
                                                 FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.vResponsable) = Trim(FGrecibo.TextMatrix(J, Datos.CodUsuario))
                                                 
                                                 If Trim(FGdatos.TextMatrix(i, Recibo.Codigo)) = "RCTX" Then
                                                      FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.ClienteRecibe) = Trim(FGrecibo.TextMatrix(J, Datos.Propie))
                                                      FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.EmpresaRecibe) = Trim(FGrecibo.TextMatrix(J, Datos.NomEmpVehi))
                                                      FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.IDEmpresaRecibe) = Trim(FGrecibo.TextMatrix(J, Datos.CodEmpVehi))
                                                      FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.PlacaRecibe) = Trim(FGrecibo.TextMatrix(J, Datos.Vehiculo))
                                                      FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.PropietarioRecibe) = Trim(FGrecibo.TextMatrix(J, Datos.CedulaProp))
                                                      FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.VrMInutos) = Val(FGdatos.TextMatrix(i, Recibo.ValorTotal))
                                                 Else
                                                      FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.NombrePropVehiculo) = Trim(FGrecibo.TextMatrix(J, Datos.Propie))
                                                      FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.EmpresaVehiculo) = Trim(FGrecibo.TextMatrix(J, Datos.NomEmpVehi))
                                                      FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Propie) = Trim(FGrecibo.TextMatrix(J, Datos.CedulaProp))
                                                      FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.Vehiculo) = Trim(FGrecibo.TextMatrix(J, Datos.Vehiculo))
                                                      FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.VrVelocidad) = Val(FGdatos.TextMatrix(i, Recibo.ValorTotal))
                                                 End If
                                                 Exit For
                                           End If
                                     Next J
                               End If
                         Next i
                         
                         '----------------------------------------------------------------------------------------
                                        
                         FGabonosGps.AddItem ""
                         FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.ClienteRecibe) = "TOTALES"
                         FGabonosGps.Cell(flexcpForeColor, FGabonosGps.Rows - 1, 0, FGabonosGps.Rows - 1, FGabonosGps.Cols - 1) = vbMagenta
                         FGabonosGps.Cell(flexcpFontBold, FGabonosGps.Rows - 1, 0, FGabonosGps.Rows - 1, FGabonosGps.Cols - 1) = True
                         FGabonosGps.Cell(flexcpFontSize, FGabonosGps.Rows - 1, 0, FGabonosGps.Rows - 1, FGabonosGps.Cols - 1) = 9
                         FGabonosGps.Cell(flexcpBackColor, 1, Abonos.VrMInutos, FGabonosGps.Rows - 1, Abonos.VrVelocidad) = &HFFFFC0
                         
                         For i = 1 To FGabonosGps.Rows - 2
                             FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.VrMInutos) = Val(FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.VrMInutos)) + Val(FGabonosGps.TextMatrix(i, Abonos.VrMInutos))
                             FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.VrVelocidad) = Val(FGabonosGps.TextMatrix(FGabonosGps.Rows - 1, Abonos.VrVelocidad)) + Val(FGabonosGps.TextMatrix(i, Abonos.VrVelocidad))
                         Next i
                         FGabonosGps.AutoSize 0, FGabonosGps.Cols - 1
                         FGabonosGps.AllowUserResizing = flexResizeColumns
                         FGabonosGps.Redraw = flexRDDirect
                                 
                         
                    End If
                                        
                   '----------------------------------------------------------------------------------------------------------------------------
                    
                                       
              End If
             
              Progres.value = Progres.value + 1
              Progres.Visible = False
              If .Rows > 1 Then FGrecibo.SetFocus: FGrecibo.Select 1, Datos.Numero
              
              If Trim(Busconcepto.Text) <> Empty Then
                  For K = Datos.VrRecibo To Datos.vOtros
                       .ColHidden(K) = True
                  Next K
                  .ColHidden(Datos.VrConceptos) = False
                  FGagrupado.Rows = 1
                  FGagrupado.AddItem ""
                  FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Nombre) = Busconcepto.value
                  FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Codigo) = Busconcepto.Text
                  If Trim(Busconcepto.Text) = vParamTransporte(10) Then
                      FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Valor) = Val(FGrecibo.TextMatrix(.Rows - 1, Datos.VrConceptos))
                      FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Anticipo) = Val(FGrecibo.TextMatrix(.Rows - 1, Datos.VrAnticipo))
                      FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Total) = Val(FGrecibo.TextMatrix(.Rows - 1, Datos.VrConceptos)) - Val(FGrecibo.TextMatrix(.Rows - 1, Datos.VrAnticipo))
                      .ColHidden(Datos.VrAnticipo) = False
                  Else
                      FGagrupado.TextMatrix(FGagrupado.Rows - 1, mGrupos.Total) = Val(FGrecibo.TextMatrix(.Rows - 1, Datos.VrConceptos))
                  End If
              Else
                  For K = Datos.VrRecibo To Datos.vOtros
                        .ColHidden(K) = False
                  Next K
                  .ColHidden(Datos.VrConceptos) = True
              End If
              Call LLenar_MintosyVelocidad
              Call BuscarRecaudos_MediosPagos
              Call Buscar_RecaudosCartera
              Call Columnas_Verificacion(True)
              
        End With
        Exit Sub
Salida: Call MensajeAdministrador
FGagrupado.Redraw = flexRDDirect: Me.FGrecibo.Redraw = flexRDDirect
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        On Error GoTo Salida
       
        If Permisos(4) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        
        PopupMenu Opciones
        
        Exit Sub
Salida: Call MensajeAdministrador

End Sub
Private Sub Exportar_informe()
        On Error GoTo Salida
       
        If FGrecibo.Rows <= 1 Then MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
       
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
             FGrecibo.SaveGrid ComArchivo.FileName, flexFileExcel, 3
        End If
                
        Exit Sub
Salida: Call MensajeAdministrador

End Sub
Private Sub BusAgencias_LostFocus()
        BusPuntos.QueryBuscar
End Sub

Private Sub BusAgencias_Retorno(RowReturn As Collection, ByHelp As Boolean)
         FGrecibo.Rows = 1: FGdatos.Rows = 1: FGaportes.Rows = 1: FGagrupado.Rows = 1
         If Trim(BusAgencias.Text) <> Empty Then
            Sql = "SELECT PtrIdStPuntoRecaudo,PtrStDescripcion FROM TRANPUNTORECAUDOS WHERE PtrIdStEmpresa = '" & Empresa & "' AND PtrIdStAgencia = '" & BusAgencias.Text & "' AND " & _
                  "PtrStEstado = 'A' "
            
            BusPuntos.Sql = Sql
            BusPuntos.Enabled = True
            BusPuntos.SetFocus
                                
         End If

End Sub

Private Sub Busconcepto_LostFocus()
        FGrecibo.Rows = 1: FGdatos.Rows = 1: FGaportes.Rows = 1: FGagrupado.Rows = 1: Me.FGabonosGps.Rows = 1
        FGminutos.Rows = 1: FGusuarios.Rows = 1: FGvelocidad.Rows = 1
        FGminutos.Rows = 1: FGusuarios.Rows = 1: FGvelocidad.Rows = 1
        FGdetalleMediosPagos.Rows = 1: FGmediosPagos.Rows = 1: FGabonosCartera.Rows = 1
End Sub

Private Sub Busconcepto_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGrecibo.Rows = 1: FGdatos.Rows = 1: FGaportes.Rows = 1: FGagrupado.Rows = 1: Me.FGabonosGps.Rows = 1
        FGminutos.Rows = 1: FGusuarios.Rows = 1: FGvelocidad.Rows = 1
        FGdetalleMediosPagos.Rows = 1: FGmediosPagos.Rows = 1: FGabonosCartera.Rows = 1
End Sub



Private Sub CheAbonos_Click()
       If Me.CheAbonos.value = 1 Then
           FGabonosGps.Visible = True: FGrecibo.Visible = False
       Else
           FGabonosGps.Visible = False: FGrecibo.Visible = True
       End If
End Sub

Private Sub CmdVerificar_Click()
        On Error GoTo Salida
                       
        If Year(Me.DTfechaI.value) <> Year(Me.DTfechaF.value) Then MsgBox "Se�or usuario el intervalo debe ser dentro del mismo a�o", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        If Month(Me.DTfechaI.value) <> Month(Me.DTfechaF.value) Then MsgBox "Se�or usuario el intervalo debe ser dentro del mismo mes", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        
        If MsgBox("Se�or usuario el proceso de verificaci�n" & Chr(13) & "puede tardar unos minutos. �Desea continuar?.", vbYesNo + vbQuestion, "Atenci�n") = vbNo Then Exit Sub
                
        Progres.Max = Me.FGrecibo.Rows - 1 + 10: Progres.Min = 1: Progres.value = 1: Me.Progres.Visible = True
        Call Columnas_Verificacion(False)
        With FGrecibo
             .Cell(flexcpBackColor, 1, Datos.NumRecaudadora, .Rows - 1, Datos.CuadreMandante) = &HC0FFFF
                          
             For i = 1 To .Rows - 2
                   If Trim(.TextMatrix(i, Datos.Numero)) <> Empty Then
                        M1 = Year(Me.DTfechaI.value): M2 = Month(Me.DTfechaI.value)
                        .TextMatrix(i, Datos.VrCrMandante) = 0
                        .TextMatrix(i, Datos.CuadreMandante) = 0
                        .TextMatrix(i, Datos.VrDbRecaudadora) = 0
                        .TextMatrix(i, Datos.CuadreRecaudadora) = 0
                               
                        '------------- empresa mandante
                        Sql = "SELECT B.* FROM TMOVIMIENTO A " & _
                              "INNER JOIN MOVIMIENTOS B ON (A.tmoempr = B.movempr AND A.tmocons = B.movcons) " & _
                              "WHERE tmoempr= '" & .TextMatrix(i, Datos.CodEmpVehi) & "' AND tmoano = " & M1 & " AND tmomes = " & M2 & " AND tmocomp ='09' AND tmonume ='" & Trim(.TextMatrix(i, Datos.Numero)) & "'"
                        If Buscar_Res(rdoRs, Sql) = BDOk Then
                           While Not rdoRs.EOF
                                 .TextMatrix(i, Datos.NumMandante) = Trim("" & rdoRs!MovCons)
                                 If Trim("" & rdoRs!movcuen) = "2810" And Trim("" & rdoRs!movscue) = "15" And Trim("" & rdoRs!movauxi) = "01" Then
                                      .TextMatrix(i, Datos.VrCrMandante) = Val(.TextMatrix(i, Datos.VrCrMandante)) + (Val("" & rdoRs!MovValr) * -1)
                                 End If
                                 .TextMatrix(i, Datos.CuadreMandante) = Val(.TextMatrix(i, Datos.CuadreMandante)) + Val("" & rdoRs!MovValr)
                                 rdoRs.MoveNext
                           Wend
                        End If
                        
                        Sql = "SELECT A.tmocons,B.movvalr FROM TMOVIMIENTO A " & _
                              "INNER JOIN MOVIMIENTOS B ON (A.tmoempr = B.movempr AND A.tmocons = B.movcons) " & _
                              "WHERE tmoempr= '" & Empresa & "' AND tmoano = " & M1 & " AND tmomes = " & M2 & " AND tmocomp ='09' AND tmonume ='" & Trim(.TextMatrix(i, Datos.Numero)) & "'"
                        If Buscar_Res(rdoRs, Sql) = BDOk Then
                           While Not rdoRs.EOF
                                 .TextMatrix(i, Datos.NumRecaudadora) = Trim("" & rdoRs!TmoCons)
                                 If Val("" & rdoRs!MovValr) > 0 Then
                                     .TextMatrix(i, Datos.VrDbRecaudadora) = Val(.TextMatrix(i, Datos.VrDbRecaudadora)) + Val("" & rdoRs!MovValr)
                                 End If
                                 .TextMatrix(i, Datos.CuadreRecaudadora) = Val(.TextMatrix(i, Datos.CuadreRecaudadora)) + Val("" & rdoRs!MovValr)
                                 rdoRs.MoveNext
                           Wend
                        End If
                        
                        '---- DIFERENCIAS
                        .TextMatrix(i, Datos.vDfMandante) = Val(.TextMatrix(i, Datos.VrAporte)) - Val(.TextMatrix(i, Datos.VrCrMandante))
                        .TextMatrix(i, Datos.vDfRecaudadora) = Val(.TextMatrix(i, Datos.VrTotal)) - Val(.TextMatrix(i, Datos.VrDbRecaudadora))
                        
                        If Val(.TextMatrix(i, Datos.vDfMandante)) <> 0 Or Val(.TextMatrix(i, Datos.vDfRecaudadora)) Or Val(.TextMatrix(i, Datos.CuadreRecaudadora)) Or Val(.TextMatrix(i, Datos.CuadreMandante)) Then
                              .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = vbRed
                              .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbWhite
                        End If
                        
                        'TOTALES
                        .TextMatrix(.Rows - 1, Datos.vDfRecaudadora) = Val(.TextMatrix(.Rows - 1, Datos.vDfRecaudadora)) + Val(.TextMatrix(i, Datos.vDfRecaudadora))
                        .TextMatrix(.Rows - 1, Datos.vDfMandante) = Val(.TextMatrix(.Rows - 1, Datos.vDfMandante)) + Val(.TextMatrix(i, Datos.vDfMandante))
                        .TextMatrix(.Rows - 1, Datos.CuadreMandante) = Val(.TextMatrix(.Rows - 1, Datos.CuadreMandante)) + Val(.TextMatrix(i, Datos.CuadreMandante))
                        .TextMatrix(.Rows - 1, Datos.CuadreRecaudadora) = Val(.TextMatrix(.Rows - 1, Datos.CuadreRecaudadora)) + Val(.TextMatrix(i, Datos.CuadreRecaudadora))
                                                
                   End If
                   Progres.value = Progres.value + 1
             Next i
             Me.Progres.Visible = False
             
        End With
                 
        Exit Sub
Salida: Call MensajeAdministrador
End Sub

Private Sub Menux_Click(Index As Integer)
        On Error GoTo Salida
        Select Case Index
               Case 1: Call Exportar_informe
               Case 3: Call Imprimir_Informe
               
               Case 5 'imforme de minutos
                    Call Imprimir_Minutos
               Case 7 'Informe de Velocidad
                    Call Imprimir_Velocidad
               Case 9 'informe de usuarios
                    Call Imprimir_Usuarios
        End Select
        Exit Sub
Salida:         Call MensajeAdministrador

End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
        
        
        Select Case SSTab1.Tab
               Case 0
                    FGagrupado.Visible = True
                    FGrecibo.Visible = True
                    FGabonosGps.Visible = False
                    FGminutos.Visible = False
                    FGvelocidad.Visible = False
                    FGusuarios.Visible = False
                    FGporcentaje.Visible = False
                    FGmediosPagos.Visible = False
                    FGdetalleMediosPagos.Visible = False
                    FGabonosCartera.Visible = False
               Case 1
                    FGabonosGps.Visible = True
                    FGagrupado.Visible = False
                    FGrecibo.Visible = False
                    FGminutos.Visible = False
                    FGvelocidad.Visible = False
                    FGusuarios.Visible = False
                    FGporcentaje.Visible = True
                    FGmediosPagos.Visible = False
                    FGdetalleMediosPagos.Visible = False
                    FGabonosCartera.Visible = False
               Case 2
                    FGagrupado.Visible = False
                    FGrecibo.Visible = False
                    FGabonosGps.Visible = False
                    FGminutos.Visible = True
                    FGvelocidad.Visible = False
                    FGusuarios.Visible = False
                    FGporcentaje.Visible = False
                    FGmediosPagos.Visible = False
                    FGdetalleMediosPagos.Visible = False
                    FGabonosCartera.Visible = False
               Case 3
                    FGagrupado.Visible = False
                    FGrecibo.Visible = False
                    FGabonosGps.Visible = False
                    FGminutos.Visible = False
                    FGvelocidad.Visible = True
                    FGusuarios.Visible = False
                    FGporcentaje.Visible = False
                    FGmediosPagos.Visible = False
                    FGdetalleMediosPagos.Visible = False
                    FGabonosCartera.Visible = False
               Case 4
                    FGagrupado.Visible = False
                    FGrecibo.Visible = False
                    FGabonosGps.Visible = False
                    FGminutos.Visible = False
                    FGvelocidad.Visible = False
                    FGusuarios.Visible = True
                    FGporcentaje.Visible = False
                    FGmediosPagos.Visible = False
                    FGdetalleMediosPagos.Visible = False
                    FGabonosCartera.Visible = False
               Case 5
                    FGagrupado.Visible = False
                    FGrecibo.Visible = False
                    FGabonosGps.Visible = False
                    FGminutos.Visible = False
                    FGvelocidad.Visible = False
                    FGusuarios.Visible = False
                    FGporcentaje.Visible = False
                    FGmediosPagos.Visible = True
                    FGdetalleMediosPagos.Visible = True
                    FGabonosCartera.Visible = False
               Case 6
                    FGagrupado.Visible = False
                    FGrecibo.Visible = False
                    FGabonosGps.Visible = False
                    FGminutos.Visible = False
                    FGvelocidad.Visible = False
                    FGusuarios.Visible = False
                    FGporcentaje.Visible = False
                    FGmediosPagos.Visible = True
                    FGdetalleMediosPagos.Visible = False
                    FGabonosCartera.Visible = True
        End Select
End Sub

Private Sub TxtConductores_LostFocus()
        FGrecibo.Rows = 1: FGdatos.Rows = 1: FGaportes.Rows = 1: FGagrupado.Rows = 1
        TxtNombreConductor.Text = Empty
        
        If Trim(TxtConductores.Text) <> Empty Then
            If Trim(TxtPlaca.Text) <> Empty Then
                 Sql = "SELECT DISTINCT VcdIdStConductor,CliStNombreCliente FROM TRANVEHICULOCONDUCTOR A " & _
                       "INNER JOIN CLIENTES B ON (A.VcdIdStEmpresa = B.CliEmpr AND A.VcdIdStConductor = B.CliNit) " & _
                       "WHERE (A.VcdIdStEmpresa = '" & vEmpresaVehiculo & "' AND VcdIdStPlacaVehiculo = '" & TxtPlaca.Text & "' AND VcdIdStConductor = '" & Me.TxtConductores.Text & "')"
            Else
                 Sql = "SELECT DISTINCT VcdIdStConductor,CliStNombreCliente FROM TRANVEHICULOCONDUCTOR A " & _
                       "INNER JOIN CLIENTES B ON (A.VcdIdStEmpresa = B.CliEmpr AND A.VcdIdStConductor = B.CliNit) " & _
                       "WHERE VcdIdStConductor = '" & Me.TxtConductores.Text & "'"
            End If
            If Buscar_Res(rdoRs, Sql) = BDOk Then
                 TxtConductores.Text = Trim(rdoRs!VcdIdStConductor)
                 TxtNombreConductor.Text = Trim(rdoRs!CliStNombreCliente)
            Else
                 MsgBox "El conductor digitado no existe", vbInformation + vbOKOnly, "Atenci�n"
                 TxtConductores.Text = Empty
                 Me.TxtNombreConductor.Text = Empty
            End If
            
        End If
End Sub

Private Sub TxtConductores_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGrecibo.Rows = 1: FGdatos.Rows = 1: FGaportes.Rows = 1: FGagrupado.Rows = 1
End Sub

Private Sub BusPuntos_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGrecibo.Rows = 1: FGdatos.Rows = 1: FGaportes.Rows = 1: FGagrupado.Rows = 1: Me.FGabonosGps.Rows = 1
        FGminutos.Rows = 1: FGusuarios.Rows = 1: FGvelocidad.Rows = 1
        FGdetalleMediosPagos.Rows = 1: FGmediosPagos.Rows = 1: FGabonosCartera.Rows = 1
End Sub

Private Sub BusResponsables_Retorno(RowReturn As Collection, ByHelp As Boolean)
        FGrecibo.Rows = 1: FGdatos.Rows = 1: FGaportes.Rows = 1: FGagrupado.Rows = 1: Me.FGabonosGps.Rows = 1
        FGminutos.Rows = 1: FGusuarios.Rows = 1: FGvelocidad.Rows = 1
        FGdetalleMediosPagos.Rows = 1: FGmediosPagos.Rows = 1: FGabonosCartera.Rows = 1
End Sub

Private Sub CmdConductores_Click()
        On Error GoTo Salida
        If Trim(TxtPlaca.Text) <> Empty Then
             Sql = "SELECT DISTINCT VcdIdStConductor,CliStNombreCliente FROM TRANVEHICULOCONDUCTOR A " & _
                   "INNER JOIN CLIENTES B ON (A.VcdIdStEmpresa = B.CliEmpr AND A.VcdIdStConductor = B.CliNit) " & _
                   "WHERE (A.VcdIdStEmpresa = '" & vEmpresaVehiculo & "' AND VcdIdStPlacaVehiculo = '" & TxtPlaca.Text & "')"
        Else
             Sql = "SELECT DISTINCT VcdIdStConductor,CliStNombreCliente FROM TRANVEHICULOCONDUCTOR A " & _
                   "INNER JOIN CLIENTES B ON (A.VcdIdStEmpresa = B.CliEmpr AND A.VcdIdStConductor = B.CliNit) "
        End If
        
        Set Informe = New ColInfo
        Informe.Add "VcdIdStConductor", "CEDULA", 1200
        Informe.Add "CliStNombreCliente", "NOMBRE DEL CONDUCTOR", 3500
        If Buscar_Info(Informe, Sql) = BDOk Then
             TxtConductores.Text = Trim(Informe.Item("VcdIdStConductor").Valor)
             TxtNombreConductor.Text = Trim(Informe.Item("CliStNombreCliente").Valor)
        End If
        
        Exit Sub
Salida: Call MensajeAdministrador
                
End Sub

Private Sub CmdFijar_Click()
        If CmdFijar.Caption = "F" Then
             CmdFijar.Caption = "V": FGexistencias.FixedCols = 3
        Else
             FGexistencias.FixedCols = 0: CmdFijar.Caption = "F"
        End If
End Sub

Private Sub CmdNivel_Click(Index As Integer)
            With FGexistencias
                Select Case Index
                       Case 0
                            .Outline (4)
                            .Outline (3)
                            .Outline (2)
                            .Outline (1)
                       Case 1
                            .Outline (4)
                            .Outline (3)
                            .Outline (2)
                       Case 2
                           .Outline (3)
                           .Outline (4)
                           .Outline (5)
                       Case 3
                           .Outline (5)
                           .Outline (6)
                           .Outline (8)
                           
                End Select
           
           End With
End Sub

Private Sub Cmdplano_Click()
        On Error GoTo Mt
        If FGrecibo.Rows <= 1 Then MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        ComArchivo.CancelError = False
        
            
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
              Select Case SSTab1.Tab
                     Case 0
                           If MsgBox("Desea exportar el movimiento consolidado", vbQuestion + vbYesNo, "Atenci�n") = vbYes Then M1 = 1 Else M1 = 0
                           If M1 = 0 Then
                               FGrecibo.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                           Else
                                FGagrupado.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                           End If
                     Case 1
                           FGabonosGps.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                     Case 2
                           FGminutos.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                     Case 3
                           FGvelocidad.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                     Case 4
                           FGusuarios.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                     Case 5
                          If MsgBox("Desea exportar el movimiento consolidado", vbQuestion + vbYesNo, "Atenci�n") = vbYes Then M1 = 1 Else M1 = 0
                          If M1 = 0 Then
                              FGdetalleMediosPagos.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                          Else
                              FGmediosPagos.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                          End If
                     Case 6
                          FGabonosCartera.SaveGrid ComArchivo.FileName, flexFileExcel, 3
              End Select
        End If
                
        Exit Sub
Mt: MsgBox "Consultar con el Adm. del Sistema", vbCritical + vbOKOnly, "Atenci�n"

End Sub

Private Sub Cmdplano_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.ExportarS, vbResBitmap)
End Sub

Private Sub Command1_Click()
        On Error GoTo Salida
        
        
        If FGrecibo.Rows - 1 <= 1 Then MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
            FGagrupado.SaveGrid ComArchivo.FileName, flexFileExcel, 3
             
        End If
        Exit Sub



        
        Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.PrinterDefault = True
        ComArchivo.Flags = cdlPDReturnDC + cdlPDNoPageNums
        ComArchivo.ShowPrinter
        ComArchivo.FontName = "Consolas"
        Printer.Print "pruebas de datos"
        Printer.EndDoc
         
    
        Exit Sub
Salida:         Call MensajeAdministrador
End Sub

Private Sub DTfechaF_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaF_LostFocus()
        FGrecibo.Rows = 1: FGdatos.Rows = 1: FGaportes.Rows = 1: FGagrupado.Rows = 1: Me.FGabonosGps.Rows = 1
        FGminutos.Rows = 1: FGusuarios.Rows = 1: FGvelocidad.Rows = 1
        FGdetalleMediosPagos.Rows = 1: FGmediosPagos.Rows = 1: FGabonosCartera.Rows = 1
End Sub

Private Sub DTfechaI_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaI_LostFocus()
        FGrecibo.Rows = 1: FGdatos.Rows = 1: FGaportes.Rows = 1: FGagrupado.Rows = 1: Me.FGabonosGps.Rows = 1
        FGminutos.Rows = 1: FGusuarios.Rows = 1: FGvelocidad.Rows = 1
        FGdetalleMediosPagos.Rows = 1: FGmediosPagos.Rows = 1: FGabonosCartera.Rows = 1
End Sub

Private Sub FGrecibo_DblClick()
        If FGrecibo.Rows > 1 And Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.Numero)) <> Empty Then
            FrmTranDetalleListadoReciboCaja.LblRecibo.Caption = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.Numero))
            FrmTranDetalleListadoReciboCaja.LblVehiculo.Caption = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.Vehiculo))
            FrmTranDetalleListadoReciboCaja.LblFecha.Caption = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.Fecha))
            FrmTranDetalleListadoReciboCaja.lblValor.Caption = Val(FGrecibo.TextMatrix(FGrecibo.Row, Datos.VrRecibo))
            FrmTranDetalleListadoReciboCaja.LblIva.Caption = Val(FGrecibo.TextMatrix(FGrecibo.Row, Datos.VrIva))
            FrmTranDetalleListadoReciboCaja.LblTotal.Caption = Val(FGrecibo.TextMatrix(FGrecibo.Row, Datos.VrTotal))
            FrmTranDetalleListadoReciboCaja.LblCelCond.Caption = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.CedCon))
            FrmTranDetalleListadoReciboCaja.LblNomCond.Caption = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.NomCon))
            FrmTranDetalleListadoReciboCaja.LblPropietario.Caption = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.Propie))
            FrmTranDetalleListadoReciboCaja.TxtUsuario.Text = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.CodUsuario))
            FrmTranDetalleListadoReciboCaja.TxtEmpVehi.Text = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.CodEmpVehi))
            FrmTranDetalleListadoReciboCaja.LblNumeroVehiculo.Caption = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.CodVehi))
            FrmTranDetalleListadoReciboCaja.TxtAgencia.Text = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.Agencia))
            FrmTranDetalleListadoReciboCaja.TxtAporteMes.Text = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.AporteMes))
            FrmTranDetalleListadoReciboCaja.TxtVrAportes.Text = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.VrAporte))
            FrmTranDetalleListadoReciboCaja.TxtDestino.Text = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.Destino))
            FrmTranDetalleListadoReciboCaja.LblHora.Caption = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.Hora))
            FrmTranDetalleListadoReciboCaja.TxtEstado.Text = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.Estado))
            FrmTranDetalleListadoReciboCaja.lblAnticipos.Caption = Val(FGrecibo.TextMatrix(FGrecibo.Row, Datos.VrAnticipo))
                        
            X = Trim(FGrecibo.TextMatrix(FGrecibo.Row, Datos.Numero))
            
            With FGdatos
                 For i = 1 To .Rows - 1
                       If X = Trim(.TextMatrix(i, Recibo.Factura)) Then
                            FrmTranDetalleListadoReciboCaja.FGdatos.AddItem ""
                            Y1 = FrmTranDetalleListadoReciboCaja.FGdatos.Rows - 1
                            For l = Recibo.Item To Recibo.Factura
                            FrmTranDetalleListadoReciboCaja.FGdatos.TextMatrix(Y1, l) = Trim(.TextMatrix(i, l))
                            Next l
                       End If
                 Next i
            End With
            
            With FGaportes
                 For i = 1 To .Rows - 1
                       If X = Trim(.TextMatrix(i, Recibo.Factura)) Then
                            FrmTranDetalleListadoReciboCaja.FGaportes.AddItem ""
                            Y1 = FrmTranDetalleListadoReciboCaja.FGaportes.Rows - 1
                            For l = Recibo.Item To Recibo.Factura
                            FrmTranDetalleListadoReciboCaja.FGaportes.TextMatrix(Y1, l) = Trim(.TextMatrix(i, l))
                            Next l
                       End If
                 Next i
            End With
            
            FrmTranDetalleListadoReciboCaja.Show vbModal
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
        
        CheAbonos.BackColor = Bcolor1
        Me.BackColor = Bcolor1
        Me.Caption = Trim(Titul)
        Frame1.BackColor = Bcolor1
        LblTitle.BackColor = Bfcolor
        LblTitle.ForeColor = Fcolor1
        LblTitle.Font = TipoLetraTitulo: LblTitle.FontBold = NegLetraTitulo: LblTitle.FontSize = Tama�oLetraTitulo
        LblTitle.Height = 315
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana
        Me.SSTab1.Tab = 0
        
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
               
        With Busconcepto
             .Enabled = True
             .TexVisible = True
             .CodigoWidth = 1200
             .NombreWidth = 4300
             .ColCampos.Add 0, "CODIGO", "CrdIdStConceptoRecaudo", adVarChar, 1200, False
             .ColCampos.Add 1, "DESCRIPCION", "CrdStDescripcion", adVarChar, 5000, True
             .ColRet = 1
             .Sql = "SELECT CrdIdStConceptoRecaudo,CrdStDescripcion FROM TRANCONCEPTOSRECAUDOS WHERE CrdIdStEmpresa = '05' AND CrdStEstado = 'A'"
             .TitleGrid = "LISTADO CONCEPTOS"
             .ColLlaves.Add "CrdIdStConceptoRecaudo", "", adVarChar
             .PosicionTop = 800
             .TipoBusqueda = BxCompleta
             .PosicionLeft = .Left
             .TooltipBoton = "Buscar Conceptos"
        End With
        
                       
        BusResponsables.Enabled = True
        BusAgencias.Enabled = True
'        Busconcepto.Enabled = True
        
        J = 0: K = Empty
        Call Define_Grids(FGrecibo)
        Idx = 0
        Call DGRILLA
        LblNit.Caption = Empty
        
        If vGrupoUsuario = "ADMS" Then CmdVerificar.Visible = True Else CmdVerificar.Visible = False
                                
        RegFor = 1
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
                
        With FGrecibo
             .Rows = 1
             .Cols = 36
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
             .TextMatrix(0, Datos.Numero) = "N�mero"
             .TextMatrix(0, Datos.Fecha) = "Fecha"
             .TextMatrix(0, Datos.Cuadre) = "Cuadre"
             .TextMatrix(0, Datos.Agencia) = "Agencia"
             .TextMatrix(0, Datos.Punto) = "Punto"
             .TextMatrix(0, Datos.CodUsuario) = "Usuario"
             .TextMatrix(0, Datos.Vehiculo) = "Veh�culo"
             .TextMatrix(0, Datos.NomEmpVehi) = "Empresa"
             .TextMatrix(0, Datos.Propie) = "Propietario"
             .TextMatrix(0, Datos.NomCon) = "Conductor"
             .TextMatrix(0, Datos.Ruta) = "Ruta"
             .TextMatrix(0, Datos.VrRecibo) = "Valor"
             .TextMatrix(0, Datos.VrIva) = "IVA"
             .TextMatrix(0, Datos.VrTotal) = "Total"
             .TextMatrix(0, Datos.CodEmpVehi) = "CodEmpVehi"
             .TextMatrix(0, Datos.CedCon) = "CedCon"
             .TextMatrix(0, Datos.CodVehi) = "CodVehi"
             .TextMatrix(0, Datos.AporteMes) = "AporteMes"
             .TextMatrix(0, Datos.VrAporte) = "VrAporte"
             .TextMatrix(0, Datos.Destino) = "Destino"
             .TextMatrix(0, Datos.Hora) = "Hora"
             .TextMatrix(0, Datos.Estado) = "Estado"
             .TextMatrix(0, Datos.VrAnticipo) = "Vr. Anticipo PAQ"
             .TextMatrix(0, Datos.VrPlanilla) = "Vr. Planilla"
             .TextMatrix(0, Datos.VrComplemento) = "Vr. Comple. Pla"
             .TextMatrix(0, Datos.vOtros) = "Vr. Otros"
             .TextMatrix(0, Datos.VrConceptos) = "Vr. Concepto"
             .TextMatrix(0, Datos.CedulaProp) = "Cedula Propieatrio"
             
             .TextMatrix(0, Datos.NumMandante) = "Num. Mandante"
             .TextMatrix(0, Datos.NumRecaudadora) = "Num. Recaudadora"
             .TextMatrix(0, Datos.VrCrMandante) = "Vr. Credito Mandate"
             .TextMatrix(0, Datos.VrDbRecaudadora) = "Vr Db Recaudadora"
             .TextMatrix(0, Datos.vDfMandante) = "Dif. Mandante"
             .TextMatrix(0, Datos.vDfRecaudadora) = "Dif Recaudadora"
             .TextMatrix(0, Datos.CuadreMandante) = "Cuadre Mandante"
             .TextMatrix(0, Datos.CuadreRecaudadora) = "Cuadre Recaudadora"
             
             .ColFormat(Datos.VrRecibo) = "#,###"
             .ColFormat(Datos.VrIva) = "#,###"
             .ColFormat(Datos.VrTotal) = "#,###"
             .ColFormat(Datos.VrAnticipo) = "#,###"
             .ColFormat(Datos.VrPlanilla) = "#,###"
             .ColFormat(Datos.vOtros) = "#,###"
             .ColFormat(Datos.VrAporte) = "#,###"
             .ColFormat(Datos.VrConceptos) = "#,###"
             .ColFormat(Datos.vDfMandante) = "#,###"
             .ColFormat(Datos.VrCrMandante) = "#,###"
             .ColFormat(Datos.vDfRecaudadora) = "#,###"
             .ColFormat(Datos.VrDbRecaudadora) = "#,###"
             .ColFormat(Datos.CuadreMandante) = "#,###"
             .ColFormat(Datos.CuadreRecaudadora) = "#,###"
             .ColFormat(Datos.VrComplemento) = "#,###"
             .ColWidth(Datos.Numero) = 1200
             .ColWidth(Datos.Fecha) = 1200
             .ColWidth(Datos.Cuadre) = 1200
             .ColWidth(Datos.Agencia) = 2500
             .ColWidth(Datos.Punto) = 800
             .ColWidth(Datos.CodUsuario) = 2000
             .ColWidth(Datos.Vehiculo) = 1000
             .ColWidth(Datos.NomEmpVehi) = 2000
             .ColWidth(Datos.Propie) = 3000
             .ColWidth(Datos.NomCon) = 3000
             .ColWidth(Datos.VrRecibo) = 1300
             .ColWidth(Datos.VrConceptos) = 1300
             .ColWidth(Datos.VrIva) = 1300
             .ColWidth(Datos.VrComplemento) = 1300
             .ColWidth(Datos.VrTotal) = 1300
             .ColWidth(Datos.Estado) = 2200
             .ColHidden(Datos.CodEmpVehi) = True
             .ColHidden(Datos.CedCon) = True
             .ColHidden(Datos.CedulaProp) = True
             .ColHidden(Datos.CodVehi) = True
             .ColHidden(Datos.AporteMes) = True
             .ColHidden(Datos.VrAporte) = False
             .ColHidden(Datos.Destino) = False
             .ColHidden(Datos.Hora) = True
             .ColHidden(Datos.VrAnticipo) = False
             
             .ColHidden(Datos.vDfMandante) = True
             .ColHidden(Datos.vDfRecaudadora) = True
             .ColHidden(Datos.VrCrMandante) = True
             .ColHidden(Datos.VrDbRecaudadora) = True
             .ColHidden(Datos.NumMandante) = True
             .ColHidden(Datos.NumRecaudadora) = True
             .ColHidden(Datos.CuadreMandante) = True
             .ColHidden(Datos.CuadreRecaudadora) = True
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .ColDataType(Datos.Fecha) = flexDTStringC
        End With
        
        With FGdatos
             .Rows = 1
             .Cols = 12
             .FontName = "Arial"
             .FontSize = 8
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
             .ForeColorFixed = vColorFixed
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .TextMatrix(0, Recibo.Item) = "Item"
             .TextMatrix(0, Recibo.Codigo) = "C�digo"
             .TextMatrix(0, Recibo.Nombre) = "Descripci�n"
             .TextMatrix(0, Recibo.Cantidad) = "Cantidad"
             .TextMatrix(0, Recibo.Valor) = "Valor"
             .TextMatrix(0, Recibo.PorIva) = "% Iva"
             .TextMatrix(0, Recibo.ValorIva) = "Valor Iva"
             .TextMatrix(0, Recibo.ValorTotal) = "Valor Total"
             .TextMatrix(0, Recibo.TipoConcepto) = "Tipo Concepto"
             .TextMatrix(0, Recibo.Factura) = "Factura"
             .ColWidth(Recibo.Item) = 800
             .ColWidth(Recibo.Codigo) = 900
             .ColWidth(Recibo.Nombre) = 2500
             .ColWidth(Recibo.Cantidad) = 1000
             .ColWidth(Recibo.Valor) = 1200
             .ColWidth(Recibo.PorIva) = 700
             .ColWidth(Recibo.ValorIva) = 1100
             .ColWidth(Recibo.ValorTotal) = 1300
             .ColWidth(Recibo.TipoConcepto) = 500
             .ColFormat(Recibo.Valor) = "##,###"
             .ColFormat(Recibo.ValorIva) = "##,###"
             .ColFormat(Recibo.ValorTotal) = "##,###"
             .ColFormat(Recibo.Cantidad) = "##,###"
             .ColFormat(Recibo.PorIva) = "#,###.99"
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = False
             .ColHidden(Recibo.TipoConcepto) = True
             .ColHidden(Recibo.Factura) = True
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .Editable = flexEDKbd
        End With
        
        With FGaportes
             .Rows = 1
             .Cols = 12
             .FontName = "Arial"
             .FontSize = 8
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
             .ForeColorFixed = vColorFixed
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .TextMatrix(0, Recibo.Item) = "Item"
             .TextMatrix(0, Recibo.Codigo) = "C�digo"
             .TextMatrix(0, Recibo.Nombre) = "Descripci�n"
             .TextMatrix(0, Recibo.Cantidad) = "Cantidad"
             .TextMatrix(0, Recibo.Valor) = "Valor"
             .TextMatrix(0, Recibo.PorIva) = "% Iva"
             .TextMatrix(0, Recibo.ValorIva) = "Valor Iva"
             .TextMatrix(0, Recibo.ValorTotal) = "Valor Total"
             .TextMatrix(0, Recibo.TipoConcepto) = "Tipo Concepto"
             .TextMatrix(0, Recibo.Factura) = "Factura"
             .ColWidth(Recibo.Item) = 800
             .ColWidth(Recibo.Codigo) = 900
             .ColWidth(Recibo.Nombre) = 2500
             .ColWidth(Recibo.Cantidad) = 1000
             .ColWidth(Recibo.Valor) = 1200
             .ColWidth(Recibo.PorIva) = 700
             .ColWidth(Recibo.ValorIva) = 1100
             .ColWidth(Recibo.ValorTotal) = 1300
             .ColWidth(Recibo.TipoConcepto) = 500
             .ColFormat(Recibo.Valor) = "##,###"
             .ColFormat(Recibo.ValorIva) = "##,###"
             .ColFormat(Recibo.ValorTotal) = "##,###"
             .ColFormat(Recibo.Cantidad) = "##,###"
             .ColFormat(Recibo.PorIva) = "#,###.99"
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = False
             .ColHidden(Recibo.TipoConcepto) = True
             .ColHidden(Recibo.Factura) = True
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .Editable = flexEDKbd
        End With
        
        With FGagrupado
             .Rows = 1
             .Cols = 5
             .FontName = "Arial"
             .FontSize = 8
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
             .ForeColorFixed = vColorFixed
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .TextMatrix(0, mGrupos.Codigo) = "C�digo"
             .TextMatrix(0, mGrupos.Nombre) = "Descripci�n"
             .TextMatrix(0, mGrupos.Valor) = "Valor"
             .TextMatrix(0, mGrupos.Total) = "Vr. Total"
             .TextMatrix(0, mGrupos.Anticipo) = "Vr. Anticipo"
             .ColFormat(mGrupos.Valor) = "##,###"
             .ColFormat(mGrupos.Total) = "##,###"
             .ColFormat(mGrupos.Anticipo) = "##,###"
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = flexEDNone
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             .ColWidth(mGrupos.Codigo) = 1200
             .ColWidth(mGrupos.Nombre) = 4500
             .ColWidth(mGrupos.Valor) = 1500
             .ColWidth(mGrupos.Total) = 1500
             .ColWidth(mGrupos.Anticipo) = 1500
             .ExplorerBar = flexExSortShowAndMove
             
        End With
        
        With FGabonosGps
             .Rows = 1
             .Cols = 19
             .FontName = "Arial"
             .FontSize = 8
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
             .ForeColorFixed = vColorFixed
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .TextMatrix(0, Abonos.Agencia) = "Agencia"
             .TextMatrix(0, Abonos.Punto) = "Punto"
             .TextMatrix(0, Abonos.EmpresaRecibe) = "Empresa Recibe"
             .TextMatrix(0, Abonos.VrMInutos) = "Vr. Tiempo"
             .TextMatrix(0, Abonos.VrVelocidad) = "Vr. Velocidad"
             .TextMatrix(0, Abonos.Numero) = "Numero Recibo"
             .TextMatrix(0, Abonos.Propie) = "Propietario"
             .TextMatrix(0, Abonos.Fecha) = "Fecha"
             .TextMatrix(0, Abonos.PlacaRecibe) = "Placa Recibe"
             .TextMatrix(0, Abonos.Vehiculo) = "Placa"
             .TextMatrix(0, Abonos.PropietarioRecibe) = "Cedula Recibe"
             .TextMatrix(0, Abonos.ClienteRecibe) = "Propietario Recibe"
             .TextMatrix(0, Abonos.vResponsable) = "Usuario"
             .TextMatrix(0, Abonos.EmpresaVehiculo) = "Empresa Vehiculo"
             .TextMatrix(0, Abonos.NombrePropVehiculo) = "Nombre del Propietario"
             .TextMatrix(0, Abonos.vCuotaAdm) = "Vr. Administracion"
             .TextMatrix(0, Abonos.vDevolucion) = "Vr. Devoluci�n"
             .TextMatrix(0, Abonos.PorcAdministracion) = "% Adm"
             .TextMatrix(0, Abonos.IDEmpresaRecibe) = "ID Empresa Recibe"
             
             .ColFormat(Abonos.VrMInutos) = "##,###"
             .ColFormat(Abonos.VrVelocidad) = "##,###"
             .ColFormat(Abonos.vCuotaAdm) = "##,###"
             .ColFormat(Abonos.vDevolucion) = "##,###"
             .ColFormat(Abonos.PorcAdministracion) = "##,###.00"
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = flexEDNone
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             .ExplorerBar = flexExSortShowAndMove
             .ColDataType(Abonos.Fecha) = flexDTStringC
        End With
        
        
        With Me.FGminutos
             .Rows = 1
             .Cols = 7
             .FontName = "Arial"
             .FontSize = 8
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
             .ForeColorFixed = vColorFixed
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .TextMatrix(0, vMinutos.CedulaPro) = "CEDULA"
             .TextMatrix(0, vMinutos.NombrePro) = "NOMBRE DEL PROPIETARIO"
             .TextMatrix(0, vMinutos.vCuotaAdm) = "Cuota Admon SOTRACOR"
             .TextMatrix(0, vMinutos.vDevolucion) = "Subtotal Devoluci�n"
             .TextMatrix(0, vMinutos.vRecaudo) = "Total Recaudo"
             .TextMatrix(0, vMinutos.Vehiculo) = "VEHICULOS"
             .ColFormat(vMinutos.vCuotaAdm) = "##,###"
             .ColFormat(vMinutos.vRecaudo) = "##,###"
             .ColFormat(vMinutos.vDevolucion) = "##,###"
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = flexEDNone
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             .AutoSearch = flexSearchFromCursor
             .ColDataType(Abonos.Fecha) = flexDTStringC
             .RowHeight(0) = 420
        End With
        
        With Me.FGvelocidad
             .Rows = 1
             .Cols = 6
             .FontName = "Arial"
             .FontSize = 8
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
             .ForeColorFixed = vColorFixed
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .OutlineCol = 1
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .TextMatrix(0, vVelocidad.EmpresaRecibe) = "Empresa Recibe"
             .TextMatrix(0, vVelocidad.VrVelocidad) = "Vr. Velocidad"
             .TextMatrix(0, vVelocidad.NombrePro) = "Propietario"
             .TextMatrix(0, vVelocidad.Vehiculo) = "Placa"
             .TextMatrix(0, vVelocidad.CedulaPro) = "Cedula"
             .ColFormat(vVelocidad.VrVelocidad) = "##,###"
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = flexEDNone
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             .AutoSearch = flexSearchFromCursor
             .RowHeight(0) = 420
        End With
        
        With FGusuarios
             .Rows = 1
             .Cols = 5
             .FontName = "Arial"
             .FontSize = 8
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
             .ForeColorFixed = vColorFixed
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .TextMatrix(0, RespRecaudo.Cedula) = "Cedula"
             .TextMatrix(0, RespRecaudo.NombreCompleto) = "Apellidos y Nombres"
             .TextMatrix(0, RespRecaudo.vRecaudo) = "Vr. Recaudo"
             .TextMatrix(0, RespRecaudo.PorRecaudo) = "%"
             .TextMatrix(0, RespRecaudo.vPropina) = "Vr. Propina"
             .ColFormat(RespRecaudo.vRecaudo) = "##,###"
             .ColFormat(RespRecaudo.vPropina) = "##,###"
             .ColFormat(RespRecaudo.PorRecaudo) = "#,###.00"
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = flexEDNone
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             .AutoSearch = flexSearchFromCursor
             .RowHeight(0) = 420
        End With
        
        With FGporcentaje
             .Rows = 1
             .Cols = 5
             .FontName = "Arial"
             .FontSize = 8
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
             .ForeColorFixed = vColorFixed
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .TextMatrix(0, PorcentajeAdm.IDnovedad) = "Novedad"
             .TextMatrix(0, PorcentajeAdm.IDempresa) = "Empresa"
             .TextMatrix(0, PorcentajeAdm.IDpropietario) = "Propietario"
             .TextMatrix(0, PorcentajeAdm.IdVehiculo) = "Vehiculo"
             .TextMatrix(0, PorcentajeAdm.vporcentajeAdm) = "Porcentaje"
             .ColFormat(PorcentajeAdm.vporcentajeAdm) = "#,###.00"
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = flexEDNone
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             .AutoSearch = flexSearchFromCursor
             .RowHeight(0) = 420
             .ColHidden(PorcentajeAdm.IDnovedad) = True
        End With
        
        With Me.FGmediosPagos
             .Rows = 1
             .Cols = 5
             .FontName = "Arial"
             .FontSize = 8
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
             .ForeColorFixed = vColorFixed
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .TextMatrix(0, mGrupos.Codigo) = "C�digo"
             .TextMatrix(0, mGrupos.Nombre) = "Descripci�n"
             .TextMatrix(0, mGrupos.Anticipo) = "Cantidad"
             .TextMatrix(0, mGrupos.Total) = "Valor"
             .ColFormat(mGrupos.Valor) = "##,###"
             .ColFormat(mGrupos.Total) = "##,###"
             .ColFormat(mGrupos.Valor) = "##,###"
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = flexEDNone
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             .ColWidth(mGrupos.Codigo) = 1200
             .ColWidth(mGrupos.Nombre) = 4500
             .ColWidth(mGrupos.Valor) = 1500
             .ColWidth(mGrupos.Total) = 1500
             .ColWidth(mGrupos.Anticipo) = 1500
             .ExplorerBar = flexExSortShowAndMove
             .ColHidden(mGrupos.Valor) = True
        End With
        
        With FGdetalleMediosPagos
             .Rows = 1
             .Cols = 22
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
             .TextMatrix(0, MediosP.Numero) = "No. Recibo"
             .TextMatrix(0, MediosP.Fecha) = "Fecha"
             .TextMatrix(0, Datos.Cuadre) = "Cuadre"
             .TextMatrix(0, MediosP.Agencia) = "Agencia"
             .TextMatrix(0, MediosP.Punto) = "Punto"
             .TextMatrix(0, MediosP.CodUsuario) = "Usuario"
             .TextMatrix(0, MediosP.Vehiculo) = "Veh�culo"
             .TextMatrix(0, MediosP.NomEmpVehi) = "Empresa"
             .TextMatrix(0, MediosP.VrTotal) = "Valor"
             .TextMatrix(0, MediosP.Hora) = "Hora"
             .TextMatrix(0, MediosP.Estado) = "Estado"
             .TextMatrix(0, MediosP.VrBase) = "Vr. Base"
             .TextMatrix(0, MediosP.Cantidad) = "Cantidad"
             .TextMatrix(0, MediosP.FechaMedio) = "Fecha Medio"
             .TextMatrix(0, MediosP.Banco) = "Nomebre Banco"
             .TextMatrix(0, MediosP.Referencia) = "Referencia"
             .TextMatrix(0, MediosP.NombreMedio) = "Medio de Pago"
             .TextMatrix(0, MediosP.NumCheque) = "Numero"
             .TextMatrix(0, MediosP.Propie) = "Propietario"
             .TextMatrix(0, MediosP.NomCon) = "Conductor"
             .TextMatrix(0, MediosP.CedCon) = "Cedula Conductor"
             .TextMatrix(0, MediosP.CedulaProp) = "Cedula Propietario"
             .ColFormat(MediosP.VrTotal) = "#,###"
             .ColFormat(MediosP.VrBase) = "#,###"
             .ColFormat(MediosP.Cantidad) = "#,###"
             .ColWidth(MediosP.Numero) = 1200
             .ColWidth(MediosP.Fecha) = 1200
             .ColWidth(MediosP.Agencia) = 2500
             .ColWidth(MediosP.Banco) = 2000
             .ColWidth(MediosP.Punto) = 800
             .ColWidth(MediosP.FechaMedio) = 1300
             .ColWidth(MediosP.CodUsuario) = 2000
             .ColWidth(MediosP.NombreMedio) = 3000
             .ColWidth(MediosP.Vehiculo) = 1000
             .ColWidth(MediosP.NomEmpVehi) = 2000
             .ColWidth(MediosP.VrTotal) = 1300
             .ColWidth(MediosP.Cantidad) = 1300
             .ColWidth(MediosP.Propie) = 2200
             .ColWidth(MediosP.NomCon) = 2200
             .ColHidden(MediosP.CedCon) = True
             .ColHidden(MediosP.CedulaProp) = True
             .ColHidden(MediosP.Estado) = True
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .ColHidden(MediosP.IdMediopago) = True
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .ColDataType(MediosP.Fecha) = flexDTStringC
             .ColDataType(MediosP.Hora) = flexDTStringC
        End With
        
        With FGabonosCartera
             .Rows = 1
             .Cols = 10
             .FontName = "Arial"
             .FontSize = 8
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
             .ForeColorFixed = vColorFixed
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .TextMatrix(0, PagosCartera.Agencia) = "Agencia"
             .TextMatrix(0, PagosCartera.Punto) = "Punto"
             .TextMatrix(0, PagosCartera.VrAbono) = "Vr. Abono"
             .TextMatrix(0, PagosCartera.Numero) = "Numero Recibo"
             .TextMatrix(0, PagosCartera.Propie) = "Propietario"
             .TextMatrix(0, PagosCartera.Fecha) = "Fecha"
             .TextMatrix(0, PagosCartera.Vehiculo) = "Placa"
             .TextMatrix(0, PagosCartera.vResponsable) = "Usuario"
             .TextMatrix(0, PagosCartera.EmpresaVehiculo) = "Empresa Vehiculo"
             .TextMatrix(0, PagosCartera.NombrePropVehiculo) = "Nombre del Propietario"
             .ColFormat(PagosCartera.VrAbono) = "##,###"
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = flexEDNone
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             .ExplorerBar = flexExSortShowAndMove
             .ColDataType(PagosCartera.Fecha) = flexDTStringC
        End With
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Call BarraOperaciones.Estado_Botones
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.Exportar, vbResBitmap)
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
        With FGrecibo
             On Error GoTo Imprime

             Dim Mh As String, GF As String, Iw As String
             If .Rows = 1 Then MsgBox "No hay informaci�n para imprimir", vbInformation + vbOKOnly, "Atenci�n": Exit Sub

             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME3"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             M = -1: Ax = Empty
             N = 0
             If .Rows = 2 Then N = 1 Else N = .Rows - 2
             For i = 1 To N
                   vPc = Val(.TextMatrix(i, Datos.VrPlanilla)) + Val(.TextMatrix(i, Datos.VrComplemento))
                   Sql = "INSERT INTO INFORME3(InfDes1,InfDes3,InfDes2,InfDes4,Infval2,Infval1,Infval7,Infval8,Infval15,InfDes5,Infnomb,Infdes6)" & _
                         "VALUES('" & Trim(.TextMatrix(i, Datos.Numero)) & "','" & Trim(.TextMatrix(i, Datos.Fecha)) & "'," & _
                         "'" & Trim(.TextMatrix(i, Datos.Agencia)) & "','" & Trim(.TextMatrix(i, Datos.Vehiculo)) & "'," & Val(.TextMatrix(i, Datos.VrAnticipo)) & "," & _
                         "" & vPc & "," & Val(.TextMatrix(i, Datos.VrAporte)) & "," & Val(.TextMatrix(i, Datos.vOtros)) & "," & _
                         "" & Val(.TextMatrix(i, Datos.VrTotal)) & ",'" & Trim(.TextMatrix(i, Datos.Ruta)) & "','" & Trim(.TextMatrix(i, Datos.Propie)) & "'," & _
                         "'" & Trim(.TextMatrix(i, Datos.NomCon)) & "')"
                   If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             Next i
             Call Transaccion(BDCommit)

             R = "FECHA DE CORTE: " & Format(DTfechaI.value, "dd/mm/yyyy") & " HASTA " & Format(DTfechaF.value, "dd/mm/yyyy")
             RptReciboCaja.DiscardSavedData = True
             RptReciboCaja.Formulas(1) = "Empresa= '" & DatosEmpresa(1) & "'"
             RptReciboCaja.Formulas(2) = "Parametro= '" & R & "'"
             X = Inf + "InfListadoRecibosCajaVehiculos.rpt"
             RptReciboCaja.ReportFileName = X
             RptReciboCaja.Destination = crptToWindow
             RptReciboCaja.WindowTitle = "LISTADO RECIBO DE CAJA"
             RptReciboCaja.WindowMinButton = True
             RptReciboCaja.WindowMaxButton = True
             RptReciboCaja.WindowState = crptMaximized
             RptReciboCaja.PrintReport
        End With
        Exit Sub
Imprime:
   MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atenci�n"

End Sub

Private Sub TxtPlaca_LostFocus()
        FGrecibo.Rows = 1: FGdatos.Rows = 1: FGaportes.Rows = 1: FGagrupado.Rows = 1
        FGminutos.Rows = 1: FGusuarios.Rows = 1: FGvelocidad.Rows = 1
        FGdetalleMediosPagos.Rows = 1: FGmediosPagos.Rows = 1: FGabonosCartera.Rows = 1
        
        LblVehiculo.Caption = Empty
        If Trim(TxtPlaca.Text) <> Empty Then
             TxtPlaca.Text = UCase(TxtPlaca.Text)
             vEmpresaVehiculo = Empty
             Sql = "SELECT VehIdStEmpresa,VehStDescripcion,VehStEstado FROM TRANVEHICULOS WHERE VehIdStPlaca= '" & Me.TxtPlaca.Text & "'"
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                TxtConductores.Text = Empty
                TxtNombreConductor.Text = Empty
                While Not rdoRs.EOF
                      If Val("" & rdoRs!VehStEstado) = 0 Then
                           vEmpresaVehiculo = Trim("" & rdoRs!VehIdStEmpresa)
                           LblVehiculo.Caption = Trim("" & rdoRs!VehStDescripcion)
                           GoTo Salir
                      Else
                           vEmpresaVehiculo = Trim("" & rdoRs!VehIdStEmpresa)
                           LblVehiculo.Caption = Trim("" & rdoRs!VehStDescripcion)
                      End If
                      rdoRs.MoveNext
                Wend
Salir:
             Else
                  MsgBox "Se�or usuario el vehiculo no esta registrado", vbInformation + vbOKOnly, "Atenci�n"
                  TxtConductores.Text = Empty
                  TxtNombreConductor.Text = Empty
             End If
        Else
            TxtConductores.Text = Empty
            TxtNombreConductor.Text = Empty
                        
        End If
End Sub

Private Sub LLenar_MintosyVelocidad()
        On Error GoTo Salida
        Dim vColMinutos As New Collection, vColResponsable As New Collection, vFiltroUsuario As String, vTotalRecaudoMinutos As Long, vColVelocidad As New Collection
        Dim vTotalADM As Long
        
        Set vColMinutos = Nothing
        Set vColResponsable = Nothing
        Set vColVelocidad = Nothing
        FGminutos.Rows = 1: FGvelocidad.Rows = 1: FGusuarios.Rows = 1
        If FGabonosGps.Rows = 1 Then Exit Sub
        FGabonosGps.Select 1, Abonos.PropietarioRecibe, 1, Abonos.PlacaRecibe
        FGabonosGps.Sort = flexSortGenericAscending
        vFiltroUsuario = Empty: vTotalRecaudoMinutos = 0: vTotalADM = 0
               
        FGporcentaje.Rows = 1
        Set vColPorcentajeAdm = Nothing
        Sql = "SELECT * FROM TRANPORCENTAJEADMINISTRACIONGPS " & _
              "WHERE TpaDtFechaNovedad <= '" & Format(DTfechaI.value, FormatoFecha) & "' AND TpaIdStVigencia= 'A'"
        If Buscar_Res(rdoRs, Sql) = BDOk Then
            While Not rdoRs.EOF
                  FGporcentaje.AddItem ""
                  FGporcentaje.TextMatrix(FGporcentaje.Rows - 1, PorcentajeAdm.IDempresa) = Trim("" & rdoRs!TpaIdStEmpresaVehiculo)
                  FGporcentaje.TextMatrix(FGporcentaje.Rows - 1, PorcentajeAdm.IDnovedad) = Trim("" & rdoRs!TpaIdInNovedadAdministracion)
                  FGporcentaje.TextMatrix(FGporcentaje.Rows - 1, PorcentajeAdm.IDpropietario) = Trim("" & rdoRs!TpaIdStPropietario)
                  FGporcentaje.TextMatrix(FGporcentaje.Rows - 1, PorcentajeAdm.IdVehiculo) = Trim("" & rdoRs!TpaIdStVehiculo)
                  FGporcentaje.TextMatrix(FGporcentaje.Rows - 1, PorcentajeAdm.vporcentajeAdm) = Val("" & rdoRs!TpaInPorcentajeAdm)
                                    
                  If Val("" & rdoRs!TpaStTipoNovedad) = 0 Then
                        M = Trim("" & rdoRs!TpaIdStEmpresaVehiculo) & Trim("" & rdoRs!TpaIdStPropietario)
                        vColPorcentajeAdm.Add FGporcentaje.Rows - 1, M
                  Else
                        M = Trim("" & rdoRs!TpaIdStEmpresaVehiculo) & Trim("" & rdoRs!TpaIdStVehiculo)
                        vColPorcentajeAdm.Add FGporcentaje.Rows - 1, M
                  End If
                  rdoRs.MoveNext
            Wend
        End If
        
          
        With FGabonosGps
             For i = 1 To Me.FGabonosGps.Rows - 1
                   If Val(.TextMatrix(i, Abonos.VrMInutos)) > 0 And Trim(.TextMatrix(i, Abonos.PropietarioRecibe)) <> Empty Then
                           On Error Resume Next
                           M = "-1"
                           M = vColPorcentajeAdm(Trim(.TextMatrix(i, Abonos.IDEmpresaRecibe)) & Trim(.TextMatrix(i, Abonos.PlacaRecibe)))
                           If M <> "-1" Then
                                .TextMatrix(i, Abonos.PorcAdministracion) = Val(FGporcentaje.TextMatrix(M, PorcentajeAdm.vporcentajeAdm))
                           Else
                                On Error Resume Next
                                M = "-1"
                                M = vColPorcentajeAdm(Trim(.TextMatrix(i, Abonos.IDEmpresaRecibe)) & Trim(.TextMatrix(i, Abonos.PropietarioRecibe)))
                                If M <> "-1" Then
                                     .TextMatrix(i, Abonos.PorcAdministracion) = Val(FGporcentaje.TextMatrix(M, PorcentajeAdm.vporcentajeAdm))
                                Else
                                    .TextMatrix(i, Abonos.PorcAdministracion) = vParamTransporte(43)
                                End If
                           End If
                           .TextMatrix(i, Abonos.vCuotaAdm) = Round(((Val(.TextMatrix(i, Abonos.VrMInutos)) * Val(.TextMatrix(i, Abonos.PorcAdministracion))) / 100), 0)
                           .TextMatrix(i, Abonos.vDevolucion) = Val(.TextMatrix(i, Abonos.VrMInutos)) - Val(.TextMatrix(i, Abonos.vCuotaAdm))
                                         
                   End If
             Next i
        End With
                 
         
        With FGabonosGps
             For i = 1 To Me.FGabonosGps.Rows - 1
                   If Val(.TextMatrix(i, Abonos.VrMInutos)) > 0 And Trim(.TextMatrix(i, Abonos.PropietarioRecibe)) <> Empty Then
                        On Error Resume Next
                        M = "-1"
                        M = vColMinutos(Trim(.TextMatrix(i, Abonos.PropietarioRecibe)))
                        If M = "-1" Then
                              FGminutos.AddItem ""
                              FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.CedulaPro) = Trim(.TextMatrix(i, Abonos.PropietarioRecibe))
                              FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.NombrePro) = Trim(.TextMatrix(i, Abonos.ClienteRecibe))
                              FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.vRecaudo) = Val(.TextMatrix(i, Abonos.VrMInutos))
                              FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.vCuotaAdm) = Val(.TextMatrix(i, Abonos.vCuotaAdm))
                              FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.vDevolucion) = Val(.TextMatrix(i, Abonos.vDevolucion))
                              
                              vColMinutos.Add FGminutos.Rows - 1, Trim(.TextMatrix(i, Abonos.PropietarioRecibe))
                              Call Agrupar_Niveles(FGminutos, FGminutos.Rows - 1, 1)
                              FGminutos.Cell(flexcpForeColor, Me.FGminutos.Rows - 1, 0, FGminutos.Rows - 1, FGminutos.Cols - 1) = ColorNivelDos
                        Else
                              FGminutos.TextMatrix(M, vMinutos.vRecaudo) = Val(FGminutos.TextMatrix(M, vMinutos.vRecaudo)) + Val(.TextMatrix(i, Abonos.VrMInutos))
                              FGminutos.TextMatrix(M, vMinutos.vCuotaAdm) = Val(FGminutos.TextMatrix(M, vMinutos.vCuotaAdm)) + Val(.TextMatrix(i, Abonos.vCuotaAdm))
                              FGminutos.TextMatrix(M, vMinutos.vDevolucion) = Val(FGminutos.TextMatrix(M, vMinutos.vDevolucion)) + Val(.TextMatrix(i, Abonos.vDevolucion))
                        End If
                              
                        On Error Resume Next
                        M = "-1"
                        M = vColMinutos(Trim(.TextMatrix(i, Abonos.PropietarioRecibe)) & Trim(.TextMatrix(i, Abonos.PlacaRecibe)))
                        If M = "-1" Then
                             FGminutos.AddItem ""
                             FGminutos.TextMatrix(Me.FGminutos.Rows - 1, vMinutos.CedulaPro) = Trim(.TextMatrix(i, Abonos.PropietarioRecibe))
                             FGminutos.TextMatrix(Me.FGminutos.Rows - 1, vMinutos.NombrePro) = Trim(.TextMatrix(i, Abonos.ClienteRecibe))
                             FGminutos.TextMatrix(Me.FGminutos.Rows - 1, vMinutos.Vehiculo) = Trim(.TextMatrix(i, Abonos.PlacaRecibe))
                             FGminutos.TextMatrix(Me.FGminutos.Rows - 1, vMinutos.vRecaudo) = Val(.TextMatrix(i, Abonos.VrMInutos))
                             FGminutos.TextMatrix(Me.FGminutos.Rows - 1, vMinutos.vCuotaAdm) = Val(.TextMatrix(i, Abonos.vCuotaAdm))
                             FGminutos.TextMatrix(Me.FGminutos.Rows - 1, vMinutos.vDevolucion) = Val(.TextMatrix(i, Abonos.vDevolucion))
                             
                             vColMinutos.Add FGminutos.Rows - 1, Trim(.TextMatrix(i, Abonos.PropietarioRecibe)) & Trim(.TextMatrix(i, Abonos.PlacaRecibe))
                        Else
                             FGminutos.TextMatrix(M, vMinutos.vRecaudo) = Val(FGminutos.TextMatrix(M, vMinutos.vRecaudo)) + Val(.TextMatrix(i, Abonos.VrMInutos))
                             FGminutos.TextMatrix(M, vMinutos.vCuotaAdm) = Val(FGminutos.TextMatrix(M, vMinutos.vCuotaAdm)) + Val(.TextMatrix(i, Abonos.vCuotaAdm))
                             FGminutos.TextMatrix(M, vMinutos.vDevolucion) = Val(FGminutos.TextMatrix(M, vMinutos.vDevolucion)) + Val(.TextMatrix(i, Abonos.vDevolucion))
                        End If
                        
                        On Error Resume Next
                        M = "-1"
                        M = vColResponsable(Trim(.TextMatrix(i, Abonos.vResponsable)))
                        If M = "-1" Then
                              FGusuarios.AddItem ""
                              FGusuarios.TextMatrix(FGusuarios.Rows - 1, RespRecaudo.Cedula) = Trim(.TextMatrix(i, Abonos.vResponsable))
                              FGusuarios.TextMatrix(FGusuarios.Rows - 1, RespRecaudo.vRecaudo) = Val(.TextMatrix(i, Abonos.VrMInutos))
                                                            
                              If vFiltroUsuario = Empty Then
                                  vFiltroUsuario = "'" & Trim(.TextMatrix(i, Abonos.vResponsable)) & "'"
                              Else
                                  vFiltroUsuario = vFiltroUsuario & ",'" & Trim(.TextMatrix(i, Abonos.vResponsable)) & "'"
                              End If
                              vColResponsable.Add FGusuarios.Rows - 1, Trim(.TextMatrix(i, Abonos.vResponsable))
                        Else
                              FGusuarios.TextMatrix(M, RespRecaudo.vRecaudo) = Val(FGusuarios.TextMatrix(M, RespRecaudo.vRecaudo)) + Val(.TextMatrix(i, Abonos.VrMInutos))
                        End If
                        vTotalRecaudoMinutos = vTotalRecaudoMinutos + Val(.TextMatrix(i, Abonos.VrMInutos))
                        vTotalADM = vTotalADM + Val(.TextMatrix(i, Abonos.vCuotaAdm))
                        
                   End If
             Next i
             
             '---- totalizando grilla de minutos
             If FGminutos.Rows > 1 Then
                FGminutos.AddItem ""
                FGminutos.TextMatrix(Me.FGminutos.Rows - 1, vMinutos.NombrePro) = "TOTAL"
                Call Agrupar_Niveles(FGminutos, FGminutos.Rows - 1, 1)
                FGminutos.Cell(flexcpForeColor, FGminutos.Rows - 1, 0, FGminutos.Rows - 1, FGminutos.Cols - 1) = vbMagenta
                FGminutos.Cell(flexcpFontBold, FGminutos.Rows - 1, 0, FGminutos.Rows - 1, FGminutos.Cols - 1) = True
                For i = 1 To Me.FGminutos.Rows - 2
                      If FGminutos.RowOutlineLevel(i) = 1 Then
                          FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.vRecaudo) = Val(FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.vRecaudo)) + FGminutos.TextMatrix(i, vMinutos.vRecaudo)
                          FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.vCuotaAdm) = Val(FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.vCuotaAdm)) + Val(FGminutos.TextMatrix(i, vMinutos.vCuotaAdm))
                          FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.vDevolucion) = Val(FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.vDevolucion)) + Val(FGminutos.TextMatrix(i, vMinutos.vDevolucion))
                      End If
                Next i
                
                If vTotalADM <> Val(FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.vCuotaAdm)) Or vTotalRecaudoMinutos <> Val(FGminutos.TextMatrix(FGminutos.Rows - 1, vMinutos.vRecaudo)) Then
                     FGminutos.Cell(flexcpBackColor, FGminutos.Rows - 1, 0, FGminutos.Cols - 1) = vbRed
                     FGminutos.Cell(flexcpForeColor, FGminutos.Rows - 1, 0, FGminutos.Cols - 1) = vbWhite
                End If
                
                          
                FGminutos.AutoSize 0, FGminutos.Cols - 1
                FGminutos.AllowUserResizing = flexResizeColumns
                FGminutos.Outline (0)
                FGminutos.Outline (1)
             End If
              
             FGabonosGps.Select 1, Abonos.EmpresaVehiculo, 1, Abonos.Propie
             FGabonosGps.Sort = flexSortGenericAscending
             
             For i = 1 To Me.FGabonosGps.Rows - 1
                   If Val(.TextMatrix(i, Abonos.VrVelocidad)) > 0 And Trim(.TextMatrix(i, Abonos.Vehiculo)) <> Empty Then
                        On Error Resume Next
                        M = "-1"
                        M = vColVelocidad(Trim(.TextMatrix(i, Abonos.EmpresaVehiculo)))
                        If M = "-1" Then
                              FGvelocidad.AddItem ""
                              FGvelocidad.TextMatrix(FGvelocidad.Rows - 1, vVelocidad.EmpresaRecibe) = Trim(.TextMatrix(i, Abonos.EmpresaVehiculo))
                              FGvelocidad.TextMatrix(FGvelocidad.Rows - 1, vVelocidad.VrVelocidad) = Val(.TextMatrix(i, Abonos.VrVelocidad))
                              
                              vColVelocidad.Add FGvelocidad.Rows - 1, Trim(.TextMatrix(i, Abonos.EmpresaVehiculo))
                              Call Agrupar_Niveles(FGvelocidad, FGvelocidad.Rows - 1, 1)
                              FGvelocidad.Cell(flexcpForeColor, Me.FGvelocidad.Rows - 1, 0, FGvelocidad.Rows - 1, FGvelocidad.Cols - 1) = ColorNivelDos
                        Else
                              FGvelocidad.TextMatrix(M, vVelocidad.VrVelocidad) = Val(FGvelocidad.TextMatrix(M, vVelocidad.VrVelocidad)) + Val(.TextMatrix(i, Abonos.VrVelocidad))
                        End If
                        
                        On Error Resume Next
                        M = "-1"
                        M = vColVelocidad(Trim(.TextMatrix(i, Abonos.EmpresaVehiculo)) & Trim(.TextMatrix(i, Abonos.Propie)))
                        If M = "-1" Then
                              FGvelocidad.AddItem ""
                              FGvelocidad.TextMatrix(FGvelocidad.Rows - 1, vVelocidad.EmpresaRecibe) = Trim(.TextMatrix(i, Abonos.NombrePropVehiculo))
                              FGvelocidad.TextMatrix(FGvelocidad.Rows - 1, vVelocidad.VrVelocidad) = Val(.TextMatrix(i, Abonos.VrVelocidad))
                              
                              vColVelocidad.Add FGvelocidad.Rows - 1, Trim(.TextMatrix(i, Abonos.EmpresaVehiculo)) & Trim(.TextMatrix(i, Abonos.Propie))
                              Call Agrupar_Niveles(FGvelocidad, FGvelocidad.Rows - 1, 2)
                              FGvelocidad.Cell(flexcpForeColor, Me.FGvelocidad.Rows - 1, 0, FGvelocidad.Rows - 1, FGvelocidad.Cols - 1) = ColorNivelTres
                        Else
                              FGvelocidad.TextMatrix(M, vVelocidad.VrVelocidad) = Val(FGvelocidad.TextMatrix(M, vVelocidad.VrVelocidad)) + Val(.TextMatrix(i, Abonos.VrVelocidad))
                        End If
                        
                        On Error Resume Next
                        M = "-1"
                        M = vColVelocidad(Trim(.TextMatrix(i, Abonos.EmpresaVehiculo)) & Trim(.TextMatrix(i, Abonos.Vehiculo)))
                        If M = "-1" Then
                              FGvelocidad.AddItem ""
                              FGvelocidad.TextMatrix(FGvelocidad.Rows - 1, vVelocidad.CedulaPro) = Trim(.TextMatrix(i, Abonos.Propie))
                              FGvelocidad.TextMatrix(FGvelocidad.Rows - 1, vVelocidad.NombrePro) = Trim(.TextMatrix(i, Abonos.NombrePropVehiculo))
                              FGvelocidad.TextMatrix(FGvelocidad.Rows - 1, vVelocidad.EmpresaRecibe) = Trim(.TextMatrix(i, Abonos.EmpresaVehiculo))
                              FGvelocidad.TextMatrix(FGvelocidad.Rows - 1, vVelocidad.Vehiculo) = Trim(.TextMatrix(i, Abonos.Vehiculo))
                              FGvelocidad.TextMatrix(FGvelocidad.Rows - 1, vVelocidad.VrVelocidad) = Val(.TextMatrix(i, Abonos.VrVelocidad))
                              
                              vColVelocidad.Add FGvelocidad.Rows - 1, Trim(.TextMatrix(i, Abonos.EmpresaVehiculo)) & Trim(.TextMatrix(i, Abonos.Vehiculo))
                        Else
                              FGvelocidad.TextMatrix(M, vVelocidad.VrVelocidad) = Val(FGvelocidad.TextMatrix(M, vVelocidad.VrVelocidad)) + Val(.TextMatrix(i, Abonos.VrVelocidad))
                        End If
                   End If
             Next i
             FGvelocidad.AutoSize 0, FGvelocidad.Cols - 1
             FGvelocidad.AllowUserResizing = flexResizeColumns
             FGvelocidad.Outline (0)
             FGvelocidad.Outline (1)
             FGvelocidad.Outline (2)
              
             FGabonosGps.Select 1, Abonos.Numero
             FGabonosGps.Sort = flexSortGenericAscending
                          
             
        End With
        
                
        
        If vFiltroUsuario <> Empty Then
             Sql = "SELECT Clinit,CliStNombreCliente  FROM CLIENTES WHERE Clinit IN (" & vFiltroUsuario & ")" & _
                   "GROUP BY Clinit"
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                  While Not rdoRs.EOF
                        Y = Trim("" & rdoRs!clinit)
                        On Error Resume Next
                        M = "-1"
                        M = vColResponsable(Y)
                        If M <> "-1" Then
                             Me.FGusuarios.TextMatrix(M, RespRecaudo.NombreCompleto) = Trim("" & rdoRs!CliStNombreCliente)
                        End If
                        rdoRs.MoveNext
                  Wend
             End If
        End If
        
        With FGusuarios
             If vTotalRecaudoMinutos > 0 Then
                k1 = 0: S1 = 0
                For i = 1 To .Rows - 1
                      .TextMatrix(i, RespRecaudo.PorRecaudo) = Round((Val(.TextMatrix(i, RespRecaudo.vRecaudo)) / vTotalRecaudoMinutos) * 100, 2)
                      If Val(vParamTransporte(44)) > 0 Then
                          M1 = vTotalADM * Val(vParamTransporte(44)) / 100
                          .TextMatrix(i, RespRecaudo.vPropina) = Round((Val(M1) * Val(.TextMatrix(i, RespRecaudo.PorRecaudo))) / 100, 0)
                      Else
                           .TextMatrix(i, RespRecaudo.vPropina) = Round((Val(.TextMatrix(i, RespRecaudo.vRecaudo)) * Val(vParamTransporte(42))) / 100, 0)
                      End If
                      k1 = k1 + Val(.TextMatrix(i, RespRecaudo.vPropina))
                      S1 = S1 + Val(.TextMatrix(i, RespRecaudo.vRecaudo))
                Next i
                
                If .Rows > 1 Then
                      .AddItem ""
                      .TextMatrix(.Rows - 1, RespRecaudo.NombreCompleto) = "TOTAL"
                      .TextMatrix(.Rows - 1, RespRecaudo.vRecaudo) = S1
                      .TextMatrix(.Rows - 1, RespRecaudo.vPropina) = k1
                      .TextMatrix(.Rows - 1, RespRecaudo.PorRecaudo) = 100
                      .Cell(flexcpFontBold, .Rows - 1, 0, .Rows - 1, .Cols - 1) = True
                      If Val(S1) <> vTotalRecaudoMinutos Then
                          .Cell(flexcpBackColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbRed
                          .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbWhite
                      End If
                End If
             End If
             
             
             FGusuarios.AutoSize 0, FGusuarios.Cols - 1
             FGusuarios.AllowUserResizing = flexResizeColumns
        End With
        
        Exit Sub
Salida: Call MensajeAdministrador
End Sub

Private Sub Imprimir_Minutos()
        On Error GoTo Imprime
        With FGminutos
             Dim Mh As String, GF As String, Iw As String
             If .Rows = 1 Then MsgBox "No hay informaci�n para imprimir", vbInformation + vbOKOnly, "Atenci�n": Exit Sub

             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME3"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             M = -1: Ax = Empty
             N = 0
             For i = 1 To .Rows - 1
                   If .RowOutlineLevel(i) = 1 Then
                       X = 1
                   Else
                       X = 0
                   End If
                   Sql = "INSERT INTO INFORME3(InfDesc,InfDes3,Infval2,Infval3,Infval4,Infval1)" & _
                         "VALUES('" & Trim(.TextMatrix(i, vMinutos.NombrePro)) & "','" & Trim(.TextMatrix(i, vMinutos.Vehiculo)) & "'," & _
                         "" & Val(.TextMatrix(i, vMinutos.vRecaudo)) & "," & Val(.TextMatrix(i, vMinutos.vCuotaAdm)) & "," & _
                         "" & Val(.TextMatrix(i, vMinutos.vDevolucion)) & "," & X & ")"
                   If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             Next i
             Call Transaccion(BDCommit)

             R = "FECHA DE CORTE: " & Format(DTfechaI.value, "dd/mm/yyyy") & " HASTA " & Format(DTfechaF.value, "dd/mm/yyyy")
             Y = "REPORTE DE MINUTOS"
             f = Format(FechaServidor, "dd/mm/yyyy")
             Nit = "Nit: " & DatosEmpresa(0)
             RptMinutos.DiscardSavedData = True
             RptMinutos.Formulas(1) = "Empresa= '" & DatosEmpresa(1) & "'"
             RptMinutos.Formulas(2) = "NitEmpresa= '" & Nit & "'"
             RptMinutos.Formulas(3) = "Titulo= '" & Y & "'"
             RptMinutos.Formulas(4) = "Parametro= '" & R & "'"
             RptMinutos.Formulas(5) = "FechaFacAno= '" & f & "'"
             X = Inf + "InfReportedeMinutos" & Empresa & ".rpt"
             RptMinutos.ReportFileName = X
             RptMinutos.Destination = crptToWindow
             RptMinutos.WindowTitle = "REPORTE DE MINUTOS"
             RptMinutos.WindowMinButton = True
             RptMinutos.WindowMaxButton = True
             RptMinutos.WindowState = crptMaximized
             RptMinutos.PrintReport
        End With
        Exit Sub
Imprime: Call MensajeAdministrador
   
End Sub

Private Sub Imprimir_Velocidad()
        On Error GoTo Imprime
        
        With FGvelocidad
             Dim Mh As String, GF As String, Iw As String
             If .Rows = 1 Then MsgBox "No hay informaci�n para imprimir", vbInformation + vbOKOnly, "Atenci�n": Exit Sub

             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME3"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             M = -1: Ax = Empty
             N = 0
             For i = 1 To .Rows - 1
                   If .RowOutlineLevel(i) = 1 Or .RowOutlineLevel(i) = 2 Then
                       X = 1
                       M1 = Empty
                       S1 = Trim(.TextMatrix(i, vVelocidad.EmpresaRecibe))
                   Else
                       X = 0
                       M1 = Trim(.TextMatrix(i, vVelocidad.EmpresaRecibe))
                       S1 = Trim(.TextMatrix(i, vVelocidad.NombrePro))
                   End If
                   Sql = "INSERT INTO INFORME3(InfDesc,InfDes2,InfDes3,InfDes4,Infval2,Infval1)" & _
                         "VALUES('" & Trim(.TextMatrix(i, vVelocidad.Vehiculo)) & "','" & Trim(.TextMatrix(i, vVelocidad.CedulaPro)) & "'," & _
                         "'" & S1 & "','" & M1 & "'," & Val(.TextMatrix(i, vVelocidad.VrVelocidad)) & "," & X & ")"
                   If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             Next i
             Call Transaccion(BDCommit)
             
             R = "FECHA DE CORTE: " & Format(DTfechaI.value, "dd/mm/yyyy") & " HASTA " & Format(DTfechaF.value, "dd/mm/yyyy")
             Y = "RECAUDO POR VELOCIDAD"
             f = Format(FechaServidor, "dd/mm/yyyy")
             Nit = "Nit: " & DatosEmpresa(0)
             
             RptVelocidad.DiscardSavedData = True
             RptVelocidad.Formulas(1) = "Empresa= '" & DatosEmpresa(1) & "'"
             RptVelocidad.Formulas(2) = "NitEmpresa= '" & Nit & "'"
             RptVelocidad.Formulas(3) = "Titulo= '" & Y & "'"
             RptVelocidad.Formulas(4) = "Parametro= '" & R & "'"
             RptVelocidad.Formulas(5) = "FechaFacAno= '" & f & "'"
             X = Inf + "InfReportedeRecaudoVelocidad" & Empresa & ".rpt"
             RptVelocidad.ReportFileName = X
             RptVelocidad.Destination = crptToWindow
             RptVelocidad.WindowTitle = "LISTADO RECIBO DE CAJA"
             RptVelocidad.WindowMinButton = True
             RptVelocidad.WindowMaxButton = True
             RptVelocidad.WindowState = crptMaximized
             RptVelocidad.PrintReport
        End With
        Exit Sub
Imprime: Call MensajeAdministrador
End Sub

Private Sub Imprimir_Usuarios()
        On Error GoTo Imprime
        Dim Mh As String, GF As String, Iw As String
             
        With FGusuarios
             If .Rows = 1 Then MsgBox "No hay informaci�n para imprimir", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
             
             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME3"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             Ax = Empty
             For i = 1 To .Rows - 1
                   If Trim(.TextMatrix(i, RespRecaudo.NombreCompleto)) = "TOTAL" Then X = 1 Else X = 0
                           
                   Sql = "INSERT INTO INFORME3(InfDesc,InfDes3,Infval2,Infval3,Infval4,Infval1)" & _
                         "VALUES('" & Trim(.TextMatrix(i, RespRecaudo.Cedula)) & "','" & Trim(.TextMatrix(i, RespRecaudo.NombreCompleto)) & "'," & _
                         "" & Val(.TextMatrix(i, RespRecaudo.vRecaudo)) & "," & Val(.TextMatrix(i, RespRecaudo.PorRecaudo)) & "," & Val(.TextMatrix(i, RespRecaudo.vPropina)) & "," & X & ")"
                   If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             Next i
             Call Transaccion(BDCommit)
             
             R = "FECHA DE CORTE: " & Format(DTfechaI.value, "dd/mm/yyyy") & " HASTA " & Format(DTfechaF.value, "dd/mm/yyyy")
             Y = "PROPINAS POR RECAUDO DE MINUTOS"
             f = Format(FechaServidor, "dd/mm/yyyy")
             Nit = "Nit: " & DatosEmpresa(0)
             
             RptUsuarios.DiscardSavedData = True
             RptUsuarios.Formulas(1) = "Empresa= '" & DatosEmpresa(1) & "'"
             RptUsuarios.Formulas(2) = "NitEmpresa= '" & Nit & "'"
             RptUsuarios.Formulas(3) = "Titulo= '" & Y & "'"
             RptUsuarios.Formulas(4) = "Parametro= '" & R & "'"
             RptUsuarios.Formulas(5) = "FechaFacAno= '" & f & "'"
             X = Inf + "InfReportedePropinas" & Empresa & ".rpt"
             RptUsuarios.ReportFileName = X
             RptUsuarios.Destination = crptToWindow
             RptUsuarios.WindowTitle = "LISTADO DE PROPINAS POR RECAUDOS"
             RptUsuarios.WindowMinButton = True
             RptUsuarios.WindowMaxButton = True
             RptUsuarios.WindowState = crptMaximized
             RptUsuarios.PrintReport
        End With
        Exit Sub
Imprime: Call MensajeAdministrador
End Sub

Private Sub BuscarRecaudos_MediosPagos()
        On Error GoTo Salida
        Dim vColMedios As New Collection
        
        Set vColMedios = Nothing
        FGdetalleMediosPagos.Rows = 1: FGmediosPagos.Rows = 1
                        
                       
        With FGdetalleMediosPagos
             Sql = "SELECT A.*,B.*,E.CliStNombreCliente AS NomPropietario,G.empsigl AS NombreEmpresaVehiculo,F.CliStNombreCliente AS NombreConductor,D.AgeStDescripcion, " & _
                   "M.TmpStDescripcion,X.BanStDescripcion " & _
                   "FROM TRANRECAUDOS A " & _
                   "INNER JOIN TRANMEDIOSPAGOSRECAUDOS B ON (A.RcdIdStEmpresa = B.MprIdStEmpresa AND A.RcdIdStNumRecaudo = B.MprIdStNumRecaudo) " & _
                   "INNER JOIN CLIENTES E ON (A.RcdIdStEmpresaVehiculo = E.cliempr AND A.RcdIdStPropietario = E.clinit) " & _
                   "INNER JOIN TRANAGENCIAS D ON (A.RcdIdStEmpresaVehiculo = D.AgeIdStEmpresa AND A.RcdIdStAgencia = D.AgeIdStAgencia) " & _
                   "LEFT OUTER JOIN CLIENTES F ON (A.RcdIdStEmpresaVehiculo = F.cliempr AND A.RcdIdStConductor = F.clinit) " & _
                   "INNER JOIN EMPRESAS G ON (A.RcdIdStEmpresaVehiculo = G.empcodi) " & _
                   "INNER JOIN TRANMEDIODEPAGOS M ON (B.MprIdStEmpresa = M.TmpIdStEmpresa AND B.MprIdInMedioPago = M.TmpIdInMedioPago) " & _
                   "LEFT OUTER JOIN BANCOS X ON (B.MprIdStEmpresa = X.BanStEmpresa AND B.MprIdInBanco = X.BanIdInBanco) " & _
                   "WHERE (A.RcdIdStEmpresa = '" & Empresa & "' AND A.RcdIdStComprobante = '" & vParametros(10) & "' AND RcdStEstado= 'A' AND  " & _
                       "RcdDaFecha BETWEEN '" & Format(DTfechaI.value, FormatoFecha) & "' AND '" & Format(DTfechaF.value, FormatoFecha) & "' " & _
                       "" & vFiltro & ") " & _
                  "ORDER BY RcdDaFecha,RcdIdStNumRecaudo"
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                 While Not rdoRs.EOF
                       .AddItem ""
                       .TextMatrix(.Rows - 1, MediosP.Numero) = Trim("" & rdoRs!RcdIdStNumRecaudo)
                       .TextMatrix(.Rows - 1, MediosP.Fecha) = Format(rdoRs!RcdDaFecha, "dd-mm-yyyy")
                       .TextMatrix(.Rows - 1, MediosP.Agencia) = Trim("" & rdoRs!AgeStDescripcion)
                       .TextMatrix(.Rows - 1, MediosP.Punto) = Trim("" & rdoRs!RcdIdStPuntoRecaudo)
                       .TextMatrix(.Rows - 1, MediosP.NomEmpVehi) = Trim("" & rdoRs!NombreEmpresaVehiculo)
                       .TextMatrix(.Rows - 1, MediosP.Propie) = Trim("" & rdoRs!NomPropietario)
                       .TextMatrix(.Rows - 1, MediosP.NomCon) = Trim("" & rdoRs!NombreConductor)
                       .TextMatrix(.Rows - 1, MediosP.Vehiculo) = Trim("" & rdoRs!RcdIdStPlaca)
                       .TextMatrix(.Rows - 1, MediosP.CedCon) = Trim("" & rdoRs!RcdIdStConductor)
                       .TextMatrix(.Rows - 1, MediosP.CedulaProp) = Trim("" & rdoRs!RcdIdStPropietario)
                       .TextMatrix(.Rows - 1, MediosP.NombreMedio) = Trim("" & rdoRs!TmpStDescripcion)
                       .TextMatrix(.Rows - 1, MediosP.IdMediopago) = Trim("" & rdoRs!MprIdInMedioPago)
                       .TextMatrix(.Rows - 1, MediosP.CodUsuario) = Trim("" & rdoRs!RcdStUsuario)
                       .TextMatrix(.Rows - 1, MediosP.VrTotal) = Val("" & rdoRs!MprInValorMedioPago)
                       .TextMatrix(.Rows - 1, MediosP.VrBase) = Val("" & rdoRs!MprInValorBase)
                       .TextMatrix(.Rows - 1, MediosP.Cantidad) = Val("" & rdoRs!MprInCantidad)
                       
                       .TextMatrix(.Rows - 1, MediosP.Referencia) = Trim("" & rdoRs!MprStReferencia)
                       .TextMatrix(.Rows - 1, MediosP.NumCheque) = Trim("" & rdoRs!MprStNumero)
                       .TextMatrix(.Rows - 1, MediosP.Banco) = Trim("" & rdoRs!BanStDescripcion)
                       .TextMatrix(.Rows - 1, MediosP.FechaMedio) = Trim("" & rdoRs!MprStFechaMedio)
                       .TextMatrix(.Rows - 1, MediosP.Hora) = Trim("" & rdoRs!RcdFechaHoraRegistro)
                                                      
                                                      
                       On Error Resume Next
                       J = "-1"
                       M = Trim("" & rdoRs!MprIdInMedioPago)
                       J = vColMedios(M)
                       If J = "-1" Then
                            FGmediosPagos.AddItem ""
                            FGmediosPagos.TextMatrix(FGmediosPagos.Rows - 1, mGrupos.Codigo) = Trim("" & rdoRs!MprIdInMedioPago)
                            FGmediosPagos.TextMatrix(FGmediosPagos.Rows - 1, mGrupos.Nombre) = Trim("" & rdoRs!TmpStDescripcion)
                            FGmediosPagos.TextMatrix(FGmediosPagos.Rows - 1, mGrupos.Total) = Val("" & rdoRs!MprInValorMedioPago)
                            FGmediosPagos.TextMatrix(FGmediosPagos.Rows - 1, mGrupos.Anticipo) = Val("" & rdoRs!MprInCantidad)
                            
                            vColMedios.Add FGmediosPagos.Rows - 1, M
                       Else
                            FGmediosPagos.TextMatrix(J, mGrupos.Total) = Val(FGmediosPagos.TextMatrix(J, mGrupos.Total)) + Val("" & rdoRs!MprInValorMedioPago)
                            FGmediosPagos.TextMatrix(J, mGrupos.Anticipo) = Val(FGmediosPagos.TextMatrix(J, mGrupos.Anticipo)) + Val("" & rdoRs!MprInCantidad)
                       End If
                                                                             
                       rdoRs.MoveNext
                 Wend
             End If
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
        End With
        Exit Sub
Salida:         Call MensajeAdministrador
End Sub

Private Sub Columnas_Verificacion(Mx As Boolean)
        On Error GoTo Salida
        
        With Me.FGrecibo
             .ColHidden(Datos.vDfMandante) = Mx
             .ColHidden(Datos.vDfRecaudadora) = Mx
             .ColHidden(Datos.VrCrMandante) = Mx
             .ColHidden(Datos.VrDbRecaudadora) = Mx
             .ColHidden(Datos.NumMandante) = Mx
             .ColHidden(Datos.NumRecaudadora) = Mx
             .ColHidden(Datos.CuadreMandante) = Mx
             .ColHidden(Datos.CuadreRecaudadora) = Mx
        End With
        Exit Sub
Salida:         Call MensajeAdministrador
End Sub

Private Sub Buscar_RecaudosCartera()
        On Error GoTo Salida
        
        With FGabonosCartera
             .Rows = 1
             
             Sql = "SELECT A.*,B.*,K.empsigl AS NombreEmpresaVehiculo,M.CliStNombreCliente AS NombrePropietarioVehiculo " & _
                   "FROM TRANRECAUDOS A " & _
                   "INNER JOIN TRANABONOSCARTERA B ON (A.RcdIdStEmpresa = B.AbcIdStEmpresa AND A.RcdIdStNumRecaudo = B.AbcIdStNumRecaudo) " & _
                   "INNER JOIN EMPRESAS K ON (B.AbcIdStEmpresaVehiculo = K.empcodi) " & _
                   "INNER JOIN CLIENTES M ON (B.AbcIdStEmpresaVehiculo = M.cliempr AND B.AbcIdStPropietario = M.clinit) " & _
                   "WHERE (A.RcdIdStEmpresa = '" & Empresa & "' AND A.RcdIdStComprobante = '" & vParametros(10) & "' AND RcdStEstado= 'A' AND  " & _
                      "RcdDaFecha BETWEEN '" & Format(DTfechaI.value, FormatoFecha) & "' AND '" & Format(DTfechaF.value, FormatoFecha) & "' " & _
                      "" & vFiltro & ") " & _
                  "ORDER BY RcdDaFecha,RcdIdStNumRecaudo"
            If Buscar_Res(rdoRs, Sql) = BDOk Then
                 .Redraw = flexRDNone
                While Not rdoRs.EOF
                      .AddItem ""
                      .TextMatrix(.Rows - 1, PagosCartera.Numero) = Trim("" & rdoRs!RcdIdStNumRecaudo)
                      .TextMatrix(.Rows - 1, PagosCartera.Fecha) = Trim("" & rdoRs!RcdDaFecha)
                      .TextMatrix(.Rows - 1, PagosCartera.Agencia) = Trim("" & rdoRs!RcdIdStAgencia)
                      .TextMatrix(.Rows - 1, PagosCartera.Punto) = Trim("" & rdoRs!RcdIdStPuntoRecaudo)
                      .TextMatrix(.Rows - 1, PagosCartera.VrAbono) = Val("" & rdoRs!AbcInValorAbono)
                      .TextMatrix(.Rows - 1, PagosCartera.Vehiculo) = Trim("" & rdoRs!AbcIdStPlaca)
                      .TextMatrix(.Rows - 1, PagosCartera.Propie) = Trim("" & rdoRs!AbcIdStPropietario)
                      .TextMatrix(.Rows - 1, PagosCartera.vResponsable) = Trim("" & rdoRs!AbcStUsuario)
                      .TextMatrix(.Rows - 1, PagosCartera.EmpresaVehiculo) = Trim("" & rdoRs!NombreEmpresaVehiculo)
                      .TextMatrix(.Rows - 1, PagosCartera.NombrePropVehiculo) = Trim("" & rdoRs!NombrePropietarioVehiculo)
                                                                           
                      rdoRs.MoveNext
                Wend
                .Redraw = flexRDDirect
                
                If .Rows > 2 Then
                    .AddItem ""
                    .TextMatrix(.Rows - 1, PagosCartera.NombrePropVehiculo) = "TOTALES"
                    .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                    .Cell(flexcpFontBold, .Rows - 1, 0, .Rows - 1, .Cols - 1) = True
                    .Cell(flexcpFontSize, .Rows - 1, 0, .Rows - 1, .Cols - 1) = 9
                    .Cell(flexcpBackColor, 1, PagosCartera.VrAbono, .Rows - 1, PagosCartera.VrAbono) = &HFFFFC0
                    For i = 1 To .Rows - 2
                        .TextMatrix(.Rows - 1, PagosCartera.VrAbono) = Val(.TextMatrix(.Rows - 1, PagosCartera.VrAbono)) + Val(.TextMatrix(i, PagosCartera.VrAbono))
                    Next i
                End If
            End If
            .AutoSize 0, .Cols - 1
            .AllowUserResizing = flexResizeColumns
        End With
        Exit Sub
Salida: Call MensajeAdministrador
End Sub
