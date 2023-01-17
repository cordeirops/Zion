unit UCadReducaoZ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, ExtCtrls, TFlatHintUnit, Grids, DBGrids, TFlatEditUnit,
  StdCtrls, Buttons, Mask, DBCtrls, DBColorEdit, jpeg, DrLabel;

type
  TFCadReducaoZ = class(TFCadPadraoDesc)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    DBColorEdit17: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Label15: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    EdNumSerie: TEdit;
    EdQtdReduc: TEdit;
    EdQtdReinicio: TEdit;
    EdDesconto: TEdit;
    EdCupomIni: TEdit;
    EdCancelamento: TEdit;
    EdVendBruta: TEdit;
    EdNumOrdem: TEdit;
    EdCupomFim: TEdit;
    EdSubTrib: TEdit;
    EdTotalGeral: TEdit;
    Alq01: TEdit;
    Alq02: TEdit;
    Alq03: TEdit;
    Alq04: TEdit;
    Alq05: TEdit;
    Vlr01: TEdit;
    Vlr02: TEdit;
    Vlr03: TEdit;
    Vlr04: TEdit;
    Vlr05: TEdit;
    Imp01: TEdit;
    Imp02: TEdit;
    Imp03: TEdit;
    Imp04: TEdit;
    Imp05: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    EdDtEmissao: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
   procedure BtnGravarClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure DBPRIMEIROExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
//    procedure DBColorEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadReducaoZ: TFCadReducaoZ;
  XVarZ,Xflag, XEditar, XEdiT:Boolean;
  XImp1,XImp2,XImp3,XImp4,XImp5: Real;
implementation

uses UDMFinanc, UDMFiscal, Alxor32, AlxMessage, UMenu, URelData,
  UPeriodoFiscal, UCadPadrao, UnitDeclaracoes, UDMEstoque, UPadrao, DB;

{$R *.DFM}

procedure TFCadReducaoZ.FormActivate(Sender: TObject);
begin

    inherited;

    XTabela:=DMFiscal.TR60;
    XCampo:='DTEMISSAO';
    XPkTabela:='COD_R60';
    XTransaction:=DMFiscal.IBTFiscal;
    XTab:=True;
    XDescricao:='O Registro';
    XSQLTABELA:='R60';
  	 XLiberaDados:=' ORDER BY DTEMISSAO desc';
	 LiberaDados;
    PConsulta.BringToFront;
    PConsulta.Visible:=true;
    PCadastro.SendToBack;
    PCadastro.Visible:=false;
