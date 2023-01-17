unit UPrecoServ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, Grids,
  DBGrids, TFlatEditUnit, Mask, DBCtrls, UFrmBusca;

type
  TFPrecoServ = class(TFCadPadrao)
    GroupBox2: TGroupBox;
    BtnProcServ: TBitBtn;
    LServico: TLabel;
    LSubServico: TLabel;
    Label1: TLabel;
    EDCodInterno: TFlatEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    BtnInsertServ: TBitBtn;
    BtnDeleteServ: TBitBtn;
    EDNomeTab: TEdit;
    EDQtde: TEdit;
    EDVlrNormal: TEdit;
    EDVlrExtra: TEdit;
    Label6: TLabel;
    PCCadastro: TPanel;
    LTextoBusca: TLabel;
    LVlrAnt: TLabel;
    FrmCli: TFrmBusca;
    FrmProduto: TFrmBusca;
    FEValor: TFlatEdit;
    BBInserir: TBitBtn;
    BBExcluir: TBitBtn;
    GroupBox3: TGroupBox;
    ENome: TEdit;
    EProd: TEdit;
    DBGridConst: TDBGrid;
    procedure BtnProcServClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBVlrNormalExit(Sender: TObject);
    procedure DBVlrExtraExit(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnInsertServClick(Sender: TObject);
    procedure EDVlrNormalExit(Sender: TObject);
    procedure EDVlrExtraExit(Sender: TObject);
    procedure BtnProcServExit(Sender: TObject);
    procedure BtnDeleteServClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure FrmFuncBTNOPENClick(Sender: TObject);
    procedure FrmCliBTNMINUSClick(Sender: TObject);
    procedure FrmCliEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmProdutoBTNOPENClick(Sender: TObject);
    procedure FrmProdutoEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmCliBTNOPENClick(Sender: TObject);
    procedure BBInserirClick(Sender: TObject);
    procedure FrmProdutoBTNMINUSClick(Sender: TObject);
    procedure BBExcluirClick(Sender: TObject);
    procedure ENomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ENomeEnter(Sender: TObject);
    procedure EProdEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    // limpa campos
    Procedure LimpaCampos;
    // ataliza grid
    Procedure AtualizaGrid;
    // LImpa campos do subproduto
    Procedure LimpaSubProduto;
    //insere cabecalho dos itens
    Procedure InsereCabecalho;
    // atualiza nome da tabela
    Procedure AtualizaTabela;
    // - 04/05/2009: filtra produtos inseridos
    Procedure FiltraProd;
  end;

var
  FPrecoServ: TFPrecoServ;
  XValor: string;
  XCodCliente: integer;
  XCodSubServico: integer;
  XCodTabela: integer;
  XCodItem: integer;
  XLibera: integer;
  xCliente, xProduto :Integer;// - 29/04/2009: controle para tabela de preços da construmaq
  xVlrNormal :Real;// - 29/04/2009: controle para tabela de preços da construmaq

implementation

uses UDMPessoa, UCliente, Alxor32, AlxMessage, UServico, UDMEstoque,
  UDmServ, UPadrao, UDMEntrada, UMenu, UDMMacs, DB, UProduto;

{$R *.dfm}

procedure TFPrecoServ.BtnProcServClick(Sender: TObject);
begin
  inherited;
  	//abre formulario de serviço para seleção
	If AbrirForm(TFSERVICO, FSERVICO, 1)='Selected'
	Then Begin
       LServico.Caption := DMSERV.WServico.FieldByName('SERVICO').AsString;
       LSubServico.Caption := DMSERV.WSubserv.FieldByName('DESCRICAO').AsString;
       EDCodInterno.Text := DMSERV.WSubserv.FieldByName('COD_INTERNO').AsString;
       XCodSubServico := DMSERV.WSubserv.FieldByName('COD_SUBSERVICO').AsInteger;
   End; 
end;

procedure TFPrecoServ.FormActivate(Sender: TObject);
begin
    Caption := 'Tabela de Preços';
    XTabela:= DMServ.TTabPreco;
    XCampo:='DESCRICAO';
    XPkTabela:='COD_TABELAPRECO';
    XTransaction:= DMServ.IBT;
    XTab:= True;
    XDescricao:='a tabela';
    XSQLTABELA:='TABELA_PRECO';
    XLiberaDados:='';
    LiberaDados;
    DBGridCadastroPadrao.DataSource := DMServ.DSTabPreco; 
  inherited;

   FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', '', '', '');
   if DMMACS.TEmpresa.FieldByName('FANTASIA').AsString = 'CONSTRUMAQ' then
   begin
       PConsulta.Visible:=False;
       PConsulta.SendToBack;
       PCadastro.BringToFront;
       PCadastro.Visible:=True;   
       PCCadastro.BringToFront;
       PCCadastro.Visible:=True;
       PCCadastro.Repaint;
       FrmCli.Visible:=True;
       FrmProduto.Visible:=True;
       FrmCli.BringToFront;
       FrmProduto.BringToFront;
       BtnGravar.Enabled:=false;
       BtnCancelar.Enabled:=false;
       FiltraProd;
   end;
end;

procedure TFPrecoServ.DBVlrNormalExit(Sender: TObject);
begin
  inherited;
   If edVlrNormal.Text <> ''
   Then Begin
       XValor := EDVlrNormal.Text;
       EDVlrNormal.Text := FormatFloat('0.00', StrToFloat(XValor));
   End;
end;

procedure TFPrecoServ.DBVlrExtraExit(Sender: TObject);
begin
  inherited;
   If EDVlrExtra.Text <> ''
   Then Begin
       XValor := EDVlrExtra.Text;
       EDVlrExtra.Text := FormatFloat('0.00', StrToFloat(XValor));
   End;
end;

procedure TFPrecoServ.LimpaCampos;
begin
   EDNomeTab.Text := '';
   EDCodInterno.Text := '';
   EDQtde.Text := '';
   EDVlrNormal.Text := '';
   EDVlrExtra.Text := '';
end;



procedure TFPrecoServ.BtnNovoClick(Sender: TObject);
begin
  inherited;
   // limpa os campos para novo cadastro
   LimpaCampos;

   // controla inserção do cabecalho qdo clicar em inserir
   XLibera := 0;

   XCodTabela := 0;

   // atualiza grid com o xcodtabela acima. Dessa forma nao traz nenhum valor
   AtualizaGrid;

end;

// insere cabecalho dos itens
Procedure TFPrecoServ.InsereCabecalho;
begin
   // busca o proximo codigo da tabela_preco
   XCodTabela := InserReg(DMServ.TTabPreco,'TABELA_PRECO','COD_TABELAPRECO');
   DMServ.TTabPreco.FieldByName('cod_tabelapreco').AsInteger := XCodTabela;
   DMServ.TTabPreco.FieldByName('descricao').AsString := EDNomeTab.Text;
   DMServ.TTabPreco.Post;
   DMServ.TTabPreco.ApplyUpdates;
   DMServ.IBT.CommitRetaining;
end;

procedure TFPrecoServ.BtnGravarClick(Sender: TObject);
begin
   If EDNomeTab.Text = ''
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'Por favor, informe o nome da tabela e seus itens', '', 1, 1, False, 'A');
       EDNomeTab.SetFocus;
       Exit;
   End;

   // atualiza nome da tabela
   AtualizaTabela;

   // atualiza grid
   LiberaDados;

   inherited;
