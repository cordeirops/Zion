unit UPeriodoFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, DrLabel, jpeg, UCadPadrao,
  Grids, DBGrids, TFlatEditUnit, Mask, ColorMaskEdit;

type
  TFPeriodoFiscal = class(TFCadPadrao)
    Label1: TLabel;
    Label2: TLabel;
    EdData01: TColorMaskEdit;
    EdData02: TColorMaskEdit;
    Label3: TLabel;
    EdPeriodo: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure EdData01Exit(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure EdNomeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    //Fun��o para verificar se existe algum periodo ja em aberto
    Function ValidaPeriodoAberto: Boolean;
    //Fun��o Utilizada para selecionar os periodos fiscais
    Function FiltraPeriodos: Boolean;
  public
    { Public declarations }
  end;

var
  FPeriodoFiscal: TFPeriodoFiscal;
  XCodPeriodo: Integer;  
  Xaux: Integer;
implementation

uses UDMMacs, UMenu, Alxor32;

{$R *.dfm}

//Fun��o Utilizada para selecionar os periodos fiscais
Function TFPeriodoFiscal.FiltraPeriodos: Boolean;
Begin
   DMMACS.TPeriodoFiscal.Close;
   DMMACS.TPeriodoFiscal.SQL.Clear;
   DMMACS.TPeriodoFiscal.SQL.Add(' Select * from PeriodoFiscal order by  PeriodoFiscal.DtInicial DESC, PeriodoFiscal.Fechado ');
   DMMACS.TPeriodoFiscal.Open;
End;

//Fun��o para verificar se existe algum periodo ja em aberto
Function TFPeriodoFiscal.ValidaPeriodoAberto: Boolean;
Begin
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' Select count(periodofiscal.cod_periodofiscal) as quant from periodofiscal where (periodofiscal.fechado=''N'') or (periodofiscal.fechado is null) ');
   DMMACS.TALX.Open;
   If DMMACS.TALX.FieldByName('quant').AsInteger>0 Then
       Result:=False
   Else
       Result:=True;
End;
procedure TFPeriodoFiscal.BtnApagarClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFPeriodoFiscal.BtnRelatorioClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFPeriodoFiscal.BtnFiltrarClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFPeriodoFiscal.EdData01Exit(Sender: TObject);
begin
  inherited;
   EdPeriodo.Text:='('+EdData01.Text+') -  ('+EdData02.Text+')';
end;

procedure TFPeriodoFiscal.BtnGravarClick(Sender: TObject);
begin
  	Try
       StrToDate(EdData01.Text);
       StrToDate(EdData02.Text);
   Except
   	MessageDlg('Datas inv�lidas', mtWarning, [mbOK], 0);
       EdData01.SetFocus;
       Exit;
   End;
	If (EdData01.Text='  /  /    ')
   Then Begin
		MessageDlg('Por favor, informe a data', mtWarning, [mbOK], 0);
       EdData01.SetFocus;
       Exit;
   End;
	If (EdData02.Text='  /  /    ')
   Then Begin
		MessageDlg('Por favor, informe a data', mtWarning, [mbOK], 0);
       EdData02.SetFocus;
       Exit;
   End;
   Try
   	If StrToDate(EdData01.Text) >= StrToDate(EdData02.Text)
   	Then Begin
			MessageDlg('Por favor, verifique as datas, a primeira data n�o pode ser menor ou igual a segunda', mtWarning, [mbOK], 0);
       	EdData01.SetFocus;
           Exit;
       End;
   Except
   	MessageDlg('Datas inv�lidas', mtWarning, [mbOK], 0);
       EdData01.SetFocus;
       Exit;
   End;

   //se for caso de fechamento de periodo editar o periodo antigo para fechado
   If FMenu.XTIPOBOLTO='FECHAPERIODO'
   Then Begin
       If FiltraTabela(DMMACS.TPeriodoFiscal, 'PERIODOFISCAL', 'COD_PERIODOFISCAL', IntToStr(XCodPeriodo), '')=True
       Then Begin
       	Try
               DMMACS.TPeriodoFiscal.Edit;
               //DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsDateTime:=Date();
               DMMACS.TPeriodoFiscal.FieldByName('FECHADO').AsString:='S';
               DMMACS.TPeriodoFiscal.Post;
               DMMACS.Transaction.CommitRetaining;
           Except
               DMMACS.Transaction.RollbackRetaining;
               MessageDlg('O per�odo fiscal solicitado para fechamento continua em aberto. Por favor, para evitar problemas, solicite suporte para interven��o t�cnica.', mtWarning, [mbOK], 0);
           End;
       End;
   End
   Else Begin
		MessageDlg('O per�odo n�o pode ser fechado sem outro per�odo aberto', mtWarning, [mbOK], 0);
   End;
   If ValidaPeriodoAberto=False
   Then Begin
   	MessageDlg('N�o � poss�vel salvar este per�odo fiscal. J� existe um per�odo fiscal em aberto', mtWarning, [mbOK], 0);
       BtnCancelar.Click;
   End;
   Try
       DMMACS.TPeriodoFiscal.Insert;
       DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString:=EdPeriodo.Text;
       DMMACS.TPeriodoFiscal.FieldByName('DTINICIAL').AsString:=EdData01.Text;
       DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsString:=EdData02.Text;
       DMMACS.TPeriodoFiscal.FieldByName('FECHADO').AsString:='N';
       DMMACS.TPeriodoFiscal.Post;
       DMMACS.Transaction.CommitRetaining;
   Except
   	MessageDlg('O Per�odo fiscal n�o foi salvo, tente reiniciar a aplica��o', mtWarning, [mbOK], 0);
       DMMACS.Transaction.RollbackRetaining;
   End;
  inherited;   
