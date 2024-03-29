unit UFORNECEDOR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoPes, TFlatHintUnit, FashionPanel, StdCtrls,
  ComCtrls, Mask, DBCtrls, DBColorEdit, ExtCtrls, TFlatTabControlUnit,
  Grids, DBGrids, Buttons, TFlatEditUnit, jpeg, Menus, UFrmBusca, DBColorComboBox,
  DrLabel, ShellAPI, DB, xmldom, XMLIntf, msxmldom, XMLDoc, FR_DSet,
  FR_DBSet, FR_Class, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

type
  TFFornecedor = class(TFCadPadraoPes)
    FrmTransp: TFrmBusca;
    GroupBox11: TGroupBox;
    DBMemo1: TDBMemo;
    PHistorico: TPanel;
    Label61: TLabel;
    DRLabel1: TDRLabel;
    DRLabel2: TDRLabel;
    MResumo: TMemo;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox13: TGroupBox;
    DBColorEdit52: TDBColorEdit;
    GroupBox14: TGroupBox;
    DBColorEdit53: TDBColorEdit;
    Label1: TLabel;
    DBComboBox1: TDBComboBox;
    CBFinanceiro: TCheckBox;
    PVeiculos: TGroupBox;
    DBGVeiculos: TDBGrid;
    BtRemover: TBitBtn;
    Panel2: TPanel;
    btnEquip: TBitBtn;
    BtRefresh: TBitBtn;
    PRel: TPanel;
    LTituloRel: TLabel;
    FrmCidade: TFrmBusca;
    BtGeraRel: TBitBtn;
    BtCanRel: TBitBtn;
    FSRel: TfrReport;
    FDSCaixa: TfrDBDataSet;
    FornecedoresporCidade1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmTranspBTNOPENClick(Sender: TObject);
    procedure FrmTranspEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure TCPessoaTabChanged(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnEquipClick(Sender: TObject);
    procedure BtRefreshClick(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdCpfEnter(Sender: TObject);
    procedure EdCpfExit(Sender: TObject);
    procedure EdCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCpfKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtGeraRelClick(Sender: TObject);
    procedure FornecedoresporCidade1Click(Sender: TObject);
    procedure BtCanRelClick(Sender: TObject);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    
  private
    { Private declarations }
  public
    { Public declarations }
    //Procedure responsavel por montar um historico do fornecedor
    xcodfornec : string;
    xcodequi : String;
    Procedure GeraHist;
    Procedure GeraGridVeiculos;
  end;

var
  FFornecedor: TFFornecedor;
  XCOD_TRANSP: Integer;

implementation

uses AlxMessage, Alxor32, UDMPessoa, UConsPlncta, UDMConta, UDMMacs,
  UDMFinanc, UPedCompra, UCtasPagar, UCadEquipamento, UDMGEOGRAFIA, UMenu,
  UCadPadrao;

{$R *.DFM}
//Procedure responsavel por gerar a gid veiculos
procedure TFFornecedor.GeraGridVeiculos;
Begin
	FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_cliente', xcodfornec, '');
end;

//Procedure responsavel por montar um historico do fornecedor
Procedure TFFornecedor.GeraHist;
Begin
   MResumo.Lines.Clear;
   //**********************
   //**qtd de compras
   //**********************
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' SELECT Count(Pedcompra.cod_Pedcomp) AS CONT, SUM(PEDcompra.VALOR) AS TOTAL FROM PEDcompra ');
   DMMACS.TALX.SQL.Add(' Left Join fornecedor on pedcompra.cod_fornec = pedcompra.cod_fornec ');
   DMMACS.TALX.SQL.Add(' where pedcompra.cod_fornec=:CODCLIENTE ');
   DMMACS.TALX.ParamByName('CODCLIENTE').AsString:=XTabela.FieldByName('COD_FORNEC').AsString;
   DMMACS.TALX.Open;
   If Not DMMACS.TALX.IsEmpty
   Then Begin
       If DMMACS.TALX.FieldByName('CONT').AsInteger>0
       Then Begin
       	MResumo.Lines.Add('Pedidos de compra..:');
       	MResumo.Lines.Add('   Quantidade..: '+ IntToStr(DMMACS.TALX.FieldByName('CONT').AsInteger)+
       	'  - Valor Total..: '+FormatFloat('0.00', DMMACS.TALX.FieldByName('TOTAL').AsCurrency)+
       	'  - M�dia por Pedido..: '+FormatFloat('0.00', DMMACS.TALX.FieldByName('TOTAL').AsCurrency/DMMACS.TALX.FieldByName('CONT').AsInteger));
       End;
   End;
   //**********************
   //**Maior e Menor Compra
   //**********************
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' SELECT Pedcompra.valor, pedcompra.dtpedcomp, pedcompra.numped FROM PEDCOMPRA ');
   DMMACS.TALX.SQL.Add(' Left Join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec ');
   DMMACS.TALX.SQL.Add(' where pedcompra.cod_fornec=:CODCLIENTE ');
   DMMACS.TALX.ParamByName('CODCLIENTE').AsString:=XTabela.FieldByName('COD_FORNEC').AsString;
   DMMACS.TALX.SQL.Add(' order by pedcompra.valor desc ');
   DMMACS.TALX.Open;
   If Not DMMACS.TALX.IsEmpty
   Then Begin
       DMMACS.TALX.First;
       MResumo.Lines.Add('Maior Compra..:');
       MResumo.Lines.Add('   Valor..: '+FormatFloat('0.00', DMMACS.TALX.FieldByName('valor').AsCurrency)+
       '  - Data..: '+DMMACS.TALX.FieldByName('dtpedcomp').AsString+
       '  - Pedido..: '+DMMACS.TALX.FieldByName('numped').AsString);
       If DMMACS.TALX.RecordCount>1
       Then Begin
       	DMMACS.TALX.Last;
       	MResumo.Lines.Add('Menor Compra..:');
       	MResumo.Lines.Add('   Valor..: '+FormatFloat('0.00', DMMACS.TALX.FieldByName('valor').AsCurrency)+
       	'  - Data..: '+DMMACS.TALX.FieldByName('dtpedcomp').AsString+
       	'  - Pedido..: '+DMMACS.TALX.FieldByName('numped').AsString);
       End;
   End;
   //**************************
   //**Primeira e ultima compra
   //**************************
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' SELECT Pedcompra.valor, pedcompra.dtpedcomp, pedcompra.numped FROM PEDCOMPRA ');
   DMMACS.TALX.SQL.Add(' Left Join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec ');
   DMMACS.TALX.SQL.Add(' where pedcompra.cod_fornec=:CODCLIENTE ');
   DMMACS.TALX.ParamByName('CODCLIENTE').AsString:=XTabela.FieldByName('COD_FORNEC').AsString;
   DMMACS.TALX.SQL.Add(' order by pedcompra.dtpedcomp desc ');
   DMMACS.TALX.Open;
   If Not DMMACS.TALX.IsEmpty
   Then Begin
       DMMACS.TALX.First;
       MResumo.Lines.Add('�ltima Compra..:');
       MResumo.Lines.Add('   Valor..: '+FormatFloat('0.00', DMMACS.TALX.FieldByName('valor').AsCurrency)+
       '  - Data..: '+DMMACS.TALX.FieldByName('dtpedcomp').AsString+
       '  - Pedido..: '+DMMACS.TALX.FieldByName('numped').AsString);
       If DMMACS.TALX.RecordCount>1
       Then Begin
       	DMMACS.TALX.Last;
       	MResumo.Lines.Add('Primeira Compra..:');
       	MResumo.Lines.Add('   Valor..: '+FormatFloat('0.00', DMMACS.TALX.FieldByName('valor').AsCurrency)+
       	'  - Data..: '+DMMACS.TALX.FieldByName('dtpedcomp').AsString+
       	'  - Pedido..: '+DMMACS.TALX.FieldByName('numped').AsString);
       End;
   End;
   //**********************
   //**Documentos em atraso
   //**********************
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select count(vwparcp.cod_parcelacp) as  CONT, sum(vwparcp.valor) as TOTAL From vwparcp ');
   DMMACS.TALX.SQL.Add(' where (vwparcp.dtvenc<:data) AND (vwparcp.fech<>'+#39+'S'+#39+') and (vwparcp.cod_fornec=:COD_CLIENTE) ');
	DMMACS.TALX.ParamByName('DATA').AsDate:=Date();
	DMMACS.TALX.ParamByName('COD_CLIENTE').AsInteger:=XTabela.FieldByName('COD_FORNEC').AsInteger;
   DMMACS.TALX.Open;
   If Not DMMACS.TALX.IsEmpty
   Then Begin
   	If DMMACS.TALX.FieldByName('CONT').AsInteger>0
       Then Begin
       	MResumo.Lines.Add('Documentos em atraso..: '+DMMACS.TALX.FieldByName('CONT').AsString );
       	MResumo.Lines.Add('   Valor..: '+FormatFloat('0.00', DMMACS.TALX.FieldByName('TOTAL').AsCurrency));
       End;
   End;
   //*****************************
   //**Pedidos de compra do fornecedor
   //*****************************
   DMFINANC.TAlx.Close;
   DMFINANC.TALX.SQL.Clear;
   DMFINANC.TALX.SQL.Add(' select *  From vwpedc ');
   DMFINANC.TALX.SQL.Add(' where (vwpedc.cod_fornec=:COD_CLIENTE) ');
   DMFINANC.TALX.ParamByName('COD_CLIENTE').AsInteger:=XTabela.FieldByName('COD_FORNEC').AsInteger;
   DMFINANC.TALX.Open;
   //*******************************
   //**Lista de Documentos em atraso
   //*******************************
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select * From vwparcp ');
   DMMACS.TALX.SQL.Add(' where (vwparcp.dtvenc<:data) AND (vwparcp.fech<>'+#39+'S'+#39+') and (vwparcp.cod_fornec=:COD_CLIENTE) ');
	DMMACS.TALX.ParamByName('DATA').AsDate:=Date();
	DMMACS.TALX.ParamByName('COD_CLIENTE').AsInteger:=XTabela.FieldByName('COD_FORNEC').AsInteger;
   DMMACS.TALX.Open;
End;

procedure TFFornecedor.FormActivate(Sender: TObject);
begin
  inherited;
  XTabela:=DMPESSOA.TFornecedor;
  XCampo:='NOME';
  XTransaction:=DMPESSOA.TransacPessoa;
  XPkTabela:='COD_FORNEC';
  XTab:=False;
  XView:=DMPESSOA.WFornecedor;
  XDescricao:= 'O Fornecedor';
  XSQLTABELA:='FORNECEDOR';
  XSQLVIEW:='VWFORNEC';
  XLiberaDados:='';
  XSQLREL:='VWFORNEC';
  RGORDEM.ItemIndex:=1;

  // - 16/02/2009: se houver cliente pre-selecionado fazer busca
  if FMenu.XPreSel
  then begin
    DMPESSOA.WFornecedor.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  end;
  FMenu.LimpaPreSelecao;

  // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\fornecedor.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\fornecedor.lgm');

   EdNome.SetFocus;
end;

procedure TFFornecedor.BtnGravarClick(Sender: TObject);
begin
   XTabela.Edit;
   XTabela.FieldByName('COD_TRANSPORT').AsInteger:=XCOD_TRANSP;
   // verifica se o fornecedor tem controle financeiro individual
   If CBFinanceiro.Checked = True Then
       XTabela.FieldByName('MARKREL').AsString := '1'
   Else
       XTabela.FieldByName('MARKREL').AsString := '0';
   XTabela.FieldByName('ATUALIZAR').AsString:='1';
   XTabela.Post;
   inherited;
   LiberaDados;

   // - 16/02/2009: se houver cliente pre-selecionado fazer busca
  if FMenu.XPreSel
  then begin
    DMPESSOA.WFornecedor.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  end;
  FMenu.LimpaPreSelecao;
  
end;

procedure TFFornecedor.BtnNovoClick(Sender: TObject);
begin
  xcodfornec := '0';
  GeraGridVeiculos;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADFORNEC', 'M')=False Then
  		Exit;

   FrmTransp.EdDescricao.Text := '';
   FrmTransp.EDCodigo.Text := '';

  inherited;

end;

procedure TFFornecedor.BtnApagarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('EXCLFORNEC', 'M')=False Then
  		Exit;

  //Djonathan 14/11/2009: REGISTRA NO BANCO FORNECEDORES APAGADOS
  Registra('FORNECEDOR','APAGAR',DateToStr(DMPESSOA.TFornecedor.FieldByName('DATA_CAD').AsDateTime),'Nome: ' + DMPESSOA.TPessoa.FieldByName('NOME').AsString,'Num_CTPS: ' + DMPESSOA.TFuncionario.FieldByname('NUM_CTPS').AsString);

  inherited;

end;

procedure TFFornecedor.BtnConsultarClick(Sender: TObject);
begin
  xcodfornec := DMPESSOA.WFornecedor.fieldbyname('cod_fornec').AsString;
  GeraGridVeiculos;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADFORNEC', 'M')=False Then
  		Exit;

  inherited;
  	If XTabela.FieldByName('COD_TRANSPORT').AsString<>''
   Then Begin
  		If SelectRegistro('VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_TRANSPORT').AsString) = True
  		Then Begin //Slecionou o registro procurado
          XCOD_TRANSP:=DMMACS.TSelect.FieldByName('COD_FORNEC').AsInteger;
          FrmTransp.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_INTERNO').AsString;
          FrmTransp.EdDescricao.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;
  		End
  		Else Begin
          XCOD_TRANSP:=-1;
          FrmTransp.EDCodigo.Text:='';
          FrmTransp.EdDescricao.Text:='';
  		End;
   End
   Else Begin
       XCOD_TRANSP:=-1;
       FrmTransp.EDCodigo.Text:='';
   	FrmTransp.EdDescricao.Text:='';
   End;

   //controla financeiro espec�fico do fornecedor
   If XTabela.FieldByName('MARKREL').AsString = '1' Then
       CBFinanceiro.Checked := true
   Else
       CBFinanceiro.Checked := false;

end;

procedure TFFornecedor.FrmContaBTNMINUSClick(Sender: TObject);
begin
//  inherited;
   //Codigo da tabela local =0
   XCOD_TRANSP:=-1;
   FrmTransp.EDCodigo.Text:='';
   FrmTransp.EdDescricao.Text:='';
end;

procedure TFFornecedor.FrmTranspBTNOPENClick(Sender: TObject);
begin
//  inherited;
	//LIBERA TODAS OS FORNECEDORES
	filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', '', '');
    FMenu.XPreSel := True;
        FMenu.XFieldPesqPreSel := 'COD_INTERNO';
        FMenu.XCodPesqPresSel := FrmTransp.EDCodigo.text;
   If AbrirForm(TFFORNECEDOR, FFORNECEDOR, 1)='Selected'
   Then Begin
      	XCOD_TRANSP:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
      	FrmTransp.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
      	FrmTransp.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
   End;                                                
end;

procedure TFFornecedor.FrmTranspEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
	If Key = #13
   Then Begin
   	If FrmTransp.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('VWFORNEC', 'COD_FORNEC', FrmTransp.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
				XCOD_TRANSP:=DMMACS.TSelect.FieldByName('COD_FORNEC').AsInteger;
           	FrmTransp.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_INTERNO').AsString;
           	FrmTransp.EdDescricao.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;
          End
          Else Begin
				XCOD_TRANSP:=-1;
           	FrmTransp.EDCodigo.Text:='';
           	FrmTransp.EdDescricao.Text:='';
          End;
       End
       Else Begin
     		XCOD_TRANSP:=-1;
         	FrmTransp.EDCodigo.Text:='';
          	FrmTransp.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFFornecedor.TCPessoaTabChanged(Sender: TObject);
begin
   PHistorico.Visible:=False;
  inherited;
   If TCPessoa.ActiveTab=3
   Then Begin
       PHistorico.Visible:=true;
       PHistorico.BringToFront;
       GeraHist;
   End;
   GeraGridVeiculos;
end;

procedure TFFornecedor.BitBtn5Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADPEDCOMP', 'M')=False Then
  		Exit;
    AbrirForm(TFPEDCOMPRA, FPEDCOMPRA, 0);
end;

procedure TFFornecedor.BitBtn6Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CP', 'M')=False Then
  		Exit;
    AbrirForm(TFCtaPagar, FCtaPagar, 0);
end;

//botao abrir form equipamento
//faz o vinculo de equipamento com fornecedor onde joga o cod_fornecedor
//dentro do campo cod_cliente na tabela equipamento
procedure TFFornecedor.btnEquipClick(Sender: TObject);
begin
  if AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected' then
    begin
      xcodequi := DMPESSOA.TEquip.fieldbyname('cod_equipamento').AsString;

      DMPESSOA.TEquip.Close;
      DMPESSOA.TEquip.SQL.Clear;
      DMPESSOA.TEquip.SQL.Add('update equipamento');
      DMPESSOA.TEquip.SQL.Add('set equipamento.cod_cliente = :FORNEC');
      DMPESSOA.TEquip.SQL.Add('where cod_equipamento = :CODIGO');
      DMPESSOA.TEquip.ParamByName('CODIGO').AsInteger := StrToInt(xcodequi);
      DMPESSOA.TEquip.ParamByName('FORNEC').AsInteger := StrToInt(xcodfornec);
      DMPESSOA.TEquip.ExecSQL;

      GeraGridVeiculos;
    end;
end;


procedure TFFornecedor.BtRefreshClick(Sender: TObject);
begin
	GeraGridVeiculos;
end;

procedure TFFornecedor.EdCodigoEnter(Sender: TObject);
begin

    if EdCodigo.Text = 'C�digo' then
        EdCodigo.Text := ''
   else
    EdCodigo.SelectAll;

   EdCodigo.Font.Color := clBlack;
end;

procedure TFFornecedor.EdNomeEnter(Sender: TObject);
begin
    if EdNome.Text = 'Nome' then
        EdNome.Text := ''
   else
    EdNome.SelectAll;

   EdNome.Font.Color := clBlack;
    
end;

procedure TFFornecedor.EdCodigoExit(Sender: TObject);
begin

    if Trim(EdCodigo.Text) = ''
    then begin
        EdCodigo.Text := 'C�digo';
        EdCodigo.Font.Color := clGray;
    end;
end;

procedure TFFornecedor.EdNomeExit(Sender: TObject);
begin

    if Trim(EdNome.Text) = ''
    then begin
        EdNome.Text := 'Nome';
        EdNome.Font.Color := clGray;
    end;
end;

procedure TFFornecedor.EdCpfEnter(Sender: TObject);
begin
  
if EdCpf.Text = 'CPF/CNPJ' then
        EdCpf.Text := ''
   else
    EdCpf.SelectAll;

   EdCpf.Font.Color := clBlack;
end;

procedure TFFornecedor.EdCpfExit(Sender: TObject);
begin

    if Trim(EdCpf.Text) = ''
    then begin
        EdCpf.Text := 'CPF/CNPJ';
        EdCpf.Font.Color := clGray;
    end;
end;

procedure TFFornecedor.EdCodigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If  FMenu.XCONSULTARAPIDA
   Then Begin
    DMPESSOA.WFornecedor.Locate('COD_INTERNO',EdCodigo.Text, [loCaseInsensitive]);
   End;
end;

procedure TFFornecedor.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If  FMenu.XCONSULTARAPIDA
   Then Begin
    DMPESSOA.WFornecedor.Locate('NOME',EdNome.Text, [loPartialKey,loCaseInsensitive]);
   End;
end;

procedure TFFornecedor.EdCpfKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If  FMenu.XCONSULTARAPIDA
   Then Begin
    DMPESSOA.WFornecedor.Locate('CPFCNPJ',EdCpf.Text, [loPartialKey,loCaseInsensitive]);
   End;
end;

procedure TFFornecedor.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\fornecedor.lgm');
       Mensagem('Mzr Sistemas - INFORMA��O', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMA��O', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFFornecedor.BtGeraRelClick(Sender: TObject);
begin
  //inherited;
       DMCONTA.TRel.Close;
       DMCONTA.TRel.SQL.Clear;
       DMCONTA.TRel.SQL.Add('select pessoa.nome, pessoa.endereco, pessoa.endnumero, pessoa.bairro, fornecedor.cod_interno,');
       DMCONTA.TRel.SQL.Add('pessoa.telrel, estado.uf_estado as UF, cidade.nome as NOMECID, pessoa.data_ini');
       DMCONTA.TRel.SQL.Add('from fornecedor');
       DMCONTA.TRel.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
       DMCONTA.TRel.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
       DMCONTA.TRel.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
       If FrmCidade.EdDescricao.Text <> ''
       then begin
           DMCONTA.TRel.SQL.Add('where cidade.nome = :CLI');
           DMCONTA.TRel.ParamByName('CLI').AsString:=FrmCidade.EdDescricao.Text;
       end;
       DMCONTA.TRel.SQL.Add('order by cidade.nome, pessoa.nome');
       DMCONTA.TRel.Open;
       DMCONTA.TRel.First;

       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFornecedorCidade.frf');
       FSRel.ShowReport;
end;

procedure TFFornecedor.FornecedoresporCidade1Click(Sender: TObject);
begin
  inherited;
   PRel.Visible:=True;
   PRel.BringToFront;

   PCadastro.Visible:=false;
   PConsulta.Visible:=false;
   PCadastro.SendToBack;
   PConsulta.SendToBack;
end;

procedure TFFornecedor.BtCanRelClick(Sender: TObject);
begin
  inherited;
   PRel.Visible:=false;
   PRel.SendToBack;

   PCadastro.Visible:=True;
   PConsulta.Visible:=True;
   PCadastro.BringToFront;
   PConsulta.BringToFront;
end;

procedure TFFornecedor.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  //ATIVA O GRID SEBRADO
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
      		if DMPESSOA.WFornecedor.RecNo mod 2 = 1 then
          		DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
       	else
          		DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
      end;
      DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;

end;

end.

