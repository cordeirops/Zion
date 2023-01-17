unit URelLancContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmBusca, StdCtrls, Buttons, Mask, ColorMaskEdit, ExtCtrls,
  FR_DSet, FR_DBSet, FR_Class, DBCtrls;

type
  TFRelLancContas = class(TForm)
    ImgTitulo: TImage;
    SpTitulo01: TShape;
    SpTitulo02: TShape;
    ShapeFundo: TShape;
    LDescTitulo: TLabel;
    GroupBox6: TGroupBox;
    Label57: TLabel;
    Label58: TLabel;
    EdDtIni: TColorMaskEdit;
    EdDtFim: TColorMaskEdit;
    BtnImpRelLote: TBitBtn;
    BitBtn2: TBitBtn;
    FSRelCta: TfrReport;
    FSDSRElCta: TfrDBDataSet;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FrmBuscaBTNOPENClick(Sender: TObject);
    procedure FrmBuscaContaBTNMINUSClick(Sender: TObject);
    procedure BtnImpRelLoteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  XCodPlnCta:Integer;
  XDescCta, XClassificacao:String;
  FRelLancContas: TFRelLancContas;

implementation

uses UDMConta, UConsPlncta, Alxor32, UDMMacs, DB, UDMEstoque, UPedVenda;

{$R *.dfm}

procedure TFRelLancContas.FrmBuscaBTNOPENClick(Sender: TObject);
begin {
    //Paulo 04/04/2011: Busca as contas
      FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', '', '', ' ');
      If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
      Then Begin
          FrmBuscaConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
          FrmBuscaConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
          XCodPlnCta:=DMCONTA.TPlnCta.FieldByName('cod_plncta').AsInteger ;
          FrmBuscaConta.Repaint;
       End;
      }
end;

procedure TFRelLancContas.FrmBuscaContaBTNMINUSClick(Sender: TObject);
begin
      XCodPlnCta:= 0;
      {
      FrmBuscaConta.EDCodigo.Text:=' ';
      FrmBuscaConta.EdDescricao.text:=' ';
      FrmBuscaConta.Repaint;
       }
end;

procedure TFRelLancContas.BtnImpRelLoteClick(Sender: TObject);
begin
      //Paulo 04/04/2011:Limpo o campo tmp1 da loja para salvar o filtro
      DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP1').AsString:='';
      DMMACS.TLoja.Post;

      if XTipoRel = 'BANCA' then
      begin
          //Paulo 08/04/2011: Para relatório de Vendas p/ Banca
          DMCONTA.TRel.Open;
          DMCONTA.TRel.SQL.Clear;
          DMCONTA.TRel.sql.Add('  Select pedvenda.numped AS PEDVENDA,pedvenda.nomecli,pedvenda.dtpedven,pedvenda.vlrcomis, itenspedven.qtdeprod, itenspedven.qtddev, subproduto.descricao as similar,');
          DMCONTA.TRel.sql.Add('  subproduto.contrint,pedvenda.valor, unidade.sigla_unid From itenspedven');
          DMCONTA.TRel.sql.Add('  Left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
          DMCONTA.TRel.sql.Add('  Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
          DMCONTA.TRel.sql.Add('  Left Join produto on subproduto.cod_produto = produto.cod_produto ');
          DMCONTA.TRel.sql.Add('  Left join unidade on Subproduto.cod_unidvenda = unidade.cod_unidade ');
          DMCONTA.TRel.sql.Add('  Left Join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
          DMCONTA.TRel.sql.Add(' Where (PEDVENDA.SITUACAO ='+#39+'FECHADO'+#39+')');
          if(EdDtIni.Text<>'  /  /    ') and (EdDtFim.Text<>'  /  /    ')then
          begin
             DMCONTA.TRel.SQL.Add('and pedvenda.dtpedven between :DTINI and :DTFIM');
             DMCONTA.TRel.SQL.Add('order by pedvenda.dtpedven');
             DMCONTA.TRel.ParamByName('DTINI').AsDate:=StrToDate(EdDtIni.Text);
             DMCONTA.TRel.ParamByName('DTFIM').AsDate:=StrToDate(EdDtFim.Text);
          end;
          DMCONTA.TRel.Open;

          DMMACS.TLoja.Edit;
          DMMACS.TLoja.FieldByName('TMP1').AsString:= 'Vendas efeituadas no periodo de '+EdDtIni.Text+' a '+EdDtFim.Text;
          DMMACS.TLoja.Post;

          FSRelCta.LoadFromFile('C:\MZR\MACS\Rel\FrfRelVendaBanca.frf');
          FSRelCta.ShowReport;
      end
      else begin
          DMCONTA.TRel.Open;
          DMCONTA.TRel.SQL.Clear;
          DMCONTA.TRel.SQL.Add('select lancaixa.tipcai,lancaixa.valor, lancaixa.historico, lancaixa.dtlanc,plncta.tipo from lancaixa');
          DMCONTA.TRel.SQL.Add('left join plncta on plncta.cod_plncta = lancaixa.cod_plnctafil');
          if(DMCONTA.TPlnCta.FieldByName('tipo').AsString<>'T')then
          begin
              DMCONTA.TRel.SQL.Add('where lancaixa.cod_plnctafil= :CODCONTA');
              DMCONTA.TRel.ParamByName('CODCONTA').AsInteger:=DMCONTA.TPlnCta.FieldByName('cod_plncta').AsInteger;
          end
          else
             DMCONTA.TRel.SQL.Add('where plncta.classificacao like upper('+#39+DMCONTA.TPlnCta.FieldByName('classificacao').AsString+'%'+#39+')');

          if(EdDtIni.Text<>'  /  /    ') and (EdDtFim.Text<>'  /  /    ')then
          begin
             DMCONTA.TRel.SQL.Add('and lancaixa.dtlanc between :DTINI and :DTFIM');
             DMCONTA.TRel.SQL.Add('order by lancaixa.tipcai');
             DMCONTA.TRel.ParamByName('DTINI').AsDate:=StrToDate(EdDtIni.Text);
             DMCONTA.TRel.ParamByName('DTFIM').AsDate:=StrToDate(EdDtFim.Text);
          end
          else
             DMCONTA.TRel.SQL.Add('order by lancaixa.tipcai');

          DMCONTA.TRel.Open;

          DMMACS.TLoja.Edit;
          DMMACS.TLoja.FieldByName('TMP1').AsString:= DMCONTA.TPlnCta.FieldByName('classificacao').AsString+' - '+DMCONTA.TPlnCta.FieldByName('descricao').AsString+'  '+EdDtIni.Text+' - '+EdDtFim.Text;
          DMMACS.TLoja.Post;


          FSRelCta.LoadFromFile('C:\MZR\MACS\Rel\FrfRelContaLanc.frf');
          FSRelCta.ShowReport;
      end;

end;

procedure TFRelLancContas.FormActivate(Sender: TObject);
begin
       if XTipoRel = 'BANCA' then
       begin
          LDescTitulo.Caption:='Relatório de Vendas para Banca';
          DBLookupComboBox1.Visible:=false;
       end
       else begin
           DBLookupComboBox1.Visible:=true;
           FiltraTabela(DMCONTA.TPlnCta,'PLNCTA','','','ORDER BY CLASSIFICACAO');
           LDescTitulo.Caption:='Relatório de Lançamentos';
       end;
end;

procedure TFRelLancContas.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

end.
