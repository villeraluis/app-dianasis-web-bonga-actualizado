VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Begin VB.Form FrmListadoAnalisisDeProveedores 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8520
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11865
   Icon            =   "FrmListadoAnalisisDeProveedores.frx":0000
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
      Left            =   10125
      Picture         =   "FrmListadoAnalisisDeProveedores.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   17
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   1665
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
   Begin VSFlex8DAOCtl.VSFlexGrid FGproveedor 
      Height          =   5820
      Left            =   450
      TabIndex        =   14
      Top             =   2115
      Width           =   11280
      _cx             =   19897
      _cy             =   10266
      Appearance      =   0
      BorderStyle     =   0
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
      ForeColor       =   &H00FF0000&
      Height          =   915
      Left            =   405
      TabIndex        =   5
      Top             =   765
      Width           =   8610
      Begin VB.CommandButton CmdTercero 
         Height          =   315
         Left            =   8190
         Picture         =   "FrmListadoAnalisisDeProveedores.frx":6184
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
         Format          =   143720451
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
         Format          =   143720451
         CurrentDate     =   38681
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
         Caption         =   "Proveedores"
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
         Width           =   1080
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
            Picture         =   "FrmListadoAnalisisDeProveedores.frx":6746
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoAnalisisDeProveedores.frx":6C8A
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoAnalisisDeProveedores.frx":6D96
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
      Left            =   10035
      TabIndex        =   6
      Top             =   630
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
      Caption         =   "      Analisis de Deuda por Proveedor"
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
Attribute VB_Name = "FrmListadoAnalisisDeProveedores"
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
        Fecha
        Factura
        Concepto
        Total
        vCredito
        vDebito
        vSaldo
        Documento
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
        Documento
End Enum

Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        N = FGproveedor.Left + 300
        FGproveedor.Width = Me.Width - N
        FGproveedor.Height = Me.Height - FGproveedor.Top - vHeightFor
        
        
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        
        If Permisos(3) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        Progres.Value = 1: Progres.Min = 1
        Progres.Max = 10
        If DTfechaI.Value > DTfechaF.Value Then MsgBox "Seleccione bien el intervalo de fecha", vbExclamation + vbOKOnly, "Atenci�n": DTfechaI.SetFocus: Exit Sub
        If Trim(TxtTercero.Text) = Empty Then MsgBox "Se�or usuario seleccione el proveedor", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        
        vFiltro = Empty
        Progres.Visible = True: Progres.Value = Progres.Value + 1
        Call Analisis_Proveedor
                
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
            With FGproveedor
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
        If FGproveedor.Rows - 1 <= 1 Then MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
             FGproveedor.SaveGrid ComArchivo.FileName, flexFileExcel, 3
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
        FGproveedor.Rows = 1
End Sub

Private Sub CmdTercero_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        CmdTercero.Picture = LoadResPicture(BotonSeleccionado.BusquedaS, vbResBitmap)
End Sub

Private Sub DTfechaF_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaF_LostFocus()
        FGproveedor.Rows = 1
End Sub

Private Sub DTfechaI_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaI_LostFocus()
        FGproveedor.Rows = 1
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
            SendKeys "{TAB}"
            KeyAscii = 0
        End If
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
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana
        CmdNivel(0).BackColor = Bcolor1
        CmdNivel(1).BackColor = Bcolor1
        
        With BarraOperaciones
              .BarUso = BaConsulta
              .Tabla = ""
              .BarBuscar = EstCancel
        End With
               
        J = 0: K = Empty
        Call Define_Grids(FGproveedor)
        Call Define_Grids(FGdatos)
        Idx = 0
        Call DGRILLA
        LblNit.Caption = Empty
                                
        RegFor = 1
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
                
        With FGproveedor
             .Rows = 1
             .Cols = 10
             .FixedCols = 0
             .FontName = "Tahoma"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColor = ColorGrilla
             .BackColorBkg = ColorGrilla
             .BackColorFixed = vbWhite
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
             .TextMatrix(0, Datos.Descri) = ""
             .TextMatrix(0, Datos.vCredito) = "Valor Credito"
             .TextMatrix(0, Datos.Total) = "Saldo Anterior"
             .TextMatrix(0, Datos.vSaldo) = "Nuevo Saldo"
             .TextMatrix(0, Datos.vDebito) = "Valor Debito"
             .TextMatrix(0, Datos.Fecha) = "Fecha"
             .TextMatrix(0, Datos.Concepto) = "Concepto"
             For K = Datos.Total To Datos.vSaldo
                .ColFormat(K) = "#,###.00"
                .ColWidth(K) = 1300
             Next K
             .ColWidth(Datos.Item) = 200
             .ColWidth(Datos.Descri) = 6000
              .ColWidth(Datos.Fecha) = 1200
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .OutlineBar = flexOutlineBarComplete
             .OutlineCol = Datos.Descri
             .ColHidden(Datos.Factura) = True
             .ColHidden(Datos.Fecha) = False
             .ColHidden(Datos.Documento) = True
             
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
             .ColFormat(SaldoCx.Saldo) = "#,###.00"
             .ColHidden(SaldoCx.Documento) = True
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
              F = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0)
              Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0)
               
              Me.Move F + AnchoMenu, Y + TopMenu, Me.Width, Me.Height
        End If
