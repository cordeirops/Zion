unit UCartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  ExtCtrls, EditFloat, ColorEditFloat, Mask, ColorMaskEdit;

type
  TFCadCartao = class(TFCadPadrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RGDebitoCredito: TRadioGroup;
    PParcelas: TPanel;
    Label4: TLabel;
    EdCartao: TColorMaskEdit;
    EdTaxa: TColorEditFloat;
    CBBandeiras: TComboBox;
    EdPInicial: TColorEditFloat;
    EdPFinal: TColorEditFloat;
    Label5: TLabel;
    Label6: TLabel;
    DBGridConsulta: TDBGrid;
    procedure BtnNovoClick(Sender: TObject);
    procedure RGDebitoCreditoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //Função utilizada para limpar todos os campos do cadastro
    Function LimpaCampos: Boolean;
    //Função utilizada para filtrar os dados de cartão
    Function FiltraDados: Boolean;
    //Função utilizada para liberar os dados de cartão
    Function LiberaDados: Boolean;
  end;

var
  FCadCartao: TFCadCartao;
  XStatus: String;
  XCodigoEdit: Integer;

implementation

uses UMDO, UDMFinanc, DB;

{$R *.dfm}

//Função utilizada para filtrar os dados de cartão
Function TFCadCartao.FiltraDados: Boolean;
Begin
	Try
       DMFINANC.TCartao.Close;
       DMFINANC.TCartao.SQL.Clear;
       If Trim(EdNome.Text)<>'' Then
       	DMFINANC.TCartao.SQL.Add(' Select * from cartao where upper(cartao.descricao) like '+#39+UpperCase(EdNome.Text)+'%'+#39+' order by descricao ')
       Else
       	DMFINANC.TCartao.SQL.Add(' Select * from cartao order by descricao ');
       DMFINANC.TCartao.Open;
       DBGridConsulta.DataSource:=DMFINANC.DCartao;       
   Except
   End;
End;

//Função utilizada para liberar os dados de cartão
Function TFCadCartao.LiberaDados: Boolean;
Begin
	Try
       DMFINANC.TCartao.Close;
       DMFINANC.TCartao.SQL.Clear;
     	DMFINANC.TCartao.SQL.Add(' Select * from cartao order by descricao ');
       DMFINANC.TCartao.Open;
       DBGridConsulta.DataSource:=DMFINANC.DCartao;
   Except
   End;
End;

//Função utilizada para limpar todos os campos do cadastro
Function TFCadCartao.LimpaCampos: Boolean;
Begin
	Try
       EdCartao.Text:='';
       CBBandeiras.Text:='';
       EdTaxa.ValueInteger:=0;
       RGDebitoCredito.ItemIndex:=-1;
       PParcelas.Visible:=False;
       EdPInicial.ValueInteger:=0;
       EdPFinal.ValueInteger:=0;
   Except

   End;

End;
procedure TFCadCartao.BtnNovoClick(Sender: TObject);
begin
  inherited;
  	Try
       XStatus:='INSERT';
       LimpaCampos;
       EdCartao.SetFocus;
   Except
   	MessageDlg('Erro: 64', mtWarning, [mbOK], 0);
   End;

end;

procedure TFCadCartao.RGDebitoCreditoClick(Sender: TObject);
begin
  inherited;
	If RGDebitoCredito.ItemIndex=0
   Then Begin
       PParcelas.Visible:=False;
   End
   Else Begin
       PParcelas.Visible:=True;
       PParcelas.BringToFront;
       EdPInicial.SetFocus;
   End;
end;

procedure TFCadCartao.BtnGravarClick(Sender: TObject);
begin
	Try
       If Trim(EdCartao.Text)=''
       Then Begin
           MessageDlg('É necessário informar o cartão', mtWarning, [mbOK], 0);
           EdCartao.SetFocus;
           Exit;
       End;
       If Trim(CBBandeiras.Text)=''
       Then Begin
           MessageDlg('É necessário informar a bandeira do cartão', mtWarning, [mbOK], 0);
           CBBandeiras.SetFocus;
           Exit;
       End;
       If RGDebitoCredito.ItemIndex=-1
       Then Begin
           MessageDlg('É necessário informar se o cartão é débito ou crédito', mtWarning, [mbOK], 0);
           RGDebitoCredito.SetFocus;
           Exit;
       End;
       If RGDebitoCredito.ItemIndex=1
       Then Begin
           If (EdPInicial.ValueInteger<1) or (EdPFinal.ValueInteger<1)
           Then Begin
               MessageDlg('É necessário informar corretamente o numero de parcelas tarifadas pelo cartão de crédito', mtWarning, [mbOK], 0);
               EdPInicial.SetFocus;
               Exit;
           End;
           If (EdPInicial.ValueInteger>EdPFinal.ValueInteger)
           Then Begin
               MessageDlg('Nos campos de intervalo de parcelas, a parcela inicial deve ser menor ou igual a parcela final', mtWarning, [mbOK], 0);
               EdPInicial.SetFocus;
               Exit;
           End;
       End;
       mdo.Query.close;
       mdo.Query.SQL.Clear;
       If XStatus='INSERT'
       Then Begin
           MDO.Query.SQL.Add(' INSERT INTO CARTAO (DESCRICAO, BANDEIRA,TAXA,PARCINI,PARCFIN) ');
           MDO.Query.SQL.Add(' VALUES (:DESCRICAO, :BANDEIRA, :TAXA, :PARCINI, :PARCFIN)');
       End
       Else Begin
           MDO.Query.SQL.Add(' update cartao set cartao.descricao=:Descricao, cartao.parcfin=:Parcfin, ');
           MDO.Query.SQL.Add('                   cartao.parcini=:parcini, cartao.taxa=:taxa, cartao.bandeira=:Bandeira ');
           MDO.Query.SQL.Add('               Where cartao.cod_cartao=:codigo');
           MDO.Query.ParamByName('codigo').AsInteger:=XCodigoEdit;
       End;
       MDo.Query.ParamByName('DESCRICAO').AsString:=EdCartao.Text;
       MDo.Query.ParamByName('BANDEIRA').AsString:=CBBandeiras.Text;
       MDo.Query.ParamByName('TAXA').AsCurrency:=EdTaxa.ValueNumeric;
       If RGDebitoCredito.ItemIndex=0
       Then Begin
           MDo.Query.ParamByName('PARCINI').AsInteger:=-1;
           MDo.Query.ParamByName('PARCFIN').AsInteger:=-1;
   	End
       Else Begin
           MDo.Query.ParamByName('PARCINI').AsInteger:=EdPInicial.ValueInteger;
           MDo.Query.ParamByName('PARCFIN').AsInteger:=EdPFinal.ValueInteger;
       End;
       XStatus:='';
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       DMFINANC.Transaction.CommitRetaining;
       LiberaDados;
   Except
       MDO.Transac.RollbackRetaining;
       MessageDlg('Não foi possível salvar os dados do cartão. Tente mais tarde!', mtWarning, [mbOK], 0);
   End;
  inherited;
end;

procedure TFCadCartao.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Cadastro de Cartão';  
   FiltraDados;
   XTab:=tRUE;
   XView:=DMFINANC.TCartao;
   XTabela:=DMFINANC.TCartao;
end;

procedure TFCadCartao.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;
	If Key=Vk_Return Then
		FiltraDados;
	If Key=Vk_escape Then
		LiberaDados;
end;

procedure TFCadCartao.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   XStatus:='EDIT';
   XCodigoEdit:=DMFINANC.TCartao.FieldByName('COD_CARTAO').AsInteger;
   EdCartao.Text:=DMFINANC.TCartao.FieldByName('descricao').AsString;
   CBBandeiras.Text:=DMFINANC.TCartao.FieldByName('BANDEIRA').AsString;
   EdTaxa.ValueNumeric:=DMFINANC.TCartao.FieldByName('TAXA').AsCurrency;
   If DMFINANC.TCartao.FieldByName('PARCINI').AsInteger=-1
   Then Begin
       RGDebitoCredito.ItemIndex:=0;
   End
   Else Begin
       RGDebitoCredito.ItemIndex:=1;
       EdPInicial.ValueInteger:=DMFINANC.TCartao.FieldByName('PARCINI').AsInteger;
       EdPFinal.ValueInteger:=DMFINANC.TCartao.FieldByName('PARCFIN').AsInteger;
   End;
end;

procedure TFCadCartao.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   XStatus:='';
end;

end.
