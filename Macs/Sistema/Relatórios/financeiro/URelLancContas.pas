unit URelLancContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmBusca, StdCtrls, Buttons, Mask, ColorMaskEdit, ExtCtrls,
  FR_DSet, FR_DBSet, FR_Class, DBCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxControls, cxContainer, cxEdit, cxGroupBox;

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
    FrmBuscaCliente: TFrmBusca;
    PConta: TPanel;
    Shape1: TShape;
    FrmBuscaConta: TFrmBusca;
    CBEntradas: TCheckBox;
    CBSaidas: TCheckBox;
    PRelDesp: TPanel;
    Shape2: TShape;
    FrmBuscaSacado: TFrmBusca;
    RGTIPODT: TRadioGroup;
    GBFiltro: TcxGroupBox;
    CBFILTRO: TcxComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdDtInDesp: TColorMaskEdit;
    EdDtFimDesp: TColorMaskEdit;
    FSDSRelDesp: TfrDBDataSet;
    FSRelDesp: TfrReport;
    procedure BtnImpRelLoteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FrmBuscaClienteBTNOPENClick(Sender: TObject);
    procedure FrmBuscaClienteBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaContaBTNOPENClick(Sender: TObject);
    procedure FrmBuscaContaBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaSacadoBTNOPENClick(Sender: TObject);
    procedure FrmBuscaSacadoBTNMINUSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  XCODSACADO,XCodCta,XCod:Integer;
  XDescCta, XClassificacao:String;
  FRelLancContas: TFRelLancContas;

implementation

uses UDMConta, UConsPlncta, Alxor32, UDMMacs, DB, UDMEstoque, UDMPessoa,
  UCliente, UPedVenda, Alxorprn, AlxMessage, UMenu, UOrdemDesp;

{$R *.dfm}

procedure TFRelLancContas.BtnImpRelLoteClick(Sender: TObject);
var
   XFiltrodt,XFiltro,XServico,XStatus, XTIPODT,XJuncao,XDesc:String;
   XCod_tmp:Integer;
