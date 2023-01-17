unit UImpSintegra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, DrLabel, jpeg, Grids,
  DBGrids, DBCtrls, FR_Class, FR_DSet, FR_DBSet, QRCtrls, QuickRpt, DB,
  IBCustomDataSet, IBQuery;

type
  TFImpSintegra = class(TFPadrao)
    Panel1: TPanel;
    PButtons: TPanel;
    BtnGerar: TButton;
    BtnRelatorio: TButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    ODSintegra: TOpenDialog;
    EDArq: TEdit;
    BTProcArq: TButton;
    Label1: TLabel;
    CBEntradas: TCheckBox;
    CBSaidas: TCheckBox;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    DSRel: TfrDBDataSet;
    FSRel: TfrReport;
    PNRel: TPanel;
    GroupBox3: TGroupBox;
    CB50: TCheckBox;
    CB54: TCheckBox;
    Panel3: TPanel;
    BtnGerarRel: TButton;
    BtnCancelRel: TButton;
    QRRel54: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRBand2: TQRBand;
    QRNum: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape1: TQRShape;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    DS54: TDataSource;
    IBQ54: TIBQuery;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape2: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    IBQ54NUMERO: TIntegerField;
    IBQ54CNPJ: TIBStringField;
    IBQ54MODELO: TIBStringField;
    IBQ54SERIE: TIBStringField;
    IBQ54CFOP: TIBStringField;
    IBQ54CST: TIBStringField;
    IBQ54NUMERO_IT: TIntegerField;
    IBQ54COD_PROD_SERV: TIBStringField;
    IBQ54QTDE: TIBBCDField;
    IBQ54VLR_PROD: TIBBCDField;
    IBQ54VLR_DESC: TIBBCDField;
    IBQ54BASE_ICMS: TIBBCDField;
    IBQ54BASE_ICMST: TIBBCDField;
    IBQ54VLR_IPI: TIBBCDField;
    IBQ54ALIQ_ICMS: TIBBCDField;
    GroupBox2: TGroupBox;
    Button1: TButton;
    EDNumNota: TEdit;
    QRBand3: TQRBand;
    QRLabel19: TQRLabel;
    QRLTotal: TQRLabel;
    QRLBase: TQRLabel;
    QRLVlr_Icms: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape3: TQRShape;
    ScrollBar1: TScrollBar;
    Button2: TButton;
    Memo1: TMemo;
    procedure BTProcArqClick(Sender: TObject);
    procedure BtnGerarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EDNumNotaClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure BtnCancelRelClick(Sender: TObject);
    procedure BtnGerarRelClick(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
    //DJ 22/04/10: Procedimento que analisa o sintegra e vai salvando os dados no banco
    Procedure AnalisaSintegra;
    //DJ 22/04/10: Procedimento que organiza as datas para passar para banco de dados
    Procedure TrataDatas(XDataEnt: String);
    //DJ 22/04/10: Procedimento que organiza os valores para passar para banco de dados
    Procedure TrataValores(XValorEnt: String);
    //DJ 23/04/10: Procedimento para selecionar registros das tabelas R50 e R54 para utilizar na grid
    Procedure SelecionaReg;
  public
    { Public declarations }
  end;

var
  FImpSintegra: TFImpSintegra;
  //DJ 22/04/2010: Data e valor depois de tratados
  XDataTrat,XValorTrat,XCodCFOPs,XCodCFOPsAux: String;
  XCodAux: Integer;
  XTotal,XBase,XVlr_Icms,XIsenta: Real;

implementation

uses UDMMacs, UDMEntrada, UDMRel, UDMSaida;

{$R *.dfm}

procedure TFImpSintegra.BTProcArqClick(Sender: TObject);
begin
  inherited;
   //DJ 30/04/10: Abre o painel de busca do windows
	if ODSintegra.Execute Then Begin
   	EDArq.Text := ODSintegra.FileName;
   End;
end;

//DJ 30/04/10: Bota para começar os procedimentos para gerar visualizacoes da grid
procedure TFImpSintegra.BtnGerarClick(Sender: TObject);
begin
  inherited;
	if(EDArq.Text = '')Then Begin
   	MessageBox(0, 'Por favor selecione um arquivo!', 'Atenção!', MB_ICONWARNING or MB_OK);
       BTProcArq.SetFocus;
   End
   Else Begin
       //DJ 30/04/10: Limpa tabelas para novo sintegra
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('delete from r50');
       DMMACS.TALX.Open;
       DMMACS.Transaction.CommitRetaining;

       DMENTRADA.TAlx.Close;
       DMENTRADA.TAlx.SQL.Clear;
       DMENTRADA.TAlx.SQL.Add('delete from r54');
       DMENTRADA.TAlx.Open;
       DMMACS.Transaction.CommitRetaining;

       PComunica.Visible := True;
       PComunica.BringToFront;
       AnalisaSintegra;
   End;
       PComunica.Visible := False;
       PComunica.SendToBack;
end;

//DJ 30/04/10:Procedimento que ler linhas do sintegre e envia dados para o banco
Procedure TFImpSintegra.AnalisaSintegra;
var
	XArq: TextFile;
   XLinha,XTextoAux: String;
begin
	XTextoAux := EDArq.Text;
	AssignFile(XArq,XTextoAux);
   Reset(XArq);

   While not Eof(XArq) do
   Begin
   	Readln(XArq,XLinha);
       XTextoAux := '';
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       XTextoAux := Copy(XLinha,1,2);
       if(XTextoAux = '50')Then Begin
       	DMMACS.TALX.SQL.Add('insert into R50 (Numero,CNPJ,Insc_Est,Data,UF,Modelo,Serie,CFOP,');
    		DMMACS.TALX.SQL.Add('Emitente,Vlr_Total,Base_Icms,Vlr_Icms,Isenta,Outras,Aliquota,Situacao)');
			DMMACS.TALX.SQL.Add('Values(:Numero,:CNPJ,:Insc_Est,:Data,:UF,:Modelo,:Serie,:CFOP,:Emitente,:Vlr_Total,');
    		DMMACS.TALX.SQL.Add(':Base_Icms,:Vlr_Icms,:Isenta,:Outras,:Aliquota,:Situacao)');
           DMMACS.TALX.ParamByName('NUMERO').AsInteger := StrToInt(Trim(Copy(XLinha,46,6)));
           If DMMACS.TALX.ParamByName('NUMERO').AsString = '43543' Then
				DMMACS.TALX.ParamByName('NUMERO').AsInteger := DMMACS.TALX.ParamByName('NUMERO').AsInteger;
           DMMACS.TALX.ParamByName('CNPJ').AsString := (Trim(Copy(XLinha,3,14)));
           DMMACS.TALX.ParamByName('INSC_EST').AsString := (Trim(Copy(XLinha,17,14)));
           TrataDatas(Trim(Copy(XLinha,31,8)));
           DMMACS.TALX.ParamByName('DATA').AsDate := StrToDateTime(XDataTrat);
           DMMACS.TALX.ParamByName('UF').AsString := (Trim(Copy(XLinha,39,2)));
           DMMACS.TALX.ParamByName('MODELO').AsString := (Trim(Copy(XLinha,41,2)));
           DMMACS.TALX.ParamByName('SERIE').AsString := (Trim(Copy(XLinha,43,3)));
           DMMACS.TALX.ParamByName('CFOP').AsString := (Trim(Copy(XLinha,52,4)));
           DMMACS.TALX.ParamByName('EMITENTE').AsString := (Trim(Copy(XLinha,56,1)));
           TrataValores(Trim(Copy(XLinha,57,13)));
           DMMACS.TALX.ParamByName('VLR_TOTAl').AsFloat := StrToFloat(XValorTrat);
           TrataValores(Trim(Copy(XLinha,70,13)));
           DMMACS.TALX.ParamByName('BASE_ICMS').AsFloat := StrToFloat(XValorTrat);
           TrataValores(Trim(Copy(XLinha,83,13)));
           DMMACS.TALX.ParamByName('VLR_ICMS').AsFloat := StrToFloat(XValorTrat);
           TrataValores(Trim(Copy(XLinha,96,13)));
           DMMACS.TALX.ParamByName('ISENTA').AsFloat := StrToFloat(XValorTrat);
           TrataValores(Trim(Copy(XLinha,109,13)));
           DMMACS.TALX.ParamByName('OUTRAS').AsFloat := StrToFloat(XValorTrat);
           TrataValores(Trim(Copy(XLinha,122,4)));
           DMMACS.TALX.ParamByName('ALIQUOTA').AsFloat := StrToFloat(XValorTrat);
           DMMACS.TALX.ParamByName('SITUACAO').AsString := (Trim(Copy(XLinha,126,1)));
       End
       Else Begin
       	if(XTextoAux = '54')Then Begin
           	DMMACS.TALX.SQL.Add('insert into R54 (Numero,CNPJ,Modelo,Serie,CFOP,CST,Numero_IT,COD_PROD_SERV,Qtde');
    			DMMACS.TALX.SQL.Add(',VLR_PROD,VLR_DESC,BASE_ICMS,BASE_ICMST,VLR_IPI,Aliq_ICMS)');
				DMMACS.TALX.SQL.Add('Values(:Numero,:CNPJ,:Modelo,:Serie,:CFOP,:CST,:Numero_IT,:COD_PROD_SERV,');
    			DMMACS.TALX.SQL.Add(':QTDE,:VLR_PROD,:VLR_DESC,:BASE_ICMS,:BASE_ICMST,:VLR_IPI,:Aliq_ICMS)');
           	DMMACS.TALX.ParamByName('NUMERO').AsInteger := StrToInt(Trim(Copy(XLinha,22,6)));
           	If DMMACS.TALX.ParamByName('NUMERO').AsString = '43543' Then
					DMMACS.TALX.ParamByName('NUMERO').AsInteger := DMMACS.TALX.ParamByName('NUMERO').AsInteger;
           	DMMACS.TALX.ParamByName('CNPJ').AsString := (Trim(Copy(XLinha,3,14)));
           	DMMACS.TALX.ParamByName('MODELO').AsString := (Trim(Copy(XLinha,17,2)));
           	DMMACS.TALX.ParamByName('SERIE').AsString := (Trim(Copy(XLinha,19,3)));
           	DMMACS.TALX.ParamByName('CFOP').AsString := (Trim(Copy(XLinha,28,4)));
           	DMMACS.TALX.ParamByName('CST').AsString := (Trim(Copy(XLinha,32,3)));
           	DMMACS.TALX.ParamByName('NUMERO_IT').AsInteger := StrToInt(Trim(Copy(XLinha,35,3)));
           	DMMACS.TALX.ParamByName('COD_PROD_SERV').AsString := (Trim(Copy(XLinha,38,14)));
               TrataValores(Trim(Copy(XLinha,52,11)));
           	DMMACS.TALX.ParamByName('QTDE').AsFloat := StrToFloat(XValorTrat);
               TrataValores(Trim(Copy(XLinha,63,12)));
           	DMMACS.TALX.ParamByName('VLR_PROD').AsFloat := StrToFloat(XValorTrat);
               TrataValores(Trim(Copy(XLinha,75,12)));
           	DMMACS.TALX.ParamByName('VLR_DESC').AsFloat := StrToFloat(XValorTrat);
               TrataValores(Trim(Copy(XLinha,87,12)));
           	DMMACS.TALX.ParamByName('BASE_ICMS').AsFloat := StrToFloat(XValorTrat);
               TrataValores(Trim(Copy(XLinha,99,12)));
           	DMMACS.TALX.ParamByName('BASE_ICMST').AsFloat := StrToFloat(XValorTrat);
               TrataValores(Trim(Copy(XLinha,111,12)));
           	DMMACS.TALX.ParamByName('VLR_IPI').AsFloat := StrToFloat(XValorTrat);
               TrataValores(Trim(Copy(XLinha,123,4)));
           	DMMACS.TALX.ParamByName('ALIQ_ICMS').AsFloat := StrToFloat(XValorTrat);
       	End;
		End;
       if not(DMMACS.TALX.SQL.Text = '') Then begin
       	DMMACS.TALX.ExecSQL;
       	DMMACS.Transaction.CommitRetaining;
       End;
   End;
   SelecionaReg;
End;

//DJ 30/04/10: Procedimento que trata data para enviar no formato certo para o banco
Procedure TFImpSintegra.TrataDatas(XDataEnt: String);
var
	XDia,XMes,XAno: String;
Begin
	XAno := Copy(XDataEnt,1,4);
   XMes := Copy(XDataEnt,5,2);
   XDia := Copy(XDataEnt,7,2);
   XDataTrat := XDia + '/' + XMes + '/' + XAno;
End;

//DJ 30/04/10: Procedimento que trata valores reais para manda-los para o banco
Procedure TFImpSintegra.TrataValores(XValorEnt: String);
var
	XDec,XInt: String;
Begin
   XDec := Copy(XValorEnt,(Length(XValorEnt)-1),2);
   XInt := Copy(XValorEnt,1,(Length(XValorEnt)-2));
   XValorTrat := XInt + ',' + XDec;
End;

//DJ 30/04/10: Em conjunto com SelCfops busca arquivos para a grid
Procedure TFImpSintegra.SelecionaReg;
Begin
   //Somente Saidas
   if CBSaidas.Checked = True
   Then Begin
       IBQuery1.Close;
       IBQuery1.SQL.Clear;
       IBQuery1.SQL.Add('select * from R50  ');
       IBQuery1.SQL.Add(' Where (R50.cfop like '+#39+'5%'+#39+') or (R50.cfop like '+#39+'6%'+#39+') order by numero ');
       IBQuery1.SQL.Text;
	    IBQuery1.Open;
       IBQuery1.Last;
       IBQuery1.FindFirst;
       IBQuery1.RecordCount;
   End;
   //Somente Entradas
   if CBEntradas.Checked = True
   Then Begin
       IBQuery1.Close;
       IBQuery1.SQL.Clear;
       IBQuery1.SQL.Add('select * from R50  ');
       IBQuery1.SQL.Add(' Where (R50.cfop like '+#39+'1%'+#39+') or (R50.cfop like '+#39+'2%'+#39+') order by numero ');
       IBQuery1.SQL.Text;
	    IBQuery1.Open;
       IBQuery1.Last;
       IBQuery1.FindFirst;
       IBQuery1.RecordCount;
   End;
   if (CBEntradas.Checked = False) and (CBSaidas.Checked = False)
   Then Begin
       IBQuery1.Close;
       IBQuery1.SQL.Clear;
       IBQuery1.SQL.Add('select * from R50  ');
       IBQuery1.SQL.Add(' order by numero ');
       IBQuery1.SQL.Text;
	    IBQuery1.Open;
       IBQuery1.Last;
       IBQuery1.FindFirst;
       IBQuery1.RecordCount;
   End;
End;


//DJ 30/04/10: Ao clicar na grid é feita uma pesquisa para achar os registros 54 referentes a nota da linha
procedure TFImpSintegra.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
	DMENTRADA.TAlx.Close;
   DMENTRADA.TAlx.SQL.Clear;
   DMENTRADA.TAlx.SQL.Add('select * from R54 where R54.numero = :num order by R54.cfop');
   DMENTRADA.TAlx.ParamByName('NUM').AsInteger := IBQuery1.FieldByName('NUMERO').AsInteger;
   DMENTRADA.TAlx.Open;
end;

procedure TFImpSintegra.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Importação Sintegra';  
   //DJ 30/04/10: Zera dados do banco sobre registros sintegras pesquisados anteriormente
	DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('delete from r50');
   DMMACS.TALX.Open;
   DMMACS.Transaction.CommitRetaining;

   DMENTRADA.TAlx.Close;
   DMENTRADA.TAlx.SQL.Clear;
   DMENTRADA.TAlx.SQL.Add('delete from r54');
   DMENTRADA.TAlx.Open;
   DMMACS.Transaction.CommitRetaining;
end;

//DJ 30/04/10: Ao clicar inicia procedimentos para pesquisa de nota por numero
procedure TFImpSintegra.Button1Click(Sender: TObject);
var
	XNumNota: String;
begin
  inherited;
	if(EDArq.Text = '')Then Begin
   	MessageBox(0, 'Por favor selecione arquivo!', 'Atenção!', MB_ICONWARNING or MB_OK);
       BTProcArq.SetFocus;
   End
   Else Begin
       EDNumNota.SetFocus;
       if((EDNumNota.Text = '') or (EDNumNota.Text = 'Nº do Documento:'))Then Begin
			MessageBox(0, 'Por favor informe o numero da nota!', 'Atenção!', MB_ICONWARNING or MB_OK);
			EDNumNota.Text := '';
       	EDNumNota.SetFocus;
   	End
   	Else Begin
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('delete from r50');
           DMMACS.TALX.Open;
           DMMACS.Transaction.CommitRetaining;

           DMENTRADA.TAlx.Close;
           DMENTRADA.TAlx.SQL.Clear;
           DMENTRADA.TAlx.SQL.Add('delete from r54');
           DMENTRADA.TAlx.Open;
           DMMACS.Transaction.CommitRetaining;

           AnalisaSintegra;
           XNumNota := EDNumNota.Text;
           IBQuery1.Close;
           IBQuery1.SQL.Clear;
           IBQuery1.SQL.Add('select * from r50 where r50.numero = 0');
           IBQuery1.Open;

           IBQuery1.Close;
           IBQuery1.SQL.Clear;
           IBQuery1.SQL.Add('select * from r50 where r50.numero = ' + XNumNota);
           IBQuery1.Open;

           if(IBQuery1.IsEmpty)Then Begin
               MessageBox(0, 'Não há registros a retornar!', 'Informação!', MB_ICONINFORMATION or MB_OK);
           End;

   	End;
   End;
end;

//DJ 30/04/10: Ao clicar na edit do numero da nota apaga o texto que estivar la
procedure TFImpSintegra.EDNumNotaClick(Sender: TObject);
begin
  inherited;
	EDNumNota.Text := '';
end;

//DJ 30/04/10: Ao clicar no botao relatorio abre o painel para definir relatorios
procedure TFImpSintegra.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
		PNRel.Visible := True;
       PNRel.BringToFront;
end;

//DJ 30/04/10: Bota cancelar do painel de relatorios
procedure TFImpSintegra.BtnCancelRelClick(Sender: TObject);
begin
  inherited;
	PNRel.Visible := False;
   PNRel.SendToBack;
end;

//DJ 30/04/10: Botao gerar do painel relatorio, inicia procedimentos para gerar relatorio
procedure TFImpSintegra.BtnGerarRelClick(Sender: TObject);
begin
  inherited;
  		//DJ 30/04/10: Zera valores dos totalizadores do relatorio 54
  		XTotal := 0;
       XBase := 0;
       XVlr_Icms := 0;
       XIsenta := 0;
       DMSAIDA.IBT.CommitRetaining;
       if((CB50.Checked = False) and (CB54.Checked = False) or (IBQuery1.IsEmpty))Then Begin
       	MessageBox(0, 'Por favor informe o tipo de nota a pesquisar e gere uma visualização!', 'Atenção!', MB_ICONWARNING or MB_OK);
			CB50.SetFocus;
       End
       Else Begin
       	//DJ 30/04/10: Abre relatorios de acordo com o tipo
  			If(CB50.Checked = True)Then Begin
              	DMSAIDA.TAlx.Close;
   			DMSAIDA.TAlx.SQL.Clear;
   			DMSAIDA.TAlx.SQL.Add('select * from R50 order by numero');
   			DMSAIDA.TAlx.Open;
               
				FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfImpSintegra.frf');
      			FSRel.ShowReport;
               PNRel.Visible := False;
   			PNRel.SendToBack;
       	End;
           if(CB54.Checked = True)Then Begin
              	DMSAIDA.TAlx.Close;
   			DMSAIDA.TAlx.SQL.Clear;
   			DMSAIDA.TAlx.SQL.Add('select * from R50 where R50.NUMERO <> 0 ');
  				DMSAIDA.TAlx.SQL.Add(' order by numero');
      			DMSAIDA.TAlx.SQL.Text;
   			DMSAIDA.TAlx.Open;
              	QRRel54.Preview;
               PNRel.Visible := False;
   			PNRel.SendToBack;
              End;
           End;
end;

procedure TFImpSintegra.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //DJ 30/04/10: Incrementando valor dos totalizadores
   XTotal := XTotal + IBQuery1.FieldByName('VLR_TOTAL').AsFloat;
   XBase := XBase + IBQuery1.FieldByName('BASE_ICMS').AsFloat;
   XVlr_Icms := XVlr_Icms + IBQuery1.FieldByName('VLR_ICMS').AsFloat;
   XIsenta := XIsenta + IBQuery1.FieldByName('ISENTA').AsFloat;

   //DJ 30/04/10: Gerando relatorios dos registros 54 por registro 50
   DMSAIDA.TAlx.Next;
	if(IBQuery1.FieldByName('NUMERO').AsInteger <> DMSAIDA.TAlx.FieldByName('NUMERO').AsInteger)Then
   Begin
   	QRSubDetail1.Enabled := True;
       IBQ54.Close;
   	IBQ54.SQL.Clear;
   	IBQ54.SQL.Add('select * from R54 where R54.numero = 0');
   	IBQ54.Open;

   	IBQ54.Close;
   	IBQ54.SQL.Clear;
   	IBQ54.SQL.Add('select * from R54 where R54.numero = :num order by R54.cfop');
   	IBQ54.ParamByName('NUM').AsInteger := IBQuery1.FieldByName('NUMERO').AsInteger;
   	IBQ54.Open;
   End
   Else Begin
   	QRSubDetail1.Enabled := False;
		IBQ54.Close;
   	IBQ54.SQL.Clear;
   	IBQ54.SQL.Add('select * from R54 where R54.numero = 0');
   	IBQ54.Open;
   End;
end;

//DJ 30/04/10: Envia dados para totalzadores antes de imprimir a banda sumario
procedure TFImpSintegra.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	QRLTotal.Caption := FormatFloat('0.00',XTotal);
   QRLBase.Caption := FormatFloat('0.00',XBase);
   QRLVlr_Icms.Caption := FormatFloat('0.00',XVlr_Icms);
   QRLabel30.Caption := FormatFloat('0.00',XIsenta);
end;

procedure TFImpSintegra.Button2Click(Sender: TObject);
begin
  inherited;
   SelecionaReg;
end;

end.



