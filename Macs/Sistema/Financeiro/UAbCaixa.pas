unit UAbCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, Buttons, StdCtrls, jpeg, ExtCtrls,
  EditFloat, ColorEditFloat, DrLabel;

type
  TFABCaixa = class(TFPadrao)
    GroupBox1: TGroupBox;
    LCAIXA: TLabel;
    GroupBox2: TGroupBox;
    LSaldoCaixa: TLabel;
    Label2: TLabel;
    EDHora: TEdit;
    Label3: TLabel;
    EDData: TEdit;
    Label4: TLabel;
    EDSaldo: TColorEditFloat;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABCaixa: TFABCaixa;
  XCODABCAIXA: Integer;

implementation

uses UMenu, AlxMessage, Alxor32, UDMCaixa, UDMMacs, UMDO;

{$R *.DFM}

procedure TFABCaixa.FormActivate(Sender: TObject);
begin
  inherited;
       Caption:='Abertura de Caixa';
       FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
	    //hora de Abertura
	    EDHora.text:=TimeToStr(Time());
	    //Data de Abertura
	    EDData.text:=DateToStr(Date());

	    LCAIXA.Caption:=FMenu.EdCaixa.Text;

	    XCODABCAIXA:=InserReg(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA');
	    DMCAIXA.TAbCaixa.FieldByName('COD_CAIXA').AsInteger:=XCODABCAIXA;

       EDSaldo.ValueNumeric:=0;
	    LSaldoCaixa.Caption:=FormatFloat('#,##0.00', SaldoINI);
end;

procedure TFABCaixa.BitBtn1Click(Sender: TObject);
begin
  inherited;
    DMCAIXA.TABCaixa.FieldByName('SALDOINI').Value:=SaldoINI;
    DMCAIXA.TABCaixa.FieldByName('COD_CAIXA').Value:=StrToInt(FMenu.LCODCAIXA.Caption);
    DMCAIXA.TABCaixa.FieldByName('COD_USUARIO').Value:=StrToInt(FMenu.LCODUSUARIO.Caption);
    DMCAIXA.TABCaixa.FieldByName('HORAABERTURA').AsString:=EDHora.Text;
    DMCAIXA.TABCaixa.FieldByName('DTABERTURA').AsString:=EDData.Text;
    DMCAIXA.TABCaixa.FieldByName('FECHADO').AsString:='N';
    FMenu.LABCAIXA.Caption:=DMCAIXA.TABCaixa.FieldByName('COD_ABCAIXA').AsString;
    TransReg(DMCAIXA.TABCaixa, DMCAIXA.IBT, 'g');
    If EDSaldo.ValueNumeric <>0 Then //efetua lançamento em caixa
      	  If LanCaixa (0, DateToStr(Date()), DMMacs.TLoja.FieldByName('plncta_lancini').Value, 'LANÇ. ABERTURA DO CAIXA - '+LCAIXA.Caption+ ' EM '+EDData.Text+'/'+EDHora.Text, EDSaldo.ValueNumeric, 'ABCAIXA', StrToInt(FMenu.LABCAIXA.Caption), 'Carteira', 'E', '', Date(), '1')=True
         Then Begin
         		MDO.Transac.CommitRetaining;
               DMCAIXA.IBT.CommitRetaining;
         End
         Else Begin
               MDO.Transac.RollbackRetaining;
               DMCAIXA.IBT.CommitRetaining;
         End;
    Close;
end;

procedure TFABCaixa.BitBtn2Click(Sender: TObject);
begin
  inherited;
    TransReg(DMCAIXA.TABCaixa, DMCAIXA.IBT, 'c');
    Close;
end;

end.