//    PBotoes.Visible:=true;
//    PBotoes.BringToFront;
    DBPRIMEIRO.DataSource:=DMFiscal.DReg60;
    DBDESC.DataSource:=DMFiscal.DReg60;
    DBGridCadastroPadrao.DataSource:=DMFiscal.DReg60;
    DBPRIMEIRO.Visible:=True;
    DBPRIMEIRO.BringToFront;
    DBDESC.Visible:=True;
    DBDESC.BringToFront;
    EdDtEmissao.Visible:=false;
    EdNumSerie.Visible:=false;
    DBPRIMEIRO.Enabled:=true;
	 DBDESC.Enabled:=true;
	 EdNumOrdem.Enabled:=true;
    Xflag:=False;

    if(XEdiT = false)then
    begin
    	//Paulo 04/08/2010: Abre o form com os dados capturados da Impressora ECF
       DBPRIMEIRO.Visible:=false;
    	DBPRIMEIRO.SendToBack;
    	DBDESC.Visible:=False;
    	DBDESC.SendToBack;
       EdDtEmissao.Visible:=true;
       EdNumSerie.Visible:=true;
       EdDtEmissao.BringToFront;
       EdNumOrdem.BringToFront;
       Label16.Visible:=False;
       Label17.Visible:=False;
       EdDtEmissao.Text:= XDataRZ;
       EdNumSerie.Text:= XNserie;
    	EdNumOrdem.Text := XNequip;
    	EdQtdReduc.Text := XReducZ;
       EdCupomIni.Text := XCuponIn;
       EdCupomFim.Text := XCuponFim;
    	EdQtdReinicio.Text := XReinicio;
    	EdCancelamento.Text := XCancel;
    	EdSubTrib.Text:= XSubTrib;
    	EdDesconto.Text := XDesconto;
    	EdVendBruta.Text := XVendBruta;
    	EdTotalGeral.Text := XTotGeral;
    	Alq01.Text := XAlq1;
    	Alq02.Text := XAlq2;
    	Alq03.Text := XAlq3;
    	Alq04.Text := XAlq4;
    	Alq05.Text := XAlq5;
       Vlr01.Text := XVlr1;
    	Vlr02.Text := XVlr2;
    	Vlr03.Text := XVlr3;
    	Vlr04.Text := XVlr4;
    	Vlr05.Text := XVlr5;
       //Paulo 20/08/2010: Faz os calculos para os impostos
       if(Alq01.Text = '07')then
       begin
       	XImp1:= StrToFloat(XVlr1);
       	Imp01.Text:= FloatToStr(XImp1 * 0.07);
       end;
       if(Alq01.Text = '12')then
       begin
       	XImp1:= StrToFloat(XVlr1);
       	Imp01.Text:= FloatToStr(XImp1 * 0.12);
       end;
       if(Alq01.Text = '18')then
       begin
       	XImp1:= StrToFloat(XVlr1);
       	Imp01.Text:= FloatToStr(XImp1 * 0.18);
       end;
       if(Alq01.Text = '25')then
       begin
       	XImp1:= StrToFloat(XVlr1);
       	Imp01.Text:= FloatToStr(XImp1 * 0.25);
       end;
       if(Alq01.Text = '27')then
       begin
       	XImp1:= StrToFloat(XVlr1);
       	Imp01.Text:= FloatToStr(XImp1 * 0.27);
       end;

       if(Alq02.Text = '07')then
       begin
       	XImp2:= StrToFloat(XVlr2);
       	Imp02.Text:= FloatToStr(XImp2 * 0.07);
       end;
       if(Alq02.Text = '12')then
       begin
       	XImp2:= StrToFloat(XVlr2);
       	Imp02.Text:= FloatToStr(XImp2 * 0.12);
       end;
       if(Alq02.Text = '18')then
       begin
       	XImp2:= StrToFloat(XVlr2);
       	Imp02.Text:= FloatToStr(XImp2 * 0.18);
       end;
       if(Alq02.Text = '25')then
       begin
       	XImp2:= StrToFloat(XVlr2);
       	Imp02.Text:= FloatToStr(XImp2 * 0.25);
       end;
       if(Alq02.Text = '27')then
       begin
       	XImp2:= StrToFloat(XVlr2);
       	Imp02.Text:= FloatToStr(XImp2 * 0.27);
       end;

       if(Alq03.Text = '07')then
       begin
       	XImp3:= StrToFloat(XVlr3);
       	Imp03.Text:= FloatToStr(XImp3 * 0.07);
       end;
       if(Alq03.Text = '12')then
       begin
       	XImp3:= StrToFloat(XVlr3);
       	Imp03.Text:= FloatToStr(XImp3 * 0.12);
       end;
       if(Alq03.Text = '18')then
       begin
       	XImp3:= StrToFloat(XVlr3);
       	Imp03.Text:= FloatToStr(XImp3 * 0.18);
       end;
       if(Alq03.Text = '25')then
       begin
       	XImp3:= StrToFloat(XVlr3);
       	Imp03.Text:= FloatToStr(XImp3 * 0.25);
       end;
       if(Alq03.Text = '27')then
       begin
       	XImp3:= StrToFloat(XVlr3);
       	Imp03.Text:= FloatToStr(XImp3 * 0.27);
       end;

       if(Alq04.Text = '07')then
       begin
       	XImp4:= StrToFloat(XVlr4);
       	Imp04.Text:= FloatToStr(XImp4 * 0.07);
       end;
       if(Alq04.Text = '12')then
       begin
       	XImp4:= StrToFloat(XVlr4);
       	Imp04.Text:= FloatToStr(XImp4 * 0.12);
       end;
       if(Alq04.Text = '18')then
       begin
       	XImp4:= StrToFloat(XVlr4);
       	Imp04.Text:= FloatToStr(XImp4 * 0.18);
       end;
       if(Alq04.Text = '25')then
       begin
       	XImp4:= StrToFloat(XVlr4);
       	Imp04.Text:= FloatToStr(XImp4 * 0.25);
       end;
       if(Alq04.Text = '27')then
       begin
       	XImp4:= StrToFloat(XVlr4);
       	Imp04.Text:= FloatToStr(XImp4 * 0.27);
       end;

       if(Alq05.Text = '07')then
       begin
       	XImp5:= StrToFloat(XVlr5);
       	Imp05.Text:= FloatToStr(XImp5 * 0.07);
       end;
       if(Alq05.Text = '12')then
       begin
       	XImp5:= StrToFloat(XVlr5);
       	Imp05.Text:= FloatToStr(XImp5 * 0.12);
       end;
       if(Alq05.Text = '18')then
       begin
       	XImp5:= StrToFloat(XVlr5);
       	Imp05.Text:= FloatToStr(XImp5 * 0.18);
       end;
       if(Alq05.Text = '25')then
       begin
       	XImp5:= StrToFloat(XVlr5);
       	Imp05.Text:= FloatToStr(XImp5 * 0.25);
       end;
       if(Alq05.Text = '27')then
       begin
       	XImp5:= StrToFloat(XVlr5);
       	Imp05.Text:= FloatToStr(XImp5 * 0.27);
       end;
       //Paulo 04/08/2010: Para isento
    	if(XVlr3 = '0,00')then
    	begin
    		if(XInsencao <> '0,00')then
       	begin
           	Alq03.Text:= '0';
            	Imp03.Text:= XInsencao;
            	Vlr03.Text:= XInsencao;
               Alq04.Text:= '0';
               Vlr04.Text:= '0';
               Imp04.Text:= '0';
               Alq05.Text:= '0';
               Vlr05.Text:= '0';
               Imp05.Text:= '0';
       	end;
      	end
       else begin
    		if(XVlr4 = '0,00')then
    		begin
    			if(XInsencao <> '0,00')then
       		begin
           		Alq04.Text:= '0';
            		Imp04.Text:= XInsencao;
            		Vlr04.Text:= XInsencao;
               	Alq05.Text:= '0';
               	Vlr05.Text:= '0';
               	Imp05.Text:= '0';
       		end;
       	end

       else
    		if(XVlr5 = '0,00')then
           begin
    			if(XInsencao <> '0,00')then
       			begin
           		Alq05.Text:= '0';
            		Imp05.Text:= XInsencao;
            		Vlr05.Text:= XInsencao;
       		end;
       	end;
       end;

       if(Imp01.Text = 'Imp01')or(XImp1 = 0)then
       begin
          Imp01.Text:= '0,00';
       end;
       if(Imp02.Text = 'Imp02')or(XImp2 = 0)then
       begin
          Imp02.Text:= '0,00';
       end;
       if(Imp03.Text = 'Imp03')or(XImp3 = 0)then
       begin
          Imp03.Text:= '0,00';
       end;
       if(Imp04.Text = 'Imp04')or(XImp4 = 0)then
       begin
          Imp04.Text:= '0,00';
       end;
       if(Imp05.Text = 'Imp05')or(XImp5 = 0)then
       begin
          Imp05.Text:= '0,00';
       end;

       if (XVarZ = true)then
       begin
       	DMESTOQUE.Alx.Close;
   		DMESTOQUE.Alx.SQL.Clear;
   		DMESTOQUE.Alx.SQL.Add('SELECT max(NCONTREDZ) FROM R60');
   		DMESTOQUE.Alx.Open;
           XAlx:= DMESTOQUE.Alx.FieldByName('max').AsInteger;

           DMESTOQUE.Alx.Close;
   		DMESTOQUE.Alx.SQL.Clear;
   		DMESTOQUE.Alx.SQL.Add('SELECT dtemissao,numserie,numordem,ncontredz,ncontfim,contreinicio FROM R60');
           DMESTOQUE.Alx.SQL.Add('WHERE ncontredz = :ULTIMAREDZ');
           DMESTOQUE.Alx.ParamByName('ULTIMAREDZ').AsInteger:=XAlx;;
   		DMESTOQUE.Alx.Open;

           EdDtEmissao.Text:= DateToStr(DMESTOQUE.Alx.FieldByName('dtemissao').AsDateTime);
    		EdNumSerie.Text:= DMESTOQUE.Alx.FieldByName('numserie').AsString;
    		EdNumOrdem.Text := IntToStr(DMESTOQUE.Alx.FieldByName('numordem').AsInteger);
    		EdQtdReduc.Text := IntToStr(DMESTOQUE.Alx.FieldByName('ncontredz').AsInteger+1);
       	EdCupomIni.Text := IntToStr(DMESTOQUE.Alx.FieldByName('ncontfim').AsInteger+1);
           EdQtdReinicio.Text := IntToStr(DMESTOQUE.Alx.FieldByName('contreinicio').AsInteger);

       end;



    	MessageDlg('Verifique se os dados na tela são os mesmos da redução Z.', mtCustom, [mbOK], 0);

    	PConsulta.Visible:=False;
    	PCadastro.Visible:=TRUE;
    	PCadastro.BringToFront;
