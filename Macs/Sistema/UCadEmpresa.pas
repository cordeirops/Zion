unit UCadEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls,DB,
  DBColorComboBox, TFlatComboBoxUnit, ComCtrls, FashionPanel, UFrmBusca,
  DrLabel, EditFloat;

type
  TFCadEmpresa = class(TFCadPadraoDesc)
    PCEmpresa: TPageControl;
    TabSheet1: TTabSheet;
    DBEdit7: TDBEdit;
    DBEdit8: TDBColorEdit;
    DBEdit9: TDBColorEdit;
    DBCNPJ: TDBColorEdit;
    DBEdit12: TDBColorEdit;
    DBEdit2: TDBColorEdit;
    DBTipoEmpresa: TFlatComboBox;
    DBEdit3: TDBColorEdit;
    DBFANTASIA: TDBColorEdit;
    DBEdit4: TDBColorEdit;
    DBEdit5: TDBColorEdit;
    DBEdit6: TDBEdit;
    DBEdit14: TDBColorEdit;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label2: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label5: TLabel;
    DBColorEdit2: TDBColorEdit;
    DBColorEdit1: TDBColorEdit;
    Label3: TLabel;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    FashionPanel2: TFashionPanel;
    Label39: TLabel;
    Label43: TLabel;
    DBColorEdit30: TDBColorEdit;
    Label44: TLabel;
    DBColorEdit31: TDBColorEdit;
    Label31: TLabel;
    Label45: TLabel;
    DBColorEdit32: TDBColorEdit;
    Label46: TLabel;
    DBColorEdit33: TDBColorEdit;
    FashionPanel1: TFashionPanel;
    Label34: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBColorEdit27: TDBColorEdit;
    DBColorEdit26: TDBColorEdit;
    Label40: TLabel;
    Label41: TLabel;
    DBColorEdit28: TDBColorEdit;
    DBColorEdit29: TDBColorEdit;
    Label42: TLabel;
    Panel5: TPanel;
    FashionPanel3: TFashionPanel;
    DBColorEdit4: TDBColorEdit;
    DBColorEdit5: TDBColorEdit;
    Label25: TLabel;
    Label26: TLabel;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    DBNCASASPES: TDBEdit;
    Label28: TLabel;
    CBZEROPES: TCheckBox;
    Label29: TLabel;
    DBEdit1: TDBEdit;
    FrmBusca: TFrmBusca;
    GroupBox5: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit10: TDBEdit;
    Label18: TLabel;
    DBColorEdit3: TDBColorEdit;
    Label27: TLabel;
    DBColorEdit6: TDBColorEdit;
    Label30: TLabel;
    DBEdit11: TDBEdit;
    CBCREDITOIPI: TCheckBox;
    CBCALCULOIPI: TCheckBox;
    Label32: TLabel;
    DBComboBox1: TDBComboBox;
    Label33: TLabel;
    DBEdit13: TDBEdit;
    Label35: TLabel;
    DBEdit20: TDBEdit;
    CBCONTICMS: TCheckBox;
    Label36: TLabel;
    DBComboBox2: TDBComboBox;
    Label47: TLabel;
    DBEdit21: TDBEdit;
    DBColorEdit7: TDBColorEdit;
    Label48: TLabel;
    cbIndustria: TCheckBox;
    cbNCI: TCheckBox;
    cbNaoCalcST: TCheckBox;
    Label49: TLabel;
    EdCodExp: TEdit;
    CBPisCofins: TCheckBox;
    EdAliquotaPisCofins: TFloatEdit;
    Label50: TLabel;
    GroupBox4: TGroupBox;
    Label52: TLabel;
    Label56: TLabel;
    DBEdit24: TDBEdit;
    DBEdit26: TDBEdit;
    CBTribServ: TComboBox;
    Label51: TLabel;
    DBEdit22: TDBEdit;
    Label53: TLabel;
    Label54: TLabel;
    DBColorEdit8: TDBColorEdit;
    CbMobile: TCheckBox;
    Label55: TLabel;
    DBColorEdit9: TDBColorEdit;
    Label24: TLabel;
    DBEdit19: TDBEdit;
    Label57: TLabel;
    DBEdit23: TDBEdit;
    Label58: TLabel;
    DBEdit25: TDBEdit;
    DBEdit27: TDBEdit;
    Label59: TLabel;
    DBColorEdit10: TDBColorEdit;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit28: TDBEdit;
    Label65: TLabel;
    DBEdit29: TDBEdit;
    Label66: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure DBColorEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BtnGravarClick(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBZEROPESClick(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FrmBuscaBTNOPENClick(Sender: TObject);
    procedure FrmBuscaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmBuscaBTNMINUSClick(Sender: TObject);
    procedure cbIndustriaClick(Sender: TObject);
    procedure cbNCIClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadEmpresa: TFCadEmpresa;
  XCOD_CIDADE: Integer;

implementation

uses UDMMacs, AlxMessage, Alxor32, UDMGEOGRAFIA, UCadCidade, UCadPadrao;

{$R *.DFM}

procedure TFCadEmpresa.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Empresa';  
    If DMMACS.TEmpresa.FieldByName('MOBILE').AsString='1' Then
       CbMobile.Checked:=True
    Else
       CbMobile.Checked:=False;

    If DMMACS.TEmpresa.FieldByName('CREDITAIPI').AsString='1' Then
       CBCREDITOIPI.Checked:=True
    Else
       CBCREDITOIPI.Checked:=False;

    If DMMACS.TEmpresa.FieldByName('CALCULAIPI').AsString='1' Then
       CBCALCULOIPI.Checked:=True
    Else
       CBCALCULOIPI.Checked:=True;
       
    If DMMACS.TEmpresa.FieldByName('CONTICMS').AsString='1' Then
       CBCONTICMS.Checked:=True
    Else
       CBCONTICMS.Checked:=False;

    XTabela:=DMMacs.TEmpresa;
    XCampo:='FANTASIA';
    XPkTabela:='COD_EMPRESA';
    XTransaction:=DMMacs.Transaction;
    XTab:=True;
    XDescricao:='a Empresa';
    XSQLTABELA:='EMPRESA';
    LiberaDados;
    DBGridCadastroPadrao.DataSource:=DMMacs.DsEmpresa;
end;

procedure TFCadEmpresa.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADEMPRESA', 'M')=False Then
  		Exit;
    cbIndustria.Checked := False;
    cbNCI.Checked := False;
    PConsulta.Visible:=False;
    PCadastro.Visible:=TRUE;
    PCadastro.BringToFront;
    XCOD_CIDADE:=-1;
    InserReg(XTabela, XSQLTABELA, XPkTabela);
    DBColorEdit2.SetFocus;
end;

procedure TFCadEmpresa.BtnApagarClick(Sender: TObject);
begin
    //CHECA RELAÇÃO ENTRE TABELAS
    If CheckRelation('COD_EMPRESA', DMMacs.TEmpresa.FieldByName(XPkTabela).AsString, ['LOJA'], 1)=False
    Then Begin
         If DMMacs.TEmpresa.FieldByName('TIPO').AsString='MATRIZ'
         Then Begin
              Mensagem('INFORMAÇÃO AO USUÁRIO', 'Não é permitido ao usuário apagar a empresa matriz!', '', 1, 1, False, 'I');
              Exit;
         End
         Else Begin
       		//Djonathan	14/11/2009: REGISTRA EMPRESA APAGADA
         	   Registra('EMPRESA', 'APAGAR', '', 'Empresa: ' + DMMACS.TEmpresa.FieldByName('FANTASIA').AsString, 'Razao Social: ' + DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString);
              inherited;
         End;
    End
    Else Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Esta Empresa possui referências pendentes e não pode ser apagada!' , '', 1, 1, False, 'i');
    End;
end;

procedure TFCadEmpresa.BtnConsultarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADEMPRESA', 'M')=False Then
  		Exit;

  inherited;
    If XTab=False
    Then Begin
        If XTabela.Locate(XPkTabela, XView.FieldByName(XPkTabela).Value,[loCaseInsensitive, loPartialKey])
        Then Begin
            XTabela.Edit;
            DBPRIMEIRO.SetFocus;
        End
        Else Begin
            Mensagem('Comunicado', XDescricao+ ' Seleção para ser apagada, não foi encontrada na tabela', '', 1, 1, False, 'I');
        End;
    End
    Else Begin
        XTabela.Edit;
        DBPRIMEIRO.SetFocus;
    End;
    If SelectRegistro('CIDADE', 'COD_CIDADE',  DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString) = True
  	Then Begin //Slecionou o registro procurado
  		XCOD_CIDADE:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
  		Frmbusca.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
  		Frmbusca.EdDescricao.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;
  	End
  	Else Begin
  		XCOD_CIDADE:=-1;
  		Frmbusca.EDCodigo.Text:='';
       Frmbusca.EdDescricao.Text:='';
  	End;

    //Atribui valores para as combos de codigo interno
    If XTabela.FieldByName('ZEROCODPESSOA').AsString='1' Then
       CBZEROPES.Checked:=True
    Else
       CBZEROPES.Checked:=False;

    //Atribui valores para pis/cofins
    If XTabela.FieldByName('APLICAPISCONFINSSAIDA').AsString='1' Then
       CBPisCofins.Checked:=True
    Else
       CBPisCofins.Checked:=False;
    EdAliquotaPisCofins.ValueNumeric:=XTabela.FieldByName('ALIQUOTAPISCONFINS').AsCurrency;

    // - 03/04/2009: marca se empresa for do tipo industria
    If XTabela.FieldByName('INDUSTRIA').AsString = '1' Then
       cbIndustria.Checked := True
    Else
       cbIndustria.Checked := False;

       // - 03/04/2009: marca se empresa nao calcula imposto
    If XTabela.FieldByName('NCI').AsString = '1' Then
       cbNCI.Checked := True
    Else
       cbNCI.Checked := False;

    If DMMACS.TEmpresa.FieldByName('NAOCALCST').AsString='1'  Then
        cbNaoCalcST.Checked:=True
    Else
        cbNaoCalcST.Checked:=False;

    DBTipoEmpresa.Text := XTabela.FieldByName('TIPO').AsString;

    //Paulo 16/04/2012: Mostra a tributação para NFSe
    if DMMacs.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Tributação no município' then
    	CBTribServ.ItemIndex:=0;
    if DMMacs.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Tributação fora do município' then
    	CBTribServ.ItemIndex:=1;
    if DMMacs.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Isenção' then
    	CBTribServ.ItemIndex:=2;
    if DMMacs.TEmpresa.FieldByName('TRIB_NFSE').AsString = 'Imune' then
    	CBTribServ.ItemIndex:=3;




end;

procedure TFCadEmpresa.DBColorEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
{    if Key = #13
    then begin
        Key := #0;
        SelectNext(ActiveControl,true,true);
    end;}
end;

procedure TFCadEmpresa.BtnGravarClick(Sender: TObject);
begin
    If (CBZEROPES.Checked=True) And (DBNCASASPES.Text='')
    Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Informe o tamanho que deverá possuir o código interno das pessoas!', '' , 1, 1, false, 'i');
        PCEmpresa.ActivePageIndex:=2;
        DBNCASASPES.SetFocus;
        Exit;
    End;

    if EdCodExp.Text = '0' then
        DMMACS.TEmpresa.FieldByName('COD_EXPORT').AsInteger:=0
    else begin
       if EdCodExp.Text <> '' then
           DMMACS.TEmpresa.FieldByName('COD_EXPORT').AsInteger:=StrToInt(EdCodExp.Text);

    end;

    If CbMobile.Checked=True Then
       DMMACS.TEmpresa.FieldByName('MOBILE').AsString:='1'
    Else
       DMMACS.TEmpresa.FieldByName('MOBILE').AsString:='0';

    If cbNaoCalcST.Checked=True Then
       DMMACS.TEmpresa.FieldByName('NAOCALCST').AsString:='1'
    Else
       DMMACS.TEmpresa.FieldByName('NAOCALCST').AsString:='0';

    If CBCONTICMS.Checked=True Then
       DMMACS.TEmpresa.FieldByName('CONTICMS').AsString:='1'
    Else
       DMMACS.TEmpresa.FieldByName('CONTICMS').AsString:='0';

    If CBCREDITOIPI.Checked=True Then
       DMMACS.TEmpresa.FieldByName('CREDITAIPI').AsString:='1'
    Else
       DMMACS.TEmpresa.FieldByName('CREDITAIPI').AsString:='0';

    If CBCALCULOIPI.Checked=True Then
       DMMACS.TEmpresa.FieldByName('CALCULAIPI').AsString:='1'
    Else
       DMMACS.TEmpresa.FieldByName('CALCULAIPI').AsString:='0';

    //PIS/COFINS
    If CBPisCofins.Checked=True Then
       DMMACS.TEmpresa.FieldByName('APLICAPISCONFINSSAIDA').AsString:='1'
    Else
       DMMACS.TEmpresa.FieldByName('APLICAPISCONFINSSAIDA').AsString:='0';
    DMMACS.TEmpresa.FieldByName('ALIQUOTAPISCONFINS').AsCurrency:=EdAliquotaPisCofins.ValueNumeric;

    DMMacs.TEmpresa.FieldByName('tipo').AsString:=DBTipoEmpresa.Text;
    DMMacs.TEmpresa.FieldByName('COD_CIDADE').AsInteger:=XCOD_CIDADE;

    //Paulo 16/04/2012: Armazena a tributação para NFSe
    DMMacs.TEmpresa.FieldByName('TRIB_NFSE').AsString:=CBTribServ.Text;


    If (DBColorEdit2.TEXT='') OR (DbFantasia.Text='')
    Then Begin
        Mensagem('Comunicado', 'Informe Razão Social e Fantasia para gravar!', '' , 1, 1, false, 'i');
        Exit;
    End
    Else Begin
        If ValidaCGC(DBCNPJ.Text) = False //verifica se cnpj válido
        Then Begin
            Mensagem('Comunicado', 'O CNPJ Informado não é válido!', '' , 1, 1, false, 'i');
            pcadastro.Visible:=True;
            pcadastro.BringToFront;
            DMMacs.TEmpresa.edit;
            PCEmpresa.ActivePage:=TabSheet1;
            DBCNPJ.SetFocus;//focus na dbedit de cnpj
        End
        Else Begin
            If CBZEROPES.Checked=True Then
               DMMacs.TEmpresa.FieldByName('ZEROCODPESSOA').AsInteger:=1
            Else
               DMMacs.TEmpresa.FieldByName('ZEROCODPESSOA').AsInteger:=0;

            //Djonathan 14/11/2009: REGISTRA ALTERACAO OU NOVA EMPRESA
            Registra('EMPRESA', 'ALTERAR/NOVO', '', 'Empresa: ' + DMMACS.TEmpresa.FieldByName('FANTASIA').AsString, 'Razao Social: ' + DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString);
            inherited;
        End;
    End;

end;

procedure TFCadEmpresa.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    If Key=VK_Insert Then
        AbrirForm(TFCADCIDADE, FCADCIDADE, 0);
end;

procedure TFCadEmpresa.DBLookupComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    If key=VK_Insert Then
{***        AbrirForm(TFCADMOEDA, FCADMOEDA, 1);***}
end;

procedure TFCadEmpresa.CBZEROPESClick(Sender: TObject);
begin
     inherited;
     If CBZEROPES.Checked=True Then
        DBNCASASPES.Enabled:=True
     Else
        DBNCASASPES.Enabled:=False;
end;

procedure TFCadEmpresa.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key:=#0;
end;

procedure TFCadEmpresa.FrmBuscaBTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA TODAS OS ESTADOS PARA CONSUTA
	 filtraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', 'Order by Nome');

    If AbrirForm(TFCadCidade, FCadCidade, 1)='Selected'
    Then Begin
        XCOD_CIDADE:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
        Frmbusca.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
        Frmbusca.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    End;
end;

procedure TFCadEmpresa.FrmBuscaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If Frmbusca.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('CIDADE', 'COD_CIDADE', Frmbusca.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
	       		XCOD_CIDADE:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
           	Frmbusca.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
           	Frmbusca.EdDescricao.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;
          End
          Else Begin
          		XCOD_CIDADE:=-1;
           	Frmbusca.EDCodigo.Text:='';
           	Frmbusca.EdDescricao.Text:='';
          End;
       End
       Else Begin
           XCOD_CIDADE:=-1;
          	Frmbusca.EDCodigo.Text:='';
          	Frmbusca.EdDescricao.Text:='';
       End;
   End;
end;
procedure TFCadEmpresa.FrmBuscaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCOD_CIDADE:=-1;
   Frmbusca.EDCodigo.Text:='';
   Frmbusca.EdDescricao.Text:='';
end;

procedure TFCadEmpresa.cbIndustriaClick(Sender: TObject);
begin
  inherited;


  // - 03/04/2009: se checkBox for marcado com industria
  If cbIndustria.Checked
  Then
      XTabela.FieldByName('INDUSTRIA').AsString := '1'
  Else
      XTabela.FieldByName('INDUSTRIA').AsString := '0';

end;

procedure TFCadEmpresa.cbNCIClick(Sender: TObject);
begin
  inherited;
  // - 03/04/2009: se checkBox for marcado p/ nao calcular imposto
  If cbNCI.Checked
  Then
      XTabela.FieldByName('NCI').AsString := '1'
  Else
      XTabela.FieldByName('NCI').AsString := '0';
end;

end.