end;

// atualiza nome da tabela
Procedure TFPrecoServ.AtualizaTabela;
begin
   // SELECIONA DADOS DA TABELA "TABELA_PRECO" QUE TENHA O MSM CODIGO GERADO
   DMServ.TTabPreco.Close;
   DMServ.TTabPreco.SQL.Clear;
   DMServ.TTabPreco.SQL.Add('select * from tabela_preco where tabela_preco.cod_tabelapreco = :codigo');
   DMServ.TTabPreco.ParamByName('codigo').AsInteger := XCodTabela;
   DMServ.TTabPreco.Open;

   // EDITANDO O CAMPO DESCRICAO DA TABELA "TABELA_PRECO"
   DMServ.TTabPreco.Edit;
   DMServ.TTabPreco.FieldByName('descricao').AsString := EDNomeTab.Text;
   DMServ.TTabPreco.Post;
   DMServ.IBT.CommitRetaining;


end;

procedure TFPrecoServ.BtnInsertServClick(Sender: TObject);
begin
  inherited;

   // NOME DA TABELA
   If EDNomeTab.Text = ''
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'Informe o nome da tabela', '', 1, 1, False, 'A');
       EDNomeTab.SetFocus;
       Exit;
   End;

   // SUBSERVICO
   If EDCodInterno.Text = ''
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'Nenhum Serviço foi selecionado.', '', 1, 1, False, 'A');
       Exit;
   End;

   // QUANTIDADE
   If EDQtde.Text = ''
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'Informe a Quantidade Mínima do serviço selecionado.', '', 1, 1, False, 'A');
       EDQtde.SetFocus;
       Exit;
   End;

   // VALOR NORMAL
   If EDVlrNormal.Text = ''
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'Informe o Valor do serviço.', '', 1, 1, False, 'A');
       EDVlrNormal.SetFocus;
       Exit;
   End;

   // VALOR HORA EXTRA
   If EDVlrExtra.Text = ''
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'Informe o Valor da Hora Extra.', '', 1, 1, False, 'A');
       EDVlrExtra.SetFocus;
       Exit;
   End;

   // variavel que controla inserção do cabecalho dos itens
   If XLibera = 0
   Then Begin
       // insere dados na tabela TABELA_PRECO
       InsereCabecalho;
       XLibera := 1;
   End;


   // INSERE OS CAMPOS NA TABELA ITENS_TABPRECO
   XCodItem := InserReg(DMServ.TItensTabPreco,'ITENS_TABPRECO','COD_ITEMTAB');
   DMServ.TItensTabPreco.FieldByName('COD_ITEMTAB').AsInteger := XCodItem;
   DMServ.TItensTabPreco.FieldByName('COD_SUBSERV').AsInteger := XCodSubServico;
   DMServ.TItensTabPreco.FieldByName('QTDE_MIN').AsString := EDQtde.Text;
   DMServ.TItensTabPreco.FieldByName('VLR_NORMAL').AsString := EDVlrNormal.Text;
   DMServ.TItensTabPreco.FieldByName('VLR_HORAEXTRA').AsString := EDVlrExtra.Text;
   DMServ.TItensTabPreco.FieldByName('COD_TABPRECO').AsInteger := XCodTabela;
   DMServ.TItensTabPreco.Post;

   DMServ.TItensTabPreco.ApplyUpdates;
   DMServ.IBT.CommitRetaining;

   // atualiza a grid de servicos de um cliente especifico
   AtualizaGrid;

   //limpa campos do subproduto
   LimpaSubProduto;

