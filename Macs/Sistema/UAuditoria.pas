unit UAuditoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, ComCtrls,
  Mask, Grids, DBGrids, TFlatEditUnit;

type
  TFAuditoria = class(TFPadrao)
    Audit: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIniCx: TMaskEdit;
    EdDataFimCx: TMaskEdit;
    RGTIPODTCX: TRadioGroup;
    EdDescricaoCx: TFlatEdit;
    BTNOPENCX: TBitBtn;
    BTNMINUSCX: TBitBtn;
    Panel1: TPanel;
    LTextoBusca: TLabel;
    BtFiltraCaixa: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    EdDataIniBan: TMaskEdit;
    EdDataFimBan: TMaskEdit;
    EdDescricaoBan: TFlatEdit;
    BTNOPENBAN: TBitBtn;
    BTNMINUSBAN: TBitBtn;
    RGTIPODTBAN: TRadioGroup;
    Panel2: TPanel;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    EdDataIniCHERC: TMaskEdit;
    EdDataFimCHERC: TMaskEdit;
    EdDescricaoCHERC: TFlatEdit;
    BTNOPENCHERC: TBitBtn;
    BTNMINUSCHERC: TBitBtn;
    RGTIPODTCHERC: TRadioGroup;
    DBGridCHERC: TDBGrid;
    Panel3: TPanel;
    Label8: TLabel;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    EdDataIniCHEPG: TMaskEdit;
    EdDataFimCHEPG: TMaskEdit;
    EdDescricaoCHEPG: TFlatEdit;
    BTNOPENCHEPG: TBitBtn;
    BTNMINUSCHEPG: TBitBtn;
    RGTIPODTCHEPG: TRadioGroup;
    DBGridCHEPG: TDBGrid;
    Panel4: TPanel;
    Label11: TLabel;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    EdDataIniCR: TMaskEdit;
    EdDataFimCR: TMaskEdit;
    EdDescricaoCR: TFlatEdit;
    BTNOPENCR: TBitBtn;
    BTNMINUSCR: TBitBtn;
    RGTIPODTCR: TRadioGroup;
    DBGridCR: TDBGrid;
    Panel5: TPanel;
    Label14: TLabel;
    GroupBox6: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    EdDataIniCP: TMaskEdit;
    EdDataFimCP: TMaskEdit;
    EdDescricaoCP: TFlatEdit;
    BTNOPENCP: TBitBtn;
    BTNMINUSCP: TBitBtn;
    RGTIPODTCP: TRadioGroup;
    DBGridCP: TDBGrid;
    Panel6: TPanel;
    Label17: TLabel;
    EdCodigoCHEPG: TFlatEdit;
    EdCodigoCR: TFlatEdit;
    EdCodigoCP: TFlatEdit;
    EdCodigoBan: TFlatEdit;
    EdCodigoCHERC: TFlatEdit;
    EdCodigoCx: TFlatEdit;
    DBGridCx: TDBGrid;
    DBGridBanco: TDBGrid;
    BtAlteraCaixa: TBitBtn;
    BtFiltraBanco: TBitBtn;
    BtAlteraBanco: TBitBtn;
    BtAlteraChRec: TBitBtn;
    BtFiltraChRec: TBitBtn;
    BtAlteraChPag: TBitBtn;
    BtFiltraChPag: TBitBtn;
    BtAlteraRec: TBitBtn;
    BtFiltraRec: TBitBtn;
    BtAlteraPag: TBitBtn;
    BtFiltraPag: TBitBtn;
    BtRelCaixa: TBitBtn;
    BtRelatorioBanco: TBitBtn;
    BtRelPag: TBitBtn;
    BtRelRec: TBitBtn;
    BtRelChPag: TBitBtn;
    BtRelChRec: TBitBtn;
    BtSqlCaixa: TBitBtn;
    BtSQLBanco: TBitBtn;
    BtSQLChRec: TBitBtn;
    BtSQLChPag: TBitBtn;
    BtSQLRec: TBitBtn;
    BtSQLPag: TBitBtn;
    PSQL: TPanel;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    MSQL: TMemo;
    BitBtn1: TBitBtn;
    Label18: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure EdCodigoCxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTNOPENCXClick(Sender: TObject);
    procedure BTNMINUSCXClick(Sender: TObject);
    procedure AtualizaGridConsulta(FILTRO :STRING);
    procedure EdCodigoBanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodigoCHERCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodigoCHEPGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodigoCRKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodigoCPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtSqlCaixaClick(Sender: TObject);
    procedure BtFiltraCaixaClick(Sender: TObject);
    procedure BtFiltraBancoClick(Sender: TObject);
    procedure BtFiltraChRecClick(Sender: TObject);
    procedure BtFiltraChPagClick(Sender: TObject);
    procedure BtFiltraRecClick(Sender: TObject);
    procedure BtFiltraPagClick(Sender: TObject);
    procedure AuditChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Procedure FiltraCaixa; // usado para mandar a SQL que filtra o caixa

    procedure FiltraBanco; // usado para mandar a SQL que filtra o banco

    procedure FiltraCheRec; // usado para mandar a SQL que filtra o cheques a receber

    procedure FiltraChePag; // usado para mandar a SQL que filtra o cheques a pagar

    procedure FiltraCtaRec; // usado para mandar a SQL que filtra o contas a receber

    procedure FiltraCtaPag; // usado para mandar a SQL que filtra o contas a pagar

    procedure FiltraData; // usado para filtrar atraves dos intervalos de datas

  end;

var
  FAuditoria: TFAuditoria;
  XPessoaIni, XPessoaFim: String;
  Xconta: Integer;

implementation

uses UDMConta, UMenu,Alxor32, UConsPlncta, UDMEstoque, UDMCaixa, UDmBanco;

{$R *.dfm}

