unit UConsPedVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Mask, Buttons, TFlatEditUnit;

type
  TFConsultaPedVenda = class(TForm)
    GroupBox1: TGroupBox;
    Label51: TLabel;
    Label52: TLabel;
    EdNome: TFlatEdit;
    BtnSelecionar: TBitBtn;
    EdNumPed: TFlatEdit;
    EdNumDoc: TFlatEdit;
    GBFiltragem: TGroupBox;
    Label87: TLabel;
    btnApagarFiltroData: TSpeedButton;
    CbFiltroPedidosFechados: TCheckBox;
    EdDtFiltro01: TMaskEdit;
    edDtFiltro02: TMaskEdit;
    DBGridCadastroPadrao: TDBGrid;
    EdtContrint: TFlatEdit;
    Label49: TLabel;
    Label1: TLabel;
    EditNomeProduto: TFlatEdit;
    BtnCancela: TBitBtn;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure LiberaDados;
    procedure EdNumPedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtContrintKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomeProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbFiltroPedidosFechadosClick(Sender: TObject);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure EdDtFiltro01KeyPress(Sender: TObject; var Key: Char);
    procedure edDtFiltro02KeyPress(Sender: TObject; var Key: Char);
    procedure btnApagarFiltroDataClick(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XSql:String;

  end;

var
  FConsultaPedVenda: TFConsultaPedVenda;
  Xdata1, Xdata2: TDate;


implementation

uses UDMSaida, UPedVenda, Alxor32;

{$R *.dfm}

procedure TFConsultaPedVenda.FormActivate(Sender: TObject);
begin
	  Caption:='Consulta de Vendas';
     //Paulo 10/05/2011: Determina o posicionamento do form
     Height:=XHeight;
     Left:=XLeft;

     //Paulo 10/05/2011: limpa campos da tela
     EdNumPed.Text:='';
     EdNumDoc.Text:='';
     EdNome.Text:='';
     EdtContrint.Text:='';
     EditNomeProduto.Text:='';

     Xdata1:=0;
     Xdata2:=0;

     CbFiltroPedidosFechados.Checked:=True;
     XSql:='';
     LiberaDados;
 
end;

procedure TFConsultaPedVenda.LiberaDados;
begin
     //Paulo 09/05/2011: Filtra tabela de pedido de venda
     DMSAIDA.TAlx.Close;
     DMSAIDA.TAlx.SQL.Clear;
     DMSAIDA.TAlx.SQL.Add('select vwpedv.cod_pedvenda, vwpedv.fisco, vwpedv.numorc, vwpedv.numped, vwpedv.numfiscal,');
     DMSAIDA.TAlx.SQL.Add('vwpedv.tipo, vwpedv.situacao, vwpedv.cobranca, vwpedv.formpag, vwpedv.dtpedven,');
     DMSAIDA.TAlx.SQL.Add('vwpedv.valor, vwpedv.nomecli, vwpedv.cod_usuario, vwpedv.vendedor,');
     DMSAIDA.TAlx.SQL.Add('itenspedven.cod_estoque, vwsimilar.descricao, vwsimilar.contrint');
     DMSAIDA.TAlx.SQL.Add('from vwpedv');
     DMSAIDA.TAlx.SQL.Add('left join  itenspedven on itenspedven.cod_pedven = vwpedv.cod_pedvenda');
     DMSAIDA.TAlx.SQL.Add('left join  vwsimilar on vwsimilar.cod_estoque = itenspedven.cod_estoque');
     DMSAIDA.TAlx.SQL.Add(XSql);
     if (Xdata1<>0) and (Xdata2=0) then
        DMSAIDA.TAlx.ParamByName('data1').AsDate := Xdata1;
     if (Xdata1<>0) and (Xdata2<>0) then
     begin
        DMSAIDA.TAlx.ParamByName('data1').AsDate := Xdata1;
        DMSAIDA.TAlx.ParamByName('data2').AsDate := Xdata2;
     end;
     DMSAIDA.TAlx.SQL.Add('order by vwpedv.dtpedven descending');
     DMSAIDA.TAlx.Open;

    
end;


procedure TFConsultaPedVenda.EdNumPedKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   Try
		If Key=VK_RETURN
   	Then Begin//Paulo 10/05/2011: pressionado enter, consultar pelo nº do pedido
  			XSql:='where vwpedv.numped = '+EdNumPed.Text;
           LiberaDados;
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           XSql:='';
			LiberaDados;
       End;
   Except
   End;
end;

procedure TFConsultaPedVenda.EdNumDocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    Try
		If Key=VK_RETURN
   	Then Begin//Paulo 10/05/2011: pressionado enter, consultar pelo nº fiscal
  			XSql:='where vwpedv.numfiscal like upper('+#39+EdNumDoc.Text+#39+')';
           LiberaDados;
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           XSql:='';
			LiberaDados;
       End;
   Except
   End;

end;

procedure TFConsultaPedVenda.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Try
		If Key=VK_RETURN
   	Then Begin//Paulo 10/05/2011: pressionado enter, consultar pelo nome do cliente
  			XSql:='where vwpedv.nomecli like upper('+#39+'%'+EdNome.Text+'%'+#39+')';
           LiberaDados;
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           XSql:='';
			LiberaDados;
       End;
   Except
   End;

end;

procedure TFConsultaPedVenda.EdtContrintKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   Try
		If Key=VK_RETURN
   	Then Begin//Paulo 10/05/2011: pressionado enter, consultar pelo contrint
  			XSql:='where vwsimilar.contrint like upper('+#39+EdtContrint.Text+#39+')';
           LiberaDados;
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           XSql:='';
			LiberaDados;
       End;
   Except
   End;

end;

procedure TFConsultaPedVenda.EditNomeProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   Try
		If Key=VK_RETURN
   	Then Begin//Paulo 10/05/2011: pressionado enter, consultar pelo nome do produto
  			XSql:='where vwsimilar.descricao like upper('+#39+'%'+EditNomeProduto.Text+'%'+#39+')';
           LiberaDados;
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           XSql:='';
			LiberaDados;
       End;
   Except
   End;

end;

procedure TFConsultaPedVenda.CbFiltroPedidosFechadosClick(Sender: TObject);
begin
   //Paulo 10/05/2011: Filtra conforme selecionado no checkbox
   if CbFiltroPedidosFechados.Checked =False then
      XSql:= 'where vwpedv.situacao = '+#39+'ABERTO'+#39;
   if CbFiltroPedidosFechados.Checked =True then
      XSql:= '';
   LiberaDados;   
end;

procedure TFConsultaPedVenda.DBGridCadastroPadraoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if DMSAIDA.TAlx.FieldByName('SITUACAO').AsString='ABERTO' then
   begin
  		DBGridCadastroPadrao.Canvas.Font.Color := clRed;
		DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);

   end;
   if DMSAIDA.TAlx.FieldByName('FISCO').AsString='NFE2'
   then begin
       DBGridCadastroPadrao.Canvas.Font.Color := clRed;
       DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFConsultaPedVenda.EdDtFiltro01KeyPress(Sender: TObject;
  var Key: Char);