//    	PBotoes.Visible:=False;
    	BtnCancelar.Visible:=False;
    end;
end;

procedure TFCadReducaoZ.BtnNovoClick(Sender: TObject);
VAR
	NUMSER, NUMORD: String;
begin
	DBPRIMEIRO.Enabled:=True;
   DBDESC.Enabled:=True;
   EdNumOrdem.Enabled:=True;
   EdNumOrdem.Visible:=true;
   NUMSER:=XTabela.FieldByName('NUMSERIE').AsString;
   NUMORD:=XTabela.FieldByName('NUMORDEM').AsString;
   inherited;
  	XTabela.FieldByName('DTEMISSAO').AsString:=DateToStr(Date());
	XTabela.FieldByName('NUMSERIE').AsString:=NUMSER;
	XTabela.FieldByName('NUMORDEM').AsString:=NUMORD;

   //Paulo 10/08/2010: limpa campos e adiciona +1 em alguns campos
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT max(NCONTREDZ) FROM R60');
   DMESTOQUE.Alx.Open;
   XAlx:= DMESTOQUE.Alx.FieldByName('max').AsInteger;

   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT dtemissao,numserie,numordem,ncontredz,ncontfim,contreinicio FROM R60');
   DMESTOQUE.Alx.SQL.Add('WHERE ncontredz = :ULTIMAREDZ');
   DMESTOQUE.Alx.ParamByName('ULTIMAREDZ').AsInteger:=XAlx;
   DMESTOQUE.Alx.Open;


   EdNumSerie.Text:= DMESTOQUE.Alx.FieldByName('numserie').AsString;
   EdNumOrdem.Text := DMESTOQUE.Alx.FieldByName('numordem').AsString;
   EdQtdReduc.Text := IntToStr(DMESTOQUE.Alx.FieldByName('ncontredz').AsInteger+1);
   EdCupomIni.Text := IntToStr(DMESTOQUE.Alx.FieldByName('ncontfim').AsInteger+1);
   EdQtdReinicio.Text := IntToStr(DMESTOQUE.Alx.FieldByName('contreinicio').AsInteger);

   EdDtEmissao.Text:='';
   EdCupomFim.Text:='0';
   EdCancelamento.Text:='0';
   EdSubTrib.Text:='0';
   EdDesconto.Text:='0';
   EdVendBruta.Text:='0';
   EdTotalGeral.Text:='0';
   Alq01.Text:='0';
   Alq02.Text:='0';
   Alq03.Text:='0';
   Alq04.Text:='0';
   Alq05.Text:='0';
   Imp01.Text:='0';
   Imp02.Text:='0';
   Imp03.Text:='0';
   Imp04.Text:='0';
   Imp05.Text:='0';
   Vlr01.Text:='0';
   Vlr02.Text:='0';
   Vlr03.Text:='0';
   Vlr04.Text:='0';
   Vlr05.Text:='0';
   Label16.Visible:=False;
   Label17.Visible:=False;
   XEditar:=False;
   Xflag:=true;
   DBPRIMEIRO.Visible:=false;
   DBDESC.visible:=false;
   EdDtEmissao.Visible:=true;
   EdNumSerie.Visible:=true;
   XVarZ:=true;

