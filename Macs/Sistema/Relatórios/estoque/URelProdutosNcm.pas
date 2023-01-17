unit URelProdutosNcm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, ExtCtrls, StdCtrls, frxClass, frxDBSet;

type
  TFRelProdutosNcm = class(TFPadrao)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    rbNcmAtivo: TRadioButton;
    rbDescricao: TRadioButton;
    rbNcm: TRadioButton;
    GroupBox2: TGroupBox;
    cbNcmAtivo: TCheckBox;
    cbNcmInativo: TCheckBox;
    btnVisualizar: TButton;
    frxRelProdutosNcm: TfrxReport;
    dbSetProdutos: TfrxDBDataset;
    GroupBox3: TGroupBox;
    rbTPNcmInativos: TRadioButton;
    rbTPNcmCest: TRadioButton;
    rbControleInterno: TRadioButton;
    procedure btnVisualizarClick(Sender: TObject);
    procedure rbTPNcmInativosClick(Sender: TObject);
  private
    { Private declarations }
    function Validacoes: Boolean;
  public
    { Public declarations }
  end;

var
  FRelProdutosNcm: TFRelProdutosNcm;
  xFalhasValidacao: String;

implementation

{$R *.dfm}
uses
	UDMFAST, UMENU, UDMESTOQUE;

