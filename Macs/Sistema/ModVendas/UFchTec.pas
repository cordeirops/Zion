unit UFchTec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, Buttons, StdCtrls, jpeg, ExtCtrls, Grids, DBGrids,
  TFlatButtonUnit, DBCtrls, EditFloat, ColorEditFloat, Menus, Mask,
  ColorMaskEdit, DBColorEdit, QuickRpt, Qrctrls, Db, IBCustomDataSet,
  IBQuery, IBDatabase, DrLabel;

type
  TFFchTecProd = class(TFPadrao)
    MCtrlProc: TPopupMenu;
    Produto1: TMenuItem;
    CdFabricante1: TMenuItem;
    CtrlInterno1: TMenuItem;
    CdComposto1: TMenuItem;
    MProcProd: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    QrOrdem: TQuickRep;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel15: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRSubDetail4: TQRSubDetail;
    QRDBText25: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRBand4: TQRBand;
    QRLabel37: TQRLabel;
    QRBand5: TQRBand;
    QRBand6: TQRBand;
    QRShape7: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand7: TQRBand;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    PFchTec: TPanel;
    PMaoObra: TPanel;
    Shape5: TShape;
    Edit2: TEdit;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    LServico: TLabel;
    LCodCompServ: TLabel;
    Label25: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    LVlrUnitServ: TLabel;
    PProcServ: TPanel;
    Label30: TLabel;
    EdProcServ: TEdit;
    BtnProcServ: TBitBtn;
    EdQtdServ: TFloatEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    EdClassServ: TEdit;
    PDesp: TPanel;
    Shape21: TShape;
    Shape22: TShape;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Edit3: TEdit;
    DBGrid3: TDBGrid;
    DBColorEdit2: TDBColorEdit;
    EdDescD: TColorEditFloat;
    EdQtdD: TColorEditFloat;
    EdVlrCustoD: TColorEditFloat;
    EdVlrCobradoD: TColorEditFloat;
    EdVlrTotD: TColorEditFloat;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    PMatPrima: TPanel;
    Shape3: TShape;
    Edit1: TEdit;
    PInsertProd: TGroupBox;
    Label7: TLabel;
    LSimilar: TLabel;
    LMarca: TLabel;
    LCodInterno: TLabel;
    LCodFabr: TLabel;
    LCtrlInterno: TLabel;
    Label15: TLabel;
    LUnidade: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label20: TLabel;
    LCtrlVlrUnit: TLabel;
    PProcCodComposto: TPanel;
    Label14: TLabel;
    EdProcCodcomposto: TColorMaskEdit;
    PProcCodFabr: TPanel;
    Label12: TLabel;
    EdProcCodFabr: TEdit;
    PProcProd: TPanel;
    Label6: TLabel;
    EdProcProd: TEdit;
    PProcCtrlInterno: TPanel;
    Label13: TLabel;
    EdProcCtrlInterno: TEdit;
    BtnProcProd: TBitBtn;
    EdQtd: TFloatEdit;
    BtnInsertProd: TBitBtn;
    BtnDeleteList: TBitBtn;
    BtnEscolheProc: TBitBtn;
    EdClass: TEdit;
    DBGrid1: TDBGrid;
    DBColorEdit1: TDBColorEdit;
    PTotProd: TPanel;
    Shape13: TShape;
    Shape15: TShape;
    EdVlrTotProd: TColorEditFloat;
    EdQtdTotProd: TColorEditFloat;
    PTotServ: TPanel;
    Shape16: TShape;
    Shape17: TShape;
    EdVlrTotServ: TColorEditFloat;
    EdQtdTotServ: TColorEditFloat;
    PTotDesp: TPanel;
    Shape23: TShape;
    Shape24: TShape;
    EdVlrTotDesp: TColorEditFloat;
    EdQtdTotDesp: TColorEditFloat;
    BtnPMatPrim: TFlatButton;
    Panel1: TPanel;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Panel2: TPanel;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    BtnPMaoObra: TFlatButton;
    EdTot: TColorEditFloat;
    Panel3: TPanel;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    BtnDesp: TFlatButton;
    PProcProdP: TPanel;
    Label23: TLabel;
    EdProcProdP: TEdit;
    BtnMenuProcProd: TBitBtn;
    DBGridCadastroPadrao: TDBGrid;
    PProcProdCI: TPanel;
    Label22: TLabel;
    EdProcProdCI: TEdit;
    PProcProdCF: TPanel;
    Label19: TLabel;
    EdprocProdCF: TEdit;
    PProcProdCC: TPanel;
    Label21: TLabel;
    EdProcProdCC: TColorMaskEdit;
    BtnCtrlFchTec: TFlatButton;
    DBText1: TDBText;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label1: TLabel;
    LShowProd: TDBText;
    Label2: TLabel;
    LShowMarca: TLabel;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    LShowCodFabr: TLabel;
    Label5: TLabel;
    LShowCtrlInt: TLabel;
    RGPORCAO: TGroupBox;
    Label24: TLabel;
    EdQtdPorcao: TColorEditFloat;
    LShowCodInterno: TLabel;
    LUZMINUS: TShape;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcProdClick(Sender: TObject);
    procedure BtnCtrlFchTecClick(Sender: TObject);
    procedure EdQtdPorcaoExit(Sender: TObject);
    procedure DBGridCadastroPadraoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PFchTecExit(Sender: TObject);
    procedure BtnEscolheProcClick(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure CdFabricante1Click(Sender: TObject);
    procedure CtrlInterno1Click(Sender: TObject);
    procedure CdComposto1Click(Sender: TObject);
    procedure EdProcCtrlInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdProcProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdProcCodFabrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdProcCodcompostoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure BtnProcServClick(Sender: TObject);
    procedure EdProcServKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PInsertProdEnter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnMenuProcProdClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure EdProcProdPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdProcProdCIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdprocProdCFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdProcProdCCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BtnDeleteListClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdQtdDExit(Sender: TObject);
    procedure EdVlrTotDExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DBGridCadastroPadraoCellClick(Column: TColumn);
  private
    { Private declarations }
	//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
	Procedure EscreveLabels;
	Procedure EscreveLabelsServ;
	Procedure LimpaLabels;
	Procedure LimpaLabelsServ;
   //Verifica se ha alguma produção para o produto na view retorna true se sim
   Function LocProducao(CODPRODUTO: Integer): Boolean;
	//Filtra Tabela Slave e calcula total
	Procedure FiltraSlave;
	//Limpa as labels de Despesas
	Procedure LimpaLabelsDESP;

  public
    { Public declarations }
  end;

var
  FFchTecProd: TFFchTecProd;
  XCODITSP:Integer; //Armazena temporariamente o código do subproduto selecionado para lista de items de matéria prima
  XCODITSS:Integer; //Armazena temporariamente o código do subServico selecionado para lista de items de mão de obra
  XCOD_ITDESP:Integer; //Armazena temporariamente o código da despesa selecionado para lista de Despesas Adicionais

implementation


uses UDMEstoque, UMenu, Alxor32, UProduto, AlxMessage, UDMMacs, UServico,
  UDmServ;

{$R *.DFM}
Procedure TFFchTecProd.LimpaLabelsServ;
Begin
   LCodCompServ.Caption:='';
   LServico.Caption:='';
End;

//Limpa as labels de Despesas
Procedure TFFchTecProd.LimpaLabelsDESP;
Begin
   EDDESCD.CLEAR;
   EdQtdD.ValueNumeric:=0;
   EdVlrCustoD.ValueNumeric:=0;
   EdVlrCobradoD.ValueNumeric:=0;
   EdVlrTotD.ValueNumeric:=0;
End;

//Filtra Tabela Slave e calcula total
Procedure TFFchTecProd.FiltraSlave;
Begin
	//materia prima
	//Calcula Total
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('select Sum((estoque.ValRep*itfchtecprod.qtdutiliz)) AS VLRTOTAL, sum(itfchtecprod.qtdutiliz) AS QTDTOTAL');
	DMESTOQUE.TSlave.SQL.Add('from itfchtecprod ');
	DMESTOQUE.TSlave.SQL.Add('left join subproduto on subproduto.cod_subproduto=itfchtecprod.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('left join estoque ON estoque.cod_subprod=subproduto.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('left join unidade on SubProduto.COD_UNIDVENDA=unidade.cod_unidade	');
   DMESTOQUE.TSlave.SQL.Add('Where (itfchtecprod.cod_fchtecprod=:CODFCHTEC) AND ');
   DMESTOQUE.TSlave.SQL.Add('(ESTOQUE.COD_LOJA=:CODLOJA) ');
	DMESTOQUE.TSlave.ParamByName('CODFCHTEC').AsInteger:=XCODPKMESTRE;
	DMESTOQUE.TSlave.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	DMESTOQUE.TSlave.Open;
   EdQtdTotProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTDTOTAL').AsCurrency;
   EdVlrTotProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRTOTAL').AsCurrency;

	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select itfchtecprod.cod_fchtecprod, itfchtecprod.cod_itfchtecprod, ');
	DMESTOQUE.TSlave.SQL.Add('itfchtecprod.qtdutiliz, itfchtecprod.class, subproduto.descricao, ');
	DMESTOQUE.TSlave.SQL.Add('unidade.sigla_unid, estoque.Valrep, (estoque.Valrep*itfchtecprod.qtdutiliz) AS TOTAL ');
	DMESTOQUE.TSlave.SQL.Add('from itfchtecprod ');
	DMESTOQUE.TSlave.SQL.Add('left join subproduto on subproduto.cod_subproduto=itfchtecprod.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('left join estoque ON estoque.cod_subprod=subproduto.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('left join unidade on SubProduto.COD_UNIDVENDA=unidade.cod_unidade	');
   DMESTOQUE.TSlave.SQL.Add('Where (itfchtecprod.cod_fchtecprod=:CODFCHTEC) AND ');
   DMESTOQUE.TSlave.SQL.Add('(ESTOQUE.COD_LOJA=:CODLOJA) ');
	DMESTOQUE.TSlave.ParamByName('CODFCHTEC').AsInteger:=XCODPKMESTRE;
	DMESTOQUE.TSlave.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	DMESTOQUE.TSlave.Open;

	//mão de obra
	//Calcula Total
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('select Sum((itfchtecserv.qtdutiliz*subservico.vlrfinal)) AS VLRTOTAL, sum(itfchtecserv.qtdutiliz) AS QTDTOTAL from itfchtecServ ');
	DMESTOQUE.TSlaveServ.SQL.Add('left join subservico on subservico.cod_subservico=itfchtecServ.cod_subservico ');
	DMESTOQUE.TSlaveServ.SQL.Add('Where itfchtecserv.cod_fchtecprod=:CODFCHTEC ');
	DMESTOQUE.TSlaveServ.ParamByName('CODFCHTEC').AsInteger:=XCODPKMESTRE;
	DMESTOQUE.TSlaveServ.Open;
   EdQtdTotServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('QTDTOTAL').AsCurrency;
   EdVlrTotServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('VLRTOTAL').AsCurrency;

	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('Select itfchtecserv.cod_fchtecprod, itfchtecserv.cod_itfchtecserv, ');
	DMESTOQUE.TSlaveServ.SQL.Add('itfchtecserv.qtdutiliz, itfchtecserv.class, subservico.descricao, ');
	DMESTOQUE.TSlaveServ.SQL.Add('subservico.vlrfinal, (itfchtecserv.qtdutiliz*subservico.vlrfinal) as TOTAL ');
	DMESTOQUE.TSlaveServ.SQL.Add('from itfchtecserv ');
	DMESTOQUE.TSlaveServ.SQL.Add('left join subservico on subservico.cod_subservico=itfchtecServ.cod_subservico ');
	DMESTOQUE.TSlaveServ.SQL.Add('Where itfchtecserv.cod_fchtecprod=:CODFCHTEC ');
	DMESTOQUE.TSlaveServ.ParamByName('CODFCHTEC').AsInteger:=XCODPKMESTRE;
	DMESTOQUE.TSlaveServ.Open;

   //TRABALHANDO COM DESPESAS
   //CALCULA TOTAL
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('select Sum(despadic.vlrtotfin) AS TOT, sum(despadic.qtd) as TOTQTD From despadic Where (despadic.gerador='+#39+'FCHTECPROD'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsInteger:=XCODPKMESTRE;
	DMESTOQUE.Alx2.Open;
   EdVlrTotDesp.ValueNumeric:=DMESTOQUE.Alx2.FieldByName('TOT').AsCurrency;
   EdQtdTotDesp.ValueNumeric:=DMESTOQUE.Alx2.FieldByName('TOTQTD').AsCurrency;

   //FILTRA DESPESAS
   DMESTOQUE.TDesp.Close;
   DMESTOQUE.TDesp.SQL.Clear;
   DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'FCHTECPROD'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=XCODPKMESTRE;
	DMESTOQUE.TDesp.Open;

   //INSERE TOTAL DE PROD, SERV E DESP
   EdTot.ValueNumeric:=EdVlrTotProd.ValueNumeric+EdVlrTotServ.ValueNumeric+EdVlrTotDesp.ValueNumeric;
End;

//Verifica se ha alguma produção para o produto na view retorna true se sim
Function TFFchTecProd.LocProducao(CODPRODUTO: Integer): Boolean;
Begin
   XCODPKMESTRE:=-1;
   FiltraSlave;
	If FiltraTabela(DMESTOQUE.TFchTec, 'FCHTECPROD', 'COD_SUBPRODUTO', IntToStr(CODPRODUTO), '')=True
   Then Begin
   	Result:=True;
       XCODPKMESTRE:=DMESTOQUE.TFchTec.FieldByName('COD_FCHTECPROD').AsInteger;
       EdQtdPorcao.ValueNumeric:=DMESTOQUE.TFchTec.FieldByName('PORCAO').AsCurrency;
       FiltraSlave;
   End
   Else Begin
   	result:=False;
   End;
   If Result=False
   Then Begin
       PFchTec.Visible:=False;
       RGPORCAO.Visible:=False;
   End;
   If (Result=True) And (PFchTec.Visible=False)
   Then Begin
       RGPORCAO.Visible:=True;
       EdQtdPorcao.ValueNumeric:=DMESTOQUE.TFchTec.FieldByName('PORCAO').AsCurrency;
   End;

End;

Procedure TFFchTecProd.LimpaLabels;
Begin
   LCodInterno.Caption:='';
	LCodFabr.Caption:='';
   LCtrlInterno.Caption:='';
   LSimilar.Caption:='';
   LMarca.Caption:='';
   LUnidade.Caption:='';
   LCtrlVlrUnit.Caption:='';
   XCODITSP:=-1;
End;

//Filtra as tabelas e escreve em edits e labels as informações dos Serviços selecionado selecionado
Procedure TFFchTecProd.EscreveLabelsServ;
Begin
   LCodCompServ.Caption:=DMSERV.WSubServ.FieldByName('CODCOMPOSTO').AsString;
   LServico.Caption:=DMSERV.WSubServ.FieldByName('DESCRICAO').AsString;
   EDQtdServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('TEMPSERV').AsCurrency;
   LVlrUnitServ.Caption:=FormatFloat('###,##0.00', DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency);
End;

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFFchTecProd.EscreveLabels;
Begin
	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;

   //Filtra tabela de produto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TProduto, 'PRODUTO', 'COD_PRODUTO', DMEstoque.WSimilar.FieldByName('COD_PRODUTO').AsString, '')=False Then
   	Exit;

   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;
   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsString, '')=False Then
   	Exit;


	//Passa os valores do produto selecionado para as labels
   LSimilar.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
   LCodInterno.Caption:=DMEstoque.TSubProd.FieldByName('COD_INTERNO').AsString;
   EdProcCtrlInterno.Text := DMEstoque.TSubProd.FieldByName('CONTRINT').AsString;
   LCodFabr.Caption:=DMEstoque.TSubProd.FieldByName('CODPRODFABR').AsString;
   LCtrlInterno.Caption:=DMEstoque.TSubProd.FieldByName('CONTRINT').AsString;
   LMarca.Caption:=DMEstoque.TSubProd.FieldByName('Marca').asstring;
   LUnidade.Caption:=DMESTOQUE.TUnidade.FieldByNAme('SIGLA_UNID').AsString+' - '+DMESTOQUE.TUnidade.FieldByNAme('DESC_UNID').AsString;
   EdQtd.ValueNumeric:=1;
	LCtrlVlrUnit.Caption:=FormatFloat('###,##0.00', DMEstoque.TEstoque.FieldByName('VALREP').AsCurrency);
End;

procedure TFFchTecProd.FormActivate(Sender: TObject);
begin
  inherited;
  //FILTRA SIMILAR DE ACORDO COM A LOJA E LIVRE DO PRODUTO
  FiltraTabela(DMMACS.TALX, 'VWSIMILAR', 'COD_LOJA', FMenu.LCODLOJA.Caption, ' Order By DESCRICAO');
  EdQtdPorcao.Height:=25;
end;

procedure TFFchTecProd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_F4 Then
       BtnCtrlFchTec.Click;
   If Key=VK_F2 Then
       DBGridCadastroPadrao.SetFocus;
end;

procedure TFFchTecProd.BtnProcProdClick(Sender: TObject);
begin
  inherited;
	FMenu.TIPOAUX:='MATPRIM';
  	//abre formulario de produto para seleção
   FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', '');
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
		XCODITSP:=DMESTOQUE.WSimilar.FieldByNAme('COD_SUBPRODUTO').AsInteger;
		EscreveLabels;
   End
   Else Begin
       LimpaLabels;
       LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
   End;
end;

procedure TFFchTecProd.BtnCtrlFchTecClick(Sender: TObject);
begin
  inherited;
   //Se não houver ficha técnica para o produto é inserido uma nova ficha
  	If LocProducao(DMMACS.TALX.FieldByName('COD_SUBPRODUTO').AsInteger)=False
   Then Begin
		XCODPKMESTRE:=InserReg(DMESTOQUE.TFchTec, 'FCHTECPROD', 'COD_FCHTECPROD');
       DMESTOQUE.TFchTec.FieldByName('COD_SUBPRODUTO').AsInteger:=DMMACS.TAlx.FieldByName('COD_SUBPRODUTO').AsInteger;
       DMESTOQUE.TFchTec.Post;
       EdQtdPorcao.ValueNumeric:=0;
   End;
   RGPORCAO.Visible:=True;
   EdQtdPorcao.SetFocus;
end;

procedure TFFchTecProd.EdQtdPorcaoExit(Sender: TObject);
begin
  inherited;
   DMESTOQUE.TFchTec.Edit;
   DMESTOQUE.TFchTec.FieldByName('PORCAO').AsInteger:=EdQtdPorcao.ValueInteger;
   DMESTOQUE.TFchTec.Post;  
	PInsertProd.SetFocus;
end;

procedure TFFchTecProd.DBGridCadastroPadraoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	LocProducao(DMMACS.TALX.FieldByName('COD_SUBPRODUTO').AsInteger);
   LShowMarca.Caption:=DMMACS.TALX.FieldByName('MARCA').AsString;
   LShowCodInterno.Caption:=DMMACS.TALX.FieldByName('COD_INTERNO').AsString;
   LShowCodFabr.Caption:=DMMACS.TALX.FieldByName('CODFABRICANTE').AsString;
   LShowCtrlInt.Caption:=DMMACS.TALX.FieldByName('CONTRINT').AsString;
end;

procedure TFFchTecProd.PFchTecExit(Sender: TObject);
begin
  inherited;
	//Ao sair da ficha tecnica deve se confirmar transação em banco
   DMESTOQUE.TransacEstoque.CommitRetaining;
   DMESTOQUE.TransacEstoque.CommitRetaining;
end;

procedure TFFchTecProd.BtnEscolheProcClick(Sender: TObject);
begin
  inherited;
  	MCtrlProc.Popup(BtnEscolheProc.Width+BtnEscolheProc.Left+228, 225);
end;

procedure TFFchTecProd.Produto1Click(Sender: TObject);
begin
  inherited;
   PProcProd.Visible:=True;
   PProcProd.BringToFront;
   EdProcProd.SetFocus;
end;

procedure TFFchTecProd.CdFabricante1Click(Sender: TObject);
begin
  inherited;
   PProcCodFabr.Visible:=True;
   PProcCodFabr.BringToFront;
   EdProcCodFabr.SetFocus;
end;

procedure TFFchTecProd.CtrlInterno1Click(Sender: TObject);
begin
  inherited;
   PProcCtrlInterno.Visible:=True;
   PProcCtrlInterno.BringToFront;
   EdProcCtrlInterno.SetFocus;
end;

procedure TFFchTecProd.CdComposto1Click(Sender: TObject);
begin
  inherited;
   PProcCodComposto.Visible:=True;
   PProcCodComposto.BringToFront;
   EdProcCodComposto.SetFocus;
end;

procedure TFFchTecProd.EdProcCtrlInternoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', EdProcCtrlInterno.Text, '')=True
       Then Begin
			XCODITSP:=DMESTOQUE.WSimilar.FieldByNAme('COD_SUBPRODUTO').AsInteger;       
			EscreveLabels;
       End
       Else Begin
           LimpaLabels;
           LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;
end;

procedure TFFchTecProd.EdProcProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If EdProcProd.Text=''
       Then Begin
           LimpaLabels;
           LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
           Exit;
		End;
 		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'DESCRICAO', '', '(upper(DESCRICAO) like upper('+#39+EdProcProd.Text+'%'+#39+')) ORDER BY DESCRICAO')=True
       Then Begin
			XCODITSP:=DMESTOQUE.WSimilar.FieldByNAme('COD_SUBPRODUTO').AsInteger;
			EscreveLabels;
       End
       Else Begin
           LimpaLabels;
           LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;
end;

procedure TFFchTecProd.EdProcCodFabrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', EdProcCodFabr.Text, '')=True
       Then Begin
			XCODITSP:=DMESTOQUE.WSimilar.FieldByNAme('COD_SUBPRODUTO').AsInteger;
			EscreveLabels;
       End
       Else Begin
           LimpaLabels;
           LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;

end;

procedure TFFchTecProd.EdProcCodcompostoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODCOMPOSTO', EdProcCodcomposto.Text, '')=True
       Then Begin
			XCODITSP:=DMESTOQUE.WSimilar.FieldByNAme('COD_SUBPRODUTO').AsInteger;
			EscreveLabels;
       End
       Else Begin
           LimpaLabels;
           LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;

end;

procedure TFFchTecProd.BtnInsertProdClick(Sender: TObject);
begin
  inherited;
	//Valida se foi encontrado algum produto
   If (LSimilar.Caption='') or (LSimilar.Caption='PRODUTO NÃO ENCONTRADO')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existe produto a ser adicionado a lista de items do pedido.', '', 1, 1, False, 'a');
		BtnProcProd.SetFocus;
	    Exit;
   End;

   //Valida quanto a quantidade
   If EDQtd.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com quantidade inferior a 1.', '', 1, 1, False, 'a');
		EDQtd.SetFocus;
	    Exit;
   End;
   Try
		InserReg(DMESTOQUE.TITProdFT, 'ITFCHTECPROD', 'COD_ITFCHTECPROD');
		DMESTOQUE.TITProdFT.FieldByName('COD_FCHTECPROD').AsInteger:=XCODPKMESTRE;
		DMESTOQUE.TITProdFT.FieldByName('COD_SUBPRODUTO').AsInteger:=XCODITSP;
		DMESTOQUE.TITProdFT.FieldByName('QTDUTILIZ').AsCurrency:=EdQtd.ValueNumeric;
		DMESTOQUE.TITProdFT.FieldByName('CLASS').AsString:=EdClass.Text;
       If LCtrlVlrUnit.Caption=''
       Then Begin
			DMESTOQUE.TITProdFT.FieldByName('VLRUNIT').AsCurrency:=0;
			DMESTOQUE.TITProdFT.FieldByName('VLRTOT').AsCurrency:=0;
       End
       Else Begin
			DMESTOQUE.TITProdFT.FieldByName('VLRUNIT').AsCurrency:=StrToFloat(LCtrlVlrUnit.Caption);
			DMESTOQUE.TITProdFT.FieldByName('VLRTOT').AsCurrency:=StrToFloat(LCtrlVlrUnit.Caption)*EdQtd.ValueNumeric;
       End;
       DMESTOQUE.TITProdFT.Post;
       FiltraSlave;
       LimpaLabels;
   Except
   end;
end;

procedure TFFchTecProd.BtnProcServClick(Sender: TObject);
begin
//  inherited;
  	//abre formulario de produto para seleção
	If AbrirForm(TFServico, FServico, 1)='Selected'
   Then Begin
		XCODITSS:=DMSERV.WSubServ.FieldByNAme('COD_SUBSERVICO').AsInteger;
		EscreveLabelsServ;
   End
   Else Begin
       LimpaLabelsServ;
       LSimilar.Caption:='MÃO DE OBRA NÃO ENCONTRADA';
   End;

end;

procedure TFFchTecProd.EdProcServKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If EdProcServ.Text=''
       Then Begin
           LimpaLabelsServ;
           LServico.Caption:='Mão de Obra não Encontrada';
           Exit;
		End;
 		If FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'DESCRICAO', '', '(upper(DESCRICAO) like upper('+#39+EdProcServ.Text+'%'+#39+')) ORDER BY DESCRICAO')=True
       Then Begin
			XCODITSP:=DMSERV.WSubServ.FieldByNAme('COD_SUBSERVICO').AsInteger;
			EscreveLabelsServ;
       End
       Else Begin
           LimpaLabelsServ;
           LServico.Caption:='Mão de Obra não Encontrada';
       End;
   End;
end;

procedure TFFchTecProd.PInsertProdEnter(Sender: TObject);
begin
  inherited;
  //VERIFICA QUAL COMPONENETE DEVE RECEBER O FOCUS
  	IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'BP' THEN
  		BtnProcProd.SetFocus;
  	IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CA'
  	THEN BEGIN//Caso o focus deve cair sobre um código auxiliar. verificar qual o código em Questão
       IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
       THEN Begin
           Try
               PProcCtrlInterno.Visible:=True;
               PProcCtrlInterno.BringToFront;
				EdProcCtrlInterno.SetFocus;
           Except
           End;
       End;
       IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC'
       THEN Begin
           Try
               PProcCodComposto.Visible:=True;
               PProcCodComposto.BringToFront;
               EDProcCodComposto.SetFocus;
           Except
           End;
       End;
       IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
       THEN Begin
           Try
               PProcCodFabr.Visible:=True;
               PProcCodFabr.BringToFront;
               EDProcCodFabr.SetFocus;
           Except
           End;
       End;
	End;
end;
procedure TFFchTecProd.BitBtn2Click(Sender: TObject);
begin
  inherited;
	//Valida se foi encontrado algum produto
   If (LServico.Caption='') or (LServico.Caption='PRODUTO NÃO ENCONTRADO')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existe mão de obra a ser adicionado a lista.', '', 1, 1, False, 'a');
		BtnProcServ.SetFocus;
	    Exit;
   End;

   //Valida quanto a quantidade
   If EdQtdServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O Serviço não pode ser inserido a lista com quantidade inferior a 1.', '', 1, 1, False, 'a');
		EdQtdServ.SetFocus;
	    Exit;
   End;
   Try
		InserReg(DMESTOQUE.TITServFT, 'ITFCHTECSERV', 'COD_ITFCHTECSERV');
		DMESTOQUE.TITServFT.FieldByName('COD_FCHTECPROD').AsInteger:=XCODPKMESTRE;
		DMESTOQUE.TITServFT.FieldByName('COD_SUBSERVICO').AsInteger:=XCODITSS;
		DMESTOQUE.TITServFT.FieldByName('QTDUTILIZ').AsCurrency:=EdQtdServ.ValueNumeric;
		DMESTOQUE.TITServFT.FieldByName('CLASS').AsString:=EdClassServ.Text;
       If LVlrUnitServ.Caption=''
       Then Begin
			DMESTOQUE.TITServFT.FieldByName('VLRUNIT').AsCurrency:=0;
			DMESTOQUE.TITServFT.FieldByName('VLRTOT').AsCurrency:=0;
       End
       Else Begin
			DMESTOQUE.TITServFT.FieldByName('VLRUNIT').AsCurrency:=StrToFloat(LVlrUnitServ.Caption);
			DMESTOQUE.TITServFT.FieldByName('VLRTOT').AsCurrency:=StrToFloat(LVlrUnitServ.Caption)*EdQtdServ.ValueNumeric;
       End;
       DMESTOQUE.TITServFT.Post;
       FiltraSlave;
   Except
   end;
end;

Procedure TFFchTecProd.BtnMenuProcProdClick(Sender: TObject);
begin
  inherited;
  	MProcProd.Popup(BtnMenuProcProd.Width+BtnMenuProcProd.Left+7, 115);
end;

procedure TFFchTecProd.MenuItem1Click(Sender: TObject);
begin
  inherited;
   PProcProdP.Visible:=True;
   PProcProdP.BringToFront;
   EdProcProdP.SetFocus;
end;

procedure TFFchTecProd.MenuItem2Click(Sender: TObject);
begin
  inherited;
   PProcProdCF.Visible:=True;
   PProcProdCF.BringToFront;
   EdProcProdCF.SetFocus;
end;

procedure TFFchTecProd.MenuItem3Click(Sender: TObject);
begin
  inherited;
   PProcProdCI.Visible:=True;
   PProcProdCI.BringToFront;
   EdProcProDCI.SetFocus;
end;

procedure TFFchTecProd.MenuItem4Click(Sender: TObject);
begin
  inherited;
   PProcProdCC.Visible:=True;
   PProcProdCC.BringToFront;
   EdProcProdCC.SetFocus;
end;

procedure TFFchTecProd.EdProcProdPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		FiltraTabela(DMMACS.TALX, 'VWSIMILAR', 'DESCRICAO', '', '(upper(DESCRICAO) like upper('+#39+EdProcProdP.Text+'%'+#39+')) ORDER BY DESCRICAO');
		LocProducao(DMMACS.TALX.FieldByName('COD_SUBPRODUTO').AsInteger);
   End;
	If Key=VK_ESCAPE
   Then Begin
		FiltraTabela(DMMACS.TALX, 'VWSIMILAR', '', '', ' ORDER BY DESCRICAO');
		LocProducao(DMMACS.TALX.FieldByName('COD_SUBPRODUTO').AsInteger);
   End;
end;

procedure TFFchTecProd.EdProcProdCIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		FiltraTabela(DMMACS.TALX, 'VWSIMILAR', 'CONTRINT', '', '(upper(CONTRINT) like upper('+#39+EdProcProdCI.Text+'%'+#39+')) ORDER BY CONTRINT');
		LocProducao(DMMACS.TALX.FieldByName('COD_SUBPRODUTO').AsInteger);
   End;
	If Key=VK_ESCAPE
   Then Begin
		FiltraTabela(DMMACS.TALX, 'VWSIMILAR', '', '', ' ORDER BY CONTRINT');
		LocProducao(DMMACS.TALX.FieldByName('COD_SUBPRODUTO').AsInteger);
   End;
end;

procedure TFFchTecProd.EdprocProdCFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		FiltraTabela(DMMACS.TALX, 'VWSIMILAR', 'CODFABRICANTE', '', '(upper(CODFABRICANTE) like upper('+#39+EdProcProdCF.Text+'%'+#39+')) ORDER BY CODFABRICANTE');
		LocProducao(DMMACS.TALX.FieldByName('COD_SUBPRODUTO').AsInteger);
   End;
	If Key=VK_ESCAPE
   Then Begin
		FiltraTabela(DMMACS.TALX, 'VWSIMILAR', '', '', ' ORDER BY CODFABRICANTE');
		LocProducao(DMMACS.TALX.FieldByName('COD_SUBPRODUTO').AsInteger);
   End; 
end;

procedure TFFchTecProd.EdProcProdCCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		FiltraTabela(DMMACS.TALX, 'VWSIMILAR', 'CODCOMPOSTO', '', '(upper(CODCOMPOSTO) like upper('+#39+EdProcProdCc.Text+'%'+#39+')) ORDER BY CODCOMPOSTO');
		LocProducao(DMMACS.TALX.FieldByName('COD_SUBPRODUTO').AsInteger);
   End;
	If Key=VK_ESCAPE
   Then Begin
		FiltraTabela(DMMACS.TALX, 'VWSIMILAR', '', '', ' ORDER BY CODCOMPOSTO');
		LocProducao(DMMACS.TALX.FieldByName('COD_SUBPRODUTO').AsInteger);
   End;
end;
procedure TFFchTecProd.DBGridCadastroPadraoDblClick(Sender: TObject);
begin
  inherited;
	LocProducao(DMMACS.TALX.FieldByName('COD_SUBPRODUTO').AsInteger);
   LShowMarca.Caption:=DMMACS.TALX.FieldByName('MARCA').AsString;
   LShowCodInterno.Caption:=DMMACS.TALX.FieldByName('COD_INTERNO').AsString;
   LShowCodFabr.Caption:=DMMACS.TALX.FieldByName('CODFABRICANTE').AsString;
   LShowCtrlInt.Caption:=DMMACS.TALX.FieldByName('CONTRINT').AsString;   
end;

procedure TFFchTecProd.BitBtn3Click(Sender: TObject);
begin
  inherited;
	If FiltraTabela(DMESTOQUE.TITServFT, 'ITFCHTECSERV', 'COD_ITFCHTECSERV', DMESTOQUE.TSlaveServ.FieldByName('cod_itfchtecserv').AsString, '')=True
   Then Begin
       DMESTOQUE.TITServFT.Delete;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       FiltraSlave;
   End;
end;

procedure TFFchTecProd.BtnDeleteListClick(Sender: TObject);
begin
  inherited;
	If FiltraTabela(DMESTOQUE.TITProdFT, 'ITFCHTECPROD', 'COD_ITFCHTECPROD', DMESTOQUE.TSlave.FieldByName('COD_ITFCHTECPROD').AsString, '')=True
   Then Begin
       DMESTOQUE.TITProdFT.Delete;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       FiltraSlave;
   End;
end;

procedure TFFchTecProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   FMenu.TIPOAUX:='';
end;

procedure TFFchTecProd.EdQtdDExit(Sender: TObject);
begin
  inherited;
   EdVlrTotD.ValueNumeric:=edqtdd.ValueNumeric*EdVlrCobradoD.ValueNumeric;
end;

procedure TFFchTecProd.EdVlrTotDExit(Sender: TObject);
begin
  inherited;
  	If edqtdd.ValueNumeric>0 Then
		EdVlrCobradoD.ValueNumeric:=EdVlrTotD.ValueNumeric/edqtdd.ValueNumeric;
end;

procedure TFFchTecProd.BitBtn5Click(Sender: TObject);
begin
  inherited;
   If EdDescD.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, descreva a despesa.', '', 1, 1, False, 'i');
       EdDescD.SetFocus;
       exit;
   End;

   If Edqtdd.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe uma quantidade maior que 0 (zero).', '', 1, 1, False, 'i');
       Edqtdd.SetFocus;
       exit;
   End;

   If EdVlrCustoD.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor de Custo maior que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoD.SetFocus;
       exit;
   End;

   If EdVlrCobradoD.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor Cobrado maior que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoD.SetFocus;
       exit;
   End;

   If EdVlrTotD.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor Total que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoD.SetFocus;
       exit;
   End;
	XCOD_ITDESP:=InserReg(DMESTOQUE.TDesp, 'DESPADIC', 'COD_DESPADIC');
   DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger:=XCOD_ITDESP;
   DMESTOQUE.TDesp.FieldByName('COD_GERADOR').AsInteger:=XCODPKMESTRE;
   DMESTOQUE.TDesp.FieldByName('GERADOR').AsString:='FCHTECPROD';
   DMESTOQUE.TDesp.FieldByName('DESPESA').AsString:=EdDescD.Text;
   DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency:=EDQTDD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency:=EdVlrCustoD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency:=EdVlrCobradoD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency:=EdVlrTotD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency:=EdVlrTotD.ValueNumeric-(EdVlrCustoD.ValueNumeric*EDQtdD.ValueNumeric);
   DMESTOQUE.TDesp.FieldByName('LUCPER').AsCurrency:=((DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency*100)/(EdVlrCustoD.ValueNumeric*EDQtdD.ValueNumeric));
   DMESTOQUE.TDesp.Post;
   DMESTOQUE.TDesp.ApplyUpdates;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   LimpaLabelsDESP;
   FiltraSlave;
   EdDescD.SetFocus;
end;

procedure TFFchTecProd.BitBtn6Click(Sender: TObject);
begin
  inherited;
   If Not DMESTOQUE.TDesp.IsEmpty
   Then Begin
   	DMESTOQUE.TDesp.Delete;
   	DMESTOQUE.TransacEstoque.CommitRetaining;
   	FiltraSlave;
   End;
end;

procedure TFFchTecProd.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('Select * from itfchtecprod ');
   DMESTOQUE.Alx.SQL.Add('left join subproduto on subproduto.cod_subproduto=itfchtecprod.cod_itfchtecprod ');
   DMESTOQUE.Alx.SQL.Add('where itfchtecprod.cod_fchtecprod=:CODFCHTEC ');
   DMESTOQUE.Alx.ParamByName('CODFCHTEC').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_FCHTECPROD').AsInteger;
   DMESTOQUE.Alx.SQL.Text;
   DMESTOQUE.Alx.Open;
end;

procedure TFFchTecProd.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
	DMESTOQUE.TRFchP.Close;
	DMESTOQUE.TRFchP.SQL.Clear;
	DMESTOQUE.TRFchP.SQL.Add('Select * from itfchtecprod');
	DMESTOQUE.TRFchP.SQL.Add('left join subproduto on subproduto.cod_subproduto=itfchtecprod.cod_subproduto');
	DMESTOQUE.TRFchP.SQL.Add('where itfchtecprod.cod_fchtecprod=:CODFCHTEC');
	DMESTOQUE.TRFchP.ParamByName('CODFCHTEC').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchP.SQL.Text;
	DMESTOQUE.TRFchP.Open;

	DMESTOQUE.TRFchM.Close;
	DMESTOQUE.TRFchM.SQL.Clear;
	DMESTOQUE.TRFchM.SQL.Add('Select * from itfchtecserv');
	DMESTOQUE.TRFchM.SQL.Add('left join Subservico on subservico.cod_subservico=itfchtecserv.cod_subservico');
	DMESTOQUE.TRFchM.SQL.Add('where itfchtecserv.cod_fchtecprod=:CODFCHTEC');
	DMESTOQUE.TRFchM.ParamByName('CODFCHTEC').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchM.SQL.Text;
	DMESTOQUE.TRFchM.Open;

end;

procedure TFFchTecProd.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
//   QrLDesc.Caption:=TRel1.FieldByName('DESCRICAO').AsString;
end;

procedure TFFchTecProd.DBGridCadastroPadraoCellClick(Column: TColumn);
begin
  inherited;
   LShowMarca.Caption:=DMMACS.TALX.FieldByName('MARCA').AsString;
   LShowCodInterno.Caption:=DMMACS.TALX.FieldByName('COD_INTERNO').AsString;
   LShowCodFabr.Caption:=DMMACS.TALX.FieldByName('CODFABRICANTE').AsString;
   LShowCtrlInt.Caption:=DMMACS.TALX.FieldByName('CONTRINT').AsString;  

end;

End.