end;

procedure TFCadReducaoZ.BtnGravarClick(Sender: TObject);
var XConta, XAlx:Integer;

begin
{
	//VALIDA CAMPOS
   If XTabela.FieldByName('DTEMISSAO').AsString='  /  /    '
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA!', 'Por favor informe a data de emissão da redução!', '', 1, 1, False, 'I');
		//DBPRIMEIRO.SetFocus;
       Exit;
   End;
   If XTabela.FieldByName('NUMSERIE').AsString=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA!', 'Por favor informe o Nº de Série do equipamento fiscal da redução!', '', 1, 1, False, 'I');
		//DBDESC.SetFocus;
       Exit;
   End;
   If XTabela.FieldByName('NUMORDEM').AsString=''
   Then Begin
 		Mensagem('OPÇÃO BLOQUEADA!', 'Por favor informe O Nº de Ordem do equipamento fiscal da redução!', '', 1, 1, False, 'I');
		//DBColorEdit1.SetFocus;
       Exit;
   End;
   If XTabela.FieldByName('NCONTINI').AsString=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA!', 'Por favor informe do 1º Cupom da redução!', '', 1, 1, False, 'I');
		//DBColorEdit4.SetFocus;
       Exit;
   End;
   If XTabela.FieldByName('NCONTFIM').AsString=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA!', 'Por favor informe da redução!', '', 1, 1, False, 'I');
		//DBColorEdit3.SetFocus;
       Exit;
   End;
   If XTabela.FieldByName('NCONTREDZ').AsString=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA!', 'Por favor informe a quantidade de reduções!', '', 1, 1, False, 'I');
		//DBColorEdit2.SetFocus;
       Exit;
   End;
   If XTabela.FieldByName('VLRVNDBRUTA').AsString=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA!', 'Por favor informe o valor de venda bruta da redução!', '', 1, 1, False, 'I');
		//DBColorEdit9.SetFocus;
       Exit;
   End;
   If XTabela.FieldByName('VLRTGERAL').AsString=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA!', 'Por favor informe o total geral da redução!', '', 1, 1, False, 'I');
		//DBColorEdit8.SetFocus;
       Exit;
   End;


	//Verifica se existe periodo fiscal diponivel para operação
	DMFiscal.TAlx.Close;
   DMFiscal.TAlx.SQL.Clear;
   DMFiscal.TAlx.SQL.Add(' select * from periodofiscal where (periodofiscal.dtfinal>=:DT) AND (periodofiscal.dtinicial<=:DT) ');
   DMFiscal.TAlx.ParamByName('DT').AsDate:=StrToDate(DBPRIMEIRO.Text);
   DMFiscal.TAlx.Open;
   If DMFiscal.TAlx.IsEmpty
   Then Begin
		Mensagem('ATENÇÃO!', 'não existe um período fiscal para a data informada!', '', 1, 1, False, 'I');
       Exit;
   End;

  }
  // Else Begin
   	//inherited;
   //End;

