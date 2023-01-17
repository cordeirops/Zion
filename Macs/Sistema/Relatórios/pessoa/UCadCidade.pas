unit UCadCidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Grids, DBGrids, DB,
  TFlatEditUnit, StdCtrls, Buttons, Mask, DBCtrls, DBColorEdit, jpeg,
  ExtCtrls, UFrmBusca, DrLabel;

type
  TFCadCidade = class(TFCadPadraoDesc)
  
    Label4: TLabel;
    DBColorEdit1: TDBColorEdit;
    FrmbuscaEstado: TFrmBusca;
    FrmBuscaRegiao: TFrmBusca;
    Label1: TLabel;
    DBColorEdit2: TDBColorEdit;
    DBColorEdit3: TDBColorEdit;
    Label2: TLabel;
    cbUF: TComboBox;
    BitBtn1: TBitBtn;
    PCidadeIbge: TPanel;
    DBGrid1: TDBGrid;
    EdBuscaCidadeIbge: TEdit;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FrmbuscaEstadoBTNMINUSClick(Sender: TObject);
    procedure FrmbuscaEstadoBTNOPENClick(Sender: TObject);
    procedure FrmbuscaEstadoEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmBuscaRegiaoBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaRegiaoBTNOPENClick(Sender: TObject);
    procedure FrmBuscaRegiaoEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbUFClick(Sender: TObject);
    procedure DBGridCadastroPadraoTitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EdBuscaCidadeIbgeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdBuscaCidadeIbgeKeyPress(Sender: TObject; var Key: Char);
    procedure PCidadeIbgeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCidade: TFCadCidade;

implementation

uses AlxMessage, Alxor32, UCadEstado, UCadRegiao, UDMGEOGRAFIA, UDMMacs,
  UCadPadrao, UMenu;

{$R *.DFM}

procedure TFCadCidade.FormActivate(Sender: TObject);
begin
  inherited;
    XTabela:=DMGEOGRAFIA.TCidade;
    XCampo:='NOME';
    XPkTabela:='COD_CIDADE';
    XTransaction:=DMGEOGRAFIA.IBT;
    XView:=DMGEOGRAFIA.WCidade;
    XTab:=False;
    XDescricao:='a cidade';
    XSQLVIEW:='VWCIDADE';
    XLiberaDados:=' Order by Nome';
    XSQLTABELA:='CIDADE';
    LiberaDados;

    DBGridCadastroPadrao.DataSource:=DMGEOGRAFIA.DWCidade;
    PCidadeIbge.Visible:=False;
    // - 16/02/2009: se houver cidade pre-selecionado fazer busca
  if FMenu.XPreSel
  then begin
    DMGEOGRAFIA.WCidade.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  end;
  FMenu.LimpaPreSelecao;

  // - 28/04/2009:   INSERE UF's
  	cbUF.Items.Clear;
   DMGEOGRAFIA.TAlx.Close;
   DMGEOGRAFIA.TAlx.SQL.Clear;
   DMGEOGRAFIA.TAlx.SQL.Add('select distinct vwcidade.uf from vwcidade order by vwcidade.uf');
   DMGEOGRAFIA.TAlx.Open;
   DMGEOGRAFIA.TAlx.First;
   While Not DMGEOGRAFIA.TAlx.Eof Do
   Begin
       if Trim(DMGEOGRAFIA.TAlx.FieldByName('uf').AsString) <> '' then
   	        cbUF.Items.Add(DMGEOGRAFIA.TAlx.FieldByName('uf').AsString);
       DMGEOGRAFIA.TAlx.Next;
   End;

   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\cidade.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\cidade.lgm');

end;

procedure TFCadCidade.BtnNovoClick(Sender: TObject);
begin
  inherited;
    DBDESC.SetFocus;
end;

procedure TFCadCidade.BtnGravarClick(Sender: TObject);
begin
  inherited;
   //atualiza e libera dados
   LiberaDados;
end;

procedure TFCadCidade.FrmbuscaEstadoBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XTabela.Edit;
   XTabela.FieldByName('COD_ESTADO').AsString:='';

   FrmbuscaEstado.EDCodigo.Text:='';
   FrmbuscaEstado.EdDescricao.Text:='';
