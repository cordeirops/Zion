unit UFechaCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, StdCtrls, Buttons, EditFloat, ColorEditFloat, TFlatHintUnit, jpeg, ExtCtrls, FashionPanel, Mask, db,
  DrLabel;

type
  TFFechaCaixa = class(TFPadrao)
    GroupBox1: TGroupBox;
    LCAIXA: TLabel;
    Label2: TLabel;
    EDHora: TEdit;
    Label3: TLabel;
    EDData: TEdit;
    Label4: TLabel;
    EdSaldoAtual: TColorEditFloat;
    Label5: TLabel;
    EdRetirada: TColorEditFloat;
    Label6: TLabel;
    EdSaldoFecha: TColorEditFloat;
    BTNOK: TBitBtn;
    BTNCANCELAR: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure EdRetiradaExit(Sender: TObject);
    procedure BTNOKClick(Sender: TObject);
    procedure BTNCANCELARClick(Sender: TObject);
    procedure BtnSenhaOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFechaCaixa: TFFechaCaixa;

implementation

uses AlxMessage, Alxor32, UMenu, ULancCaixa, UDMMacs, UDMCaixa, UMDO;

{$R *.DFM}

procedure TFFechaCaixa.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Fechar Caixa' ;  
    LCAIXA.Caption:=FMenu.EdCaixa.Text;
    EDHora.Text:=TimeToStr(Time());
    EDData.text:=DateToStr(Date());
    CalcCaixa;
    EdSaldoAtual.ValueNumeric:=SaldoAtu+SaldoINI;
end;

procedure TFFechaCaixa.EdRetiradaExit(Sender: TObject);
begin
  inherited;
    If (EdRetirada.ValueNumeric>EdSaldoAtual.ValueNumeric) And (EdSaldoAtual.ValueNumeric>0)
    Then Begin
        EdRetirada.ValueNumeric:=0.00;
        EdRetirada.SetFocus;
    End Else
        EdSaldoFecha.Text:=FormatFloat('########,##0.00', EdSaldoAtual.ValueNumeric-EdRetirada.ValueNumeric);
end;

procedure TFFechaCaixa.BTNOKClick(Sender: TObject);
begin
  inherited;
    //Edmar - 19/05/2014 - SQL usada para verificar se o caixa que est� sendo fechado possui cheques lan�ados
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('SELECT LANCAIXA.TIPO FROM LANCAIXA WHERE (LANCAIXA.COD_ABCAIXA = :CODABCAIXA) AND (LANCAIXA.TIPO = ''CHEQUE'')');
    DMCAIXA.TAlx.ParamByName('CODABCAIXA').AsString := FMenu.LABCAIXA.Caption;
    DMCAIXA.TAlx.Open;

    if not DMCAIXA.TAlx.IsEmpty then
		Mensagem('A T E N � � O !', 'Essa caixa possui cheques lan�ados!', '', 1, 1, False, 'a');

    If Mensagem('CONFIRMA��O DO USU�RIO', 'Deseja realmente Fechar o caixa', '', 2, 2, False, 'c')=2
    Then Begin
	    Try
    	   //se houver uma retirada efetua lan�ament oem caixa
          If EdRetirada.ValueNumeric<>0
          Then Begin// caso haja retirada de caixa para fechamento lan�ar em caixa
        	  If LanCaixa (0, DateToStr(Date()), DMMacs.TLoja.FieldByName('plncta_retcai').Value, 'RET. FECHAMENTO DO CAIXA - '+FMenu.EdCaixa.Text+ ' EM '+EDData.Text+'/'+EDHora.Text, EdRetirada.ValueNumeric, 'FCCAIXA', StrToInt(FMenu.LABCAIXA.Caption), 'Carteira', 'S', '', Date(), '1')=True
             Then Begin
                   If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '')=True
                   Then Begin
                       If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', FMenu.LABCAIXA.Caption, '')=True
                       Then Begin
                           //fecha caixa
                           DMCAIXA.TABCaixa.Edit;
                           DMCAIXA.TABCaixa.FieldByName('DTFECHA').AsString:=DateToStr(Date());
                           DMCAIXA.TABCaixa.FieldByName('HORAFECHA').AsString:=TimeToStr(Time());
                           DMCAIXA.TABCaixa.FieldByName('SALDOFIN').Value:=EdSaldoFecha.ValueNumeric;
                           DMCAIXA.TABCaixa.FieldByName('FECHADO').AsString:='S';
                           DMCAIXA.TABCaixa.Post;
                           DMCAIXA.TCaixa.Edit;
                           DMCAIXA.TCaixa.FieldByName('SALDO').AsCurrency:=EdSaldoFecha.ValueNumeric;
                           DMCAIXA.TCaixa.Post;
                           //EFETUA TRANSA��O
                           DMCAIXA.IBT.CommitRetaining;
                           MDO.Transac.CommitRetaining;
                       End;
                   End
                   Else Begin
                   	MessageDlg('O Caixa em quest�o n�o foi encontrado para ser fechado'+#13+#10+'O c�digo procurado foi: '+FMenu.LCODCAIXA.Caption, mtWarning, [mbOK], 0);
                   End;
           		Close;
             End;
          End
          Else Begin
               If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '')=True
               Then Begin
                   If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', FMenu.LABCAIXA.Caption, '')=True
                   Then Begin
                       //fecha caixa
                       DMCAIXA.TABCaixa.Edit;
                       DMCAIXA.TABCaixa.FieldByName('DTFECHA').AsString:=DateToStr(Date());
                       DMCAIXA.TABCaixa.FieldByName('HORAFECHA').AsString:=TimeToStr(Time());
                       DMCAIXA.TABCaixa.FieldByName('SALDOFIN').Value:=EdSaldoFecha.ValueNumeric;
                       DMCAIXA.TABCaixa.FieldByName('FECHADO').AsString:='S';
                       DMCAIXA.TABCaixa.Post;
                       DMCAIXA.TCaixa.Edit;
                       DMCAIXA.TCaixa.FieldByName('SALDO').AsCurrency:=EdSaldoFecha.ValueNumeric;
                       DMCAIXA.TCaixa.Post;

                       //EFETUA TRANSA��O
                       DMCAIXA.IBT.CommitRetaining;
                       MDO.Transac.CommitRetaining;                       
                   End
                   Else Begin
                   	MessageDlg('N�o foi poss�vel encontrar o registro de abertura do caixa.', mtWarning, [mbOK], 0);
                   End;
               End
               Else Begin

               End;
           	Close;
          End;
       Except
           Mensagem('A T E N � � O !', 'N�o foi possivel fechar o caixa.'+#13+'Reinicie o Macs e tente novamente!', '', 1, 1, False, 'a');
           DMCAIXA.IBT.RollbackRetaining;
       End;
    End;
end;

procedure TFFechaCaixa.BTNCANCELARClick(Sender: TObject);
begin
  inherited;
    EdRetirada.Clear;
    Close;
end;

procedure TFFechaCaixa.BtnSenhaOkClick(Sender: TObject);
Var
    Senha:String;
begin
  inherited;
end;

end.