begin
   Try
       If Key=#13
       Then Begin//Paulo 10/05/2011: pressionado enter, consultar pela data
           if (EdDtFiltro01.Text<>'  /  /    ')then
           begin
               Xdata1:=StrToDate(EdDtFiltro01.Text);
               XSql:='where vwpedv.dtpedven = :data1';
           end;    
           LiberaDados;
       End;
   Except
   End;
end;

procedure TFConsultaPedVenda.edDtFiltro02KeyPress(Sender: TObject;
  var Key: Char);
begin
   Try
       If Key=#13
       Then Begin//Paulo 10/05/2011: pressionado enter, consultar pela data
           if (EdDtFiltro01.Text<>'  /  /    ') and (edDtFiltro02.Text<>'  /  /    ') then
           begin
               Xdata1:=StrToDate(EdDtFiltro01.Text);
               Xdata2:=StrToDate(EdDtFiltro02.Text);
               XSql:='where vwpedv.dtpedven between :data1 and :data2';
           end;    
           LiberaDados;
       End;
   Except
   End;

end;

procedure TFConsultaPedVenda.btnApagarFiltroDataClick(Sender: TObject);
begin
   EdDtFiltro01.Clear;
   edDtFiltro02.Clear;
   Xdata1:=0;
   Xdata2:=0;
   LiberaDados;
end;

procedure TFConsultaPedVenda.BtnSelecionarClick(Sender: TObject);
begin
     FiltraTabela(DMSAIDA.WPedV,'vwpedv','COD_PEDVENDA',IntToStr(DMSAIDA.TAlx.FieldByName('cod_pedvenda').AsInteger),'');

     Close;
end;

procedure TFConsultaPedVenda.DBGridCadastroPadraoDblClick(Sender: TObject);
begin
    BtnSelecionarClick(Sender);
end;



end.