end;

procedure TFCadCidade.FrmbuscaEstadoBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMGEOGRAFIA.WEstado, 'VWESTADO', '', '', '');

    FMenu.XPreSel := True;
    FMenu.XFieldPesqPreSel := 'COD_ESTADO';
    FMenu.XCodPesqPresSel := FrmbuscaEstado.EDCodigo.text;

    If AbrirForm(TFCadEstado, FCadEstado, 1)='Selected'
    Then Begin
        DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsInteger:=DMGEOGRAFIA.WEstado.FieldByName('COD_ESTADO').AsInteger;
        FrmbuscaEstado.EdDescricao.Text:=DMGEOGRAFIA.WEstado.FieldByName('DESCRICAO').AsString;
        FrmbuscaEstado.EDCodigo.text:=DMGEOGRAFIA.WEstado.FieldByName('COD_ESTADO').AsString;
    End;
end;

procedure TFCadCidade.FrmbuscaEstadoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmbuscaEstado.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('ESTADO', 'COD_ESTADO', FrmbuscaEstado.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
	       		XTabela.FieldByName('COD_ESTADO').AsInteger:=DMMACS.TSelect.FieldByName('COD_ESTADO').AsInteger;
           	FrmbuscaEstado.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_ESTADO').AsString;
           	FrmbuscaEstado.EdDescricao.Text:=DMMACS.TSelect.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
           	XTabela.Edit;
       		XTabela.FieldByName('COD_REGIAO').AsString:='';
           	FrmbuscaEstado.EDCodigo.Text:='';
           	FrmbuscaEstado.EdDescricao.Text:='';
          End;
       End
       Else Begin
          	XTabela.Edit;
      		XTabela.FieldByName('COD_ESTADO').AsString:='';
          	FrmbuscaEstado.EDCodigo.Text:='';
          	FrmbuscaEstado.EdDescricao.Text:='';
       End;
   End;
end;
procedure TFCadCidade.FrmBuscaRegiaoBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XTabela.Edit;
   XTabela.FieldByName('COD_REGIAO').AsString:='';

   FrmBuscaRegiao.EDCodigo.Text:='';
   FrmBuscaRegiao.EdDescricao.Text:='';
end;

procedure TFCadCidade.FrmBuscaRegiaoBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMGEOGRAFIA.TRegiao, 'REGIAO', '', '', '');
    FMenu.XPreSel := True;
    FMenu.XFieldPesqPreSel := 'COD_REGIAO';
    FMenu.XCodPesqPresSel := FrmBuscaRegiao.EDCodigo.text;
    If AbrirForm(TFCadRegiao, FCadRegiao, 1)='Selected'
    Then Begin
        DMGEOGRAFIA.TCidade.FieldByName('COD_REGIAO').AsInteger:=DMGEOGRAFIA.TRegiao.FieldByName('COD_REGIAO').AsInteger;
        FrmBuscaRegiao.EdDescricao.Text:=DMGEOGRAFIA.TRegiao.FieldByName('DESCRICAO').AsString;
        FrmBuscaRegiao.EDCodigo.text:=DMGEOGRAFIA.TRegiao.FieldByName('COD_REGIAO').AsString;
    End;

end;