End Sub

Private Sub Imprimir_Informe()
        With FGproveedor
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
                                               
             Mx = "ANALISIS DE PROVEEDORES"
             R = " " & Format(DTfechaI.Value, "dd/mm/yyyy") & "" & " HASTA " & Format(DTfechaF.Value, "dd/mm/yyyy")
             RepCartera.DiscardSavedData = True
             RepCartera.Formulas(1) = "Empresa= '" & Sigl & "'"
             RepCartera.Formulas(2) = "Parametro= '" & R & "'"
             RepCartera.Formulas(3) = "Cliente= '" & TxtNombre.Text & "'"
             X = Inf + "AnalisisDeudaProveedor.rpt"
             RepCartera.ReportFileName = X
             RepCartera.Destination = crptToWindow
             RepCartera.WindowTitle = "LISTADO DE ANALISIS DE PROVEEDORES"
             RepCartera.WindowMinButton = True
             RepCartera.WindowMaxButton = True
             RepCartera.WindowState = crptMaximized
             RepCartera.PrintReport
        End With
        Exit Sub
Imprime:
   MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atenci�n"

End Sub

Private Sub Analisis_Proveedor()
        On Error GoTo sALIDA
        
        With FGdatos
             .Rows = 1: FGdatos.Redraw = flexRDNone
             Progres.Value = Progres.Value + 1
             vSaldoIni = 0
             A = Empty
                                                  
            '***** Relacion de facturas y notas creditos
             Sql = "SELECT A.*,B.ComStTipoMov FROM PROVEEDORES A " & _
                   "INNER JOIN COMPROBANTES B ON (A.PrvIdStEmpresa = B.comempr AND A.PrvIdStComprobante = B.comcodi) " & _
                   "WHERE (PrvIdStEmpresa = '" & Empresa & "' AND PrvIdStPeriodoAplicacion = '1' AND PrvDaFechaCompra <= '" & Format(DTfechaF.Value, FormatoFecha) & "' AND " & _
                   "PrvIdStProveedor = '" & TxtTercero.Text & "') " & _
                   "ORDER BY PrvDaFechaCompra"
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                      vFecha = rdoRs!PrvDaFechaCompra
                      If vFecha < DTfechaI.Value Then
                            vSaldoIni = vSaldoIni + Val("" & rdoRs!PrvInValor)
                      Else
                            .AddItem ""
                            .TextMatrix(.Rows - 1, SaldoCx.Fecha) = Format(rdoRs!PrvDaFechaCompra, FormatoFecha)
                            .TextMatrix(.Rows - 1, SaldoCx.FechaMos) = Format(rdoRs!PrvDaFechaCompra, "dd-MM-yyyy")
                            .TextMatrix(.Rows - 1, SaldoCx.Concepto) = Trim("" & rdoRs!PrvIdInConceptoProveedores)
                            .TextMatrix(.Rows - 1, SaldoCx.vCreditos) = Val("" & rdoRs!PrvInValor)
                            .TextMatrix(.Rows - 1, SaldoCx.Documento) = Trim("" & rdoRs!PrvIdStDocumento)
                            If Trim("" & rdoRs!ComStTipoMov) = vTipoComprobante(11) Then
                                 .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Nota Credito No. " & rdoRs!PrvIdStDocumento)
                                 .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("" & rdoRs!PrvIdStDocumento)
                            Else
                                 .TextMatrix(.Rows - 1, SaldoCx.Nombre) = "Factura Compra No: " & Trim("" & rdoRs!PrvStFactura) & " Doct.Interno No. " & Trim("" & rdoRs!PrvIdStDocumento)
                                 .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("" & rdoRs!PrvStFactura)
                            End If
                      End If
                      rdoRs.MoveNext
                Wend
             End If
             Progres.Value = Progres.Value + 1
            
            '****** EGRESOS DE BANCOS Y DE CAJA (Pagos de facturas) - notas debitos proveedores
             A = Empty
             Sql = "SELECT A.*,B.*, C.comnomb,D.ComIdStDocumentoSoporte FROM PAGOS A " & _
                   "INNER JOIN MOVPAGOS B ON (A.PprIdStEmpresa = B.MprIdStEmpresa AND A.PprIdStComprobante = B.MprIdStComprobante AND A.PprIdInDocumento = B.MprIdInDocumento) " & _
                   "INNER JOIN COMPROBANTES C ON(B.MprIdStEmpresa = C.comempr AND B.MprIdStComprobanteCompra = C.comcodi) " & _
                   "INNER JOIN COMPRAS D ON(B.MprIdStEmpresa = D.ComIdStEmpresa AND B.MprIdStComprobanteCompra = D.ComIdStComprobante AND B.MprIdStDocumentoCompra = D.ComIdStDocumento) " & _
                   "WHERE (A.PprIdStEmpresa = '" & Empresa & "' AND (A.PprIdStTipoComprobante = '" & vTipoComprobante(1) & "' OR A.PprIdStTipoComprobante = '" & vTipoComprobante(3) & "' OR A.PprIdStTipoComprobante = '" & vTipoComprobante(10) & "') AND " & _
                          "PprDaFechaPago <='" & Format(DTfechaF.Value, FormatoFecha) & "' AND " & _
                          "(A.PprIdStProveedor = '" & TxtTercero.Text & "' OR B.MprIdStProveedor = '" & TxtTercero.Text & "') AND  PprStEstadoPago = '" & EAprobado & "') " & _
                   "ORDER BY PprDaFechaPago,PprIdStComprobante,PprIdInDocumento" 'PprInTipoPago = 0 AND
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                      vFecha = rdoRs!PprDaFechaPago
                      If vFecha < DTfechaI.Value Then
                            vSaldoIni = vSaldoIni - Val("" & rdoRs!MprInValor)
                      Else
                            .AddItem ""
                            .TextMatrix(.Rows - 1, SaldoCx.Fecha) = Format(rdoRs!PprDaFechaPago, FormatoFecha)
                            .TextMatrix(.Rows - 1, SaldoCx.FechaMos) = Format(rdoRs!PprDaFechaPago, "dd-MM-yyyy")
                            .TextMatrix(.Rows - 1, SaldoCx.vDebitos) = Val("" & rdoRs!MprInValor)
                            .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("" & rdoRs!PprIdInDocumento)
                            .TextMatrix(.Rows - 1, SaldoCx.Concepto) = Trim("" & rdoRs!MprIdInConceptoProveedor)
                            .TextMatrix(.Rows - 1, SaldoCx.Documento) = Trim("" & rdoRs!MprIdStDocumentoCompra)
                            If Trim(rdoRs!PprIdStTipoComprobante) = vTipoComprobante(1) Then
                                 .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Egreso de Banco No. " & rdoRs!PprIdInDocumento)
                            Else
                                If Trim(rdoRs!PprIdStTipoComprobante) = vTipoComprobante(10) Then
                                    .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Nota Debito No. " & rdoRs!PprIdInDocumento)
                                Else
                                    .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Egreso de Caja No. " & rdoRs!PprIdInDocumento)
                                End If
                            End If
                            .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim(.TextMatrix(.Rows - 1, SaldoCx.Nombre)) & " - " & Trim("" & rdoRs!MprStDescripcion) & " " & Trim("" & rdoRs!ComNomb) & " " & " N�mero " & Trim("" & rdoRs!ComIdStDocumentoSoporte) & " Concepto " & Trim("" & rdoRs!MprIdInConceptoProveedor)
                      End If
                      rdoRs.MoveNext
                Wend
             End If
             
             Progres.Value = Progres.Value + 1
            '********EGRESOS DE CAJA MENOR *************************************
             Sql = "SELECT A.*,B.McmInValor,B.McmStDescripcion,B.McmIdInConceptoProveedor,B.McmIdStDocumentoCompra, C.comnomb,D.ComIdStDocumentoSoporte,B.McmIdInConceptoProveedor FROM CAJAMENOR A " & _
                   "INNER JOIN MOVCAJAMENOR B ON (A.CmeIdStEmpresa = B.McmIdStEmpresa AND A.CmeIdInCaja = B.McmIdInCaja AND A.CmeStComprobante = B.McmIdStComprobante AND A.CmeIdInDocumento = B.McmIdInDocumento) " & _
                   "INNER JOIN COMPROBANTES C ON(B.McmIdStEmpresa = C.comempr AND B.McmIdStComprobanteCompra = C.comcodi) " & _
                   "INNER JOIN COMPRAS D ON(B.McmIdStEmpresa = D.ComIdStEmpresa AND B.McmIdStComprobanteCompra = D.ComIdStComprobante AND B.McmIdStDocumentoCompra = D.ComIdStDocumento AND A.CmeIdStProveedor = D.ComIdStProveedor) " & _
                   "WHERE (A.CmeIdStEmpresa = '" & Empresa & "' AND CmeDaFechaDoc <='" & Format(DTfechaF.Value, FormatoFecha) & "' AND " & _
                          "A.CmeIdStProveedor = '" & TxtTercero.Text & "' AND (CmeStEstadoRegistro is null or CmeStEstadoRegistro = '" & EAprobado & "')) " & _
                   "ORDER BY CmeDaFechaDoc,CmeStComprobante,CmeIdInDocumento"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                      vFecha = rdoRs!CmeDaFechaDoc
                      If vFecha < DTfechaI.Value Then
                            vSaldoIni = vSaldoIni - Val("" & rdoRs!McmInValor)
                      Else
                            .AddItem ""
                            .TextMatrix(.Rows - 1, SaldoCx.Concepto) = Trim("" & rdoRs!McmIdInConceptoProveedor)
                            .TextMatrix(.Rows - 1, SaldoCx.Fecha) = Format(rdoRs!CmeDaFechaDoc, FormatoFecha)
                            .TextMatrix(.Rows - 1, SaldoCx.FechaMos) = Format(rdoRs!CmeDaFechaDoc, "dd-MM-yyyy")
                            .TextMatrix(.Rows - 1, SaldoCx.vDebitos) = Val("" & rdoRs!McmInValor)
                            .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("" & rdoRs!CmeIdInDocumento)
                            .TextMatrix(.Rows - 1, SaldoCx.Documento) = Trim("" & rdoRs!McmIdStDocumentoCompra)
                            .TextMatrix(.Rows - 1, SaldoCx.Nombre) = "Egreso de Caja Menor No. " & Trim(rdoRs!CmeIdInDocumento) & " - " & Trim("" & rdoRs!McmStDescripcion) & " " & Trim("" & rdoRs!ComNomb) & " " & " N�mero " & Trim("" & rdoRs!ComIdStDocumentoSoporte) & " Concepto " & Trim("" & rdoRs!McmIdInConceptoProveedor)
                      End If
                      rdoRs.MoveNext
                Wend
             End If
             Progres.Value = Progres.Value + 1
            
            '****** Devoluciones en Compras
             Sql = "SELECT A.* FROM COMPRAS A " & _
                   "WHERE (A.ComIdStEmpresa = '" & Empresa & "' AND (A.ComIdStTipoComprobante = '" & vTipoComprobante(7) & "') AND " & _
                          "ComDaFechaFactura <='" & Format(DTfechaF.Value, FormatoFecha) & "' AND " & _
                          "A.ComIdStProveedor = '" & TxtTercero.Text & "' AND ComStEstadoCompra = '" & EAprobado & "') " & _
                   "ORDER BY ComDaFechaFactura"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                      vFecha = rdoRs!ComDaFechaFactura
                      If vFecha < DTfechaI.Value Then
                            vSaldoIni = vSaldoIni - (Val("" & rdoRs!ComInValor) - Val("" & rdoRs!ComInValorDescuento) + Val("" & rdoRs!ComInValorIva))
                      Else
                            .AddItem ""
                            .TextMatrix(.Rows - 1, SaldoCx.Fecha) = Format(rdoRs!ComDaFechaFactura, FormatoFecha)
                            .TextMatrix(.Rows - 1, SaldoCx.FechaMos) = Format(rdoRs!ComDaFechaFactura, "dd-MM-yyyy")
                            .TextMatrix(.Rows - 1, SaldoCx.Concepto) = Trim("" & rdoRs!ComIdInConceptoProveedores)
                            .TextMatrix(.Rows - 1, SaldoCx.Documento) = Trim("" & rdoRs!ComIdStDocumentoDevol)
                            If Val("" & rdoRs!ComStRetencionAsumida) = 1 Then
                                 .TextMatrix(.Rows - 1, SaldoCx.vDebitos) = Val("" & rdoRs!ComInValor) - Val("" & rdoRs!ComInValorDescuento) + Val("" & rdoRs!ComInValorIva)
                            Else
                                .TextMatrix(.Rows - 1, SaldoCx.vDebitos) = Val("" & rdoRs!ComInValor) - Val("" & rdoRs!ComInValorDescuento) + Val("" & rdoRs!ComInValorIva) - Val("" & rdoRs!ComInValorRetencion)
                            End If
                            .TextMatrix(.Rows - 1, SaldoCx.Factura) = Trim("" & rdoRs!ComIdStDocumento)
                            .TextMatrix(.Rows - 1, SaldoCx.Nombre) = Trim("Devoluciones en Compra No. " & rdoRs!ComIdStDocumento)
                      End If
                      rdoRs.MoveNext
                Wend
             End If
             Progres.Value = Progres.Value + 1
            '****************************************************************************************
             If FGdatos.Rows > 1 Then
                   FGdatos.Select 1, SaldoCx.Fecha
                   FGdatos.Sort = flexSortGenericAscending
                   FGdatos.Redraw = flexRDDirect
                   
                   FGdatos.AutoSize 0, FGdatos.Cols - 1
                   FGdatos.AllowUserResizing = flexResizeColumns
                   Progres.Value = Progres.Value + 1
                   FGproveedor.Rows = 1
                                      
                   For i = 1 To .Rows - 1
                       FGproveedor.AddItem ""
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.Factura) = Trim(.TextMatrix(i, SaldoCx.Factura))
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.Fecha) = Trim(.TextMatrix(i, SaldoCx.FechaMos))
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.Descri) = Trim(.TextMatrix(i, SaldoCx.Nombre))
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.Concepto) = Trim(.TextMatrix(i, SaldoCx.Concepto))
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.Total) = vSaldoIni
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.vCredito) = Val(.TextMatrix(i, SaldoCx.vCreditos))
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.vDebito) = Val(.TextMatrix(i, SaldoCx.vDebitos))
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.vSaldo) = vSaldoIni - Val(.TextMatrix(i, SaldoCx.vDebitos)) + Val(.TextMatrix(i, SaldoCx.vCreditos))
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.Documento) = Trim(.TextMatrix(i, SaldoCx.Documento))
                       vSaldoIni = Val(FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.vSaldo))
                   Next i
                   If FGproveedor.Rows > 1 Then FGproveedor.Select 1, Datos.Descri: FGproveedor.SetFocus
             Else
                  FGdatos.Redraw = flexRDDirect
                  If vSaldoIni = 0 Then
                       MsgBox "Se�or usuario no hay deuda con el proveedor a la fecha seleccionada", vbInformation + vbOKOnly, "Atenci�n"
                  Else
                       FGproveedor.AddItem ""
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.Fecha) = DTfechaI.Value - 1
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.Descri) = "SALDO DEL PROVEEDOR"
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.Total) = vSaldoIni
                       FGproveedor.TextMatrix(FGproveedor.Rows - 1, Datos.vSaldo) = vSaldoIni
                  End If
             End If
             Progres.Value = Progres.Value + 1
             Progres.Visible = False
                          
        End With
        Exit Sub
sALIDA: Call MensajeAdministrador
FGdatos.Redraw = flexRDDirect
End Sub