procedure TFRelProdutosNcm.btnVisualizarClick(Sender: TObject);
begin
  inherited;
   //Edmar - 06/01/2016 - Realiza as validações dos filtros
  	if not Validacoes then
   begin
   	MessageDlg(xFalhasValidacao, mtWarning, [mbOK], 0);
   	Exit;
   end;
       
  	if rbTPNcmInativos.Checked then
   begin
		//PRODUTOS COM NCM INVÁLIDOS
		//Edmar - 06/01/2015 - Monta o SQL da consulta
       DMFAST.QAlx.Close;
   	DMFAST.QAlx.SQL.Clear;
   	DMFAST.QAlx.SQL.Add(' SELECT SUBPRODUTO.CONTRINT CTRLINTERNO, SUBPRODUTO.DESCRICAO, CST.COD_SIT_TRIB CST, ');
   	DMFAST.QAlx.SQL.Add(' SUBPRODUTO.NCM, NCM.CEST, NCM.ATIVO FROM SUBPRODUTO ');
   	DMFAST.QAlx.SQL.Add(' LEFT JOIN NCM ON NCM.NCM = SUBPRODUTO.NCM ');
   	DMFAST.QAlx.SQL.Add(' LEFT JOIN CST ON CST.COD_CST = SUBPRODUTO.COD_CST ');
   	DMFAST.QAlx.SQL.Add(' WHERE ((CHARACTER_LENGTH(SUBPRODUTO.NCM) < 8) OR (SUBPRODUTO.NCM = '''') ');
		DMFAST.QAlx.SQL.Add(' OR (SUBPRODUTO.NCM IS NULL) OR (NCM.ATIVO = ''0'') OR (NCM.ATIVO IS NULL)) ');
		DMFAST.QAlx.SQL.Add(' AND (SUBPRODUTO.ATIVO = ''S'') ');

       if rbControleInterno.Checked then
       	DMFAST.QAlx.SQL.Add(' ORDER BY SUBPRODUTO.CONTRINT ');
       if rbDescricao.Checked then
       	DMFAST.QAlx.SQL.Add(' ORDER BY SUBPRODUTO.DESCRICAO ');
       if rbNcm.Checked then
   		DMFAST.QAlx.SQL.Add(' ORDER BY NCM.NCM ');
       if rbNcmAtivo.Checked then
       	DMFAST.QAlx.SQL.Add(' ORDER BY NCM.ATIVO DESC ');

   	DMFAST.QAlx.Open;
   	DMFAST.QAlx.First;

   	if DMFAST.QAlx.IsEmpty then
   		MessageDlg('O relatório retornou sem informação.', mtWarning, [mbOK], 0)
   	else begin
       	dbSetProdutos.DataSet := DMFAST.QAlx;
           
           frxRelProdutosNcm.LoadFromFile('C:\MZR\Macs\Rel\FrfProdNcmInvalidos.fr3');
           frxRelProdutosNcm.ShowReport();
   	end;
   end
   else
   	if rbTPNcmCest.Checked then
   	begin
			//PRODUTOS SEM CEST
			//Edmar - 06/01/2015 - Monta o SQL da consulta
   		DMFAST.QAlx.Close;
   		DMFAST.QAlx.SQL.Clear;
   		DMFAST.QAlx.SQL.Add(' SELECT SUBPRODUTO.CONTRINT CTRLINTERNO, SUBPRODUTO.DESCRICAO, CST.COD_SIT_TRIB CST, ');
   		DMFAST.QAlx.SQL.Add(' SUBPRODUTO.NCM, NCM.CEST, NCM.ATIVO FROM SUBPRODUTO ');
   		DMFAST.QAlx.SQL.Add(' LEFT JOIN NCM ON NCM.NCM = SUBPRODUTO.NCM ');
   		DMFAST.QAlx.SQL.Add(' LEFT JOIN CST ON CST.COD_CST = SUBPRODUTO.COD_CST ');
   		DMFAST.QAlx.SQL.Add(' WHERE ((CST.SUBSTITUICAO = ''1'') AND ((NCM.CEST = '''') OR (NCM.CEST IS NULL))) ');
           if not ((cbNcmAtivo.Checked) AND (cbNcmInativo.Checked)) then
           begin
           	if cbNcmAtivo.Checked then
   				DMFAST.QAlx.SQL.Add(' AND (NCM.ATIVO = ''1'') ')
               else
   				DMFAST.QAlx.SQL.Add(' AND (NCM.ATIVO = ''0'' OR NCM.ATIVO IS NULL) ');
           end;
   		DMFAST.QAlx.SQL.Add(' OR ((CHARACTER_LENGTH(SUBPRODUTO.NCM) < 8) OR (SUBPRODUTO.NCM = '''') OR (SUBPRODUTO.NCM IS NULL)) ');
                
       	if rbControleInterno.Checked then
       		DMFAST.QAlx.SQL.Add(' ORDER BY SUBPRODUTO.CONTRINT ');
       	if rbDescricao.Checked then
       		DMFAST.QAlx.SQL.Add(' ORDER BY SUBPRODUTO.DESCRICAO ');
       	if rbNcm.Checked then
   			DMFAST.QAlx.SQL.Add(' ORDER BY NCM.NCM ');
       	if rbNcmAtivo.Checked then
       		DMFAST.QAlx.SQL.Add(' ORDER BY NCM.ATIVO DESC ');

   		DMFAST.QAlx.Open;
   		DMFAST.QAlx.First;

   		if DMFAST.QAlx.IsEmpty then
   			MessageDlg('O relatório retornou sem informação.', mtWarning, [mbOK], 0)
   		else begin
       		dbSetProdutos.DataSet := DMFAST.QAlx;
           
           	frxRelProdutosNcm.LoadFromFile('C:\MZR\Macs\Rel\FrfProdNcmInvalidosCest.fr3');
           	frxRelProdutosNcm.ShowReport();
   		end;
   	end;
end;

function TFRelProdutosNcm.Validacoes: Boolean;
begin
	//
   Result := True;
   xFalhasValidacao := '';
   
   if not (cbNcmAtivo.Checked) and not (cbNcmInativo.Checked) then
   begin
   	xFalhasValidacao := 'Por favor selecione o filtro que deve ser usado no relatório.';
       Result := False;
   end;

   if not (rbTPNcmInativos.Checked) AND not (rbTPNcmCest.Checked) then
   begin
   	if xFalhasValidacao <> '' then
   		xFalhasValidacao := xFalhasValidacao + #13#10+ 'Por favor selecione o tipo do relatório.'
       else
   		xFalhasValidacao := 'Por favor selecione o tipo do relatório.' ;      
       Result := False;
   end;
end;

procedure TFRelProdutosNcm.rbTPNcmInativosClick(Sender: TObject);
begin
  inherited;
	cbNcmAtivo.Checked := True;
   cbNcmInativo.Checked := True;
end;

end.