//Paulo 04/08/2010: Valida se os campos estão todos preenchidos
	if(XEdiT = false)or(Xflag = true)then
   begin
   	if (EdDtEmissao.Text = '')then
   	begin
   		MessageDlg('Informe a data de emissão da Redução Z!', mtWarning, [mbOK], 0);
       	EdDtEmissao.SetFocus;
   	end;
   end;
   if(XEdiT = false)or(Xflag = true)then
   begin
   	if (EdNumSerie.Text = '')then
   	begin
   		MessageDlg('Informe o número de série!', mtWarning, [mbOK], 0);
       	EdNumSerie.SetFocus;
       	exit;
   	end;
   end;    
   if (EdNumOrdem.Text = '')then
   begin
   	MessageDlg('Informe o número de Ordem!', mtWarning, [mbOK], 0);
       EdNumOrdem.SetFocus;
       exit;
   end;
   if (EdQtdReduc.Text = '')then
   begin
   	MessageDlg('Informe o número de Redução Z!', mtWarning, [mbOK], 0);
       EdQtdReduc.SetFocus;
       exit;
   end;
   if (EdQtdReinicio.Text = '')then
   begin
   	MessageDlg('Informe a Quantidade de Reinicio!', mtWarning, [mbOK], 0);
       EdQtdReinicio.SetFocus;
       exit;
   end;
   if (EdCupomIni.Text = '')then
   begin
   	MessageDlg('Informe o número do Primeiro Cupom!', mtWarning, [mbOK], 0);
       EdCupomIni.SetFocus;
       exit;
   end;
   if (EdCupomFim.Text = '')then
   begin
   	MessageDlg('Informe o número de Último Cupom!', mtWarning, [mbOK], 0);
       EdCupomFim.SetFocus;
       exit;
   end;
   if (EdCancelamento.Text = '')then
   begin
   	MessageDlg('Informe o número de cancelamentos!', mtWarning, [mbOK], 0);
       EdCancelamento.SetFocus;
       exit;
   end;
   if (EdSubTrib.Text = '')then
   begin
   	MessageDlg('Informe o número da Substituição Tributária!', mtWarning, [mbOK], 0);
       EdSubTrib.SetFocus;
       exit;
   end;
   if (EdDesconto.Text = '')then
   begin
   	MessageDlg('Informe o valor dos Descontos!', mtWarning, [mbOK], 0);
       EdDesconto.SetFocus;
       exit;
   end;
   if (EdVendBruta.Text = '')then
   begin
   	MessageDlg('Informe o valor da Venda Bruta!', mtWarning, [mbOK], 0);
       EdVendBruta.SetFocus;
       exit;
   end;
   if (EdTotalGeral.Text = '')then
   begin
   	MessageDlg('Informe o valor Total Geral!', mtWarning, [mbOK], 0);
       EdTotalGeral.SetFocus;
       exit;
   end;
   if (Alq01.Text = '')then
   begin
   	MessageDlg('Informe a aliquota 01!', mtWarning, [mbOK], 0);
       Alq01.SetFocus;
       exit;
   end;
   if (Alq02.Text = '')then
   begin
   	MessageDlg('Informe a aliquota 02!', mtWarning, [mbOK], 0);
       Alq02.SetFocus;
       exit;
   end;
   if (Alq03.Text = '')then
   begin
   	MessageDlg('Informe a aliquota 03!', mtWarning, [mbOK], 0);
       Alq03.SetFocus;
       exit;
   end;
   if (Alq04.Text = '')then
   begin
   	MessageDlg('Informe a aliquota 04!', mtWarning, [mbOK], 0);
       Alq04.SetFocus;
       exit;
   end;
   if (Alq05.Text = '')then
   begin
   	MessageDlg('Informe a aliquota 05!', mtWarning, [mbOK], 0);
       Alq05.SetFocus;
       exit;
   end;
   if (Imp01.Text = '')then
   begin
   	MessageDlg('Informe o valor do Imposto da Aliquota '+Alq01.Text+' !', mtWarning, [mbOK], 0);
       Imp01.SetFocus;
       exit;
   end;
   if (Imp02.Text = '')then
   begin
   	MessageDlg('Informe o valor do Imposto da Aliquota '+Alq02.Text+' !', mtWarning, [mbOK], 0);
       Imp02.SetFocus;
       exit;
   end;
   if (Imp03.Text = '')then
   begin
   	MessageDlg('Informe o valor do Imposto da Aliquota '+Alq03.Text+' !', mtWarning, [mbOK], 0);
       Imp03.SetFocus;
       exit;
   end;
   if (Imp04.Text = '')then
   begin
   	MessageDlg('Informe o valor do Imposto da Aliquota '+Alq04.Text+' !', mtWarning, [mbOK], 0);
       Imp04.SetFocus;
       exit;
   end;
   if (Imp05.Text = '')then
   begin
   	MessageDlg('Informe o valor do Imposto da Aliquota '+Alq05.Text+' !', mtWarning, [mbOK], 0);
       Imp05.SetFocus;
       exit;
   end;
   if (Vlr01.Text = '')then
   begin
   	MessageDlg('Informe o valor da Aliquota '+Alq01.Text+' !' , mtWarning, [mbOK], 0);
       Vlr01.SetFocus;
       exit;
   end;
   if (Vlr02.Text = '')then
   begin
   	MessageDlg('Informe o valor da Aliquota '+Alq02.Text+' !', mtWarning, [mbOK], 0);
       Vlr02.SetFocus;
       exit;
   end;
   if (Vlr03.Text = '')then
   begin
   	MessageDlg('Informe o valor da Aliquota '+Alq03.Text+' !', mtWarning, [mbOK], 0);
       Vlr03.SetFocus;
       exit;
   end;
   if (Vlr04.Text = '')then
   begin
   	MessageDlg('Informe o valor da Aliquota '+Alq04.Text+' !', mtWarning, [mbOK], 0);
       Vlr04.SetFocus;
       exit;
   end;
   if (Vlr05.Text = '')then
   begin
   	MessageDlg('Informe o valor da Aliquota '+Alq05.Text+' !', mtWarning, [mbOK], 0);
       Vlr05.SetFocus;
       exit;
   end;

	//Verifica se existe periodo fiscal diponivel para operação
	DMFiscal.TAlx.Close;
   DMFiscal.TAlx.SQL.Clear;
   DMFiscal.TAlx.SQL.Add(' select * from periodofiscal where (periodofiscal.dtfinal>=:DT) AND (periodofiscal.dtinicial<=:DT) ');
   if(XEdiT = false)or(Xflag = true)then
   begin
   	DMFiscal.TAlx.ParamByName('DT').AsDate:=StrToDate(EdDtEmissao.Text);
   end
   else begin
        DMFiscal.TAlx.ParamByName('DT').AsDate:=StrToDate(DBPRIMEIRO.Text);
   end;

   DMFiscal.TAlx.Open;
   If DMFiscal.TAlx.IsEmpty
   Then Begin
		Mensagem('ATENÇÃO!', 'não existe um período fiscal para a data informada!', '', 1, 1, False, 'I');
       Exit;
   End;
   if(XEditar = false)then
   begin
   	//Paulo 10/08/2010: Verifica se já tem dados para a mesma redução Z
   	DMFiscal.TAlx.Close;
   	DMFiscal.TAlx.SQL.Clear;
   	DMFiscal.TAlx.SQL.Add(' select * from r60 ');
   	DMFiscal.TAlx.SQL.Add(' Where (r60.cod_r60<>:COD) AND ((r60.dtemissao=:DT) and (r60.numserie=:NUMSERIE)) ');
   	DMFiscal.TAlx.ParamByName('COD').AsString:=XTabela.FieldByName('COD_R60').AsString;
       if(XEdiT = false)or(Xflag = true)then
   	begin
          DMFiscal.TAlx.ParamByName('DT').AsDate:=StrToDate(EdDtEmissao.Text);
       end
       else begin
   		DMFiscal.TAlx.ParamByName('DT').AsDate:=XTabela.FieldByName('DTEMISSAO').AsDateTime;
       end;
   	DMFiscal.TAlx.ParamByName('NUMSERIE').AsString:=XTabela.FieldByName('NUMSERIE').AsString;
   	DMFiscal.TAlx.SQL.Text;
   	DMFiscal.TAlx.Open;
   end
   else begin
       DMFiscal.TAlx.Close;
       DMFiscal.TAlx.SQL.Clear;
       DMFiscal.TAlx.SQL.Add('select * from r60 where cod_r60 = -1');
       DMFiscal.TAlx.Open;
   end;

   iF Not DMFiscal.TAlx.ISEmpty
   Then Begin
		Mensagem('A T E N Ç Ã O !', ' Já existe uma redução para este mesmo equipamento nesta mesma data', '', 1, 1, False, 'I');
		DBPRIMEIRO.SetFocus;
   End
   else begin
   	//inherited;
   	//Paulo 05/08/2010: Armazena as variaveis
       if(XEdiT = false)or(Xflag = true)then
    	begin
   		XDataRZ:= EdDtEmissao.Text;
   		XNserie:= EdNumSerie.Text;
       end
       else begin
           XNserie:=DBDESC.Text;
          	XDataRZ := DBPRIMEIRO.Text;
       end;
   	XNequip:= EdNumOrdem.Text;
   	XReducZ:= EdQtdReduc.Text;
   	XCuponIn:=EdCupomIni.Text;
   	XCuponFim:=EdCupomFim.Text;
   	XReinicio:=EdQtdReinicio.Text;
   	XCancel:=EdCancelamento.Text;
   	XSubTrib:=EdSubTrib.Text;
   	XDesconto:=EdDesconto.Text;
   	XVendBruta:=EdVendBruta.Text;
   	XTotGeral:=EdTotalGeral.Text;
   	XAlq1:=Alq01.Text;
   	XAlq2:=Alq02.Text;
   	XAlq3:=Alq03.Text;
   	XAlq4:=Alq04.Text;
   	XAlq5:=Alq05.Text;
   	XVlr1:=Vlr01.Text;
   	XVlr2:=Vlr02.Text;
   	XVlr3:=Vlr03.Text;
   	XVlr4:=Vlr04.Text;
   	XVlr5:=Vlr05.Text;
       XImp1:=StrToFloat(Imp01.Text);
   	XImp2:=StrToFloat(Imp02.Text);
   	XImp3:=StrToFloat(Imp03.Text);
   	XImp4:=StrToFloat(Imp04.Text);
   	XImp5:=StrToFloat(Imp05.Text);

      //Paulo 11/08/2010: Para atualizar quando for consulta
      if(XEditar = true)then
      begin
         Atualiza_R60_Banco;
         FormActivate(sender);