procedure TFAuditoria.FormActivate(Sender: TObject);
begin
  inherited;
   Caption:='Auditoria';
   //Prepara valores Iniciais

   //Audit.ActivePageIndex := 5;

   DBGridCx.DataSource := DMESTOQUE.DSAlx1;
   DBGridBanco.DataSource := DMESTOQUE.DSAlx2;
   DBGridCHERC.DataSource := DMESTOQUE.DSAlx3;
   DBGridCHEPG.DataSource := DMESTOQUE.DSAlx;
   DBGridCR.DataSource := DMESTOQUE.DSAlx4;
   DBGridCP.DataSource := DMESTOQUE.DsAlx5;

   if (Audit.ActivePageIndex = 0) // se for aba CAIXA
   then begin
     EdCodigoCx.Text:='';
     EDCodigoCx.Text:='';
     Xconta:=-1;
     Repaint;
   end
   else
   if (Audit.ActivePageIndex = 1) // se for aba BANCO
   then begin
       EdCodigoBan.Text:='';
     	EDCodigoBan.Text:='';
       Xconta:=-1;
       Repaint;
   end
   else
   if (Audit.ActivePageIndex = 2)  // se for aba CHEQUES A RECEBER
   then begin
       EdCodigoCHERC.Text:='';
     	EDCodigoCHERC.Text:='';
     	Xconta:=-1;
       Repaint;
   end
   else
   if (Audit.ActivePageIndex = 3) // se for aba CHEQUES A PAGAR
   then begin
   	EdCodigoCHEPG.Text:='';
     	EDCodigoCHEPG.Text:='';
     	Xconta:=-1;
       Repaint;
   end
   else
   if (Audit.ActivePageIndex = 4) // se for aba CONTAS A RECEBER
   then begin
   	EdCodigoCR.Text:='';
     	EDCodigoCR.Text:='';
     	Xconta:=-1;
       Repaint;
   end
   else
   if (Audit.ActivePageIndex = 5) // se for aba CONTAS A PAGAR
   then begin
   	EdCodigoCP.Text:='';
     	EDCodigoCP.Text:='';
     	Xconta:=-1;
       Repaint;
   end;

   //EdDataIni.Text:=DateToStr(Date());
   //EdDataFim.Text:=DateToStr(Date());

  // Repaint;
  // EdDataIni.SetFocus;

   AtualizaGridConsulta('');
   Repaint;
end;

procedure TFAuditoria.EdCodigoCxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key = 13
   Then Begin
       If EdCodigoCx.Text<>''
       Then Begin
           //LIBERA TODAS OS ESTADOS PARA CONSUTA
           If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+EdCodigoCx.Text+#39+ ')')=True
           Then Begin
               XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
               EdDescricaoCx.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               EdCodigoCx.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           End
           Else Begin
               XConta:=-1;
               EdDescricaoCx.Text:='';
               EdCodigoCx.text:='';
           End;
       End
       Else Begin
           XConta:=0;
           EdDescricaoCx.Text:='';
           EdCodigoCx.text:='';
       End;
   End;
   Repaint;
end;

procedure TFAuditoria.BTNOPENCXClick(Sender: TObject);
begin
    FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

    If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
    Then Begin
       if (Audit.ActivePageIndex = 0) // se aba for CAIXA
       then begin
           XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
           EdDescricaoCx.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           EdCodigoCx.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       End;
       if (Audit.ActivePageIndex = 1) // se aba for BANCO
       then begin
           XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
           EdDescricaoBan.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           EdCodigoBan.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       End;
       if (Audit.ActivePageIndex = 2) // se aba for CHEQUE RECEBIDO
       then begin
           XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
           EdDescricaoCHERC.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           EdCodigoCHERC.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       End;
       if (Audit.ActivePageIndex = 3) // se aba for CHEQUES A PAGAR
       then begin
           XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
           EdDescricaoCHEPG.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           EdCodigoCHEPG.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       End;
       if (Audit.ActivePageIndex = 4) // se aba for CONTAS A RECEBER
       then begin
           XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
           EdDescricaoCR.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           EdCodigoCR.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       end;
       if (Audit.ActivePageIndex = 5) // se aba for CONTAS A PAGAR
       then begin
           XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
           EdDescricaoCP.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           EdCodigoCP.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       end
    else
       XConta:=-1;
       EdDescricaoCx.Text:='';
       EdCodigoCx.text:='';

       EdDescricaoBan.Text:='';
       EdCodigoBan.text:='';

       EdDescricaoCHERC.Text:='';
       EdCodigoCHERC.text:='';

       EdDescricaoCHEPG.Text:='';
       EdCodigoCHEPG.text:='';

       EdDescricaoCR.Text:='';
       EdCodigoCR.text:='';

       EdDescricaoCP.Text:='';
       EdCodigoCP.text:='';
   end;
end;

procedure TFAuditoria.BTNMINUSCXClick(Sender: TObject);
begin
  inherited;
	if (Audit.ActivePageIndex = 0) // se aba for CAIXA
   then begin
     XConta:=-1;
     EDCodigoCx.Text:='';
     EdDescricaoCx.Text:='';
   end
   else
   if (Audit.ActivePageIndex = 1) // se aba for BANCO
   then begin
     XConta:=-1;
     EdCodigoBan.Text:='';
     EdDescricaoBan.Text:='';
   end else
   if (Audit.ActivePageIndex = 2) // se aba for CHEQUES A RECEBER
   then begin
     XConta:=-1;
     EdCodigoCHERC.Text:='';
     EdDescricaoCHERC.Text:='';
   end else
   if (Audit.ActivePageIndex = 3) // se aba for CHEQUES A PAGAR
   then begin
     XConta:=-1;
     EdCodigoCHEPG.Text:='';
     EdDescricaoCHEPG.Text:='';
   end else
   if (Audit.ActivePageIndex = 4) // se aba for CONTAS A RECEBER
   then begin
     XConta:=-1;
  	  EdCodigoCR.Text:='';
     EdDescricaoCR.Text:='';
   end else
   if (Audit.ActivePageIndex = 5) // se aba for CONTAS A PAGAR
   then begin
     XConta:=-1;
     EdCodigoCP.Text:='';
     EdDescricaoCP.Text:='';
   end;
   Repaint;
