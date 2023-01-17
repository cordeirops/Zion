{
  Angelo - 14/09/2015
  Tela de recorrências de serviços
  Estrutura utilizada na funcionalidade
  Tabela - DESPADIC
  Campos - DATAREC: data da recorrência
  	        RECATIVA: 0 ativa, 1 inativa e 2 concluida
           INTRECORRENCIA: quantidade de meses
}

unit URecorrenciaOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Mask, Buttons, Menus,
  frxClass, frxDBSet;

type
  TFRecorrenciaOs = class(TForm)
    PanelRecorrencia: TPanel;
    DBGridConsultaRec: TDBGrid;
    GroupBox1: TGroupBox;
    dtIniRec: TMaskEdit;
    dtFimRec: TMaskEdit;
    LabelIniRec: TLabel;
    LabelFimRec: TLabel;
    RadioGroup1: TRadioGroup;
    rbAtivas: TRadioButton;
    rbInativas: TRadioButton;
    btnAplicar: TBitBtn;
    rbTodas: TRadioButton;
    PMenuRec: TPopupMenu;
    desabilitarrec: TMenuItem;
    btnImpRec: TBitBtn;
    Shape1: TShape;
    Shape2: TShape;
    Shape4: TShape;
    Label15: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    mnurecconcluida: TMenuItem;
    Shape3: TShape;
    Label3: TLabel;
    frxImpRec: TfrxReport;
    frxDBRec: TfrxDBDataset;
    frxDBEmpresa: TfrxDBDataset;
    frxDBCidade: TfrxDBDataset;
    rbVencidas: TRadioButton;
    rbVencMes: TRadioButton;
    rbVencSem: TRadioButton;
    frxDBLoja: TfrxDBDataset;
    procedure FormActivate(Sender: TObject);
    procedure ConsultaRecorrencias(ativa : String);
    procedure dtIniRecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtFimRecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAplicarClick(Sender: TObject);
    procedure desabilitaRecorrencia(cod_despesa : Integer);
    procedure desabilitarrecClick(Sender: TObject);
    procedure DBGridConsultaRecDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure concluiRecorrencia(cod_despesa : Integer);
    procedure mnurecconcluidaClick(Sender: TObject);
    procedure btnImpRecClick(Sender: TObject);
    procedure rbVencSemClick(Sender: TObject);
    procedure rbVencMesClick(Sender: TObject);
    procedure rbVencidasClick(Sender: TObject);
    procedure rbAtivasClick(Sender: TObject);
    procedure rbInativasClick(Sender: TObject);
    procedure rbTodasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRecorrenciaOs: TFRecorrenciaOs;

implementation

uses UDmServ, USenha, Alxor32, UMDO, UDMMacs,DateUtils;

{$R *.dfm}

procedure TFRecorrenciaOs.FormActivate(Sender: TObject);
begin
   rbVencidas.Checked;
   rbVencidas.OnClick(sender);
END;



procedure TFRecorrenciaOs.ConsultaRecorrencias(ativa : String);
begin
    DMServ.TAlx3.Close;
    DMServ.TAlx3.SQL.Clear;
	 DMServ.TAlx3.SQL.Add('  select pessoa.nome, ordem.cod_ordem, ordem.numero, ordem.dtfech, ');
	 DMServ.TAlx3.SQL.Add('   despadic.cod_despadic, despadic.intrecorrencia,  despadic.recativa, despadic.datarec,despadic.despesa, ');
	 DMServ.TAlx3.SQL.Add('   equipamento.descricao ');
	 DMServ.TAlx3.SQL.Add('   from despadic ');
	 DMServ.TAlx3.SQL.Add('   left join equipamento on (despadic.cod_equip = equipamento.cod_equipamento) ');
	 DMServ.TAlx3.SQL.Add('   left join ordem on (despadic.cod_gerador = ordem.cod_ordem) ');
	 DMServ.TAlx3.SQL.Add('   left join cliente on (ordem.cod_cliente = cliente.cod_cliente) ');
	 DMServ.TAlx3.SQL.Add('   left join pessoa on (cliente.cod_pessoa = pessoa.cod_pessoa) ');
	 DMServ.TAlx3.SQL.Add('   where (despadic.gerador='#39+'ORDEM'+#39+') and (ordem.cod_ordem > 0) ');

    if ( (dtIniRec.Text <> '  /  /    ') and (dtFimRec.Text = '  /  /    ') ) then //a partir de uma data
    begin
      DMServ.TAlx3.SQL.Add(' and (despadic.datarec >= :dtinicial) ');
      DMServ.TAlx3.ParamByName('dtinicial').asDate := StrToDate(dtIniRec.Text);
    end else if ((dtIniRec.Text <> '  /  /    ') and (dtFimRec.Text <> '  /  /    ')) then //em um intervalo de datas
    begin
       DMServ.TAlx3.SQL.Add(' and (despadic.datarec between :dtinicial and :dtfinal) ');
       DMServ.TAlx3.ParamByName('dtinicial').asDate := StrToDate(dtIniRec.Text);
       DMServ.TAlx3.ParamByName('dtfinal').asDate := StrToDate(dtFimRec.Text);
    end else if ((dtIniRec.Text = '  /  /    ') and (dtFimRec.Text <> '  /  /    ')) then  //até uma data limite
    begin
      DMServ.TAlx3.SQL.Add(' and (despadic.datarec <= :dtfinal) ');
      DMServ.TAlx3.ParamByName('dtfinal').asDate := StrToDate(dtFimRec.Text);
    end;

    if (ativa = '1') then
        DMServ.TAlx3.SQL.Add(' and despadic.recativa=1');
    if (ativa = '0') then 
        DMServ.TAlx3.SQL.Add(' and despadic.recativa=0');
    DMServ.TAlx3.SQL.Add(' order by  despadic.datarec ');
    DMServ.TAlx3.SQL.Text;
    DMServ.TAlx3.Open;
    DBGridConsultaRec.DataSource :=DMServ.DsTAlx3;
end;

procedure TFRecorrenciaOs.dtIniRecKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) Then
  begin
       btnAplicar.Click;
  end;