//         PBotoes.Visible:=true;
//    	  PBotoes.BringToFront;
      end;
      //Paulo 05/08/2010: Salva os dados no banco
      Insere_R60_Banco;
      if(XEdiT = false)then
      begin
      	  Close;
      end
      else begin
          FormActivate(Sender);
      end;

   end;

end;

procedure TFCadReducaoZ.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
{	FMenu.TIPOREL='RELMAPARESUMO';
   AbrirForm(TFRelData, FRelData, 0);}
end;


procedure TFCadReducaoZ.DBPRIMEIROExit(Sender: TObject);
begin
  inherited;
	//Verifica se existe periodo fiscal diponivel para operação
  {	DMFiscal.TAlx.Close;
   DMFiscal.TAlx.SQL.Clear;
   DMFiscal.TAlx.SQL.Add(' select * from periodofiscal where (periodofiscal.dtfinal>=:DT) AND (periodofiscal.dtinicial<=:DT) ');
   DMFiscal.TAlx.ParamByName('DT').AsDate:=StrToDate(DBPRIMEIRO.Text);
   DMFiscal.TAlx.Open;
   If DMFiscal.TAlx.IsEmpty
   Then Begin
		Mensagem('ATENÇÃO!', 'não existe um período fiscal para a data informada!', '', 1, 1, False, 'I');
   End; }