end;

procedure TFPeriodoFiscal.BitBtn1Click(Sender: TObject);
begin
  inherited;
	If DMMACS.TPeriodoFiscal.FieldByName('FECHADO').AsString='S'
   Then Begin
		MessageDlg('Este per�odo fiscal se encontra fechado', mtWarning, [mbOK], 0);
       Exit;
   End;
   Xaux:=1;
   FMenu.XTIPOBOLTO:='FECHAPERIODO';
	XCodPeriodo:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
   BtnNovo.Click;
   Xaux:=-1;
end;

procedure TFPeriodoFiscal.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Per�odo Fiscal';  
    XTabela:=DMMACS.TPeriodoFiscal;
    XCampo:='DESCRICAO';
    XPkTabela:='COD_PERIODOFISCAL';
    XTransaction:=DMMACS.Transaction;
    XTab:=True;
    XDescricao:='o Per�odo';
    XSQLTABELA:='PERIODOFISCAL';
  	 XLiberaDados:=' order by periodofiscal.dtfinal desc ';
	 LiberaDados;
	 FMenu.XTIPOBOLTO:='';
    Xaux:=-1;   
end;

procedure TFPeriodoFiscal.BtnNovoClick(Sender: TObject);
Var
	Year, Month, Day:word;
begin
   //Paulo 02/06/2011: Flag controla abertura e fechamento do periodo fiscal
   if Xaux = -1 then
   begin
	    If ValidaPeriodoAberto=False
       Then Begin
		    MessageDlg('J� Existe um per�odo em aberto', mtWarning, [mbOK], 0);
           Exit;
       End;
   end;
   //Verifica Nova Data para novo per�odo
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' Select * from periodofiscal order by periodofiscal.dtfinal desc ');
   DMMACS.TALX.Open;
   If DMMACS.TALX.IsEmpty
   Then Begin
   	DecodeDate(Date(), Year, Month, Day);
   End
   Else Begin
   	DecodeDate(DMMACS.TALX.FieldByName('dtfinal').AsDateTime, Year, Month, Day);
       Month:=Month+01;
       If Month>12
       Then Begin
           Month:=01;
           Year:=Year+1;
       End;
   End;
	Try
       EdData01.Text:=DateToStr(StrToDate('01/'+IntToStr(Month)+'/'+IntToStr(Year)));
       EdData02.Text:=DateToStr(StrToDate(IntToStr(UltDiaMes(Month, Year))+'/'+IntToStr(Month)+'/'+IntToStr(Year)));
       EdPeriodo.Text:='('+EdData01.Text+') -  ('+EdData02.Text+')';
   Except
   	MessageDlg('Falha ao gerar intervalo de datas, verifique o rel�gio de seu computador', mtWarning, [mbOK], 0);
       Exit;
   End;
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' Select * from periodofiscal where periodofiscal.dtfinal>=:dt ');
   DMMACS.TALX.ParamByName('DT').AsDate:=StrToDate(EdData01.Text);
   DMMACS.TALX.Open;
   If not DMMACS.TALX.IsEmpty
   Then Begin
		MessageDlg('J� existe um per�odo fiscal para este m�s. Verifique o rel�gio do seu computador', mtWarning, [mbOK], 0);
       Exit;
   End;
  inherited;

end;

procedure TFPeriodoFiscal.EdNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key = #27 Then
       LiberaDados;
end;

end.