end;

procedure TFRecorrenciaOs.dtFimRecKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) Then
  begin
       btnAplicar.Click;
  end;
end;

procedure TFRecorrenciaOs.btnAplicarClick(Sender: TObject);
begin
    if (rbAtivas.Checked) or (rbVencidas.Checked) or (rbVencSem.Checked) or (rbVencMes.Checked) then
      ConsultaRecorrencias('1')
    else if (rbInativas.Checked) then
      ConsultaRecorrencias('0')
    else if (rbTodas.Checked) then
      ConsultaRecorrencias('2')
    else
      ConsultaRecorrencias('2');
end;

procedure TFRecorrenciaOs.desabilitaRecorrencia(cod_despesa : Integer);
begin
	MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add('update despadic set despadic.recativa = :recativa ');
   MDO.Query.SQL.Add('where despadic.cod_despadic = :despadic');
   MDO.Query.ParamByName('recativa').asString := '0';
   MDO.Query.ParamByName('despadic').asInteger := cod_despesa;
   Try
     MDO.Query.ExecSQL;
     MDO.Transac.CommitRetaining;
    if (rbAtivas.Checked) then
      ConsultaRecorrencias('1')
    else if (rbInativas.Checked) then
      ConsultaRecorrencias('0')
    else if (rbTodas.Checked) then
      ConsultaRecorrencias('2')
    else
      ConsultaRecorrencias('2');
   Except
     MDO.Transac.rollbackRetaining;
     MessageDlg('Não foi possível desabilitar a recorrência. Reinicie o sistema e tente novamente!', mtWarning, [mbOK], 0);
   End;
end;

//Muda o status da recorrência para concluída (recativa='2')
procedure TFRecorrenciaOs.concluiRecorrencia(cod_despesa : Integer);
begin
	MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add('update despadic set despadic.recativa = :recativa ');
   MDO.Query.SQL.Add('where despadic.cod_despadic = :despadic');
   MDO.Query.ParamByName('recativa').asString := '2';
   MDO.Query.ParamByName('despadic').asInteger := cod_despesa;
   Try
     MDO.Query.ExecSQL;
     MDO.Transac.CommitRetaining;
    if (rbAtivas.Checked) then
      ConsultaRecorrencias('1')
    else if (rbInativas.Checked) then
      ConsultaRecorrencias('0')
    else if (rbTodas.Checked) then
      ConsultaRecorrencias('2')
    else
      ConsultaRecorrencias('2');
   Except
     MDO.Transac.rollbackRetaining;
     MessageDlg('Não foi possível concluir a recorrência. Reinicie o sistema e tente novamente!', mtWarning, [mbOK], 0);
   End;
end;


procedure TFRecorrenciaOs.desabilitarrecClick(Sender: TObject);
begin
  AbrirForm(TFSenha, FSenha, 0);
  If (XAlxResult = true) then
  begin
    desabilitaRecorrencia(DMServ.TAlx3.FieldByName('cod_despadic').asInteger);
  end;
