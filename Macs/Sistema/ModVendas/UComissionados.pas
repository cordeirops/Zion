unit UComissionados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRodaPe, TFlatHintUnit, Buttons, jpeg, ExtCtrls, StdCtrls,
  EditFloat, ColorEditFloat, UFrmBusca, Grids, DBGrids, TFlatButtonUnit,
  DrLabel;

type
  TFComissao = class(TFPadraoRodaPe)
    PComissao: TPanel;
    Shape15: TShape;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    FrmComissionado: TFrmBusca;
    DBGrid2: TDBGrid;
    EDComisProd: TColorEditFloat;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    EdBCProd: TColorEditFloat;
    EdBCServ: TColorEditFloat;
    EdComisServ: TColorEditFloat;
    Edit4: TEdit;
    BitBtn4: TBitBtn;
    Panel9: TPanel;
    Panel10: TPanel;
    LInformation: TLabel;
    Panel4: TPanel;
    Shape7: TShape;
    Label5: TLabel;
    Label6: TLabel;
    LTPServ: TLabel;
    Panel7: TPanel;
    Shape8: TShape;
    Label9: TLabel;
    LTCServ: TLabel;
    PTotProd: TPanel;
    Shape10: TShape;
    Label7: TLabel;
    Label10: TLabel;
    LTPProd: TLabel;
    Panel1: TPanel;
    Shape6: TShape;
    Label1: TLabel;
    LTCProd: TLabel;
    Panel11: TPanel;
    Shape12: TShape;
    Label22: TLabel;
    LTComiss: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FrmComissionadoBTNOPENClick(Sender: TObject);
    procedure FrmComissionadoEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnFechaClick(Sender: TObject);
  private
    { Private declarations }
    Procedure FILTRACOMIS;//Procedure utilizada para filtrar e calcular as comissões
  public
    { Public declarations }
  end;

var
  FComissao: TFComissao;
  XCODPKMESTRE: INTEGER;//ARMAZENA A CHAVE PRIMÁRIA DA TABELA MESTRE
  XTIPO: STRING;
  XCODPKCOMIS: Integer; //ARMAZENA A CHAVE PRIMÁRIA DE COMISSIONADOS PARA PRODUTO E SERVIÇO
  XCOD_COMISS: Integer;// Armazena temporáriamente o codigo do comissionado
  XCODIGO_PEDIDO: string; // ARMAZENA CODIGO DO PEDIDO PARA SER FEITO FILTRO TABELA E EDITAR O REGISTRO DO PEDIDO

implementation

uses UDMFinanc, UDMPessoa, UFuncionario, Alxor32, UMenu, AlxMessage,
  UDMMacs, UDMSaida, UDMEstoque;

{$R *.DFM}