begin

      if FMenu.XTipoRel <> 'DESPACHANTE' then
      begin
          //Paulo 07/06/2011:è feita as validações dos campos
          if (EdDtIni.Text = '  /  /    ') and (EdDtFim.Text <> '  /  /    ')then
          begin
               Mensagem('A T E N Ç Ã O ', 'Para filtrar as datas. é preciso que as duas datas estejam preenchidos.', '', 1,1, false, 'i');
               EdDtIni.SetFocus;
               exit;
          end;
          if (EdDtIni.Text <> '  /  /    ') and (EdDtFim.Text = '  /  /    ')then
          begin
               Mensagem('A T E N Ç Ã O ', 'Para filtrar as datas. é preciso que as duas datas estejam preenchidos.', '', 1,1, false, 'i');
               EdDtFim.SetFocus;
               exit;
          end;

          if FMenu.XTipoRel <> 'BANCA' then
          begin
              if (CBEntradas.Checked=False) and (CBSaidas.Checked=False)then
              begin
                  Mensagem('A T E N Ç Ã O ', 'É preciso que informar pelo menos um tipo de lançamento se ENTRADA ou SAÍDA', '', 1,1, false, 'i');
                   exit;
              end;
          end;

          //Paulo 04/04/2011:Limpo o campo tmp1 da loja para salvar o filtro
          DMMACS.TLoja.Edit;
          DMMACS.TLoja.FieldByName('TMP1').AsString:='';
          DMMACS.TLoja.FieldByName('TMP2').AsString:='Lançamento de Caixa/Relatórios/Relatório de Lançamentos';
          DMMACS.TLoja.Post;

          XDesc:='';

          if FMenu.XTipoRel = 'BANCA' then
          begin
              //Paulo 08/04/2011: Para relatório de Vendas p/ Banca
              DMCONTA.TRel.Open;
              DMCONTA.TRel.SQL.Clear;
              DMCONTA.TRel.sql.Add('  Select pedvenda.cod_cliente,pedvenda.numped AS PEDVENDA,pedvenda.nomecli,pedvenda.dtpedven,pedvenda.vlrcomis, itenspedven.qtdeprod, itenspedven.qtddev, subproduto.descricao as NOMEPRODUTO,');
              DMCONTA.TRel.sql.Add('  subproduto.contrint,pedvenda.valor, unidade.sigla_unid From itenspedven');
              DMCONTA.TRel.sql.Add('  Left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
              DMCONTA.TRel.sql.Add('  Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
              DMCONTA.TRel.sql.Add('  Left Join produto on subproduto.cod_produto = produto.cod_produto ');
              DMCONTA.TRel.sql.Add('  Left join unidade on Subproduto.cod_unidvenda = unidade.cod_unidade ');
              DMCONTA.TRel.sql.Add('  Left Join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
              DMCONTA.TRel.sql.Add(' Where (PEDVENDA.SITUACAO ='+#39+'FECHADO'+#39+')');
              if(XCod <> 0)then
              begin
                  DMCONTA.TRel.SQL.Add('and pedvenda.cod_cliente = :CODCLI');
                  DMCONTA.TRel.ParamByName('CODCLI').AsInteger:=StrToInt(FrmBuscaCliente.EDCodigo.Text);
              end;
              if(EdDtIni.Text<>'  /  /    ') and (EdDtFim.Text<>'  /  /    ')then
              begin
                 DMCONTA.TRel.SQL.Add('and pedvenda.dtpedven between :DTINI and :DTFIM');
                 DMCONTA.TRel.ParamByName('DTINI').AsDate:=StrToDate(EdDtIni.Text);
                 DMCONTA.TRel.ParamByName('DTFIM').AsDate:=StrToDate(EdDtFim.Text);
              end;
              DMCONTA.TRel.SQL.Add('order by pedvenda.COD_CLIENTE');
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
              //if(DMCONTA.TPlnCta.FieldByName('tipo').AsString<>'T')then
              if(XCodCta <> -1)then
              begin
                  DMCONTA.TRel.SQL.Add('where lancaixa.cod_plnctafil= :CODCONTA');
                  DMCONTA.TRel.ParamByName('CODCONTA').AsInteger:=XCodCta;
                  if(CBEntradas.Checked = True) and (CBSaidas.Checked = False)then
                  begin
                     DMCONTA.TRel.SQL.Add('and(lancaixa.tipcai = ' + #39 + 'E' + #39 + ')');
                     XDesc:='ENTRADAS';
                  end;
                  if(CBSaidas.Checked = True) and (CBEntradas.Checked = False)then
                  begin
                     DMCONTA.TRel.SQL.Add('and (lancaixa.tipcai = ' + #39 + 'S' + #39 + ')');
                     XDesc:='SAÍDAS';
                  end;
                  if(CBSaidas.Checked = True) and (CBEntradas.Checked = True)then
                  begin
                     XDesc:='ENTRADAS E SAÍDAS';
                  end;
              end
              else begin
                 if(CBEntradas.Checked = True) and (CBSaidas.Checked = False)then
                 begin
                     DMCONTA.TRel.SQL.Add('where(lancaixa.tipcai = ' + #39 + 'E' + #39 + ')');
                     XDesc:='ENTRADAS';
                 end;
                 if(CBSaidas.Checked = True) and (CBEntradas.Checked = False)then
                 begin
                     DMCONTA.TRel.SQL.Add('where (lancaixa.tipcai = ' + #39 + 'S' + #39 + ')');
                     XDesc:='SAÍDAS';
                 end;
                 if(CBSaidas.Checked = True) and (CBEntradas.Checked = True)then
                 begin
                   // DMCONTA.TRel.SQL.Add('where (lancaixa.tipcai = ' + #39 + 'S' + #39 + ')or(lancaixa.tipcai = ' + #39 + 'E' + #39 + ')');
                    XDesc:='ENTRADAS E SAÍDAS';
                 end;
              end;


              if(EdDtIni.Text<>'  /  /    ') and (EdDtFim.Text<>'  /  /    ')then
              begin
                 if(CBSaidas.Checked = True) and (CBEntradas.Checked = True) and (XCodCta = -1) then
                    DMCONTA.TRel.SQL.Add('where lancaixa.dtlanc between :DTINI and :DTFIM')
                 else
                    DMCONTA.TRel.SQL.Add('and lancaixa.dtlanc between :DTINI and :DTFIM');
                 DMCONTA.TRel.SQL.Add('order by lancaixa.dtlanc ascending');
                 DMCONTA.TRel.ParamByName('DTINI').AsDate:=StrToDate(EdDtIni.Text);
                 DMCONTA.TRel.ParamByName('DTFIM').AsDate:=StrToDate(EdDtFim.Text);
              end
              else
                 DMCONTA.TRel.SQL.Add('order by lancaixa.dtlanc ascending');

              DMCONTA.TRel.Open;

              DMMACS.TLoja.Edit;
              if(XCodCta <> -1)then
                  DMMACS.TLoja.FieldByName('TMP1').AsString:= DMCONTA.TPlnCta.FieldByName('classificacao').AsString+' - '+DMCONTA.TPlnCta.FieldByName('descricao').AsString+'  '+EdDtIni.Text+' - '+EdDtFim.Text+'  '+XDesc
              else
                  DMMACS.TLoja.FieldByName('TMP1').AsString:='Todas '+XDesc+'  entre  '+EdDtIni.Text+' - '+EdDtFim.Text;
              DMMACS.TLoja.Post;

              FSRelCta.LoadFromFile('C:\MZR\MACS\Rel\FrfRelContaLanc.frf');
              FSRelCta.ShowReport;
          end;
      end;

      //Paulo 11/08/2011: Seleciono os dados de despachante
      if FMenu.XTipoRel = 'DESPACHANTE' then
      begin
           XFiltro:='';
           XCod_tmp:=1;
           //Paulo 12/08/2011: verifica se as duas datas foram digitadas
           if (EdDtInDesp.Text<>'  /  /    ') and (EdDtFimDesp.Text = '  /  /    ') then
           begin
               MessageDlg('Informe a data final', mtWarning, [mbOK], 0);
               EdDtInDesp.SetFocus;
               Exit;
           end;
           if (EdDtInDesp.Text = '  /  /    ') and (EdDtFimDesp.Text <> '  /  /    ') then
           begin
               MessageDlg('Informe a data inicial', mtWarning, [mbOK], 0);
               EdDtFimDesp.SetFocus;
               Exit;
           end;

           //armazena valor por extenso
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('');

           DMMACS.TMP.Close;
           DMMACS.TMP.SQL.Clear;
           DMMACS.TMP.SQL.Add('delete from tmp');
           DMMACS.TMP.ExecSQL;
           DMMACS.Transaction.CommitRetaining;
           DMMACS.TMP.Close;
           DMMACS.TMP.SQL.Clear;
           DMMACS.TMP.SQL.Add('select * from tmp');
           DMMACS.TMP.Open;

           XJuncao:='WHERE';
           Case RGTIPODT.ItemIndex of
   		    0: begin
                      XTIPODT:='ordem.dtabert';
                      XFiltrodt:='abertura';
                  end;

       	    1: begin
                       XTIPODT:='ordem.dtprev';
                       XFiltrodt:='previsão';
                  end;
       	    2:begin
                       XTIPODT:='ordem.dtfech';
                       XFiltrodt:='fechamento';
                 end;

           End;
           
           Case CBFILTRO.ItemIndex of
               0:XStatus:='';
               1:XStatus:='ABERTO';
               2:XStatus:='FECHADO';
               3:XStatus:='TERMINADO';
               4:XStatus:='PARADO';
               5:XStatus:='EXECUTANDO';
   		End;
           if XTipoRelDesp = 'RECIBO' then
           begin
                   //Paulo 12/08/2011: Armazena o valor da ordem em extenso
                   DMESTOQUE.TRel.Close;
                   DMESTOQUE.TRel.SQL.Clear;
                   DMESTOQUE.TRel.SQL.Add('select ordem.cod_vendedor, ordem.numero, ordem.totord,ordem.VLRADIANTAMENTO,');
                   DMESTOQUE.TRel.SQL.Add('ordem.dtabert,ordem.dtprev,ordem.dtfech, ordem.status, ordem.cod_ordem');
                   DMESTOQUE.TRel.SQL.Add('from ordem left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente');
                   DMESTOQUE.TRel.SQL.Add('left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento');

                   if XCODSACADO > 0 then
                   begin
                      DMESTOQUE.TRel.SQL.Add('where ordem.cod_vendedor = :cod');
                      DMESTOQUE.TRel.ParamByName('cod').AsInteger:=XCODSACADO;
                      XJuncao:='AND';
                   end;
                   if (EdDtInDesp.Text<>'  /  /    ') and  (EdDtFimDesp.Text<>'  /  /    ')   then
                   begin
                       DMESTOQUE.TRel.SQL.Add(XJuncao+' '+XTIPODT+' between :dt1 and :dt2');
                       DMESTOQUE.TRel.ParamByName('dt1').AsDate:= StrToDate(EdDtInDesp.Text);
                       DMESTOQUE.TRel.ParamByName('dt2').AsDate:= StrToDate(EdDtFimDesp.Text);
                       XJuncao:='AND';
                   end;
                   if XStatus <> '' then
                       DMESTOQUE.TRel.SQL.Add('and ordem.status = '+#39+XStatus+#39+'');
                   
                   DMESTOQUE.TRel.Open;
                   if not(DMESTOQUE.TRel.IsEmpty)then
                   begin
                       DMESTOQUE.TRel.First;

                       while not DMESTOQUE.TRel.Eof do
                       begin
                           XServico:='';
                           //Paulo 15/08/2011: filtra os dados dos serviços
                           DMESTOQUE.TSlaveServ.Close;
                           DMESTOQUE.TSlaveServ.SQL.Clear;
                           DMESTOQUE.TSlaveServ.SQL.Add(' select subservico.descricao ');
                           DMESTOQUE.TSlaveServ.SQL.Add(' from itservord ');
                           DMESTOQUE.TSlaveServ.SQL.Add(' left join subservico on itservord.cod_servico=subservico.cod_subservico ');
                           DMESTOQUE.TSlaveServ.SQL.Add('Where itservord.cod_ordem = :CODORDEM ');
                           DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger := DMESTOQUE.TRel.FieldByName('COD_ORDEM').AsInteger;
                           DMESTOQUE.TSlaveServ.SQL.Add('order by itservord.cod_itservord desc');
                           DMESTOQUE.TSlaveServ.Open;
                           DMESTOQUE.TSlaveServ.First;
                           //Paulo 15/08/2011: armazena os serviços em uma variavel
                           while not DMESTOQUE.TSlaveServ.Eof do
                           begin
                               XServico:=XServico+DMESTOQUE.TSlaveServ.FieldByName('DESCRICAO').AsString+#13;
                               DMESTOQUE.TSlaveServ.Next;
                           end;


                           Try
                               if (DMESTOQUE.TRel.FieldByName('TOTORD').AsCurrency > DMESTOQUE.TRel.FieldByName('VLRADIANTAMENTO').AsCurrency) then
                                   FMenu.Extenso.Numero:=FormatFloat('###,##0.00', (DMESTOQUE.TRel.FieldByName('TOTORD').AsCurrency - DMESTOQUE.TRel.FieldByName('VLRADIANTAMENTO').AsCurrency))
                               else
                                   FMenu.Extenso.Numero:=FormatFloat('###,##0.00', (DMESTOQUE.TRel.FieldByName('VLRADIANTAMENTO').AsCurrency - DMESTOQUE.TRel.FieldByName('TOTORD').AsCurrency));
                           Except
                           End;
                           DMMACS.TMP.Insert;
                           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                           DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ORDEM').AsInteger;
                           DMMACS.TMP.FieldByName('DESC1').AsString:=FMenu.Extenso.Extenso;
                           DMMACS.TMP.FieldByName('OBS').AsString:= XServico;
                           DMMACS.TMP.Post;
                           DMMACS.Transaction.CommitRetaining;
                           XCod_tmp:=XCod_tmp+1;
                           DMESTOQUE.TRel.Next;
                       end;
                   end;
                   DMMACS.TMP.Close;
                   DMMACS.TMP.SQL.Clear;
                   DMMACS.TMP.SQL.Add('select * from tmp');
                   DMMACS.TMP.Open;
           end;

           //Paulo 12/08/2011: Seleciona os dados para o relatório
           XJuncao:='WHERE';
           DMESTOQUE.TRel.Close;
           DMESTOQUE.TRel.SQL.Clear;
           DMESTOQUE.TRel.SQL.Add('select vwcliente.nome as cliente,vwcliente.telrel, pessoa.nome as sacado, ordem.cod_vendedor, ordem.numero, ordem.totord,ordem.VLRADIANTAMENTO ,equipamento.descricao,equipamento.ano, equipamento.placa,');
           DMESTOQUE.TRel.SQL.Add('ordem.dtabert,ordem.dtprev,ordem.dtfech, ordem.status,ordem.OBSERVACAO AS obsordem, ordem.cod_ordem, tmp.int1, tmp.desc1, tmp.obs');
           DMESTOQUE.TRel.SQL.Add('from ordem left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente');
           DMESTOQUE.TRel.SQL.Add('left join cliente on ordem.cod_vendedor = cliente.cod_cliente');
           DMESTOQUE.TRel.SQL.Add('left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento');
           DMESTOQUE.TRel.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
           DMESTOQUE.TRel.SQL.Add('left join tmp on ordem.cod_ordem = tmp.int1');
           if XCODSACADO > 0 then
           begin
              DMESTOQUE.TRel.SQL.Add('where ordem.cod_vendedor = :cod');
              DMESTOQUE.TRel.ParamByName('cod').AsInteger:=XCODSACADO;
              XJuncao:='AND';
              XFiltro:='Sacado: '+FrmBuscaSacado.EdDescricao.Text;
           end;
           if (EdDtInDesp.Text<>'  /  /    ') and  (EdDtFimDesp.Text<>'  /  /    ')   then
           begin
               DMESTOQUE.TRel.SQL.Add(XJuncao+' '+XTIPODT+' between :dt1 and :dt2');
               DMESTOQUE.TRel.ParamByName('dt1').AsDate:= StrToDate(EdDtInDesp.Text);
               DMESTOQUE.TRel.ParamByName('dt2').AsDate:= StrToDate(EdDtFimDesp.Text);
               XJuncao:='AND';
               XFiltro:=XFiltro+' Data de '+XFiltrodt+' entre '+EdDtInDesp.Text+' até '+EdDtFimDesp.Text;
           end;
           if XStatus <> '' then
              DMESTOQUE.TRel.SQL.Add(XJuncao+' ordem.status = '+#39+XStatus+#39+'');
           DMESTOQUE.TRel.SQL.Add('order by ordem.numero');
           DMESTOQUE.TRel.Open;
           XFiltro:=XFiltro+' Status: '+CBFILTRO.Text;

           DMMACS.TLoja.Edit;
           DMMACS.TLoja.FieldByName('TMP1').AsString:=XFiltro;
           DMMACS.TLoja.Post;
           DMMACS.Transaction.CommitRetaining;

           if XTipoRelDesp = 'RECIBO' then
              FSRelDesp.LoadFromFile('C:\MZR\MACS\Rel\FrfReciboDesp.frf')
           else
              FSRelDesp.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOSDespSint.frf');
           FSRelDesp.ShowReport;



      end;






end;

procedure TFRelLancContas.FormActivate(Sender: TObject);
begin
   XCod:= 0;
   XCODSACADO:=0;
   if FMenu.XTipoRel = 'BANCA' then
   begin
      LDescTitulo.Caption:='Relatório de Vendas para Banca';
      PConta.Visible:=False;
      PConta.SendToBack;
      FrmBuscaCliente.Visible:=True;
      FrmBuscaCliente.BringToFront;
      PRelDesp.Visible:=False;
      PRelDesp.SendToBack;
   end
   else begin
       if FMenu.XTipoRel = 'DESPACHANTE' then
       begin
           LDescTitulo.Caption:='Relatório de OS Despachante';
           PRelDesp.Visible:=True;
           PRelDesp.BringToFront;
           FrmBuscaSacado.EdDescricao.text:=' ';
           FrmBuscaSacado.Repaint;
           RGTIPODT.ItemIndex:=1;
       end
       else begin
           PConta.Visible:=True;
           PConta.BringToFront;
           CBEntradas.Checked:=True;
           CBSaidas.Checked:=True;
           FrmBuscaConta.LTextoBusca.Visible:=True;
           FrmBuscaConta.LTextoBusca.BringToFront;
           FrmBuscaCliente.SendToBack;
           XCodCta:=-1;
           FrmBuscaConta.EDCodigo.Text:=' ';
           FrmBuscaConta.EdDescricao.text:=' ';
           FrmBuscaConta.Repaint;
           PRelDesp.Visible:=False;
           PRelDesp.SendToBack;
       end;
   end;
end;

procedure TFRelLancContas.BitBtn2Click(Sender: TObject);
begin
   XCod:= 0;
   FrmBuscaCliente.EDCodigo.Text:=' ';
   FrmBuscaCliente.EdDescricao.text:=' ';
   FrmBuscaCliente.Repaint;
   EdDtIni.Text:='  /  /    ';
   EdDtFim.Text:='  /  /    ';
   Close;
end;

procedure TFRelLancContas.FrmBuscaClienteBTNOPENClick(Sender: TObject);
begin
      //Paulo 08/04/2011: Busca os clientes
      FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ');
      If AbrirForm(TFCliente, FCliente, 1)='Selected'
      Then Begin
          FrmBuscaCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
          FrmBuscaCliente.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString;
          XCod:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
          FrmBuscaCliente.Repaint;
       End;

end;

procedure TFRelLancContas.FrmBuscaClienteBTNMINUSClick(Sender: TObject);
begin
     XCod:= 0;
     FrmBuscaCliente.EDCodigo.Text:=' ';
     FrmBuscaCliente.EdDescricao.text:=' ';
     FrmBuscaCliente.Repaint;
end;

procedure TFRelLancContas.FrmBuscaContaBTNOPENClick(Sender: TObject);
begin
  FrmBuscaConta.BTNOPENClick(Sender);
      //Paulo 26/04/2011: Busca as contas
      FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', '', '', ' ');
      If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
      Then Begin
          FrmBuscaConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
          FrmBuscaConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
          XCodCta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
          FrmBuscaConta.Repaint;
       End;

end;

procedure TFRelLancContas.FrmBuscaContaBTNMINUSClick(Sender: TObject);
begin
     XCodCta:=-1;  
     FrmBuscaConta.EDCodigo.Text:=' ';
     FrmBuscaConta.EdDescricao.text:=' ';
     FrmBuscaConta.Repaint;
end;

procedure TFRelLancContas.FrmBuscaSacadoBTNOPENClick(Sender: TObject);
begin
      //Paulo 09/08/2011: Busca os sacados
       FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');
       If AbrirForm(TFCliente, FCliente, 1)='Selected'
       Then Begin
           XCODSACADO:= DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsInteger;
           FrmBuscaSacado.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmBuscaSacado.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
       End
       Else Begin
           XCODSACADO:=0;
           FrmBuscaSacado.EDCodigo.Text:='';
           FrmBuscaSacado.EdDescricao.Text:='';
       End;

end;

procedure TFRelLancContas.FrmBuscaSacadoBTNMINUSClick(Sender: TObject);
begin
     FrmBuscaSacado.EDCodigo.Text:=' ';
     FrmBuscaSacado.EdDescricao.text:=' ';
     FrmBuscaSacado.Repaint;
     XCODSACADO:=0;
end;

end.