end;

// atualiza a grid de servicos de um cliente especifico
Procedure TFPrecoServ.AtualizaGrid;
begin

   DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add(' select tabela_preco.cod_tabelapreco, tabela_preco.descricao AS DESC_TABELA, ');
   DMServ.TAlx1.SQL.Add(' itens_tabpreco.cod_tabpreco, itens_tabpreco.cod_subserv, ');
   DMServ.TAlx1.SQL.Add(' itens_tabpreco.qtde_min, itens_tabpreco.vlr_normal, itens_tabpreco.vlr_horaextra, ');
   DMServ.TAlx1.SQL.Add(' subservico.cod_subservico, subservico.descricao, subservico.cod_interno ');
   DMServ.TAlx1.SQL.Add(' from itens_tabpreco ');
   DMServ.TAlx1.SQL.Add(' left join tabela_preco on itens_tabpreco.cod_tabpreco = tabela_preco.cod_tabelapreco ');
   DMServ.TAlx1.SQL.Add(' left join subservico on itens_tabpreco.cod_subserv = subservico.cod_subservico ');
   DMServ.TAlx1.SQL.Add(' where itens_tabpreco.cod_tabpreco = ' + IntToStr(XCodTabela) );
   DMServ.TAlx1.Open;


end;

procedure TFPrecoServ.EDVlrNormalExit(Sender: TObject);
begin
  inherited;
   If EDVlrNormal.Text <> ''
   Then Begin
       XValor := FormatFloat('0.00', StrToFloat(EDVlrNormal.Text));
       EDVlrNormal.Text := XValor;
   End;