end;

procedure TFAuditoria.AtualizaGridConsulta(FILTRO :STRING);
begin

    FiltraCaixa;

    FiltraBanco;

    FiltraCheRec;

    FiltraChePag; // falta implementar

    FiltraCtaRec;

    FiltraCtaPag;

end;

procedure TFAuditoria.EdCodigoBanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    inherited;
    If Key = 13
    Then Begin
       If EdCodigoBan.Text<>''
       Then Begin
           //LIBERA TODAS OS ESTADOS PARA CONSUTA
           If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+EdCodigoBan.Text+#39+ ')')=True
           Then Begin
               XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
               EdDescricaoBan.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               EdCodigoBan.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           End
           Else Begin
               XConta:=-1;
               EdDescricaoBan.Text:='';
               EdCodigoBan.text:='';
           End;
       End
       Else Begin
           XConta:=0;
           EdDescricaoBan.Text:='';
           EdCodigoBan.text:='';
       End;
    End;
    Repaint;
end;

procedure TFAuditoria.EdCodigoCHERCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    inherited;
    If Key = 13
    Then Begin
       If EdCodigoCHERC.Text<>''
       Then Begin
           //LIBERA TODAS OS ESTADOS PARA CONSUTA
           If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+EdCodigoCHERC.Text+#39+ ')')=True
           Then Begin
               XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
               EdDescricaoCHERC.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               EdCodigoCHERC.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           End
           Else Begin
             XConta:=-1;
             EdDescricaoCHERC.Text:='';
             EdCodigoCHERC.text:='';
           End;
       End
       Else Begin
           XConta:=0;
           EdDescricaoCHERC.Text:='';
           EdCodigoCHERC.text:='';
       End;
    End;
    Repaint;
end;

procedure TFAuditoria.EdCodigoCHEPGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 	 inherited;
    If Key = 13
    Then Begin
       If EdCodigoCHEPG.Text<>''
       Then Begin
           //LIBERA TODAS OS ESTADOS PARA CONSUTA
           If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+EdCodigoCHEPG.Text+#39+ ')')=True
           Then Begin
               XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
               EdDescricaoCHEPG.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               EdCodigoCHEPG.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           End
           Else Begin
               XConta:=-1;
               EdDescricaoCHEPG.Text:='';
               EdCodigoCHEPG.text:='';
           End;
       End
       Else Begin
           XConta:=0;
           EdDescricaoCHEPG.Text:='';
           EdCodigoCHEPG.text:='';
       End;
    End;
    Repaint;
end;

procedure TFAuditoria.EdCodigoCRKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key = 13
    Then Begin
       If EdCodigoCR.Text<>''
       Then Begin
           //LIBERA TODAS OS ESTADOS PARA CONSUTA
           If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+EdCodigoCR.Text+#39+ ')')=True
           Then Begin
               XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
               EdDescricaoCR.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               EdCodigoCR.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           End
           Else Begin
               XConta:=-1;
               EdDescricaoCR.Text:='';
               EdCodigoCR.text:='';
           End;
       End
       Else Begin
           XConta:=0;
           EdDescricaoCR.Text:='';
           EdCodigoCR.text:='';
       End;
    End;
    Repaint;
end;

procedure TFAuditoria.EdCodigoCPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	 If Key = 13
    Then Begin
       If EdCodigoCP.Text<>''
       Then Begin
           //LIBERA TODAS OS ESTADOS PARA CONSUTA
           If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+EdCodigoCP.Text+#39+ ')')=True
           Then Begin
               XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
               EdDescricaoCP.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               EdCodigoCP.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           End
           Else Begin
               XConta:=-1;
               EdDescricaoCP.Text:='';
               EdCodigoCP.text:='';
           End;
       End
       Else Begin
           XConta:=0;
           EdDescricaoCP.Text:='';
           EdCodigoCP.text:='';
       End;
    End;
    Repaint;
end;

Procedure TFAuditoria.FiltraCaixa;
begin
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('select lancaixa.cod_lanc, lancaixa.cod_gerador, lancaixa.tipogerador,');
    DMESTOQUE.Alx1.SQL.Add('lancaixa.dtrefer, lancaixa.dtlanc, lancaixa.cod_plnctafil,');
    DMESTOQUE.Alx1.SQL.Add('lancaixa.historico, lancaixa.tipcai, lancaixa.tipo,');
    DMESTOQUE.Alx1.SQL.Add('lancaixa.valor, plncta.classificacao, plncta.descricao, usuario.login, lancaixa.doc');
    DMESTOQUE.Alx1.SQL.Add('from lancaixa left join plncta on lancaixa.cod_plnctafil = plncta.cod_plncta');
    DMESTOQUE.Alx1.SQL.Add('Left join usuario on usuario.codusuario = lancaixa.cod_usuario');
    DMESTOQUE.Alx1.SQL.Add('where lancaixa.cod_lanc > :COD');
    DMESTOQUE.Alx1.ParamByName('COD').AsInteger:=0;
    if Xconta > 0
    then begin
       DMESTOQUE.Alx1.SQL.Add('and plncta.cod_plncta = :PLANO');
       DMESTOQUE.Alx1.ParamByName('PLANO').AsInteger:=Xconta;
    end;
    if (EdDataIniCx.Text <> '  /  /    ') and (EdDataFimCx.Text <> '  /  /    ')
    then begin
       if RGTIPODTCX.ItemIndex = 0
       then begin
           DMESTOQUE.Alx1.SQL.Add('and lancaixa.dtlanc >= :DATA1');
           DMESTOQUE.Alx1.SQL.Add('and lancaixa.dtlanc <= :DATA2');
           DMESTOQUE.Alx1.ParamByName('DATA1').AsString:=EdDataIniCx.Text;
           DMESTOQUE.Alx1.ParamByName('DATA2').AsString:=EdDataFimCx.Text;
       end
       else begin
           DMESTOQUE.Alx1.SQL.Add('and lancaixa.dtrefer >= :DATA1');
           DMESTOQUE.Alx1.SQL.Add('and lancaixa.dtrefer <= :DATA2');
           DMESTOQUE.Alx1.ParamByName('DATA1').AsString:=EdDataIniCx.Text;
           DMESTOQUE.Alx1.ParamByName('DATA2').AsString:=EdDataFimCx.Text;
       end;
    end;
    DMESTOQUE.Alx1.Open;
