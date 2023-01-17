unit UFreqVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, ColorMaskEdit, DrLabel, Buttons,
  ExtCtrls, FR_DSet, FR_DBSet, FR_Class;

type
  TFFreqVenda = class(TForm)
    ShapeRodape1: TShape;
    ShapeRodape2: TShape;
    Shape1: TShape;
    Shape4: TShape;
    LMov2: TDRLabel;
    EdDt1: TColorMaskEdit;
    PComunica: TPanel;
    DBGrid1: TDBGrid;
    BtnListar: TBitBtn;
    BtnImp: TBitBtn;
    FSFreq: TfrReport;
    FDSFreq: TfrDBDataSet;
    procedure FormActivate(Sender: TObject);
    procedure BtnListarClick(Sender: TObject);
    procedure BtnFechaClick(Sender: TObject);
    procedure BtnImpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //Paulo 04/07/2011: Seleciona os clientes com venda maior que a frequência 
    procedure SelecionaFrequenciaVendas(XData:String);
  end;

var
  FFreqVenda: TFFreqVenda;
  XDias:Integer;

implementation

uses UDMPessoa, Alxorprn, Alxor32, UDMMacs, DB;

{$R *.dfm}

procedure TFFreqVenda.FormActivate(Sender: TObject);
begin
	 Caption:='Frequência de Vendas';
    EdDt1.Text:=DateToStr(Date());
    //Paulo 04/07/2011: Seleciona os clientes com venda maior que a frequência
    SelecionaFrequenciaVendas(DateToStr(Date()));

end;


//Paulo 04/07/2011: Seleciona os clientes com venda maior que a frequência
procedure TFFreqVenda.SelecionaFrequenciaVendas(XData:String);
var
   Cod_Tmp:Integer;
   aux:String;
begin
       //EdDt1.Text:=XData;
       Cod_Tmp:=1;

       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add(' delete from tmp ');
       DMMACS.TMP.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
       DMMACS.TMP.Open;

       //Paulo 04/07/2011: inicia a tela comparando com a data atual
       FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE','','CLIENTE.FREQVENDA = '+#39+'1'+#39+'');
       DMPESSOA.TCliente.First;

       while not DMPESSOA.TCliente.Eof do
       begin
           if DMPESSOA.TCliente.FieldByName('DIASFREQVENDA').AsString = '' then
               XDias:=0
           else
               XDias:=StrToInt(DMPESSOA.TCliente.FieldByName('DIASFREQVENDA').AsString);    

           //Paulo 05/07/2011: Seleciono o ultimo pedido de venda do cliente
           DMPESSOA.TALX1.Close;
           DMPESSOA.TALX1.SQL.Clear;
           DMPESSOA.TALX1.SQL.Add('SELECT MAX (pedvenda.dtpedven) FROM pedvenda');
           DMPESSOA.TALX1.SQL.Add('where pedvenda.cod_cliente = :CODCLIENTE');
           DMPESSOA.TALX1.ParamByName('CODCLIENTE').AsInteger:=DMPESSOA.TCliente.FieldByName('COD_CLIENTE').AsInteger;
           DMPESSOA.TALX1.Open;

           DMPESSOA.TALX.Close;
           DMPESSOA.TALX.SQL.Clear;
           DMPESSOA.TALX.SQL.Add('SELECT pedvenda.numped,pedvenda.DTPEDVEN, PEDVENDA.valor, vwcliente.NOME,');
           DMPESSOA.TALX.SQL.Add(' vwcliente.telrel ,cliente.diasfreqvenda  FROM PEDVENDA');
           DMPESSOA.TALX.SQL.Add('LEFT JOIN vwcliente on pedvenda.cod_cliente = vwcliente.cod_cliente');
           DMPESSOA.TALX.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
           DMPESSOA.TALX.SQL.Add('where pedvenda.DTPEDVEN = :DATA and pedvenda.cod_cliente = :CODCLIENTE order by pedvenda.cod_pedvenda');
           DMPESSOA.TALX.ParamByName('DATA').AsDate:=DMPESSOA.TALX1.FieldByName('MAX').AsDateTime;
           DMPESSOA.TALX.ParamByName('CODCLIENTE').AsInteger:=DMPESSOA.TCliente.FieldByName('COD_CLIENTE').AsInteger;
           DMPESSOA.TALX.Open;
           
           DMPESSOA.TALX.Last;
           if not(DMPESSOA.TALX.IsEmpty) then
           begin
               //Paulo 04/07/2011: aki é feita a comparação entre as datas
               if (DMPESSOA.TALX.FieldByName('DTPEDVEN').AsDateTime + XDias)<= StrToDate(EdDt1.Text) then
               begin
                   //Paulo 04/07/2011: Se for verdadeiro ele salva na tabela temporária
                   DMMACS.TMP.Insert;
                   DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
                   DMMACS.TMP.FieldByName('DESC1').AsString:=DMPESSOA.TALX.FieldByName('NOME').AsString;
                   DMMACS.TMP.FieldByName('DESC2').AsString:=DMPESSOA.TALX.FieldByName('TELREL').AsString;
                   DMMACS.TMP.FieldByName('DESC3').AsString:=DMPESSOA.TALX.FieldByName('NUMPED').AsString;
                   DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMPESSOA.TALX.FieldByName('VALOR').AsCurrency;
                   DMMACS.TMP.FieldByName('DATA1').AsCurrency:=DMPESSOA.TALX.FieldByName('DTPEDVEN').AsDateTime;
                   if DMPESSOA.TCliente.FieldByName('diasfreqvenda').AsString = '' then
                       DMMACS.TMP.FieldByName('INT1').AsInteger:=0
                   else
                       DMMACS.TMP.FieldByName('INT1').AsInteger:=StrToInt(DMPESSOA.TCliente.FieldByName('diasfreqvenda').AsString);    
                   DMMACS.TMP.Post;
                   DMMACS.Transaction.CommitRetaining;
                   Cod_Tmp:=Cod_Tmp+1;
               end;
           end;
           DMPESSOA.TCliente.Next;

       end;
       FiltraTabela(DMMACS.TMP,'TMP','','','');

end;

procedure TFFreqVenda.BtnListarClick(Sender: TObject);
begin
   //Paulo 04/07/2011:Lista os clientes conforme a data digitada
   SelecionaFrequenciaVendas(EdDt1.Text);
end;

procedure TFFreqVenda.BtnFechaClick(Sender: TObject);
begin
   Close;
end;

procedure TFFreqVenda.BtnImpClick(Sender: TObject);
begin
// Paulo 05/08/2011: Imprimi Relatório dos clientes
   FSFreq.LoadFromFile('C:\MZR\MACS\Rel\FrfFrequenciaVenda.frf');
   FSFreq.ShowReport;

end;

end.