end;

procedure TFPrecoServ.EDVlrExtraExit(Sender: TObject);
begin
  inherited;
   If EDVlrExtra.Text <> ''
   Then Begin
       XValor := FormatFloat('0.00', StrToFloat(EDVlrExtra.Text));
       EDVlrExtra.Text := XValor;
   End;
   BtnInsertServ.SetFocus;

end;

procedure TFPrecoServ.BtnProcServExit(Sender: TObject);
begin
  inherited;

end;

// LImpa campos do subproduto
Procedure TFPrecoServ.LimpaSubProduto;
begin
   EDCodInterno.Text := '';
   EDQtde.Text := '';
   EDVlrNormal.Text := '';
   EDVlrExtra.Text := '';
   LServico.Caption := '';
   LSubServico.Caption := '';
end;


procedure TFPrecoServ.BtnDeleteServClick(Sender: TObject);
begin
  inherited;

   // SELECIONA O ITEM QUE TENHA O MSM COD_SUBSERVICO E REFERENTE A MESMA TABELA
   DMServ.TItensTabPreco.Close;
   DMServ.TItensTabPreco.SQL.Clear;
   DMServ.TItensTabPreco.SQL.Add(' select * from itens_tabpreco ');
   DMServ.TItensTabPreco.SQL.Add(' left join tabela_preco on itens_tabpreco.cod_tabpreco = tabela_preco.cod_tabelapreco ');
   DMServ.TItensTabPreco.SQL.Add(' where (itens_tabpreco.cod_subserv = :CODSERV) ');
   DMServ.TItensTabPreco.SQL.Add(' AND (itens_tabpreco.cod_tabpreco = :CODTAB) ');
   DMServ.TItensTabPreco.ParamByName('CODSERV').AsString := DMServ.TAlx1.FieldByName('cod_subservico').AsString;
   DMServ.TItensTabPreco.ParamByName('CODTAB').AsInteger := XCodTabela;
   DMServ.TItensTabPreco.Open;

   If not DMServ.TItensTabPreco.IsEmpty
   Then Begin
       EDQtde.Text := DMServ.TAlx1.FieldByName('QTDE_MIN').AsString;
       EDVlrNormal.Text := DMServ.TAlx1.FieldByName('VLR_NORMAL').AsString;
       EDVlrExtra.Text := DMServ.TAlx1.FieldByName('VLR_HORAEXTRA').AsString;
       EDCodInterno.Text := DMServ.TAlx1.FieldByName('COD_SUBSERV').AsString;
       EDCodInterno.Text := DMServ.TAlx1.FieldByName('COD_INTERNO').AsString;
       XCodSubServico := DMServ.TAlx1.FieldByName('COD_SUBSERV').AsInteger;

       DMServ.TItensTabPreco.Delete;
       Try
           DMServ.TTabPreco.ApplyUpdates;
           DMServ.IBT.CommitRetaining;

       Except
       End;
   End;

   // atualiza a grid
   AtualizaGrid;
end;