end;

procedure TFAuditoria.FiltraBanco;
begin
    DMESTOQUE.Alx2.Close;
    DMESTOQUE.Alx2.SQL.Clear;
    DMESTOQUE.Alx2.SQL.Add('select movbanco.cod_movbanco, movbanco.cobranca, movbanco.dtref, movbanco.destinatarioch, movbanco.cod_plncta,');
    DMESTOQUE.Alx2.SQL.Add('movbanco.dtlanc, movbanco.dtmov, movbanco.dtvenc, movbanco.fech, movbanco.historico, ');
    DMESTOQUE.Alx2.SQL.Add('movbanco.tipoop, movbanco.valor, plncta.classificacao, plncta.descricao, movbanco.numcheque');
    DMESTOQUE.Alx2.SQL.Add('from movbanco left join plncta on movbanco.cod_plncta=plncta.cod_plncta');
    DMESTOQUE.Alx2.SQL.Add('where movbanco.cod_movbanco > :COD');
    DMESTOQUE.Alx2.ParamByName('COD').AsInteger:=0;
    if Xconta > 0
    then begin
       DMESTOQUE.Alx2.SQL.Add('and movbanco.cod_plncta = :PLANO');
       DMESTOQUE.Alx2.ParamByName('PLANO').AsInteger:=Xconta;
    end;
    if (EdDataIniBan.Text <> '  /  /    ') and (EdDataFimBan.Text <> '  /  /    ')
    then begin
       if RGTIPODTBAN.ItemIndex = 0
       then begin
           DMESTOQUE.Alx2.SQL.Add('and movbanco.dtlanc >= :DATA1');
           DMESTOQUE.Alx2.SQL.Add('and movbanco.dtlanc <= :DATA2');
           DMESTOQUE.Alx2.ParamByName('DATA1').AsString:=EdDataIniBan.Text;
           DMESTOQUE.Alx2.ParamByName('DATA2').AsString:=EdDataFimBan.Text;
       end;
       if RGTIPODTBAN.ItemIndex = 1
       then begin
           DMESTOQUE.Alx2.SQL.Add('and movbanco.dtvenc >= :DATA1');
           DMESTOQUE.Alx2.SQL.Add('and movbanco.dtvenc <= :DATA2');
           DMESTOQUE.Alx2.ParamByName('DATA1').AsString:=EdDataIniBan.Text;
           DMESTOQUE.Alx2.ParamByName('DATA2').AsString:=EdDataFimBan.Text;
       end;
       if RGTIPODTBAN.ItemIndex = 2
       then begin
           DMESTOQUE.Alx2.SQL.Add('and movbanco.dtmov >= :DATA1');
           DMESTOQUE.Alx2.SQL.Add('and movbanco.dtmov <= :DATA2');
           DMESTOQUE.Alx2.ParamByName('DATA1').AsString:=EdDataIniBan.Text;
           DMESTOQUE.Alx2.ParamByName('DATA2').AsString:=EdDataFimBan.Text;
       end;
       if RGTIPODTBAN.ItemIndex = 3
       then begin
           DMESTOQUE.Alx2.SQL.Add('and movbanco.dtref >= :DATA1');
           DMESTOQUE.Alx2.SQL.Add('and movbanco.dtref <= :DATA2');
           DMESTOQUE.Alx2.ParamByName('DATA1').AsString:=EdDataIniBan.Text;
           DMESTOQUE.Alx2.ParamByName('DATA2').AsString:=EdDataFimBan.Text;
       end;
    end;
    DMESTOQUE.Alx2.Open;
end;