end;

procedure TFCadReducaoZ.BitBtn1Click(Sender: TObject);
begin
  inherited;
    AbrirForm(TFPeriodoFiscal, FPERIODOFISCAL, 0);
end;
{
procedure TFCadReducaoZ.DBColorEdit2Exit(Sender: TObject);
begin
  inherited;
  	Try
       //Descobre informações do ultimo cupom de redução Z
       DMFiscal.TAlx.Close;
       DMFiscal.TAlx.SQL.Clear;
       DMFiscal.TAlx.SQL.Add('select * from r60 where r60.ncontredz=:CONTADOR');
       DMFiscal.TAlx.ParamByName('CONTADOR').AsInteger:=StrToInt(DBColorEdit2.Text)-1;
       DMFiscal.TAlx.Open;
       If not DMFiscal.TAlx.IsEmpty
       Then Begin
           Try
               DMFiscal.TR60.FieldByName('NCONTINI').AsInteger:=DMFiscal.TAlx.FieldByName('ncontfim').asInteger+1;
           Except
           End;
       End;
   Except
   End;
end;
 }
procedure TFCadReducaoZ.BtnConsultarClick(Sender: TObject);
begin
	DBPRIMEIRO.Enabled:=True;
	DBDESC.Enabled:=True;
	DBPRIMEIRO.Visible:=true;
   DBDESC.visible:=true;
   EdNumSerie.Visible:=False;
   EdDtEmissao.Visible:=False;
   
  inherited;
    //Paulo 10/08/2010: retorna dados da consulta nos edits
   EdNumOrdem.Text:= XTabela.FieldByName('NUMORDEM').AsString;
   EdQtdReduc.Text:=XTabela.FieldByName('NCONTREDZ').AsString;
   EdCupomIni.Text:=XTabela.FieldByName('NCONTINI').AsString;
   EdCupomFim.Text:=XTabela.FieldByName('NCONTFIM').AsString;
   EdQtdReinicio.Text:=XTabela.FieldByName('CONTREINICIO').AsString;
   EdCancelamento.Text:=XTabela.FieldByName('CANCELAMENTO').AsString;
   EdSubTrib.Text:=XTabela.FieldByName('SUBTRIBUTARIA').AsString;
   EdDesconto.Text:=XTabela.FieldByName('DESCONTO').AsString;
   EdVendBruta.Text:=XTabela.FieldByName('VLRVNDBRUTA').AsString;
   EdTotalGeral.Text:=XTabela.FieldByName('VLRTGERAL').AsString;
   Alq01.Text:=XTabela.FieldByName('ALQ01').AsString;
   Alq02.Text:=XTabela.FieldByName('ALQ02').AsString;
   Alq03.Text:=XTabela.FieldByName('ALQ03').AsString;
   Alq04.Text:=XTabela.FieldByName('ALQ04').AsString;
   Alq05.Text:=XTabela.FieldByName('ALQ05').AsString;
   Imp01.Text:=XTabela.FieldByName('IMP01').AsString;
   Imp02.Text:=XTabela.FieldByName('IMP02').AsString;
   Imp03.Text:=XTabela.FieldByName('IMP03').AsString;
   Imp04.Text:=XTabela.FieldByName('IMP04').AsString;
   Imp05.Text:=XTabela.FieldByName('IMP05').AsString;
   Vlr01.Text:=XTabela.FieldByName('VLRTPARC01').AsString;
   Vlr02.Text:=XTabela.FieldByName('VLRTPARC02').AsString;
   Vlr03.Text:=XTabela.FieldByName('VLRTPARC03').AsString;
   Vlr04.Text:=XTabela.FieldByName('VLRTPARC04').AsString;
   Vlr05.Text:=XTabela.FieldByName('VLRTPARC05').AsString;

   //Paulo 19/08/2010: Para quando retornar o consulta vazia escreve o "0" para não fica em branco a edit
   if EdQtdReduc.Text = '' then
   begin
   	EdQtdReduc.Text:='0';
   end;
   if EdCupomIni.Text = '' then
   begin
   	EdCupomIni.Text:='0';
   end;
   if EdCupomFim.Text = '' then
   begin
   	EdCupomFim.Text:='0';
   end;
   if EdQtdReinicio.Text = '' then
   begin
   	EdQtdReinicio.Text:='0';
   end;
   if EdCancelamento.Text = '' then
   begin
   	EdCancelamento.Text:='0';
   end;
   if EdSubTrib.Text = '' then
   begin
   	EdSubTrib.Text:='0';
   end;
   if EdDesconto.Text = '' then
   begin
   	EdDesconto.Text:='0';
   end;
   if EdVendBruta.Text = '' then
   begin
   	EdVendBruta.Text:='0';
   end;
   if EdTotalGeral.Text = '' then
   begin
   	EdTotalGeral.Text:='0';
   end;
   if Alq01.Text = '' then
   begin
   	Alq01.Text:='0';
   end;
   if Alq02.Text = '' then
   begin
   	Alq02.Text:='0';
   end;
   if Alq03.Text = '' then
   begin
   	Alq03.Text:='0';
   end;
   if Alq04.Text = '' then
   begin
   	Alq04.Text:='0';
   end;
   if Alq05.Text = '' then
   begin
   	Alq05.Text:='0';
   end;
   if Imp01.Text = '' then
   begin
   	Imp01.Text:='0';
   end;
   if Imp02.Text = '' then
   begin
   	Imp02.Text:='0';
   end;
   if Imp03.Text = '' then
   begin
   	Imp03.Text:='0';
   end;
   if Imp04.Text = '' then
   begin
   	Imp04.Text:='0';
   end;
   if Imp05.Text = '' then
   begin
   	Imp05.Text:='0';
   end;
   if Vlr01.Text = '' then
   begin
   	Vlr01.Text:='0';
   end;
   if Vlr02.Text = '' then
   begin
   	Vlr02.Text:='0';
   end;
   if Vlr03.Text = '' then
   begin
   	Vlr03.Text:='0';
   end;
   if Vlr04.Text = '' then
   begin
   	Vlr04.Text:='0';
   end;
   if Vlr05.Text = '' then
   begin
   	Vlr05.Text:='0';
   end;

   DBPRIMEIRO.Enabled:=False;
	DBDESC.Enabled:=False;
	EdNumOrdem.Enabled:=False;

   //Paulo 11/08/2010: Consulta o periodo fiscal para mostrar na tela
   DMFiscal.TAlx.Close;
   DMFiscal.TAlx.SQL.Clear;
   DMFiscal.TAlx.SQL.Add(' select * from periodofiscal where (periodofiscal.dtfinal>=:DT) AND (periodofiscal.dtinicial<=:DT) ');
   DMFiscal.TAlx.ParamByName('DT').AsDate:=StrToDate(DBPRIMEIRO.Text);
   DMFiscal.TAlx.Open;
   Label16.Visible:=True;
   Label17.Visible:=True;
   Label17.Caption:= DMFiscal.TAlx.FieldByName('DESCRICAO').AsString;
   XEditar:=True;
   XEdiT:=true;
   Xflag:=false;

end;

end.
