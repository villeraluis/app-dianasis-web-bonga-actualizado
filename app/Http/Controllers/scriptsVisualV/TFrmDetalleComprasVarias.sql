VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{1C0489F8-9EFD-423D-887A-315387F18C8F}#1.0#0"; "vsflex8l.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmDetalleComprasVarias 
   BackColor       =   &H00C0C0FF&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   5100
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11910
   Icon            =   "FrmDetalleComprasVarias.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5100
   ScaleWidth      =   11910
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton CmdImprimir 
      Height          =   360
      Left            =   10350
      Picture         =   "FrmDetalleComprasVarias.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   4590
      Width           =   1380
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
      Left            =   1080
      TabIndex        =   10
      Top             =   5535
      Visible         =   0   'False
      Width           =   1770
   End
   Begin VB.Frame Frame1 
      Height          =   1185
      Left            =   135
      TabIndex        =   1
      Top             =   45
      Width           =   11670
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
         Left            =   7620
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
         Left            =   7620
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
         Left            =   7620
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
         Left            =   6255
         TabIndex        =   13
         Top             =   810
         Width           =   1305
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Vr. Iva:"
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
         Left            =   6255
         TabIndex        =   9
         Top             =   495
         Width           =   600
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
         Left            =   6255
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
         Left            =   1260
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
         Left            =   1260
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
         Left            =   1260
         TabIndex        =   3
         Top             =   180
         Width           =   315
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "No Factura:"
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
         Width           =   1020
      End
   End
   Begin Crystal.CrystalReport NotaReporte 
      Left            =   -180
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VSFlex8LCtl.VSFlexGrid FGMovimiento 
      Height          =   2790
      Left            =   135
      TabIndex        =   17
      Top             =   1665
      Width           =   11670
      _cx             =   20585
      _cy             =   4921
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
      Height          =   2955
      Left            =   135
      TabIndex        =   18
      Top             =   4995
      Visible         =   0   'False
      Width           =   11670
      _cx             =   20585
      _cy             =   5212
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
      Caption         =   "      Detalle de la Compra"
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
      Top             =   1395
      Width           =   11670
   End
End
Attribute VB_Name = "FrmDetalleComprasVarias"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Entrada As Boolean, Saldo As Variant, Numeros As New clsNumeros, Habitacion As String, FacturaSin As String, FacFolio As Boolean
Dim ValorAnticipo, vRegistro As String, vUsuarioFac As String, vEntrada As Boolean
Private Enum Detalle
        Nume = 0
        cod = 1
        Factura = 2
        DescriPago = 3
        Fecha = 4
        Valor = 5
           
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

Private Sub CmdImprimir_Click()
        On Error GoTo sALIDA
        
        On Error GoTo sALIDA
        Dim Mh As String, GF As String, Iw As String
        
        With FGdetalle
             Letras = Numeros.NroEnLetras(Val(Me.TxtPprInValor.Text)) + " PESOS"
             Call Transaccion(BDBegin)
             
             Sql = "DELETE FROM INFORME3"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                                          
             Nx = Val(TxtPprInValor.Text)
             For i = 1 To FGMovimiento.Rows - 1
                  If FGMovimiento.TextMatrix(i, Men.Cuenta) <> Empty Then
                        Y1 = Trim(FGMovimiento.TextMatrix(i, Men.Cuenta))
                        Y1 = Mid(Trim(Y1) & " " & Trim(FGMovimiento.TextMatrix(i, Men.NombreCta)), 1, 60)
                        Sql = "INSERT INTO INFORME3(InfDes2,InfDesc,InfVal3,InfVal4,InfVal1) " & _
                              "VALUES ('" & Y1 & "','" & Mid(FGMovimiento.TextMatrix(i, Men.Desc), 1, 60) & "'," & _
                              "" & Val(FGMovimiento.TextMatrix(i, Men.ValorDeb)) & "," & Val(FGMovimiento.TextMatrix(i, Men.ValorCre)) & "," & _
                              "" & Nx & ")"
                       If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                  End If
             Next i
             Call Transaccion(BDCommit)
             Iw = "InfNotas.rpt"
             NitS = "Nit: " + DatosEmpresa(0)
             Ciudad = DatosEmpresa(3) + "  -  " + DatosEmpresa(11)
             Tel = "Teléfono: " + DatosEmpresa(4)
             
             NotaReporte.DiscardSavedData = True
             NotaReporte.Formulas(1) = "Letras= '" & Letras & "'"
             NotaReporte.Formulas(2) = "Empresa= '" & Sigl & "'"
             NotaReporte.Formulas(3) = "Cedula= '" & LblCedula.Caption & "'"
             NotaReporte.Formulas(4) = "Cliente= '" & Me.LblCliente.Caption & "'"
             NotaReporte.Formulas(5) = "Factura = '" & LblEgreso.Caption & "'"
             NotaReporte.Formulas(6) = "FechaVenDia = '" & Mid(LblFecha.Caption, 1, 2) & "'"
             NotaReporte.Formulas(7) = "FechaVenMes = '" & Mid(LblFecha.Caption, 4, 2) & "'"
             NotaReporte.Formulas(8) = "FechaVenAno = '" & Mid(LblFecha.Caption, 7, 4) & "'"
             NotaReporte.Formulas(9) = "Direccion = '" & LblDescripcion.Caption & "'"
             NotaReporte.Formulas(10) = "TipoDocumento = 'FACTURA DE COMPRA'"
             NotaReporte.Formulas(11) = "NitEmpresa = '" & NitS & "'"
             NotaReporte.Formulas(12) = "DirEmpresa = '" & Ciudad & "'"
             NotaReporte.Formulas(13) = "TelEmpresa= '" & Tel & "'"
                                       
             X = Inf + Iw: NotaReporte.ReportFileName = X
             NotaReporte.Destination = crptToWindow
             NotaReporte.WindowTitle = "Factura de Compra"
             NotaReporte.WindowMinButton = True
             NotaReporte.WindowMaxButton = True
             NotaReporte.WindowState = crptMaximized
             NotaReporte.PrintReport
             
        End With
        Exit Sub