procedure TFPrecoServ.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   EDNomeTab.Text := DMServ.TTabPreco.FieldByName('descricao').AsString;

   XCodTabela := DMServ.TTabPreco.FieldByName('cod_tabelapreco').AsInteger;

   // atualiza a grid
   AtualizaGrid;

   // limpa campos
   LimpaSubProduto;

   // controla inserção do cabecalho qdo clicar em inserir
   XLibera := 1;
end;

procedure TFPrecoServ.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  // atualiza grid
   LiberaDados;
end;

procedure TFPrecoServ.BtnApagarClick(Sender: TObject);
begin

   If DMServ.TTabPreco.FieldByName('cod_tabelapreco').AsString <> ''
   Then Begin
       If Mensagem('   A T E N Ç Ã O   ','Deseja realmente apagar a tabela "' + DMServ.TTabPreco.FieldByName('descricao').AsString + '" ?','',2, 3, False, 'I')= 2
       Then Begin
           // DELETA TABELA
           DMServ.Alx.Close;
           DMServ.Alx.SQL.Clear;
           DMServ.Alx.SQL.Add(' delete from tabela_preco where tabela_preco.cod_tabelapreco = :codigo ');
           DMServ.Alx.ParamByName('codigo').AsString := DMServ.TTabPreco.FieldByName('cod_tabelapreco').AsString;
           DMServ.Alx.ExecSQL;

           // DELETA ITENS DA TABELA
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('delete from itens_tabpreco where itens_tabpreco.cod_tabpreco = :codigo');
           DMServ.TAlx1.ParamByName('codigo').AsString := DMServ.TTabPreco.FieldByName('cod_tabelapreco').AsString;
           DMServ.TAlx1.ExecSQL;

           DMServ.IBT.CommitRetaining;

           LiberaDados;
       End;
   End;
end;

procedure TFPrecoServ.FrmFuncBTNOPENClick(Sender: TObject);
begin
 // inherited;
  //FrmFunc.BTNOPENClick(Sender);
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
       FrmCli.EDCodigo.Text:=DMPESSOA.WCliente.fieldByName('COD_INTERNO').AsString;
       FrmCli.EdDescricao.Text:=DMPESSOA.WCliente.fieldByName('NOME').AsString;
       xCliente:=DMPESSOA.WCliente.fieldByName('COD_CLIENTE').AsInteger;
   end
   else begin
       FrmCli.EDCodigo.Text:='';
       FrmCli.EdDescricao.Text:='';
       xCliente:=0;
   end;
end;

procedure TFPrecoServ.FrmCliBTNMINUSClick(Sender: TObject);
begin
  //inherited;
 // FrmCli.BTNMINUSClick(Sender);
     FrmCli.EDCodigo.Text:='';
     FrmCli.EdDescricao.Text:='';
     xCliente:=0;
end;

procedure TFPrecoServ.FrmCliEDCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
   if key = 13
   then begin
       if FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmCli.EDCodigo.Text,'') = True
       then begin
           FrmCli.EDCodigo.Text:=DMPESSOA.WCliente.fieldByName('COD_INTERNO').AsString;
           FrmCli.EdDescricao.Text:=DMPESSOA.WCliente.fieldByName('NOME').AsString;
           xCliente:=DMPESSOA.WCliente.fieldByName('COD_CLIENTE').AsInteger;
       end
       else begin
           FrmCli.EDCodigo.Text:='';
           FrmCli.EdDescricao.Text:='';
           xCliente:=0;
       end;
   end;
end;

procedure TFPrecoServ.FrmProdutoBTNOPENClick(Sender: TObject);
begin
  //inherited;
  //FrmProduto.BTNOPENClick(Sender);
   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
       FrmProduto.EDCodigo.Text:=DMESTOQUE.WSimilar.fieldByName('CONTRINT').AsString;
       FrmProduto.EdDescricao.Text:=DMESTOQUE.WSimilar.fieldByName('DESCRICAO').AsString;
       xProduto:=DMESTOQUE.WSimilar.fieldByName('COD_ESTOQUE').AsInteger;
       xVlrNormal:=DMESTOQUE.WSimilar.fieldByName('VENDVARV').AsCurrency;
       LVlrAnt.Caption:=DMESTOQUE.WSimilar.fieldByName('VENDVARV').AsString;
   end
   else begin
       FrmProduto.EDCodigo.Text:='';
       FrmProduto.EdDescricao.Text:='';
       xProduto:=0;
       xVlrNormal:=0;
       LVlrAnt.Caption:='0';
   end;