procedure TFCadCidade.FrmBuscaRegiaoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmBuscaRegiao.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('REGIAO', 'COD_REGIAO', FrmBuscaRegiao.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
	       		XTabela.FieldByName('COD_REGIAO').AsInteger:=DMMACS.TSelect.FieldByName('COD_REGIAO').AsInteger;
           	FrmBuscaRegiao.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_REGIAO').AsString;
           	FrmBuscaRegiao.EdDescricao.Text:=DMMACS.TSelect.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
           	XTabela.Edit;
       		XTabela.FieldByName('COD_REGIAO').AsString:='';
           	FrmbuscaEstado.EDCodigo.Text:='';
           	FrmbuscaEstado.EdDescricao.Text:='';
          End;
       End
       Else Begin
          	XTabela.Edit;
      		XTabela.FieldByName('COD_REGIAO').AsString:='';
          	FrmBuscaRegiao.EDCodigo.Text:='';
          	FrmBuscaRegiao.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFCadCidade.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   If FiltraTabela(DMGEOGRAFIA.TRegiao, 'REGIAO', 'COD_REGIAO', XView.FieldByName('COD_REGIAO').AsString, '')=True
   Then Begin //localizou a regiao
	   FrmBuscaRegiao.EDCodigo.Text:=DMGEOGRAFIA.TRegiao.FieldByName('COD_REGIAO').AsString;
      FrmBuscaRegiao.EdDescricao.Text:=DMGEOGRAFIA.TRegiao.FieldByName('DESCRICAO').AsString;
   End
   Else Begin
	   FrmBuscaRegiao.EDCodigo.Text:='';
      FrmBuscaRegiao.EdDescricao.Text:='';
   End;

   If FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', XView.FieldByName('COD_ESTADO').AsString, '')=True
   Then Begin //localizou o estado
	   FrmbuscaEstado.EDCodigo.Text:=DMGEOGRAFIA.TEstado.FieldByName('COD_ESTADO').AsString;
      FrmbuscaEstado.EdDescricao.Text:=DMGEOGRAFIA.TEstado.FieldByName('DESCRICAO').AsString;
   End
   Else Begin
	   FrmbuscaEstado.EDCodigo.Text:='';
      FrmbuscaEstado.EdDescricao.Text:='';
	End
end;

procedure TFCadCidade.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If  FMenu.XCONSULTARAPIDA
   Then Begin
     // - 16/02/2009: pesquisa
    XView.Locate('NOME',EdNome.Text, [loCaseInsensitive, loPartialKey]);
  End;
end;

procedure TFCadCidade.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  {If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\cidade.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;}
end;

procedure TFCadCidade.cbUFClick(Sender: TObject);
begin
  inherited;
  If cbUF.Text <> ''
  Then Begin
       filtraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'UF', cbUF.text, '');
  End
  Else Begin
       filtraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', '');
  End;
end;

procedure TFCadCidade.DBGridCadastroPadraoTitleClick(Column: TColumn);
begin
  inherited;
  If Column.FieldName <> '' Then
     XLiberaDados:=' Order by ' + Column.FieldName;

  LiberaDados;
end;

procedure TFCadCidade.BitBtn1Click(Sender: TObject);
begin
  inherited;
   DMGEOGRAFIA.TAlx.Close;
   DMGEOGRAFIA.TAlx.SQL.Clear;
   DMGEOGRAFIA.TAlx.SQL.Add(' select cidade_ibge.nome, cidade_ibge.sigla, cidade_ibge.cod_ibge from cidade_ibge');
   DMGEOGRAFIA.TAlx.Open;
	PCidadeIbge.Visible:=True;
   PCidadeIbge.BringToFront;
   EdBuscaCidadeIbge.SetFocus;
end;

procedure TFCadCidade.Button1Click(Sender: TObject);
begin
  inherited;
   PCidadeIbge.Visible:=False;
end;

procedure TFCadCidade.EdBuscaCidadeIbgeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=Vk_Return
   Then Begin
       DBColorEdit2.Text:=DMGEOGRAFIA.TAlx.FieldByName('COD_IBGE').AsString;
       PCidadeIbge.Visible:=False;
       DBColorEdit3.SetFocus;
   End;
   If Key = VK_DOWN Then
       DMGEOGRAFIA.TAlx.Next;
   If Key = VK_UP Then
       DMGEOGRAFIA.TAlx.Prior;

end;

procedure TFCadCidade.EdBuscaCidadeIbgeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	DMGEOGRAFIA.TAlx.Locate('NOME',EdBuscaCidadeIbge.Text, [loCaseInsensitive, loPartialKey]);	
end;

procedure TFCadCidade.PCidadeIbgeExit(Sender: TObject);
begin
  inherited;
	If PCidadeIbge.Visible=True Then
       EdBuscaCidadeIbge.SetFocus;
end;

end.
