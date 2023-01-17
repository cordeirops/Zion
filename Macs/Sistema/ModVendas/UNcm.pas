unit UNcm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  ExtCtrls, Mask, DBCtrls, DBColorEdit, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, IdExplicitTLSClientServerBase;

type
  TFCadNcm = class(TFCadPadrao)
    EdNcm: TFlatEdit;
    Label2: TLabel;
    DBCODINT: TDBColorEdit;
    Label7: TLabel;
    DBDESC: TDBColorEdit;
    Label1: TLabel;
    DBColorEdit1: TDBColorEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBColorEdit2: TDBColorEdit;
    mes: TBitBtn;
    DBColorEdit3: TDBColorEdit;
    Label5: TLabel;
    conectaFtp: TIdFTP;
    lbInformacao: TLabel;
    stg: TStringGrid;
    DBColorEdit4: TDBColorEdit;
    Label6: TLabel;
    DBColorEdit5: TDBColorEdit;
    Label8: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    Label9: TLabel;
    Label10: TLabel;
    CBAtivo: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure mesClick(Sender: TObject);
    procedure AtualizarNcm;
    procedure AtualizaCest;
	 function ImportaArquivoCSV(arquivo: string; delimitador: char; numColunas: integer): Boolean;    
    function FormataCampo(campo: string; delimitador: char; coluna, linhaLista: integer; lista: TStringList; var temAspasInicial, achouAspasFinal: boolean): string;
    procedure RemoveLinhaStringGrid(linha: integer);
    procedure DBColorEdit4Exit(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdNcmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadNcm: TFCadNcm;

implementation

uses UDMEstoque, Alxor32, UPadrao, UMenu, AlxMessage, UMDO;

{$R *.dfm}

procedure TFCadNcm.FormActivate(Sender: TObject);
begin
  inherited;
  Caption:='NCM' ;  
  DBGridCadastroPadrao.DataSource:=DMESTOQUE.DNcm;
  XTabela:=DMEstoque.TNcm;
  XCampo:='DESCRICAO';
  XTransaction:=DMEstoque.TransacEstoque;
  XPkTabela:='NCM';
  XTab:=True;
  XDescricao:= 'O NCM';
  XSQLTABELA:='NCM';
end;

procedure TFCadNcm.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
  			If XTab=True Then
  				FiltraTabela(XTabela, XSQLTABELA, XCampo, '', '(upper(descricao) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY descricao')
    		Else
 				FiltraTabela(XView, XSQLVIEW, XCampo, '',   '(upper(descricao) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY descricao');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
end;

procedure TFCadNcm.BtnGravarClick(Sender: TObject);
begin
   If CBAtivo.Checked = true Then
       DMESTOQUE.TNcm.FieldByName('ativo').Asstring := '1'
   else
       DMESTOQUE.TNcm.FieldByName('ativo').Asstring:= '0';

   DMESTOQUE.TNcm.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;
  inherited;
end;

procedure TFCadNcm.BtnCancelarClick(Sender: TObject);
begin
   DMESTOQUE.TNcm.Cancel;
  inherited;
end;

procedure TFCadNcm.mesClick(Sender: TObject);
var
	xLinha: Integer;
begin
  inherited;
	//Edmar - 15/12/2014 - Ao clicar para atualizar o ncm:
   //1. Acessar o ftp, pasta downloads
   //2. Baixar o arquivo referente ao ncm
   //3. Verificar se o ncm existe no sistema. se existe atualiza, senão inclui

   PComunica.Visible := True;
	PComunica.BringToFront;

   //remove os arquivos se estiverem no PC
   if FileExists('CEST.csv') then
   	DeleteFile('CEST.csv');

   if FileExists('TabelaNCM.csv') then
   	DeleteFile('TabelaNCM.csv');
   
   try
   	with conectaFtp do
       begin
           lbInformacao.Caption := 'Estamos fazendo o download do arquivo para atualização.';
           PComunica.Refresh;

			//download do arquivo TabelaNCM.csv           
           Disconnect();

           Host := 'ftp.mzrsistemas.com';
           Port := 21;
           Username := 'mzrsistemas01';
           Password := 'ecg879bd';
           Passive := true;

           try
               Connect;
           except
               On E : Exception do
               begin
                   ShowMessage('Não foi possível estabeler conexão com o FTP: '+E.Message);
                   Exit;
               end;
           end;

           Get('downloads/Zion/Arquivos/CEST.csv', 'CEST.csv', True, False);
           Get('downloads/Zion/Arquivos/TabelaNCM.csv', 'TabelaNCM.csv', true, false);
           Quit;

			lbInformacao.Caption := 'Buscando dados do arquivo NCM...';
           PComunica.Refresh;

           //Edmar - 16/12/2014 - passa o caminho do arquivo, o delimitador e a quantidade de colunas no arquivo
           //para importar o arquivo de contem os ncms
           ImportaArquivoCSV('TabelaNCM.csv', ';', 12);
                      
           lbInformacao.Caption := 'Atualizando ou inserindo NCM presente no arquivo...';
           PComunica.Refresh;

           AtualizarNcm;
           
  			for xLinha := 0 to stg.RowCount -1 do
  			begin
    			stg.Rows[xLinha].Clear;
  			end;
           
			lbInformacao.Caption := 'Buscando dados do arquivo CEST...';
           PComunica.Refresh;

           ImportaArquivoCSV('CEST.csv', ';', 2);
           
           lbInformacao.Caption := 'Atualizando código CEST...';
           PComunica.Refresh;

           AtualizaCest;           
       end;
   except
   	ShowMessage('Não foi possível fazer o download do arquivo. Favor incluir manualmente o arquivo TabelaNCM no diretório C:/MZR/Macs. Após isso, clique OK para prosseguir com a operação.');

		//Edmar - 17/12/2014 - Verifica se o arquivo foi colocado na pasta corretamente.
       //e só continua o processamento se for verdadeiro
       if not FileExists('TabelaNCM.csv') then
       begin
   		Mensagem('A V I S O', 'Não foi encontrado o arquivo TabelaNCM no diretório C:/MZR/Macs. A operação será abortada.','', 1, 1, true, 'I');
           Exit;       	
       end;

       lbInformacao.Caption := 'Buscando dados do arquivo...';
       PComunica.Refresh;

       //Edmar - 16/12/2014 - passa o caminho do arquivo, o delimitador e a quantidade de colunas no arquivo
       //para importar o arquivo de contem os ncms
       if ImportaArquivoCSV('TabelaNCM.csv', ';', 12) then
       begin
       	lbInformacao.Caption := 'Atualizando ou inserindo NCM presente no arquivo...';
       	PComunica.Refresh;

       	AtualizarNcm;
       end;
   end;

   PComunica.Visible := False;
   PComunica.SendToBack;
end;

//Edmar - 16/12/2014 - metodo auxiliar para buscar o conteudo do arquivo csv
function TFCadNcm.FormataCampo(campo: string; delimitador: char; coluna,
  linhaLista: integer; lista: TStringList; var temAspasInicial,
  achouAspasFinal: boolean): string;
var
	x, aux: integer;
	str: string;
	delimitadorOK, encontrou: Boolean;
begin
	if (not achouAspasFinal) then
	begin
		encontrou:=False;

		for x:=1 to Length(campo) do
		begin
			if (campo[x] = '"') then
			begin
				if (campo[x + 1] = ',') then
				begin
					encontrou:=True;
					Break;
				end;
			end;
		end;

		if (encontrou) then
		begin
			str:=copy(campo,1,x);
			achouAspasFinal:=True;
			lista[linhaLista]:=copy(lista[linhaLista],Length(str) + 2,Length(lista[linhaLista]) - Length(str));
   	end else
			str:=campo;
           
	end else
	begin
		x:=1;
		aux:=0;
		str:='';
		delimitadorOK:=False;

		while (x < Length(campo) + 1) and (aux < coluna) do
		begin
			if (campo[x] = '"') then
				delimitadorOK:=not delimitadorOK;
               
			if (campo[x] = delimitador) and (not delimitadorOK) then
				Inc(aux);

			Inc(x);
		end;

		delimitadorOK:=False;

		while (x < Length(campo) + 1) and ((campo[x] <> delimitador) or delimitadorOK) do
		begin
			if (campo[x] = '"') then
			begin
				temAspasInicial:=not temAspasInicial;
				achouAspasFinal:=not achouAspasFinal;
				delimitadorOK:=not delimitadorOK;
			end;

			str:=str + campo[x];
			Inc(x);
		end;
	end;

	FormataCampo:=Trim(str);
end;

procedure TFCadNcm.RemoveLinhaStringGrid(linha: integer);
var
	x, y: integer;
begin
	for x:=linha to stg.RowCount - 2 do
		for y:=0 to stg.ColCount - 1 do
			stg.Cells[y,x]:=stg.Cells[y,x + 1];

	stg.RowCount:=stg.RowCount - 1;
end;

function TFCadNcm.ImportaArquivoCSV(arquivo: string; delimitador: char;
  numColunas: integer): Boolean;
var
	listaCSV: TStringList;
	x, xAux, numLinha, numLinhaAux: integer;
	aspasIni, aspasFim: boolean;
	strTemp: string;
begin
	listaCSV:=TStringList.Create;
   Result := True;
   
	try
   	stg.ColCount:=numColunas;
		listaCSV.LoadFromFile(arquivo);
       
		numLinha:=0;

		if listaCSV.Count <= 0 then
       begin
       	ShowMessage('O arquivo não foi encontrado no diretório raiz ou está vazio. A operação será abortada.');
           Result := False;
           Exit;
       end
       else begin
       	           
           while (numLinha <= listaCSV.Count - 1) do
           begin
               stg.RowCount:=numLinha + 1;
               x:=0;
               xAux:=0;
               numLinhaAux:=numLinha;


               while (x <= stg.ColCount - 1) do
               begin
                   strTemp:=FormataCampo(listaCSV[numLinha],delimitador,xAux,numLinha,listaCSV,aspasIni,aspasFim);

                   if (stg.Cells[x,numLinhaAux] <> '') then
                       strTemp:=stg.Cells[x,numLinhaAux] + #13#10 + strTemp;

                   if (strTemp <> '') and (strTemp[1] = '"') and (strTemp[Length(strTemp)] = '"') then
                       strTemp:=copy(strTemp,2,Length(strTemp) - 2);

                   stg.Cells[x,numLinhaAux]:=strTemp;

                   if ((aspasIni) and (not aspasFim)) then
                   begin
                       xAux:=-1;
                       Inc(numLinha);
                   end
                   else
                   begin
                       Inc(x);
                       Inc(xAux);
                       aspasIni:=False;
                       aspasFim:=True;
                   end;
               end;

               Inc(numLinha);
           end;

           numLinha:=0;

           while (numLinha <= stg.RowCount - 1) do
           begin
               if (stg.Cells[0,numLinha] = '') then
                   RemoveLinhaStringGrid(numLinha)
               else
                   Inc(numLinha);
           end;
       end;
	finally
		listaCSV.Free;
	end;
end;

//Edmar - 16/12/2014 - Atualiza ou insere os ncms que foram buscados do arquivo
procedure TFCadNcm.AtualizarNcm;
var
	xI: Integer;
   xCodigoNcm: String;
   xDescricaoNcm: String;
   xValorNacional: String;
   xValorEstadual: String;
   xValorImportado: String;   
begin
	try
		//Edmar 16/12/2014 - Percorre a string grid buscando as informações do ncm
		for xI := 1 to stg.RowCount -1 do
   	begin
   		//recupera as informações relevantes e joga em variaveis auxiliares
       	xCodigoNcm := stg.Cells[0, xI];
       	xDescricaoNcm := stg.Cells[3, xI];
       	xValorNacional := StringReplace(stg.Cells[4, xI], '.', ',', [rfReplaceAll, rfIgnoreCase]);
       	xValorImportado := StringReplace(stg.Cells[5, xI], '.', ',', [rfReplaceAll, rfIgnoreCase]);
       	xValorEstadual := StringReplace(stg.Cells[6, xI], '.', ',', [rfReplaceAll, rfIgnoreCase]);
       	xValorNacional := StringReplace(stg.Cells[4, xI], '.', ',', [rfReplaceAll, rfIgnoreCase]);

           //só importa o ncm se ele tiver no máximo 8 caracteres
           if Length(Trim(xCodigoNcm)) = 8 then
           begin
           	if FiltraTabela(DMESTOQUE.TNcm, 'NCM', 'NCM', xCodigoNcm, '') then
             	begin
               	//Se achou o ncm, atualiza o mesmo com os valores buscados anteriormente
                 	DMESTOQUE.TNcm.Edit;
                 	DMESTOQUE.TNcm.FieldByName('NCM').AsString := xCodigoNcm;
                 	DMESTOQUE.TNcm.FieldByName('DESCRICAO').AsString := xDescricaoNcm;
                   DMESTOQUE.TNcm.FieldByName('ATIVO').AsString := '1';                   
                 	DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTANAC').AsCurrency := StrToCurr(xValorNacional);
                 	DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTAIMP').AsCurrency := StrToCurr(xValorImportado);
                 	DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTAEST').AsCurrency := StrToCurr(xValorEstadual);
                 	//calculo do valor aproximado da tributação
                 	DMESTOQUE.TNcm.FieldByName('VALORAPROXTRIBUTACAO').AsCurrency := Trunc(StrToCurr(xValorNacional));
                 	DMESTOQUE.TNcm.Post;
             	end
             	else begin
               	//se não achou, insere um novo
                 	DMESTOQUE.TNcm.Insert;
                 	DMESTOQUE.TNcm.FieldByName('NCM').AsString := xCodigoNcm;
                 	DMESTOQUE.TNcm.FieldByName('DESCRICAO').AsString := xDescricaoNcm;
                   DMESTOQUE.TNcm.FieldByName('ATIVO').AsString := '1';
                 	DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTANAC').AsCurrency := StrToCurr(xValorNacional);
                 	DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTAIMP').AsCurrency := StrToCurr(xValorImportado);
                 	DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTAEST').AsCurrency := StrToCurr(xValorEstadual);
                 	//calculo do valor aproximado da tributação
                 	DMESTOQUE.TNcm.FieldByName('VALORAPROXTRIBUTACAO').AsCurrency := Trunc(StrToCurr(xValorNacional));
                 	DMESTOQUE.TNcm.Post;
             	end;
           end;
   	end;

       //comita a operação
      	DMESTOQUE.TNcm.Transaction.CommitRetaining;

       Mensagem(' I N F O R M A Ç Ã O ', 'Tabela de NCM atualizada com sucesso!', '', 1, 1, False, 'I');
   except
   	On E : Exception do
       begin
   		ShowMessage(E.Message);
   		DMESTOQUE.TNcm.Cancel;
       end;	
   end;

	FormActivate(nil);
end;

procedure TFCadNcm.DBColorEdit4Exit(Sender: TObject);
begin
  inherited;
  //Edmar - 17/12/2014 - Ao sair do campo referente a aliquota estadual, calcula valor aproximado do ncm
  DMESTOQUE.TNcm.FieldByName('VALORAPROXTRIBUTACAO').AsCurrency := Trunc((DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTANAC').AsCurrency + DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTAEST').AsCurrency) / 2);