end;

procedure TFPrecoServ.FrmProdutoEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //inherited;
   if key = 13
   then begin
       if FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'CONTRINT', FrmProduto.EDCodigo.Text,'') = True
       then begin
           FrmProduto.EDCodigo.Text:=DMESTOQUE.WSimilar.fieldByName('CONTRINT').AsString;
           FrmProduto.EdDescricao.Text:=DMESTOQUE.WSimilar.fieldByName('DESCRICAO').AsString;
           xProduto:=DMESTOQUE.WSimilar.fieldByName('COD_ESTOQUE').AsInteger;
           xVlrNormal:=DMESTOQUE.WSimilar.fieldByName('VENDVARV').AsCurrency;
           LVlrAnt.Caption:=DMESTOQUE.WSimilar.fieldByName('VENDVARV').AsString;
       end
       else begin
           FrmProduto.EDCodigo.Text:='';
           FrmProduto.EdDescricao.Text:='';
           xProduto:=0;
           xVlrNormal:=0;
           LVlrAnt.Caption:='0';
       end;
   end;
end;

procedure TFPrecoServ.FrmCliBTNOPENClick(Sender: TObject);
begin
  inherited;
       filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
   	If AbrirForm(TFCliente, FCliente, 1)='Selected'
   	Then Begin
   		xCliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       	FrmCli.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	FrmCli.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       	FrmCli.Repaint;
   	End;
end;

procedure TFPrecoServ.BBInserirClick(Sender: TObject);
begin
  inherited;
  // - 04/05/2009: vai ser usado na tabela de preço mas seguira os seguintes campos:
  // - 04/05/2009: cod_tabpreco = PK, cod_itemtab = cod_estoque, cod_subserv = cod_cliente,
  // - 04/05/2009: vlr_normal = valor do produto, vlr_horaextra = valor especial deste produto para este cliente
  try
      XCodItem:=InserReg(DMServ.TItensTabPreco,'ITENS_TABPRECO','COD_ITEMTAB');
      DMServ.Alx.Close;
      DMServ.Alx.SQL.Clear;
      DMServ.Alx.SQL.Add('insert into ITENS_TABPRECO');
      DMServ.Alx.SQL.Add('(COD_TABPRECO, COD_ITEMTAB, COD_SUBSERV, VLR_NORMAL, VLR_PROD)');
      DMServ.Alx.SQL.Add('values');
      DMServ.Alx.SQL.Add('(:COD_TABPRECO, :COD_ITEMTAB, :COD_SUBSERV,:VLR_NORMAL, :VLR_PROD)');
      DMServ.Alx.ParamByName('COD_TABPRECO').AsInteger:=XCodItem;
      DMServ.Alx.ParamByName('COD_ITEMTAB').AsInteger:=xProduto;
      DMServ.Alx.ParamByName('COD_SUBSERV').AsInteger:=xCliente;
      DMServ.Alx.ParamByName('VLR_NORMAL').AsCurrency:=xVlrNormal;
      DMServ.Alx.ParamByName('VLR_PROD').AsCurrency:= StrToCurr(FEValor.Text);
      DMServ.Alx.ExecSQL;
      DMServ.IBT.CommitRetaining;

      FrmProduto.EDCodigo.Text:='';
      FrmProduto.EdDescricao.Text:='';
      xProduto:=0;
      xVlrNormal:=0;
      FEValor.Text:='';
      XCodItem:=0;
      FiltraProd;
      LVlrAnt.Caption:='0';

  except
      Mensagem('INFORMAÇÃO', 'Não foi possível gravar os dados, por favor tente novamente', '', 1, 1, False, 'I');
  end;
