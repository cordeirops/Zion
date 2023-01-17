unit UCadCST;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls, DrLabel;

type
  TFCadCST = class(TFCadPadraoDesc)
    Label2: TLabel;
    DBCODCST: TDBColorEdit;
    Label1: TLabel;
    DBColorEdit1: TDBColorEdit;
    CBSubstituicao: TCheckBox;
    CbReducao: TCheckBox;
    CBVenda: TCheckBox;
    CbIsenta: TCheckBox;
    CbIcmsOperPropria: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure DBCODCSTKeyPress(Sender: TObject; var Key: Char);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCST: TFCadCST;

implementation

uses AlxMessage, Alxor32, UDMEstoque, UMenu, UCadPadrao;

{$R *.DFM}

procedure TFCadCST.FormActivate(Sender: TObject);
begin
  inherited;
    XTabela:=DMEstoque.TCST;
    XCampo:='DESCRICAO';
    XPkTabela:='COD_CST';
    XTransaction:=DMEstoque.TransacEstoque;
    XTab:=True;
    XDescricao:='a Situação Tributária';
    XSQLTABELA:='CST';
    XLiberaDados:='';
    If FMenu.LUSUARIO.Caption='SYSTEM LORD'
    Then Begin
       BtnNovo.Enabled:=True;
       BtnApagar.Enabled:=True;
       BtnConsultar.Enabled:=True;
    End
    Else Begin
       BtnNovo.Enabled:=False;
       BtnApagar.Enabled:=False;
       BtnConsultar.Enabled:=False;
    End;
    DBGridCadastroPadrao.DataSource:=DMESTOQUE.DSCST;
end;

procedure TFCadCST.BtnNovoClick(Sender: TObject);
begin
  inherited;
    DBCODCST.SetFocus;
    CBSubstituicao.Checked:=False;
end;

procedure TFCadCST.DBCODCSTKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
// Valida a entrada de dados, permitindo somente a entrada de valores núméricos entre 0 e 9 e a tecla backspace;
    If not(key in['0'..'9',#8]) Then
        Key:=#0;
end;

procedure TFCadCST.BtnGravarClick(Sender: TObject);
begin
        //Não permite que seja gravado no banco de dados, se não existir dados na DBEdit do Códgo de Situaçào Tributária;
       If DBCODCST.Text = ''
       Then Begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'O campo "CÓDIGO DE SITUAÇÃO TRIBUTÁRIA", deve conter dados para que a operação seja finalizada', '', 1, 1, False, 'I');
            DBCODCST.SetFocus;
            Exit;
       End;

        //Não permite que seja gravado no banco de dados, se não existir dados na DBEdit do Descrição de Situaçào Tributária;
        If DBDESC.Text = ''
        Then Begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'O campo "DESCRIÇÃO DA SITUAÇÃO TRIBUTÁRIA", deve conter dados para que a operação seja finalizada', '', 1, 1, False, 'I');
            DBDesc.SetFocus;
            Exit;
        End;

        If CBSubstituicao.Checked=True Then
           DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString:='1'
        Else
           DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString:='0';

        If CbIcmsOperPropria.Checked=True Then
           DMESTOQUE.TCST.FieldByName('ICMSOP').AsString:='1'
        Else
           DMESTOQUE.TCST.FieldByName('ICMSOP').AsString:='0';


        If CbReducao.Checked=True Then
           DMESTOQUE.TCST.FieldByName('REDUCAO').AsString:='1'
        Else
           DMESTOQUE.TCST.FieldByName('REDUCAO').AsString:='0';

        If CBVenda.Checked=True Then
           DMESTOQUE.TCST.FieldByName('VENDA').AsString:='1'
        Else
           DMESTOQUE.TCST.FieldByName('VENDA').AsString:='0';

        //Paulo 31/03/2011: marca se o cst é isento ou não
        If CbIsenta.Checked=True Then
           DMESTOQUE.TCST.FieldByName('ISENTA').AsString:='1'
        Else
           DMESTOQUE.TCST.FieldByName('ISENTA').AsString:='0';

      inherited;

end;
procedure TFCadCST.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If FMenu.LUSUARIO.Caption<>'SYSTEM LORD'
   Then Begin
		If (Key=VK_F4) OR (Key=VK_F8) OR (Key=VK_F6) Then
       	Exit;
   End;
  inherited;

end;

procedure TFCadCST.BtnConsultarClick(Sender: TObject);
begin
  inherited;
	If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString='1' Then
   	CBSubstituicao.Checked:=True
	Else
       CBSubstituicao.Checked:=False;
	If DMESTOQUE.TCST.FieldByName('ICMSOP').AsString='1' Then
   	CbIcmsOperPropria.Checked:=True
	Else
       CbIcmsOperPropria.Checked:=False;

	If DMESTOQUE.TCST.FieldByName('REDUCAO').AsString='1' Then
   	CbReducao.Checked:=True
	Else
       CbReducao.Checked:=False;

   If DMESTOQUE.TCST.FieldByName('VENDA').AsString='1' Then
		CBVenda.Checked:=True
   Else
		CBVenda.Checked:=False;

   //Paulo 31/03/2011: Verifica se o cst é isenta ou não
   If DMESTOQUE.TCST.FieldByName('ISENTA').AsString='1' Then
		CbIsenta.Checked:=True
   Else
		CbIsenta.Checked:=False;
end;

end.