Procedure TFComissao.FILTRACOMIS;
Begin
	//TOTALIZA COMISSAO
   DMFINANC.TSlctComis.Close;
   DMFINANC.TSlctComis.SQL.Clear;
   DMFINANC.TSlctComis.SQL.Add(' Select SUM(comissao.perprod) as PERPROD, SUM(comissao.vlrcomisprod) AS COMISPROD, ');
   DMFINANC.TSlctComis.SQL.Add('        SUM(comissao.perserv) as PERSERV, SUM(comissao.vlrcomisserv) AS COMISSERV ');
   DMFINANC.TSlctComis.SQL.Add(' from comissao ');
   DMFINANC.TSlctComis.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
	DMFINANC.TSlctComis.ParamByName('GERADOR').AsString:=XTIPO;
	DMFINANC.TSlctComis.ParamByName('CODGERADOR').AsInteger:=XCODPKMESTRE;
   DMFINANC.TSlctComis.Open;
   //passa totalizadores para as labels
   LTPServ.Caption:=FormatFloat('####,##0.00', DMFINANC.TSlctComis.FieldByName('PERSERV').AsCurrency);
   LTCServ.Caption:=FormatFloat('####,##0.00', DMFINANC.TSlctComis.FieldByName('COMISSERV').AsCurrency);
   LTPProd.Caption:=FormatFloat('####,##0.00', DMFINANC.TSlctComis.FieldByName('PERPROD').AsCurrency);
   LTCProd.Caption:=FormatFloat('####,##0.00', DMFINANC.TSlctComis.FieldByName('COMISPROD').AsCurrency);
   LTComiss.Caption:=FormatFloat('####,##0.00', DMFINANC.TSlctComis.FieldByName('COMISPROD').AsCurrency+DMFINANC.TSlctComis.FieldByName('COMISSERV').AsCurrency);

   //SELECIONA COMISSIOANADOS
   DMFINANC.TSlctComis.Close;
   DMFINANC.TSlctComis.SQL.Clear;
   DMFINANC.TSlctComis.SQL.Add('Select comissao.cod_comissao, comissao.perprod, comissao.perserv, comissao.vlrcomisprod, ');
   DMFINANC.TSlctComis.SQL.Add('       comissao.vlrcomisserv, comissao.vlrprod, comissao.vlrserv, vwfuncionario.nome AS FUNC, ');
   DMFINANC.TSlctComis.SQL.Add('       pedvenda.dtpedven AS DATA, pedvenda.numped AS DOC, pedvenda.valor AS VLRTOT ');
   DMFINANC.TSlctComis.SQL.Add('       From comissao ');
   DMFINANC.TSlctComis.SQL.Add('Left join vwfuncionario on comissao.cod_funcionario = vwfuncionario.cod_func ');
   DMFINANC.TSlctComis.SQL.Add('left join pedvenda on comissao.cod_gerador = pedvenda.cod_pedvenda ');
   DMFINANC.TSlctComis.SQL.Add('Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
	DMFINANC.TSlctComis.ParamByName('GERADOR').AsString:=XTIPO;
	DMFINANC.TSlctComis.ParamByName('CODGERADOR').AsInteger:=XCODPKMESTRE;
   DMFINANC.TSlctComis.Open;
End;
procedure TFComissao.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Comissões' ;  
   XTIPO:=FMenu.TIPOAUX;
   EdBCProd.ValueNumeric:=FMenu.XBCPROD;
   EdBCServ.ValueNumeric:=FMenu.XBCSERV;
   XCODPKMESTRE:=FMenu.XCOUNRECORD;
   LInformation.Caption:=FMenu.TITULOREL;
   If (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1') Then
       EdBCProd.Font.Color:=CLRED
   Else
       EdBCProd.Font.Color:=CLBLACK;

   FILTRACOMIS;
	//EFETUA CONTROLE PARA POSSIBILIDADE DE ALTERAÇÃO DA BASE DE CÁCULO DE COMISSIOES
   If ControlAccess('ALTBCCOMIS', '')=False
   Then Begin
       EdBCProd.ReadOnly:=True;
       EdBCServ.ReadOnly:=True;
   End
   Else Begin
       EdBCProd.ReadOnly:=False;
       EdBCServ.ReadOnly:=False;
   End;
	//EFETUA CONTROLE PARA POSSIBILIDADE DE ALTERAÇÃO DO PERCENTUAL DE COMISSOES
   If ControlAccess('ALTCOMIS', '')=False
   Then Begin
       EDComisProd.ReadOnly:=True;
       EdComisServ.ReadOnly:=True;
   End
   Else Begin
       EDComisProd.ReadOnly:=False;
       EdComisServ.ReadOnly:=False;
   End;
end;

procedure TFComissao.BitBtn4Click(Sender: TObject);
begin
  inherited;
	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o comissionado'+#13+DMFINANC.TSlctComis.FieldByName('FUNC').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
		If FiltraTabela(DMFINANC.TComis, 'COMISSAO', 'COD_COMISSAO', DMFINANC.TSlctComis.FieldByName('COD_COMISSAO').AsString, '')=True
   	Then Begin
       	DMFINANC.TComis.Delete;
       	DMFINANC.Transaction.CommitRetaining;
           //QUANDO FOR FEITA ALGUMA DEVOLUÇÃO, O SISTEMA IRÁ VERIFICAR SE FOI ADICIONADO NO PEDVENDA ATRAVES DO CAMPO "ATU", LOGO ABAIXO. SE NÃO FOI ADD, OS VALORES DAS COMISSOES SERÃO DAS PORCENTAGENS DOS PRODUTOS
           //******************************************************************************

              // CONTANDO O NUMERO DE REGISTROS DA TABELA COMISSAO RELACIONADOS A TABELA PEDVENDA QUE O PEDIDO POSSUI O CAMPO ATU = 1, OU SEJA, INDICA QUE JAH FOI ADD COMICIONADOS
              DMFINANC.TAlx.Close;
              DMFINANC.TAlx.SQL.Clear;
              DMFINANC.TAlx.SQL.Add('SELECT COUNT(COMISSAO.COD_COMISSAO) AS CONTADOR FROM COMISSAO');
              DMFINANC.TAlx.SQL.Add('LEFT JOIN PEDVENDA ON COMISSAO.COD_GERADOR = PEDVENDA.COD_PEDVENDA');
              DMFINANC.TAlx.SQL.Add('WHERE (COMISSAO.COD_GERADOR = :CODIGO) AND (PEDVENDA.ATU = ' + #39 + '1' + #39 + ')');
              DMFINANC.TAlx.ParamByName('CODIGO').AsInteger := DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger;
              DMFINANC.TAlx.Open;

              If DMFINANC.TAlx.FieldByName('CONTADOR').AsInteger = 0
              Then Begin
                  // ARMAZENA TEMPORARIAMENTE CODIGO DO PEDIDO
                  If XCODIGO_PEDIDO = '' Then
                       XCODIGO_PEDIDO := DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').asString;

                  FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XCODIGO_PEDIDO,'');

                  // agora esta liberando campo para que as proximas contas de comissoes sejam direto dos produtos
                  DMSAIDA.TPedV.Edit;
                  DMSAIDA.TPedV.FieldByName('ATU').AsString := '0';
                  DMSAIDA.TPedV.Post;
                  DMSAIDA.IBT.CommitRetaining;
              End;
           //******************************************************************************
           FILTRACOMIS;
   	end;
   End;
end;

procedure TFComissao.FrmComissionadoBTNOPENClick(Sender: TObject);
begin
  inherited;
  	FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');//LIBERA TODOS OS REGISTROS PARA CONSULTA
  	If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
  	Then Begin
       XCOD_COMISS:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
       FrmComissionado.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       FrmComissionado.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   	FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(XCOD_COMISS), '');
		EDComisProd.ValueNumeric:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency;
		EdComisServ.ValueNumeric:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency;
       EdBCProd.SetFocus;
  	End;
end;

procedure TFComissao.FrmComissionadoEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin//se enter
   	If FrmComissionado.EDCodigo.Text<>''
       Then Begin//se codigo do vendedor não estiver em branco
       	//seleciona o vendedor de acordo com o valor da edit
	        If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO = '+#39+FrmComissionado.EDCodigo.Text+#39)=True
           Then Begin
       		XCOD_COMISS:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
       		FrmComissionado.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       		FrmComissionado.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   			FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(XCOD_COMISS), '');
				EDComisProd.ValueNumeric:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency;
				EdComisServ.ValueNumeric:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency;
               EdBCProd.SetFocus;
           End
           Else Begin
               XCOD_COMISS:=-1;
       		FrmComissionado.EDCodigo.Text:='';
       		FrmComissionado.EdDescricao.Text:='';
               EDComisProd.ValueNumeric:=0;
               EdComisServ.ValueNumeric:=0;
           End;
       End;
   End;