end;

procedure TFPrecoServ.FrmProdutoBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmProduto.BTNMINUSClick(Sender);

end;

procedure TFPrecoServ.BBExcluirClick(Sender: TObject);
begin
  inherited;
  try
      XCodItem:=InserReg(DMServ.TItensTabPreco,'ITENS_TABPRECO','COD_ITEMTAB');
      DMServ.Alx.Close;
      DMServ.Alx.SQL.Clear;
      DMServ.Alx.SQL.Add('delete from ITENS_TABPRECO');
      DMServ.Alx.SQL.Add('where');
      DMServ.Alx.SQL.Add('COD_TABPRECO = :OLD_COD_ITEMTAB');
      DMServ.Alx.ParamByName('OLD_COD_ITEMTAB').AsInteger:=DMESTOQUE.Alx.fieldByName('COD_TABPRECO').AsInteger;
      DMServ.Alx.ExecSQL;
      DMServ.IBT.CommitRetaining;

      FrmProduto.EDCodigo.Text:='';
      FrmProduto.EdDescricao.Text:='';
      xProduto:=0;
      xVlrNormal:=0;
      FrmCli.EDCodigo.Text:='';
      FrmCli.EdDescricao.Text:='';
      xCliente:=0;
      FEValor.Text:='';
      XCodItem:=0;
      FiltraProd;

  except
      Mensagem('INFORMAÇÃO', 'Não foi possível excluir, tente novamente!', '', 1, 1, False, 'I');
  end;
end;

procedure TFPrecoServ.FiltraProd;
begin                  
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('select itens_tabpreco.cod_tabpreco, subproduto.descricao, pessoa.nome,');
   DMESTOQUE.Alx.SQL.Add('itens_tabpreco.vlr_prod, itens_tabpreco.vlr_normal');
   DMESTOQUE.Alx.SQL.Add('from itens_tabpreco');
   DMESTOQUE.Alx.SQL.Add('left join estoque on itens_tabpreco.cod_itemtab = estoque.cod_estoque');
   DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.Alx.SQL.Add('left join cliente on itens_tabpreco.cod_subserv = cliente.cod_cliente');
   DMESTOQUE.Alx.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMESTOQUE.Alx.SQL.Add('where itens_tabpreco.cod_tabpreco > :COD');
   DMESTOQUE.Alx.ParamByName('COD').AsInteger:=0;
   if (ENome.TabStop = true) and (ENome.Text <> 'Cliente') then
       DMESTOQUE.Alx.SQL.Add('and upper (pessoa.nome) like upper('+#39+ENome.Text+'%'+#39+')');
   if (EProd.TabStop = true) and (EProd.Text <> 'Produto') then
       DMESTOQUE.Alx.SQL.Add('and upper (subproduto.descricao) like upper('+#39+EProd.Text+'%'+#39+')');
   DMESTOQUE.Alx.SQL.Add('order by pessoa.nome');
   DMESTOQUE.Alx.Open;

   PCCadastro.BringToFront;
   PCCadastro.Visible:=true;
   PCCadastro.Repaint;
   DBGridConst.Repaint;
end;

procedure TFPrecoServ.ENomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 // inherited;

   if key = 13
   then begin
       FiltraProd;
   end;

end;

procedure TFPrecoServ.EProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
   if key = 13
   then begin
       FiltraProd;
   end;
end;

procedure TFPrecoServ.ENomeEnter(Sender: TObject);
begin
 // inherited;
   If Enome.Text = 'Cliente' Then
       Enome.Clear;
end;

procedure TFPrecoServ.EProdEnter(Sender: TObject);
begin
  //inherited;
   If EProd.Text = 'Produto' Then
       EProd.Clear;
end;

end.
