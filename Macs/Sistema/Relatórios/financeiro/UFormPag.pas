unit UFormPag;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls, Spin,
  EditFloat, ColorEditFloat, DrLabel;

type
  TFFormPag = class(TFCadPadraoDesc)
    Label2: TLabel;
    EDPRIMPARCELA: TSpinEdit;
    Label3: TLabel;
    EDINTERVALO: TSpinEdit;
    Label4: TLabel;
    EDQUANTPARCELA: TSpinEdit;
    Label5: TLabel;
    EDMEDIADIAS: TSpinEdit;
    Label8: TLabel;
    DBColorEdit1: TDBColorEdit;
    CBFORMPAGVISTA: TRadioButton;
    CBCADERNETA: TRadioButton;
    Label1: TLabel;
    DBColorEdit2: TDBColorEdit;
    CBCredito: TRadioButton;
    Label9: TLabel;
    DBCodInterno: TDBColorEdit;
    DBColorEdit3: TDBColorEdit;
    Label10: TLabel;
    cbAtivaDesconto: TCheckBox;
    CBMobile: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure EDQUANTPARCELAExit(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure DBGridCadastroPadraoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  FFormPag: TFFormPag;

implementation

uses UDMFinanc, UMenu, AlxMessage, Alxor32, UDMEstoque, UDMMacs, DB,
  UCadPadrao;

{$R *.DFM}

procedure TFFormPag.FormActivate(Sender: TObject);
begin
  inherited;
    XTabela:=DMFinanc.TFormPag;
    XCampo:='Descricao';
    XPkTabela:='COD_FORMPAG';
    XTransaction:=DMFinanc.Transaction;
    XTab:=True;
    XDescricao:='a forma de pagamento';
    XSQLTABELA:='FORMPAG';

    //EFETUA CONTROLE DE VISIALIZACAO DAS FORMAS DE PAGAMENTO
    If FMenu.TIPOAUX='COMPRA' Then
    	XLiberaDados:=' WHERE COD_LOJA = '+FMenu.LCODLOJA.Caption+ ' and TIPO='+#39+'C'+#39+ ' order by formpag.cod_interno';
    If FMenu.TIPOAUX='VENDA' Then
    	XLiberaDados:=' WHERE COD_LOJA = '+FMenu.LCODLOJA.Caption+ ' and TIPO='+#39+'V'+#39 + ' order by formpag.cod_interno';
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
    If DMMACS.TLoja.FieldByName('UTILFORMPG').asstring<>'1' Then
    	XLiberaDados:=' WHERE COD_LOJA = '+FMenu.LCODLOJA.Caption+'  order by formpag.cod_interno ';
    
    LiberaDados;

    // - 16/02/2009: se houver forma pagamento pre-selecionado fazer busca
  if FMenu.XPreSel
  then begin
    //DMFinanc.TFormPag.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  end;

   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\formaPagamento.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\formaPagamento.lgm');


  FMenu.LimpaPreSelecao;
end;

procedure TFFormPag.EDQUANTPARCELAExit(Sender: TObject);
begin
  inherited;
    If EDQUANTPARCELA.Value=0
    Then Begin//forma de pagamento ser� a vista
        DMFinanc.TAlx.Close;
        DMFinanc.TAlx.SQL.Clear;
        DMFinanc.TAlx.SQL.Add('SELECT * FROM FORMPAG WHERE COD_LOJA=:CODLOJA AND DESCRICAO=:DESC');
        DMFinanc.TAlx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
        DMFinanc.TAlx.ParamByName('DESC').AsString:='� VISTA';
        If DMMACS.TLoja.FieldByName('UTILFORMPG').AsString='1'
        Then Begin
			If FMenu.TIPOAUX='VENDA' THEN
        		DMFinanc.TAlx.SQL.Add('AND TIPO='+#39+'V'+#39);
			If FMenu.TIPOAUX='COMPRA' THEN
        		DMFinanc.TAlx.SQL.Add('AND TIPO='+#39+'C'+#39);
        End;
		 DMFinanc.TAlx.SQL.Text;
        DMFinanc.TAlx.Open;

        // Verifica se j� existe uma formpa de pagamento para � vista
        // se existe n�o permite duplicar
        If Not DMFinanc.TAlx.IsEmpty
        Then Begin
            Mensagem('OP��O BLOQUEADA', 'J� existe uma forma de pagamento � vista. Voc� n�o pode cadastrar outra!', '', 1, 1, False, 'a');
            EDQUANTPARCELA.SetFocus;
        End
        Else Begin
            DBDESC.Text:= '� VISTA';
        End;
    END;
end;

procedure TFFormPag.BtnGravarClick(Sender: TObject);
begin
	 //VERIFICA A QUANTIODADE DE PARCELAS
    If EDQUANTPARCELA.Value<1
    Then Begin
		MessageDlg('O Numero de parcelas a gerar deve ser maior que zero', mtWarning, [mbOK], 0);
       EDQUANTPARCELA.SetFocus;
       Exit;
    End;
    //CONTROLE P/ PGTOS A VISTA
    If CBFORMPAGVISTA.Checked=True
    THEN Begin
        DBDESC.Text:= '� VISTA'; //forma de pagamento ser� a vista
        EDPRIMPARCELA.Value:=0;
        EDQUANTPARCELA.Value:=1;

        //VERIFICA SE J'A EXISTE OUTRA FORMA DE AVISTA
        DMFinanc.TAlx.Close;
        DMFinanc.TAlx.SQL.Clear;
        DMFinanc.TAlx.SQL.Add('SELECT * FROM FORMPAG WHERE COD_LOJA=:CODLOJA AND DESCRICAO=:DESC');
        DMFinanc.TAlx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
        DMFinanc.TAlx.ParamByName('DESC').AsString:='� VISTA';
        If DMMACS.TLoja.FieldByName('UTILFORMPG').AsString='1'
        Then Begin
			If FMenu.TIPOAUX='VENDA' THEN
        		DMFinanc.TAlx.SQL.Add('AND TIPO='+#39+'V'+#39);
			If FMenu.TIPOAUX='COMPRA' THEN
        		DMFinanc.TAlx.SQL.Add('AND TIPO='+#39+'C'+#39);
        End;
        DMFinanc.TAlx.Open;

        If Not DMFINANC.TAlx.IsEmpty
        Then Begin//n�o pode haver duas formas de pagamento=' � vista
	         Mensagem('OP��O BLOQUEADA', 'Esta forma de pagamento � descrita com pagto � VISTA. Por�m ja existe uma forma de pagamento deste tipo!', '', 1, 1, False, 'a');
       	 exit;
        End;
    End;
    //CONTROLE PGTO CREDITO
    If CBCredito.Checked=True
    THEN Begin
        DBDESC.Text:= 'CREDITO';
        EDPRIMPARCELA.Value:=0;
        EDQUANTPARCELA.Value:=1;

        //VERIFICA SE J'A EXISTE OUTRA FORMA DE AVISTA
        DMFinanc.TAlx.Close;
        DMFinanc.TAlx.SQL.Clear;
        DMFinanc.TAlx.SQL.Add('SELECT * FROM FORMPAG WHERE COD_LOJA=:CODLOJA AND DESCRICAO=:DESC');
        DMFinanc.TAlx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
        DMFinanc.TAlx.ParamByName('DESC').AsString:='CREDITO';
        If DMMACS.TLoja.FieldByName('UTILFORMPG').AsString='1'
        Then Begin
			If FMenu.TIPOAUX='VENDA' THEN
        		DMFinanc.TAlx.SQL.Add('AND TIPO='+#39+'V'+#39);
			If FMenu.TIPOAUX='COMPRA' THEN
        		DMFinanc.TAlx.SQL.Add('AND TIPO='+#39+'C'+#39);
        End;
        DMFinanc.TAlx.Open;

        If Not DMFINANC.TAlx.IsEmpty
        Then Begin//n�o pode haver duas formas de pagamento=' credito
	         Mensagem('OP��O BLOQUEADA', 'Esta forma de pagamento � descrita com pagto CREDITO. Por�m ja existe uma forma de pagamento deste tipo!', '', 1, 1, False, 'a');
       	 exit;
        End;
    End;
    If CBCADERNETA.Checked=True
    THEN Begin
        DBDESC.Text:= 'CADERNETA'; //forma de pagamento ser� a vista
        EDPRIMPARCELA.Value:=1;
        EDQUANTPARCELA.Value:=1;
        If FiltraTabela(DMFINANC.TAlx, 'FORMPAG', 'DESRICAO', '', ' DESCRICAO = '+#39+'CADERNETA'+#39+' AND COD_LOJA='+FMenu.LCODLOJA.Caption)=TRUE
        Then Begin//n�o pode haver duas formas de pagamento=' � vista
	         Mensagem('OP��O BLOQUEADA', 'Esta forma de pagamento � descrita com pagto CADERNETA. Por�m ja existe uma forma de pagamento deste tipo!', '', 1, 1, False, 'a');
       	 exit;
        End;
    End;
    If (EDQUANTPARCELA.Value=1) and (EDPRIMPARCELA.Value=0) and ((CBFORMPAGVISTA.Checked=False) and (CBCredito.Checked=False))
    THEN BEGIN// Se houver apenas uma parcela esta n�o pode ter intervalo de 0 dias se n�o seria a vista
        Mensagem('OP��O BLOQUEADA', 'Se existe apenas uma parcela, ent�o seu intervalo deve ser superior a 0. Para criar uma forma de pagamento como � Vista, deve-se marcar esta op��o e gravar', '', 1, 1, False, 'a');
        EDPRIMPARCELA.SetFocus;
        exit;
    END;
    If (DBDESC.Text='')
    THEN BEGIN// Se houver apenas uma parcela esta n�o pode ter intervalo de 0 dias se n�o seria a vista
        Mensagem('OP��O BLOQUEADA', 'Por favor informe a descri��o da forma de pagamento.', '', 1, 1, False, 'a');
        DBDESC.SetFocus;
        exit;
    END;
    If (DBCodInterno.Text='')
    THEN BEGIN//se n�o for colocado codigo interno
        Mensagem('OP��O BLOQUEADA', 'Por favor informe um c�digo interno para controle da forma de pagamento.', '', 1, 1, False, 'a');
        DBCodInterno.SetFocus;
        exit;
    END;

    DMFINANC.TFormPag.Edit;
    DMFinanc.TFormPag.FieldByName('PRIMPARCELA').AsInteger:=EDPRIMPARCELA.Value;
    DMFinanc.TFormPag.FieldByName('INTERVALO').AsInteger:=EDINTERVALO.Value;
    DMFinanc.TFormPag.FieldByName('QUANTPARCELA').AsInteger:=EDQUANTPARCELA.Value;
    DMFinanc.TFormPag.FieldByName('MEDIADIAS').AsInteger:=EDMEDIADIAS.Value;
    DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString:=DBCodInterno.Text;
    DMFinanc.TFormPag.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;

    If FMenu.TIPOAUX='COMPRA' Then
    	DMFinanc.TFormPag.FieldByName('TIPO').AsString:='C';
    If FMenu.TIPOAUX='VENDA' Then
    	DMFinanc.TFormPag.FieldByName('TIPO').AsString:='V ';

    If cbAtivaDesconto.Checked Then
      DMFinanc.TFormPag.FieldByName('ATIVADESC').AsString := '1'
    Else
      DMFinanc.TFormPag.FieldByName('ATIVADESC').AsString := '0';

    If CBMobile.Checked Then
      DMFinanc.TFormPag.FieldByName('MOBILE').AsString := '1'
    Else
      DMFinanc.TFormPag.FieldByName('MOBILE').AsString := '0';


    inherited;

end;

procedure TFFormPag.BtnApagarClick(Sender: TObject);
begin
     If CheckRelation('COD_FORMPAG', DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString, ['CTAPAGAR', 'CTARECEBER', 'PEDCOMPRA', 'PEDVENDA'], 4)=False Then
        inherited
     Else
         Mensagem('INFORMA��O AO USU�RIO', 'Esta Forma de Pagamento j� se encontra vinculada a outra tabela e n�o pode ser apagada!', '', 1, 1, True, 'i');

end;

procedure TFFormPag.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADFORMPAG', 'M')=False Then
  		Exit;

  inherited;
   CBFORMPAGVISTA.Checked:=False;
   cbAtivaDesconto.Checked := False;
end;

procedure TFFormPag.BtnConsultarClick(Sender: TObject);
begin
  inherited;
	If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='� VISTA' Then
       CBFORMPAGVISTA.Checked:=True
   Else
       CBFORMPAGVISTA.Checked:=False;
    EDPRIMPARCELA.Value:=DMFinanc.TFormPag.FieldByName('PRIMPARCELA').AsInteger;
    EDINTERVALO.Value:=DMFinanc.TFormPag.FieldByName('INTERVALO').AsInteger;
    EDQUANTPARCELA.Value:=DMFinanc.TFormPag.FieldByName('QUANTPARCELA').AsInteger;
    EDMEDIADIAS.Value:=DMFinanc.TFormPag.FieldByName('MEDIADIAS').AsInteger;
    DBCodInterno.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;

    If DMFinanc.TFormPag.FieldByName('ATIVADESC').AsString = '1' Then
      cbAtivaDesconto.Checked := True
    Else
      cbAtivaDesconto.Checked := False;

    If DMFinanc.TFormPag.FieldByName('MOBILE').AsString = '1' Then
      CBMobile.Checked := True
    Else
      CBMobile.Checked := False;

end;

procedure TFFormPag.EdNomeEnter(Sender: TObject);
begin
  inherited;
   { if EdNome.Text = 'Digite o Nome ou Descri��o' then
        EdNome.Text := ''
   else
    EdNome.SelectAll;

   EdNome.Font.Color := clBlack;      }
end;

procedure TFFormPag.EdNomeExit(Sender: TObject);
begin
  inherited;
   { if Trim(EdNome.Text) = ''
    then begin
        EdNome.Text := 'Digite o Nome ou Descri��o';
        EdNome.Font.Color := clGray;
    end;         }
end;

procedure TFFormPag.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 { // - 16/02/2009: controle de pesquisa add % na edit
    If (shift=[ssCtrl]) and (key = vk_space)
    then begin
        if (Copy(EdNome.Text, 1,1) = '%') and (Copy(EdNome.Text, Length(EdNome.Text),Length(EdNome.Text)) = '%')
        then begin
             EdNome.Text := Copy(edNome.Text, 2,Length(EdNome.Text)-2);
             EdNome.SelStart := Length(EdNome.Text);
        end
        else if (Copy(EdNome.Text, 0,1) = '%')
        then begin
            EdNome.Text := edNome.Text +'%';
            EdNome.SelStart := Length(EdNome.Text)-1;
        end
        else if (Copy(EdNome.Text, Length(EdNome.Text),Length(EdNome.Text)) = '%')
        then begin
            EdNome.Text := '%'+Trim(EdNome.Text);
            EdNome.SelStart := Length(EdNome.Text)-1;
        end
        else begin
            EdNome.Text := '%'+Trim(EdNome.Text)+'%';
            EdNome.SelStart := Length(EdNome.Text)-1;
        end;
        Xcontrole:=True;
        key := 0;
    end;    }
end;

procedure TFFormPag.EdNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    {if XControle
   then begin
       xcontrole := False;
       key := #0;
   end;   }
end;

procedure TFFormPag.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  //Grid Zebrada
  if State = [] then
  begin
    if DMFINANC.TFormPag.Recno mod 2 = 1 then
      DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
   else
      DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
  end;
  DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFFormPag.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\formaPagamento.lgm');
       Mensagem('Mzr Sistemas - INFORMA��O', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMA��O', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFFormPag.DBGridCadastroPadraoDblClick(Sender: TObject);
begin
  inherited;
  if BtnSelecionar.Visible = True then
       BtnSelecionarClick(Sender);
end;

procedure TFFormPag.DBGridCadastroPadraoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
       if BtnSelecionar.Visible = True then
           BtnSelecionarClick(Sender);
end;

end.