procedure TFAuditoria.FiltraCheRec;
begin
    DMESTOQUE.Alx3.Close;
    DMESTOQUE.Alx3.SQL.Clear;
    DMESTOQUE.Alx3.SQL.Add('select movbanco.cod_movbanco, chequerec.cod_chequerec, movbanco.dtref, chequerec.numagencia, chequerec.numconta, movbanco.cod_plncta,');
    DMESTOQUE.Alx3.SQL.Add('movbanco.dtlanc, movbanco.dtvenc, movbanco.dtmov, movbanco.cod_usuario, movbanco.valor,');
    DMESTOQUE.alx3.SQL.Add('movbanco.numcheque, movbanco.historico, banco.descbanco, ctacor.numctacor,');
    DMESTOQUE.alx3.SQL.Add('plncta.classificacao, plncta.descricao, movbanco.fech,movbanco.cod_movbanco,chequerec.emitente, chequerec.cpfemit, chequerec.destino');
    DMESTOQUE.alx3.SQL.Add('from chequerec Left join movbanco ON chequerec.cod_movbanco = movbanco.cod_movbanco');
    DMESTOQUE.Alx3.SQL.Add('left join banco on banco.cod_banc = chequerec.cod_banco');
    DMESTOQUE.alx3.SQL.Add('left join ctacor on ctacor.cod_ctacor = movbanco.cod_ctacor');
    DMESTOQUE.Alx3.SQL.Add('left join plncta on plncta.cod_plncta = movbanco.cod_plncta');
    DMESTOQUE.Alx3.SQL.Add('where chequerec.cod_chequerec > :COD');
    DMESTOQUE.Alx3.ParamByName('COD').AsInteger:=0;
    if Xconta > 0
    then begin
       DMESTOQUE.Alx3.SQL.Add('and movbanco.cod_plncta = :PLANO');
       DMESTOQUE.Alx3.ParamByName('PLANO').AsInteger:=Xconta;
    end;
    if (EdDataIniCHERC.Text <> '  /  /    ') and (EdDataFimCHERC.Text <> '  /  /    ')
    then begin
       if RGTIPODTCHERC.ItemIndex = 0
       then begin
           DMESTOQUE.Alx3.SQL.Add('and movbanco.dtlanc >= :DATA1');
           DMESTOQUE.Alx3.SQL.Add('and movbanco.dtlanc <= :DATA2');
           DMESTOQUE.Alx3.ParamByName('DATA1').AsString:=EdDataIniCHERC.Text;
           DMESTOQUE.Alx3.ParamByName('DATA2').AsString:=EdDataFimCHERC.Text;
       end;
       if RGTIPODTCHERC.ItemIndex = 1
       then begin
           DMESTOQUE.Alx3.SQL.Add('and movbanco.dtvenc >= :DATA1');
           DMESTOQUE.Alx3.SQL.Add('and movbanco.dtvenc <= :DATA2');
           DMESTOQUE.Alx3.ParamByName('DATA1').AsString:=EdDataIniCHERC.Text;
           DMESTOQUE.Alx3.ParamByName('DATA2').AsString:=EdDataFimCHERC.Text;
       end;
       if RGTIPODTCHERC.ItemIndex = 2
       then begin
           DMESTOQUE.Alx3.SQL.Add('and movbanco.dtmov >= :DATA1');
           DMESTOQUE.Alx3.SQL.Add('and movbanco.dtmov <= :DATA2');
           DMESTOQUE.Alx3.ParamByName('DATA1').AsString:=EdDataIniCHERC.Text;
           DMESTOQUE.Alx3.ParamByName('DATA2').AsString:=EdDataFimCHERC.Text;
       end;
       if RGTIPODTCHERC.ItemIndex = 3
       then begin
           DMESTOQUE.Alx3.SQL.Add('and movbanco.dtref >= :DATA1');
           DMESTOQUE.Alx3.SQL.Add('and movbanco.dtref <= :DATA2');
           DMESTOQUE.Alx3.ParamByName('DATA1').AsString:=EdDataIniCHERC.Text;
           DMESTOQUE.Alx3.ParamByName('DATA2').AsString:=EdDataFimCHERC.Text;
       end;
    end;
    DMESTOQUE.Alx3.Open;
end;

procedure TFAuditoria.FiltraChePag;
begin

	 DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add ('select movbanco.cod_movbanco, movbanco.dtref, movbanco.cobranca, movbanco.cod_ctacor, movbanco.cod_plncta, movbanco.cod_usuario, movbanco.cod_plncta,');
    DMESTOQUE.Alx.SQL.Add ('movbanco.dtlanc, movbanco.dtmov, movbanco.dtvenc, movbanco.fech, movbanco.historico, movbanco.horalanc,');
    DMESTOQUE.Alx.SQL.Add ('movbanco.tipoop, movbanco.valor, plncta.classificacao, plncta.descricao, movbanco.numcheque,movbanco.ver, movbanco.cod_abbanco, movbanco.mark, movbanco.destinatarioch');
	 DMESTOQUE.Alx.SQL.Add ('from movbanco left join plncta on movbanco.cod_plncta=plncta.cod_plncta');
    DMESTOQUE.Alx.SQL.Add ('where movbanco.cod_movbanco > :COD');
    DMESTOQUE.Alx.ParamByName('COD').AsInteger:=0;
    if Xconta > 0
    then begin
       DMESTOQUE.Alx.SQL.Add('and movbanco.cod_plncta = :PLANO');
       DMESTOQUE.Alx.ParamByName('PLANO').AsInteger:=Xconta;
    end;
    if (EdDataIniCHEPG.Text <> '  /  /    ') and (EdDataFimCHEPG.Text <> '  /  /    ')
    then begin
       if RGTIPODTCHEPG.ItemIndex = 0
       then begin
           DMESTOQUE.Alx.SQL.Add('and movbanco.dtlanc >= :DATA1');
           DMESTOQUE.Alx.SQL.Add('and movbanco.dtlanc <= :DATA2');
           DMESTOQUE.Alx.ParamByName('DATA1').AsString:=EdDataIniCHEPG.Text;
           DMESTOQUE.Alx.ParamByName('DATA2').AsString:=EdDataFimCHEPG.Text;
       end;
       if RGTIPODTCHEPG.ItemIndex = 1
       then begin
           DMESTOQUE.Alx.SQL.Add('and movbanco.dtvenc >= :DATA1');
           DMESTOQUE.Alx.SQL.Add('and movbanco.dtvenc <= :DATA2');
           DMESTOQUE.Alx.ParamByName('DATA1').AsString:=EdDataIniCHEPG.Text;
           DMESTOQUE.Alx.ParamByName('DATA2').AsString:=EdDataFimCHEPG.Text;
       end;
       if RGTIPODTCHEPG.ItemIndex = 2
       then begin
           DMESTOQUE.Alx.SQL.Add('and movbanco.dtmov >= :DATA1');
           DMESTOQUE.Alx.SQL.Add('and movbanco.dtmov <= :DATA2');
           DMESTOQUE.Alx.ParamByName('DATA1').AsString:=EdDataIniCHEPG.Text;
           DMESTOQUE.Alx.ParamByName('DATA2').AsString:=EdDataFimCHEPG.Text;
       end;
       if RGTIPODTCHEPG.ItemIndex = 3
       then begin
           DMESTOQUE.Alx.SQL.Add('and movbanco.dtref >= :DATA1');
           DMESTOQUE.Alx.SQL.Add('and movbanco.dtref <= :DATA2');
           DMESTOQUE.Alx.ParamByName('DATA1').AsString:=EdDataIniCHEPG.Text;
           DMESTOQUE.Alx.ParamByName('DATA2').AsString:=EdDataFimCHEPG.Text;
       end;
    end;
    DMESTOQUE.Alx.Open;