end;

procedure TFComissao.BitBtn2Click(Sender: TObject);
begin
  inherited;
	//VALIDA QTO O FUNCIONÁRIO
   If XCOD_COMISS<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário selecionar um funcionário que irá receber a comissão.', '', 1, 1, False, 'a');
		FrmComissionado.EDCodigo.SetFocus;
	    Exit;
   End;
	//VALIDA QTO AO VLR DA COMISSÃO
   If (EdBCProd.ValueNumeric<0) or (EDComisProd.ValueNumeric<0) or (EDComisProd.ValueNumeric>100)
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'A comissão sobre produtos deve se encontrar em um intervalo superior à "0" e inferior/igual à "100".', '', 1, 1, False, 'a');
		EDComisProd.SetFocus;
	    Exit;
   End;
   If (EdBCServ.ValueNumeric<0) or (EdComisServ.ValueNumeric<0) or (EdComisServ.ValueNumeric>100)
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'A comissão sobre serviços deve se encontrar em um intervalo superior à "0" e inferior/igual à "100".', '', 1, 1, False, 'a');
		EdComisServ.SetFocus;
	    Exit;
   End;
   If ((StrToFloat(LTPServ.Caption)+EdComisServ.ValueNumeric)>100) or ((StrToFloat(LTPProd.Caption)+EDComisProd.ValueNumeric)>100)
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Com esta nova inserção um percentual de comissões ultrapassará 100%, isso não é permitido!', '', 1, 1, False, 'a');
		EDComisProd.SetFocus;
	    Exit;
   End;

