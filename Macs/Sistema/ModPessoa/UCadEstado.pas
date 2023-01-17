unit UCadEstado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Grids, DBGrids,
  TFlatEditUnit, StdCtrls, Buttons, Mask, DBCtrls, DBColorEdit, jpeg,
  ExtCtrls, DB, UFrmBusca, DrLabel;

type
  TFCadEstado = class(TFCadPadraoDesc)
    Label5: TLabel;
    DBColorEdit1: TDBColorEdit;
    FrmBuscaRegiao: TFrmBusca;
    Label1: TLabel;
    DBColorEdit4: TDBColorEdit;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBColorEdit5: TDBColorEdit;
    Label10: TLabel;
    DBColorEdit6: TDBColorEdit;
    Label11: TLabel;
    DBColorEdit7: TDBColorEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cbIsentoST: TCheckBox;
    FrmCstInterestadual: TFrmBusca;
    DBColorEdit2: TDBColorEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBColorEdit3: TDBColorEdit;
    Label15: TLabel;
    DBColorEdit8: TDBColorEdit;
    Label16: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FrmBusca1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmBuscaBTNOPENClick(Sender: TObject);
    procedure FrmBuscaBTNMINUSClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoTitleClick(Column: TColumn);
    procedure FrmCstInterestadualEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmCstInterestadualBTNOPENClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadEstado: TFCadEstado;
  XCod_CST: Integer;

implementation

uses AlxMessage, Alxor32, UCadRegiao, UDMMacs, UDMGEOGRAFIA, UCadPadrao,
  UMenu, UDMEstoque, UCadCST;

{$R *.DFM}


procedure TFCadEstado.FormActivate(Sender: TObject);
begin
  inherited;
    Caption:='Estado' ;  
    XTabela:=DMGEOGRAFIA.TEstado;
    XCampo:='DESCRICAO';
    XPkTabela:='COD_ESTADO';
    XTransaction:=DMGEOGRAFIA.IBT;
    XView:=DMGEOGRAFIA.WEstado;
    XTab:=False;
    XDescricao:='o estado';
    XSQLTABELA:='ESTADO';
    XSQLVIEW:='VWESTADO';
    XLiberaDados:=' Order by Descricao';
    LiberaDados;
    DBGridCadastroPadrao.DataSource:=DMGEOGRAFIA.DWEstado;
    DBPRIMEIRO.DataSource:=DMGEOGRAFIA.DEstado;
    DBDESC.DataSource:=DMGEOGRAFIA.DEstado;

    // - 16/02/2009: se houver estado pre-selecionado fazer busca
  if FMenu.XPreSel
  then begin
    DMGEOGRAFIA.WEstado.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  end;

  FMenu.LimpaPreSelecao;

  // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\estado.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\estado.lgm');

end;

procedure TFCadEstado.BtnNovoClick(Sender: TObject);
begin
  inherited;
    cbIsentoST.Checked := False;
    DBDESC.SetFocus;
end;