sALIDA:
        Call MensajeAdministrador("Error al imprimir el recibo de caja")
       
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
        Frame1.BackColor = Bcolor1
        Me.Caption = Trim(Titul)
        Lbltitulo.BackColor = Bfcolor
        Lbltitulo.ForeColor = Fcolor1
        Lbltitulo.Font = TipoLetraTitulo: Lbltitulo.FontBold = NegLetraTitulo: Lbltitulo.FontSize = 11
        Lbltitulo.Height = 315
        
        Call DGRILLA
        Call Configurar_Pantalla
        Entrada = True
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
        With FGdetalle
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
             .ForeColorFixed = vColorFixed
             .ForeColor = &HC00000
             .GridLines = flexGridFlat
             .FocusRect = flexFocusRaised
             .ForeColorFixed = vColorFixed
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .FixedCols = 0
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .TextMatrix(0, Detalle.cod) = "Código"
             .TextMatrix(0, Detalle.DescriPago) = "Descripción"
             .TextMatrix(0, Detalle.Valor) = "Valor"
             .TextMatrix(0, Detalle.Fecha) = "Fecha"
             .TextMatrix(0, Detalle.Factura) = "Documento"
             .ColFormat(Detalle.Valor) = "#,###.00"
             .ColWidth(Detalle.DescriPago) = 5000
             .ColWidth(Detalle.cod) = 1000
             .ColWidth(Detalle.Valor) = 1500
             .ColWidth(Detalle.Fecha) = 1300
             .ColWidth(Detalle.Factura) = 1500
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .ColHidden(Detalle.Nume) = True
             .ColHidden(Detalle.cod) = True
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
             .ForeColorFixed = vColorFixed
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
             .ColFormat(Men.ValorDeb) = "##,###.00"
             .ColFormat(Men.ValorCre) = "##,###.00"
             .ColWidth(NumeroEgre) = 1200
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = False
             .ColHidden(Men.NumeroEgre) = True
             .ColHidden(Men.Item) = True
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
        End With
                
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        CmdImprimir.Picture = LoadResPicture(BotonSeleccionado.imprimir, vbResBitmap)
End Sub

Private Sub Form_Resize()
        On Error Resume Next
        If Screen.Width >= 15360 And Screen.Height >= 10800 Then
              F = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0)
              Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0)
               
              Me.Move F + AnchoMenu, Y + TopMenu, Me.Width, Me.Height
        End If
End Sub

Private Sub Sumar_Registros()
                     
        Texto = TxtPprInValor.Text
        Call Separador_Numerico(True): lblValor.Caption = "$ " & Texto
        
        Texto = TxtPprInRetefuente.Text
        Call Separador_Numerico(True): LblRetefuente.Caption = "$ " & Texto
        
        Texto = TxtPprInValorDescuento.Text
        Call Separador_Numerico(True): lblDescuento.Caption = "$ " & Texto
            
End Sub

Private Sub Configurar_Pantalla()
                
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        N = FGMovimiento.Left + 300
        FGMovimiento.Width = Me.Width - N
        Lbltitulo.Width = Me.FGMovimiento.Width
        Frame1.Width = FGMovimiento.Width
                                              
End Sub