end;

procedure TFAuditoria.FiltraCtaRec;
begin
    DMESTOQUE.Alx4.Close;
    DMESTOQUE.Alx4.SQL.Clear;
    DMESTOQUE.Alx4.SQL.Add('select ctareceber.cod_ctareceber, parcelacr.cobranca, parcelacr.dtdebito, parcelacr.dtref,');
    DMESTOQUE.Alx4.SQL.Add('parcelacr.dtvenc, parcelacr.fech, parcelacr.historico, parcelacr.numparc, parcelacr.cod_parcelacr,');
    DMESTOQUE.Alx4.SQL.Add('parcelacr.valor, parcelacr.valorpg, parcelacr.valorprod, parcelacr.valorserv,');
    DMESTOQUE.alx4.SQL.Add('ctareceber.dtlanc, cliente.cod_interno, pessoa.nome, plncta.classificacao, ctareceber.cod_plncta,');
    DMESTOQUE.alx4.SQL.Add('plncta.descricao, usuario.login, ctareceber.tipogerador, ctareceber.cod_gerador');
    DMESTOQUE.alx4.SQL.Add('from parcelacr');
    DMESTOQUE.alx4.SQL.Add('left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
    DMESTOQUE.alx4.SQL.Add('left join usuario on ctareceber.cod_usuario = usuario.codusuario');
    DMESTOQUE.alx4.SQL.Add('left join plncta on ctareceber.cod_plncta = plncta.cod_plncta');
    DMESTOQUE.alx4.SQL.Add('left join cliente on ctareceber.cod_cliente = cliente.cod_cliente');
    DMESTOQUE.alx4.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
    DMESTOQUE.alx4.SQL.Add ('where parcelacr.cod_parcelacr > :COD');
    DMESTOQUE.alx4.ParamByName('COD').AsInteger:=0;
    if Xconta > 0
    then begin
       DMESTOQUE.alx4.SQL.Add('and ctareceber.cod_plncta = :PLANO');
       DMESTOQUE.alx4.ParamByName('PLANO').AsInteger:=Xconta;
    end;
    if (EdDataIniCR.Text <> '  /  /    ') and (EdDataFimCR.Text <> '  /  /    ')
    then begin
       if RGTIPODTCR.ItemIndex = 0
       then begin
           DMESTOQUE.alx4.SQL.Add('and ctareceber.dtlanc >= :DATA1');
           DMESTOQUE.alx4.SQL.Add('and ctareceber.dtlanc <= :DATA2');
           DMESTOQUE.alx4.ParamByName('DATA1').AsString:=EdDataIniCR.Text;
           DMESTOQUE.alx4.ParamByName('DATA2').AsString:=EdDataFimCR.Text;
       end;
       if RGTIPODTCR.ItemIndex = 1
       then begin
           DMESTOQUE.alx4.SQL.Add('and parcelacr.dtvenc >= :DATA1');
           DMESTOQUE.alx4.SQL.Add('and parcelacr.dtvenc <= :DATA2');
           DMESTOQUE.alx4.ParamByName('DATA1').AsString:=EdDataIniCR.Text;
           DMESTOQUE.alx4.ParamByName('DATA2').AsString:=EdDataFimCR.Text;
       end;
       if RGTIPODTCR.ItemIndex = 2
       then begin
           DMESTOQUE.alx4.SQL.Add('and parcelacr.dtdebito >= :DATA1');
           DMESTOQUE.alx4.SQL.Add('and parcelacr.dtdebito <= :DATA2');
           DMESTOQUE.alx4.ParamByName('DATA1').AsString:=EdDataIniCR.Text;
           DMESTOQUE.alx4.ParamByName('DATA2').AsString:=EdDataFimCR.Text;
       end;
       if RGTIPODTCR.ItemIndex = 3
       then begin
           DMESTOQUE.alx4.SQL.Add('and parcelacr.dtref >= :DATA1');
           DMESTOQUE.alx4.SQL.Add('and parcelacr.dtref <= :DATA2');
           DMESTOQUE.alx4.ParamByName('DATA1').AsString:=EdDataIniCR.Text;
           DMESTOQUE.alx4.ParamByName('DATA2').AsString:=EdDataFimCR.Text;
       end;
    end;
    DMESTOQUE.Alx4.Open;
end;

procedure TFAuditoria.FiltraCtaPag;
begin
    DMESTOQUE.Alx5.Close;
    DMESTOQUE.Alx5.SQL.Clear;
    DMESTOQUE.alx5.SQL.Add('select parcelacp.cobranca, parcelacp.dtdebito, parcelacp.dtref, ctapagar.dtlanc,');
    DMESTOQUE.alx5.SQL.Add('parcelacp.dtvenc, parcelacp.fech, parcelacp.historico, parcelacp.numparc, ctapagar.cod_ctapagar,');
    DMESTOQUE.alx5.SQL.Add('parcelacp.tipo, parcelacp.valor, parcelacp.valorpg, ctapagar.dtlanc, parcelacp.cod_parcelacp,');
    DMESTOQUE.alx5.SQL.Add('ctapagar.numdoc, ctapagar.tipogerador, ctapagar.cod_gerador, pessoa.nome, ctapagar.cod_plncta,');
    DMESTOQUE.Alx5.SQL.Add('usuario.login, plncta.classificacao, plncta.descricao, fornecedor.cod_interno');
    DMESTOQUE.Alx5.SQL.Add('from parcelacp');
    DMESTOQUE.alx5.SQL.Add('left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar');
    DMESTOQUE.alx5.SQL.Add('left join plncta on ctapagar.cod_plncta = plncta.cod_plncta');
    DMESTOQUE.alx5.SQL.Add('left join usuario on ctapagar.cod_usuario = usuario.codusuario');
    DMESTOQUE.alx5.SQL.Add('left join fornecedor on ctapagar.cod_fornec = fornecedor.cod_fornec');
    DMESTOQUE.Alx5.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
    DMESTOQUE.Alx5.SQL.Add ('where parcelacp.cod_parcelacp > :COD');
    DMESTOQUE.Alx5.ParamByName('COD').AsInteger:=0;
    if Xconta > 0
    then begin
       DMESTOQUE.Alx5.SQL.Add('and ctapagar.cod_plncta = :PLANO');
       DMESTOQUE.Alx5.ParamByName('PLANO').AsInteger:=Xconta;
    end;
    if (EdDataIniCP.Text <> '  /  /    ') and (EdDataFimCP.Text <> '  /  /    ')
    then begin
       if RGTIPODTCP.ItemIndex = 0
       then begin
           DMESTOQUE.Alx5.SQL.Add('and ctapagar.dtlanc >= :DATA1');
           DMESTOQUE.Alx5.SQL.Add('and ctapagar.dtlanc <= :DATA2');
           DMESTOQUE.Alx5.ParamByName('DATA1').AsString:=EdDataIniCP.Text;
           DMESTOQUE.Alx5.ParamByName('DATA2').AsString:=EdDataFimCP.Text;
       end;
       if RGTIPODTCP.ItemIndex = 1
       then begin
           DMESTOQUE.Alx5.SQL.Add('and parcelacp.dtvenc >= :DATA1');
           DMESTOQUE.Alx5.SQL.Add('and parcelacp.dtvenc <= :DATA2');
           DMESTOQUE.Alx5.ParamByName('DATA1').AsString:=EdDataIniCP.Text;
           DMESTOQUE.Alx5.ParamByName('DATA2').AsString:=EdDataFimCP.Text;
       end;
       if RGTIPODTCP.ItemIndex = 2
       then begin
           DMESTOQUE.Alx5.SQL.Add('and parcelacp.dtdebito >= :DATA1');
           DMESTOQUE.Alx5.SQL.Add('and parcelacp.dtdebito <= :DATA2');
           DMESTOQUE.Alx5.ParamByName('DATA1').AsString:=EdDataIniCP.Text;
           DMESTOQUE.Alx5.ParamByName('DATA2').AsString:=EdDataFimCP.Text;
       end;
       if RGTIPODTCP.ItemIndex = 3
       then begin
           DMESTOQUE.Alx5.SQL.Add('and parcelacp.dtref >= :DATA1');
           DMESTOQUE.Alx5.SQL.Add('and parcelacp.dtref <= :DATA2');
           DMESTOQUE.Alx5.ParamByName('DATA1').AsString:=EdDataIniCP.Text;
           DMESTOQUE.Alx5.ParamByName('DATA2').AsString:=EdDataFimCP.Text;
       end;
    end;
    DMESTOQUE.Alx5.Open;
end;

procedure TFAuditoria.FiltraData;
var
XJuncao: String;
TIPODT: STRING;
begin
	  if Audit.ActivePageIndex = 0 // se for aba CAIXA
     then begin
      FiltraCaixa;

      If (EdDataIniCx.Text <> '  /  /    ') and (EdDataFimCx.Text <> '  /  /    ')
         Then Begin
             Case RGTIPODTCX.ItemIndex of
                 0: TIPODT:='ctapagar.dtlanc';
                 1: TIPODT:='parcelacp.dtvenc';
                 2: TIPODT:='parcelacp.DTDEBITO';
                // 3: TIPODT:=
             End;

             DMESTOQUE.Alx.SQL.Add('and (' + TIPODT + ' between :data1 and :data2)');
             DMESTOQUE.Alx.ParamByName('DATA1').AsDateTime := StrToDate(EdDataIniCx.Text);
             DMESTOQUE.Alx.ParamByName('DATA2').AsDateTime := StrToDate(EdDataFimCx.Text);

         End;

         XJuncao := 'and';

       // verifica se foi escolhido algum plano de conta
       If EDCodigoCx.Text <> ''
         Then Begin
             DMESTOQUE.Alx.SQL.Add('and (plncta.classificacao = :codigo )');
             DMESTOQUE.Alx.ParamByName('codigo').AsString := EDCodigoCx.Text;
         End;

      end;

    if Audit.ActivePageIndex = 1 // se for aba BANCO
    then begin

      FiltraBanco;

      If (EdDataIniBan.Text <> '  /  /    ') and (EdDataFimBan.Text <> '  /  /    ')
         Then Begin
             Case RGTIPODTBAN.ItemIndex of
                 0: TIPODT:='ctapagar.dtlanc';
                 1: TIPODT:='parcelacp.dtvenc';
                 2: TIPODT:='parcelacp.DTDEBITO';
                // 3: TIPODT:=
             End;

             DMESTOQUE.Alx.SQL.Add('and (' + TIPODT + ' between :data1 and :data2)');
             DMESTOQUE.Alx.ParamByName('DATA1').AsDateTime := StrToDate(EdDataIniBan.Text);
             DMESTOQUE.Alx.ParamByName('DATA2').AsDateTime := StrToDate(EdDataFimBan.Text);

         End;
       // verifica se foi escolhido algum plano de conta
       If EdCodigoBan.Text <> ''
         Then Begin
             DMESTOQUE.Alx.SQL.Add('and (plncta.classificacao = :codigo )');
             DMESTOQUE.Alx.ParamByName('codigo').AsString := EdCodigoBan.Text;

         End;
    end;

    if Audit.ActivePageIndex = 2 // se for aba CHEQUES A RECEBER
    then begin

      FiltraCheRec;

      If (EdDataIniCHERC.Text <> '  /  /    ') and (EdDataFimCHERC.Text <> '  /  /    ')
         Then Begin
             Case RGTIPODTCHERC.ItemIndex of
                 0: TIPODT:='ctapagar.dtlanc';
                 1: TIPODT:='parcelacp.dtvenc';
                 2: TIPODT:='parcelacp.DTDEBITO';
                // 3: TIPODT:=
             End;

             DMESTOQUE.Alx.SQL.Add('and (' + TIPODT + ' between :data1 and :data2)');
             DMESTOQUE.Alx.ParamByName('DATA1').AsDateTime := StrToDate(EdDataIniCHERC.Text);
             DMESTOQUE.Alx.ParamByName('DATA2').AsDateTime := StrToDate(EdDataFimCHERC.Text);

         End;
       // verifica se foi escolhido algum plano de conta
       If EdCodigoCHERC.Text <> ''
         Then Begin
             DMESTOQUE.Alx.SQL.Add('and (plncta.classificacao = :codigo )');
             DMESTOQUE.Alx.ParamByName('codigo').AsString := EdCodigoCHERC.Text;

         End;
    end;

    if Audit.ActivePageIndex = 3 // se for aba CHEQUES A PAGAR
    then begin

      FiltraChePag;

      If (EdDataIniCHEPG.Text <> '  /  /    ') and (EdDataFimCHEPG.Text <> '  /  /    ')
         Then Begin
             Case RGTIPODTCHERC.ItemIndex of
                 0: TIPODT:='ctapagar.dtlanc';
                 1: TIPODT:='parcelacp.dtvenc';
                 2: TIPODT:='parcelacp.DTDEBITO';
                // 3: TIPODT:=
             End;

             DMESTOQUE.Alx.SQL.Add('and (' + TIPODT + ' between :data1 and :data2)');
             DMESTOQUE.Alx.ParamByName('DATA1').AsDateTime := StrToDate(EdDataIniCHEPG.Text);
             DMESTOQUE.Alx.ParamByName('DATA2').AsDateTime := StrToDate(EdDataFimCHEPG.Text);

         End;
       // verifica se foi escolhido algum plano de conta
       If EdCodigoCHEPG.Text <> ''
         Then Begin
             DMESTOQUE.Alx.SQL.Add('and (plncta.classificacao = :codigo )');
             DMESTOQUE.Alx.ParamByName('codigo').AsString := EdCodigoCHEPG.Text;

         End;
    end;

    if Audit.ActivePageIndex = 4 // se for aba CONTAS A RECEBER
    then begin

      FiltraCtaRec;

      If (EdDataIniCR.Text <> '  /  /    ') and (EdDataFimCR.Text <> '  /  /    ')
         Then Begin
             Case RGTIPODTCR.ItemIndex of
                 0: TIPODT:='ctapagar.dtlanc';
                 1: TIPODT:='parcelacp.dtvenc';
                 2: TIPODT:='parcelacp.DTDEBITO';
                // 3: TIPODT:=
             End;

             DMESTOQUE.Alx.SQL.Add('and (' + TIPODT + ' between :data1 and :data2)');
             DMESTOQUE.Alx.ParamByName('DATA1').AsDateTime := StrToDate(EdDataIniCR.Text);
             DMESTOQUE.Alx.ParamByName('DATA2').AsDateTime := StrToDate(EdDataFimCR.Text);

         End;
       // verifica se foi escolhido algum plano de conta
       If EdCodigoCR.Text <> ''
         Then Begin
             DMESTOQUE.Alx.SQL.Add('and (plncta.classificacao = :codigo )');
             DMESTOQUE.Alx.ParamByName('codigo').AsString := EdCodigoCR.Text;

         End;
    end;

    if Audit.ActivePageIndex = 5 // se for aba CONTAS A PAGAR
    then begin

      FiltraCtaPag;

      If (EdDataIniCP.Text <> '  /  /    ') and (EdDataFimCP.Text <> '  /  /    ')
         Then Begin
             Case RGTIPODTCP.ItemIndex of
                 0: TIPODT:='ctapagar.dtlanc';
                 1: TIPODT:='parcelacp.dtvenc';
                 2: TIPODT:='parcelacp.DTDEBITO';
                // 3: TIPODT:=
             End;

             DMESTOQUE.Alx.SQL.Add('and (' + TIPODT + ' between :data1 and :data2)');
             DMESTOQUE.Alx.ParamByName('DATA1').AsDateTime := StrToDate(EdDataIniCP.Text);
             DMESTOQUE.Alx.ParamByName('DATA2').AsDateTime := StrToDate(EdDataFimCP.Text);

         End;
       // verifica se foi escolhido algum plano de conta
       If EdCodigoCP.Text <> ''
         Then Begin
             DMESTOQUE.Alx.SQL.Add('and (plncta.classificacao = :codigo )');
             DMESTOQUE.Alx.ParamByName('codigo').AsString := EdCodigoCP.Text;

         End;
    end;

end;



procedure TFAuditoria.BtSqlCaixaClick(Sender: TObject);
begin
  //inherited;
   PSQL.BringToFront;
   PSQL.Visible:=True;
end;

procedure TFAuditoria.BtFiltraCaixaClick(Sender: TObject);
begin
  inherited;
   FiltraCaixa;
end;

procedure TFAuditoria.BtFiltraBancoClick(Sender: TObject);
begin
  inherited;
   FiltraBanco;
end;

procedure TFAuditoria.BtFiltraChRecClick(Sender: TObject);
begin
  inherited;
   FiltraCheRec;
end;

procedure TFAuditoria.BtFiltraChPagClick(Sender: TObject);
begin
  inherited;
   FiltraChePag;
end;

procedure TFAuditoria.BtFiltraRecClick(Sender: TObject);
begin
  inherited;
   FiltraCtaRec;
end;

procedure TFAuditoria.BtFiltraPagClick(Sender: TObject);
begin
  inherited;
   FiltraCtaPag;
end;

procedure TFAuditoria.AuditChange(Sender: TObject);
begin
  inherited;
  Xconta:=-1;
end;


end.