end;

procedure TFCadNcm.BtnNovoClick(Sender: TObject);
begin
  inherited;
	DMESTOQUE.TNcm.Insert;
   CBAtivo.Checked := true;      
end;

procedure TFCadNcm.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   if DMESTOQUE.TNcm.FieldByName('ativo').Asstring = '1' Then
       CBAtivo.Checked:=true
   Else
       CBAtivo.Checked:=false;
       
	DMESTOQUE.TNcm.Edit;
end;

procedure TFCadNcm.EdNcmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	If Key=VK_RETURN
   Then Begin//pressionado enter, consultar
       If XTab=True Then
           FiltraTabela(XTabela, XSQLTABELA, XCampo, '', ' (upper(NCM) like upper('+#39+EdNcm.Text+'%'+#39+')) ORDER BY NCM ')
       Else
           FiltraTabela(XView, XSQLVIEW, XCampo, '',   ' (upper(NCM) like upper('+#39+EdNcm.Text+'%'+#39+')) ORDER BY NCM ');
   End;
   If Key=VK_ESCAPE
   Then Begin //pressionado esc, liberar
       LiberaDados;
   End;
end;

procedure TFCadNcm.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	//
	try
		if DMESTOQUE.TNcm.FieldByName('ATIVO').AsString <> '1' then
   	begin
   		DBGridCadastroPadrao.Canvas.Font.Color := $004D4DFF;
       end;

       if Length(Trim(DMESTOQUE.TNcm.FieldByName('NCM').AsString)) < 8 then
       	DBGridCadastroPadrao.Canvas.Font.Color := clMoneyGreen;

       DBGridCadastroPadrao.Canvas.FillRect(Rect);
       DBGridCadastroPadrao.DefaultDrawDataCell(Rect, DBGridCadastroPadrao.Columns[datacol].Field, State);
   except
   end;
end;

procedure TFCadNcm.BtnSelecionarClick(Sender: TObject);
begin
	if DMESTOQUE.TNcm.FieldByName('ATIVO').AsString <> '1' then
   begin
   	MessageDlg('Este NCM não pode ser selecionado por estar inativo.', mtConfirmation, [mbOK], 0);
   	Exit;
   end;

   if Length(Trim(DMESTOQUE.TNcm.FieldByName('NCM').AsString)) < 8 then
   begin
   	MessageDlg('Este NCM não pode ser selecionado por ter tamanho inválido.', mtConfirmation, [mbOK], 0);
   	Exit;
   end;

  inherited;
end;

//Edmar - 18/12/2015 - função usada para atualizar o NCM com o CEST correspondente
procedure TFCadNcm.AtualizaCest;
var
	xCest: String;
   xNcm: String;
   xI, xJ: Integer;
   xNcmAux: TStringList;
begin
	try
       //percorre todos os CEST retornados
       for xI := 1 to stg.RowCount -1 do
       begin
           //recupera as informações e joga em variaveis auxiliares
           xCest := stg.Cells[0, xI];
           xNcm  := stg.Cells[1, xI];

           //cria um string list para desmenbrar a string com virgula
           xNcmAux := TStringList.Create;
           xNcmAux.Delimiter := ',';
           xNcmAux.DelimitedText := xNcm;

           //percorre os ncm retornados para atualizar
           for xJ := 0 to xNcmAux.Count - 1 do
           begin
               {
                   ****** VALIDAÇÕES ******
                   - Remover pontos, virgulas, etc. do CEST e salvar apenas numeros
                   - Remover ponto, virgulas, etc. do NCM para fazer a busca
                   - Verificar se o CEST está vazio
                   - Verificar se o CEST possui apenas números
                   - Verificar se o NCM possui apenas números
               }

               xCest := Trim(TiraCaracter(TiraCaracter(TiraCaracter(TiraCaracter(TiraCaracter(TiraCaracter(xCest, ','), '.'), '-'), '/'), '\'), ' '));
               xNcm  := Trim(TiraCaracter(TiraCaracter(TiraCaracter(TiraCaracter(TiraCaracter(TiraCaracter(xNcmAux[xJ], ','), '.'), '-'), '/'), '\'), ' '));

               if xCest <> '' then
               begin
                   try
                       StrToInt(xCest);
                       StrToInt(xNcm);

                       //atualiza a tabela de NCM com o CEST correspondente
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' UPDATE NCM SET NCM.CEST = :CEST WHERE NCM.NCM = :NCM ');
                       MDO.Query.ParamByName('CEST').AsString := xCest;
                       MDO.Query.ParamByName('NCM').AsString := xNcm;
                       MDO.Query.ExecSQL;
                   except
                       //se der exceção apenas ignore pois como o cest ou ncm não é um número
                       //não tem porque salva-los
                   end;
               end;
           end;
       end;
       MDO.Transac.CommitRetaining;
       
       MessageDlg('Atualização do código CEST ocorreu com sucesso!', mtWarning, [mbOK], 0);
   except
   	On E : Exception do
       begin
       	MessageDlg('Não foi possível atualizar o código CEST: '+#13#10+E.Message, mtWarning, [mbOK], 0);
   		MDO.Transac.RollbackRetaining;
       end;
   end;
end;

end.