end;

procedure TFRecorrenciaOs.DBGridConsultaRecDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (DMServ.TAlx3.FieldByName('recativa').asString = '0') Then
    DBGridConsultaRec.Canvas.Brush.Color := $004EDFF5
  else if (DMServ.TAlx3.FieldByName('recativa').asString = '2') Then
    DBGridConsultaRec.Canvas.Brush.Color := $00FFBB5C    
  else if (DMServ.TAlx3.FieldByName('datarec').AsDateTime >= Date) Then
    DBGridConsultaRec.Canvas.Brush.Color := clMoneyGreen
  else if (DMServ.TAlx3.FieldByName('datarec').AsDateTime < Date) Then
    DBGridConsultaRec.Canvas.Brush.Color := $004D4DFF;

  DBGridConsultaRec.Canvas.FillRect(Rect);
  DBGridConsultaRec.DefaultDrawDataCell(Rect, DBGridConsultaRec.Columns[datacol].Field, State);   
end;

procedure TFRecorrenciaOs.mnurecconcluidaClick(Sender: TObject);
begin
   AbrirForm(TFSenha, FSenha, 0);
  If (XAlxResult = true) then
  begin
    concluiRecorrencia(DMServ.TAlx3.FieldByName('cod_despadic').asInteger);
    if (rbAtivas.Checked) then
      ConsultaRecorrencias('1')
    else if (rbInativas.Checked) then
      ConsultaRecorrencias('0')
    else if (rbTodas.Checked) then
      ConsultaRecorrencias('2')
    else
      ConsultaRecorrencias('2');
  end;
end;

procedure TFRecorrenciaOs.btnImpRecClick(Sender: TObject);
begin
    DMMACS.TLoja.Edit;
 	 DMMACS.TLoja.FieldByName('TMP1').AsString:='Recorrência entre: ' + dtIniRec.Text + ' - ' + dtFimRec.Text;
    DMMACS.TLoja.Post;
    DMSERV.TAlx2.Close;
    DMSERV.TAlx2.SQL.Clear;
    DMSERV.TAlx2.SQL.Add('select * from cidade where cidade.cod_cidade=:cidade');
    DMSERV.TAlx2.ParamByName('cidade').asInteger := DMMACS.TEmpresa.fieldByName('cod_cidade').asInteger;
    DMSERV.TAlx2.Open;
    frxDBCidade.DataSet := DMSERV.TAlx2;
	 frxDBEmpresa.DataSet := DMMACS.TEmpresa;
	 frxDBLoja.DataSet := DMMACS.TLoja;
    frxDBRec.DataSet := DMServ.TAlx3;
    frxImpRec.LoadFromFile('C:\MZR\MACS\Rel\FrfRecorrencias.fr3');
    frxImpRec.ShowReport();
end;

procedure TFRecorrenciaOs.rbVencSemClick(Sender: TObject);
begin
   dtIniRec.Text:=DateToStr((Date()));
   dtFimRec.Text:=DateTimeToStr(IncDay(Date,7));
   btnAplicar.OnClick(sender);
end;

procedure TFRecorrenciaOs.rbVencMesClick(Sender: TObject);
begin
   dtIniRec.Text:=DateToStr((Date()));
   dtFimRec.Text:=DateTimeToStr(IncMonth(Date));
   btnAplicar.OnClick(sender);
//  ConsultaRecorrencias(DateTimeToStr(Date),DateTimeToStr(IncMonth(Date)));
end;

procedure TFRecorrenciaOs.rbVencidasClick(Sender: TObject);
begin
   dtIniRec.Text:='01/01/1900';
   dtFimRec.Text:=DateTimeToStr(IncMonth(Date));
//  ConsultaRecorrencias('  /  /    ',DateTimeToStr(Date));
   btnAplicar.OnClick(sender);
end;

procedure TFRecorrenciaOs.rbAtivasClick(Sender: TObject);
begin
   dtIniRec.Text:='01/01/1900';
   dtFimRec.Text:='01/01/2500';
   btnAplicar.OnClick(sender);
end;

procedure TFRecorrenciaOs.rbInativasClick(Sender: TObject);
begin
   dtIniRec.Text:='01/01/1900';
   dtFimRec.Text:='01/01/2500';
   btnAplicar.OnClick(sender);
end;

procedure TFRecorrenciaOs.rbTodasClick(Sender: TObject);
begin
   dtIniRec.Text:='01/01/1900';
   dtFimRec.Text:='01/01/2500';
   btnAplicar.OnClick(sender);
end;

end.