procedure TFCadEstado.FrmBusca1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmBuscaRegiao.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('REGIAO', 'COD_REGIAO', FrmBuscaRegiao.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
	           XTabela.Edit;
	           XTabela.FieldByName('COD_REGIAO').AsInteger:=StrToInt(FrmBuscaRegiao.EDCodigo.Text);
              FrmBuscaRegiao.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_REGIAO').AsString;
              FrmBuscaRegiao.EdDescricao.Text:=DMMACS.TSelect.FieldByName('DESCRICAO').AsString;
	       End
   	   Else Begin
       	   XTabela.Edit;
       	   XTabela.FieldByName('COD_REGIAO').AsString:='';
              FrmBuscaRegiao.EDCodigo.Text:='';
              FrmBuscaRegiao.EdDescricao.Text:='';
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

procedure TFCadEstado.FrmBuscaBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS AS REGIÕES PARA CONSUTA
	filtraTabela(DMGEOGRAFIA.TRegiao, 'REGIAO', '', '', '');
    FMenu.XPreSel := True;
    FMenu.XFieldPesqPreSel := 'COD_REGIAO';
    FMenu.XCodPesqPresSel := FrmBuscaRegiao.EDCodigo.text;
    If AbrirForm(TFCADREGIAO, FCADREGIAO, 1)='Selected'
    Then Begin
        XTabela.Edit;
        XTabela.FieldByName('COD_REGIAO').AsInteger:=DMGEOGRAFIA.TRegiao.FieldbyName('COD_REGIAO').AsInteger;
        FrmBuscaRegiao.EdDescricao.Text:=DMGEOGRAFIA.TRegiao.FieldbyName('DESCRICAO').AsString;
        FrmBuscaRegiao.EDCodigo.text:=DMGEOGRAFIA.TRegiao.FieldbyName('COD_REGIAO').AsString;
    End;
end;

procedure TFCadEstado.FrmBuscaBTNMINUSClick(Sender: TObject);
begin
  inherited;
	//Codigo da tabela local =0
   XTabela.Edit;
   XTabela.FieldByName('COD_REGIAO').AsString:='';
   FrmBuscaRegiao.EDCodigo.Text:='';
   FrmBuscaRegiao.EdDescricao.Text:='';
end;

procedure TFCadEstado.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   //filtracst
   If FiltraTabela(DMEstoque.TCST, 'CST', 'COD_CST', DMGEOGRAFIA.TEstado.FieldByName('COD_CSTINTERESTADUAL').AsString, '')
   Then Begin
       XCod_CST:=DMGEOGRAFIA.TEstado.FieldByName('COD_CSTINTERESTADUAL').AsInteger;
   	FrmCstInterestadual.EDCodigo.Text:=DMEstoque.TCST.FieldByName('COD_SIT_TRIB').AsString;
   	FrmCstInterestadual.EdDescricao.Text:=DMEstoque.TCST.FieldByName('DESCRICAO').AsString;
   End
   Else Begin
       XCod_CST:=-1;
   	FrmCstInterestadual.EDCodigo.Text:='';
   	FrmCstInterestadual.EdDescricao.Text:='';
   End;
   If FiltraTabela(DMGEOGRAFIA.TRegiao, 'REGIAO', 'COD_REGIAO', XTabela.FieldByName('COD_REGIAO').AsString, '')=True
   Then Begin //localizou a regiao
	   FrmBuscaRegiao.EDCodigo.Text:=DMGEOGRAFIA.TRegiao.FieldByName('COD_REGIAO').AsString;
      FrmBuscaRegiao.EdDescricao.Text:=DMGEOGRAFIA.TRegiao.FieldByName('DESCRICAO').AsString;
   End
   Else Begin
	   FrmBuscaRegiao.EDCodigo.Text:='';
      FrmBuscaRegiao.EdDescricao.Text:='';
   End;

   If XTabela.FieldByName('ISENTOST').AsString = '1' Then
    cbIsentoST.Checked := True
   else
    cbIsentoST.Checked := False;
   
end;

procedure TFCadEstado.BtnGravarClick(Sender: TObject);
begin

    If cbIsentoST.Checked Then
      XTabela.FieldByName('ISENTOST').AsString := '1'
    Else
      XTabela.FieldByName('ISENTOST').AsString := '0';
    
	XTabela.FieldByName('COD_CSTINTERESTADUAL').AsInteger:=XCod_CST;
  inherited;
  	//LIBERA TODAS AS REGIÕES PARA CONSUTA
   LiberaDados;
end;

procedure TFCadEstado.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if XView.Recno mod 2 = 1 then
          DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
       else
          DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
      end;
      DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFCadEstado.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\estado.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCadEstado.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If  FMenu.XCONSULTARAPIDA
   Then Begin
     // - 16/02/2009: pesquisa

    XView.Locate('DESCRICAO',EdNome.Text, [loCaseInsensitive, loPartialKey]);
  End;
end;

procedure TFCadEstado.DBGridCadastroPadraoTitleClick(Column: TColumn);
begin
  inherited;

  If Column.FieldName <> '' Then
     XLiberaDados:=' Order by ' + Column.FieldName;

  LiberaDados;

end;

procedure TFCadEstado.FrmCstInterestadualEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
	CODCST:STRING;
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
	 	If FiltraTabela(DMESTOQUE.TCST, 'CST', 'cod_sit_trib', FrmCstInterestadual.EDCodigo.text, '')=True
    	Then Begin
           XCod_CST:= DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;
	        FrmCstInterestadual.EDCodigo.Text:=DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;
	        FrmCstInterestadual.EdDescricao.Text:=DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString;
    	End
    	Else Begin
           XCod_CST:=-1;
	        FrmCstInterestadual.EDCodigo.Text:='';
	        FrmCstInterestadual.EdDescricao.Text:='';
	 	End;
   End;
end;

procedure TFCadEstado.FrmCstInterestadualBTNOPENClick(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMEstoque.TCST, 'CST', '', '', '');
    If AbrirForm(TFCadCst, FCadCst, 1)='Selected'
    Then Begin
         XCod_CST:= DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;    
         FrmCstInterestadual.EDCodigo.Text:=DMEstoque.TCST.FieldByName('COD_SIT_TRIB').AsString;
         FrmCstInterestadual.EdDescricao.Text:=DMEstoque.TCST.FieldByName('DESCRICAO').AsString;
    End;
end;

end.