//QUANDO FOR FEITA ALGUMA DEVOLUÇÃO, O SISTEMA IRÁ VERIFICAR SE FOI ADICIONADO NO PEDVENDA ATRAVES DO CAMPO "ATU", LOGO ABAIXO. SE NÃO FOI ADD, OS VALORES DAS COMISSOES SERÃO DAS PORCENTAGENS DOS PRODUTOS
//******************************************************************************

   // ARMAZENA TEMPORARIAMENTE CODIGO DO PEDIDO
   XCODIGO_PEDIDO := DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString;

   FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XCODIGO_PEDIDO,'');

   DMSAIDA.TPedV.Edit;
   DMSAIDA.TPedV.FieldByName('ATU').AsString := '1';
   DMSAIDA.TPedV.Post;
   DMSAIDA.IBT.CommitRetaining;

//******************************************************************************

   // APENAS PARA ABRIR DATASET
   DMFINANC.TComis.Close;
   DMFINANC.TComis.SQL.Clear;
   DMFINANC.TComis.SQL.Add('SELECT * FROM COMISSAO');
   DMFINANC.TComis.Open;

	//INSERE O COMISSIONADO
	XCODPKCOMIS:=InserReg(DMFINANC.TComis, 'COMISSAO', 'COD_COMISSAO');
   DMFINANC.TComis.FieldByName('COD_COMISSAO').AsInteger:=XCODPKCOMIS;
   DMFINANC.TComis.FieldByName('COD_GERADOR').AsInteger:=XCODPKMESTRE;
   DMFINANC.TComis.FieldByName('GERADOR').AsString:=XTIPO;
   DMFINANC.TComis.FieldByName('COD_FUNCIONARIO').AsInteger:=XCOD_COMISS;
   DMFINANC.TComis.FieldByName('VLRPROD').AsCurrency:=EdBCProd.ValueNumeric;
   DMFINANC.TComis.FieldByName('VLRSERV').AsCurrency:=EdBCServ.ValueNumeric;
   DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=EDComisProd.ValueNumeric;
   DMFINANC.TComis.FieldByName('PERSERV').AsCurrency:=EdComisServ.ValueNumeric;
   DMFINANC.TComis.FieldByName('VLRCOMISPROD').AsCurrency:=(EdBCProd.ValueNumeric*EDComisProd.ValueNumeric)/100;
   DMFINANC.TComis.FieldByName('VLRCOMISSERV').AsCurrency:=(EdBCServ.ValueNumeric*EdComisServ.ValueNumeric)/100;
   DMFINANC.TComis.Post;
   DMFINANC.Transaction.CommitRetaining;
   FILTRACOMIS;
   FrmComissionado.EDCodigo.Text:='';
   FrmComissionado.EdDescricao.Text:='';
   XCOD_COMISS:=-1;
   FrmComissionado.EDCodigo.SetFocus;
end;

procedure TFComissao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FMenu.XBCPROD:=StrToFloat(TiraPonto(LTComiss.Caption));//Retorna total de comissões para variavel para que possa ser utilizada novamente
  inherited;

end;

procedure TFComissao.BtnFechaClick(Sender: TObject);
begin
   If (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1')
   Then Begin
   	//Quando isso ocorrer significa que a base de calculo de produtos e o vlr total da comissão e deve ser distribuida 100% entre os comissionados
		If StrToFloat(LTPProd.Caption)<>100
       Then Begin
       	If Not DMFINANC.TSlctComis.IsEmpty
           Then Begin
				Mensagem('A T E N Ç Ã O', 'Neste caso a B. de Cálculos de comissões para produtos se refere ao Vlr. total da comissão e deve ser distribuída 100% aos comissionados!', '', 1, 1, False, 'a');
				FrmComissionado.EDCodigo.SetFocus;
           	Exit;
           End
       End;
   End; 
  inherited;

end;

end.
