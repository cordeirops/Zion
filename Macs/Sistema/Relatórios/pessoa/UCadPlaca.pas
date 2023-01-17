unit UCadPlaca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, UFrmBusca, Mask, DBCtrls, DBColorEdit,
  ColorMaskEdit, Buttons;

type
  TFCadPlaca = class(TFrame)
    Label8: TLabel;
    FrmCidade: TFrmBusca;
    RGTIPO: TRadioGroup;
    Label6: TLabel;
    edNome: TColorMaskEdit;
    edCNPJCPF: TColorMaskEdit;
    edFone: TColorMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    edPlaca: TColorMaskEdit;
    Label1: TLabel;
    edModelo: TColorMaskEdit;
    Label4: TLabel;
    edNumFrota: TColorMaskEdit;
    BtnFecha: TSpeedButton;
    btnConfirmar: TBitBtn;
    cbConsumidor: TCheckBox;
    CbVendaBalcao: TCheckBox;
    procedure edPlacaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPlacaKeyPress(Sender: TObject; var Key: Char);
    procedure edCNPJCPFKeyPress(Sender: TObject; var Key: Char);
    procedure FrmCidadeBTNOPENClick(Sender: TObject);
    procedure FrmCidadeBTNMINUSClick(Sender: TObject);
    procedure FrmCidadeEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edCNPJCPFExit(Sender: TObject);
    procedure edPlacaExit(Sender: TObject);
    procedure edNomeChange(Sender: TObject);
    procedure edCNPJCPFChange(Sender: TObject);
    procedure edPlacaChange(Sender: TObject);
    procedure edModeloChange(Sender: TObject);
    procedure edNumFrotaChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    XCOD_CIDADE, XCOD_PESSOA, XCOD_CLIENTE, XCOD_EQUIPAMENTO : Integer;
    XOK : Boolean;// - 27/04/2009: ser variavel estiver como true é que ja foi encontrado uma placa com cliente correspondente
    procedure limpar(pessoa,equipamento:Boolean);
    function verificaPessoa(msg:Boolean):Boolean;
    function verificaEquipamento(msg:Boolean):Boolean;

  end;

implementation

uses UDMGEOGRAFIA, UMenu, UCadCidade, UDMMacs, Alxor32, UDMPessoa, DB,
  AlxMessage;

{$R *.dfm}

procedure TFCadPlaca.edPlacaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (EDPlaca.SelLength > 0) And NOT (KEY = 8) and not (KEY = 13) and not (KEY = 27) then
   begin
       EDPlaca.Text := '';
   end;

   if (Length(EDPlaca.Text)= 3) AND NOT (KEY = 8) then BEGIN
       EDPlaca.Text := EDPlaca.Text+'-';
       EDPlaca.SelStart := 4;
   END;
end;

procedure TFCadPlaca.edPlacaKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in ['a'..'z','A'..'Z', '0'..'9', #8, #13,#27])
   then
       Key := #0
   else begin    // ['A'..'Z','a'..'z'
       if  Length(EDPlaca.Text) < 4 then
           if not (key in ['a'..'z','A'..'Z', #8, #13,#27]) then
               Key := #0;

       if ( Length(EDPlaca.Text) > 3 ) then
           if not (key in ['0'..'9', #8, #13,#27]) then
               Key := #0
   end;
end;

procedure TFCadPlaca.edCNPJCPFKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in ['0'..'9', #8, #13,#27]) then
               Key := #0
end;

procedure TFCadPlaca.limpar(pessoa,equipamento:Boolean);
Begin
     If (pessoa)
     Then Begin
          edNome.Text := '';
          RGTIPO.ItemIndex := 0;
          edCNPJCPF.Text := '';
          edFone.Text := '';
          FrmCidade.EDCodigo.Text := '';
          FrmCidade.EdDescricao.Text := '';
          XCOD_PESSOA := -1;
          XCOD_PESSOA := -1;
          XCOD_CIDADE := -1;
          cbConsumidor.Checked := True;
     End;

     If (equipamento)
     Then Begin
          edPlaca.Text := '';
          edModelo.Text := '';
          edNumFrota.Text := '';
          XCOD_EQUIPAMENTO := -1;
     End;

     XOK := False;
     
End;

procedure TFCadPlaca.FrmCidadeBTNOPENClick(Sender: TObject);
begin
     //LIBERA TODAS OS ESTADOS PARA CONSUTA
	 filtraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', ' Order by NOME');
    FMenu.XPreSel := True;
    FMenu.XFieldPesqPreSel := 'COD_CIDADE';
    FMenu.XCodPesqPresSel := FrmCidade.EDCodigo.text;

    If AbrirForm(TFCadCidade, FCadCidade, 1)='Selected'
    Then Begin
        XCOD_CIDADE:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
        FrmCidade.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
        FrmCidade.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    End
    Else Begin
        XCOD_CIDADE:=-1;
        FrmCidade.EdDescricao.Text:='';
        FrmCidade.EDCodigo.text:='';
    End;
end;

procedure TFCadPlaca.FrmCidadeBTNMINUSClick(Sender: TObject);
begin
   XCOD_CIDADE:=-1;
   FrmCidade.EDCodigo.Text:='';
   FrmCidade.EdDescricao.Text:='';
end;

procedure TFCadPlaca.FrmCidadeEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13
   Then Begin
   	If FrmCidade.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('VWCIDADE', 'COD_CIDADE', FrmCidade.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
				XCOD_CIDADE:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
           	FrmCidade.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
           	FrmCidade.EdDescricao.Text:=DMMACS.TSelect.FieldByName('UF').AsString+'-'+DMMACS.TSelect.FieldByName('NOME').AsString;
          End
          Else Begin
				XCOD_CIDADE:=-1;
           	FrmCidade.EDCodigo.Text:='';
           	FrmCidade.EdDescricao.Text:='';
          End;
       End
       Else Begin
     		XCOD_CIDADE:=-1;
         	FrmCidade.EDCodigo.Text:='';
          	FrmCidade.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFCadPlaca.btnConfirmarClick(Sender: TObject);
Var
   XCOD_PESSOAF, XCOD_PESSOAJ, XCOD_CLIENTE, XFlag: Integer;
begin

   If Not XOK // - 27/04/2009: verifica se ja encontrou o cliente e o equipamento
   Then Begin
        If Length(Trim(edNome.Text)) <=0
        Then Begin
             Mensagem('   A T E N Ç Ã O   ','Informe um nome para o cliente!','',1,1,false,'I');
             edNome.SetFocus;
             Exit;
        End;

        If (Length(Trim(edPlaca.Text)) <=0) and (CbVendaBalcao.Checked=false)
        Then Begin
             Mensagem('   A T E N Ç Ã O   ','Informe a placa!','',1,1,false,'I');
             edPlaca.SetFocus;
             Exit;
        End;

        Try
           If not verificaPessoa(false)
           Then Begin

           	//ATUALIZA OS CÓDIGOS TEMPORÁRIOS
               DMMACS.TCodigo.Close;
               DMMACS.TCodigo.SQL.Clear;
               DMMACS.TCodigo.SQL.Add('SELECT * FROM CODIGO');
               DMMACS.TCodigo.Open;
               XCOD_PESSOAF:=DMMACS.TCodigo.FieldByName('cod_pessoaf').AsInteger;
               XCOD_PESSOAJ:=DMMACS.TCodigo.FieldByName('cod_pessoaJ').AsInteger;
               XCOD_PESSOA:=DMMACS.TCodigo.FieldByName('cod_pessoa').AsInteger;
               XCOD_CLIENTE:=DMMACS.TCodigo.FieldByName('COD_CLIENTE').AsInteger;
               XCOD_CIDADE:=DMMACS.TCodigo.FieldByName('COD_CIDADE').AsInteger;
               XCOD_EQUIPAMENTO:=DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger;

               //INICIA VALIDAÇÃO DOS CODIGOS
               //VALIDA CODIGO PESSOA
               XFlag:=0;
               while XFlag=0 do
               Begin
                   DMPESSOA.TALX.Close;
                   DMPESSOA.TALX.SQL.Clear;
                   DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOA WHERE PESSOA.COD_PESSOA=:CODIGO');
                   DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_Pessoa;
                   DMPESSOA.TALX.Open;

                   If Not DMPESSOA.TALX.IsEmpty Then
                       XCod_Pessoa:=XCod_Pessoa+1
                   Else
                       XFlag:=1;
               End;
               //VALIDA CODIGO PESSOA FISICA
               XFlag:=0;
               while XFlag=0 do
               Begin
                   DMPESSOA.TALX.Close;
                   DMPESSOA.TALX.SQL.Clear;
                   DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAF WHERE PESSOAF.COD_PESSOAF=:CODIGO');
                   DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_PessoaF;
                   DMPESSOA.TALX.Open;

                   If Not DMPESSOA.TALX.IsEmpty Then
                       XCod_PessoaF:=XCod_PessoaF+1
                   Else
                       XFlag:=1;
               End;
               //VALIDA CODIGO PESSOA JURIDICA
               XFlag:=0;
               while XFlag=0 do
               Begin
                   DMPESSOA.TALX.Close;
                   DMPESSOA.TALX.SQL.Clear;
                   DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAF WHERE PESSOAF.COD_PESSOAF=:CODIGO');
                   DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_PessoaJ;
                   DMPESSOA.TALX.Open;

                   If Not DMPESSOA.TALX.IsEmpty Then
                       XCod_PessoaJ:=XCod_PessoaJ+1
                   Else
                       XFlag:=1;
               End;
               //VALIDA CODIGO CLIENTE
               XFlag:=0;
               while XFlag=0 do
               Begin
                   DMPESSOA.TALX.Close;
                   DMPESSOA.TALX.SQL.Clear;
                   DMPESSOA.TALX.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE=:CODIGO');
                   DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_cliente;
                   DMPESSOA.TALX.Open;

                   If Not DMPESSOA.TALX.IsEmpty Then
                       XCod_cliente:=XCod_cliente+1
                   Else
                       XFlag:=1;
               End;

               //VALIDA CODIGO CIDADE
               XFlag:=0;
               while XFlag=0 do
               Begin
                   DMPESSOA.TALX.Close;
                   DMPESSOA.TALX.SQL.Clear;
                   DMPESSOA.TALX.SQL.Add('SELECT * FROM CIDADE WHERE CIDADE.COD_CIDADE=:CODIGO');
                   DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_CIDADE;
                   DMPESSOA.TALX.Open;

                   If Not DMPESSOA.TALX.IsEmpty Then
                       XCod_cidade:=XCod_cidade+1
                   Else
                       XFlag:=1;
               End;

               //VALIDA CODIGO equipamento
               XFlag:=0;
               while XFlag=0 do
               Begin
                   DMPESSOA.TALX.Close;
                   DMPESSOA.TALX.SQL.Clear;
                   DMPESSOA.TALX.SQL.Add(' SELECT * FROM equipamento WHERE equipamento.cod_equipamento=:CODIGO ');
                   DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCod_EQUIPAMENTO;
                   DMPESSOA.TALX.Open;

                   If Not DMPESSOA.TALX.IsEmpty Then
                       XCOD_EQUIPAMENTO:=XCOD_EQUIPAMENTO+1
                   Else
                       XFlag:=1;
               End;
               //FIM DE VALIDAÇÃO DOS CODIGOS

               DMMACS.TALX.Close;
               DMMACS.TALX.SQL.Clear;
               DMMACS.TALX.SQL.Add(' update CODIGO SET codigo.cod_pessoaf=:PESSOAF, codigo.cod_pessoa=:PESSOA, ');
               DMMACS.TALX.SQL.Add(' codigo.cod_pessoaj=:PESSOAJ, codigo.cod_cliente=:CLIENTE, ');
               DMMACS.TALX.SQL.Add(' codigo.cod_cidade=:CIDADE, codigo.cod_equipamento=:EQUIPAMENTO ');
               DMMACS.TALX.ParamByName('PESSOAF').AsInteger:=XCOD_PESSOAF+1;
               DMMACS.TALX.ParamByName('PESSOAJ').AsInteger:=XCOD_PESSOAJ+1;
               DMMACS.TALX.ParamByName('PESSOA').AsInteger:=XCOD_PESSOA+1;
               DMMACS.TALX.ParamByName('CLIENTE').AsInteger:=XCOD_CLIENTE+1;
               DMMACS.TALX.ParamByName('CIDADE').AsInteger:=XCOD_CIDADE+1;
               DMMACS.TALX.ParamByName('EQUIPAMENTO').AsInteger:=XCOD_EQUIPAMENTO+1;
               DMMACS.TALX.ExecSQL;
               DMMACS.Transaction.CommitRetaining;
               //FIM DE ATUALIZAÇÃO DE CODIGOS


               // inserir nova pessoa
                DMPESSOA.TPessoa.Close;
                DMPESSOA.TPessoa.SQL.Clear;
                DMPESSOA.TPessoa.SQL.Add('insert into pessoa');
                DMPESSOA.TPessoa.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
                DMPESSOA.TPessoa.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
                DMPESSOA.TPessoa.SQL.Add('values');
                DMPESSOA.TPessoa.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
                DMPESSOA.TPessoa.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
                DMPESSOA.TPessoa.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');
                DMPESSOA.TPessoa.ParamByName('COD_PESSOA').AsInteger := XCod_Pessoa;
                DMPESSOA.TPessoa.ParamByName('NOME').AsString := edNome.Text;
                 if XCOD_CIDADE > 0 Then
                    DMPESSOA.TPessoa.ParamByName('COD_CIDADE').AsInteger := XCOD_CIDADE;
                 if edCNPJCPF.Text <> '' Then
                    DMPESSOA.TPessoa.ParamByName('CPFCNPJ').AsString := edCNPJCPF.Text;
                 if edFone.Text <> '' Then
                    DMPESSOA.TPessoa.ParamByName('TELREL').AsString := edFone.Text;

                 DMPESSOA.TPessoa.ExecSQL;
                 // inserir nova pessoa
                 DMPESSOA.TPessoa.Close;
                 DMPESSOA.TPessoa.SQL.Clear;
                 DMPESSOA.TPessoa.SQL.Add('select * from pessoa');
				  DMPESSOA.TPessoa.Open;

                 // add proximo codigo
                 Try
                 	DMMACS.TCodigo.Edit;
                	DMMACS.TCodigo.FieldByname('COD_PESSOA').AsInteger := XCOD_PESSOA+1;
                	DMMACS.TCodigo.Post;
                   DMMACS.IBTCodigo.CommitRetaining;
                 Except
					MessageDlg('ERRO: 278'+#13+#10+'Conflito ao atualizar o código de pessoa', mtWarning, [mbOK], 0);
                 End;

                //ALEX 21/05/2009: codigo abaixo comentado

                {DMPESSOA.TALX.Close;
                DMPESSOA.TALX.SQL.Clear;
                DMPESSOA.TALX.SQL.Add('select max(cliente.cod_cliente) as maximo from cliente');
                DMPESSOA.TALX.Open;

                DMMACS.TCodigo.Edit;
                DMMACS.TCodigo.FieldByname('COD_CLIENTE').AsInteger := DMPESSOA.TALX.FieldByname('maximo').AsInteger+1;
                DMMACS.TCodigo.Post;}

                XCOD_CLIENTE:=DMMACS.TCodigo.FieldByName('COD_cliente').AsInteger;

                //verifica se este codigo de cliente já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
                XFlag:=0;
                while XFlag=0 do
                Begin
                   DMPESSOA.TALX.Close;
                   DMPESSOA.TALX.SQL.Clear;
                   DMPESSOA.TALX.SQL.Add('SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE=:CODIGO');
                   DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCOD_CLIENTE;
                   DMPESSOA.TALX.Open;

                   If Not DMPESSOA.TALX.IsEmpty Then
                       XCOD_CLIENTE:=XCOD_CLIENTE+1
                   Else
                       XFlag:=1;
                End;

                 // inserir novo cliente
                 DMPESSOA.TCliente.Close;
                 DMPESSOA.TCliente.SQL.Clear;
                 DMPESSOA.TCliente.SQL.Add('insert into cliente');
                 DMPESSOA.TCliente.SQL.Add('(COD_CLIENTE, COD_PESSOA, COD_INTERNO, DATA_CAD, R_SAL_CONJ, R_SALARIO,');
                 DMPESSOA.TCliente.SQL.Add('R_HON_PROF, R_OUTREC, D_ALUGUEL, D_RESIDENCIA, D_VEICULO, D_FAMILIAR,');
                 DMPESSOA.TCliente.SQL.Add('D_OUTDESP, LIM_CRED, QTDTEMPORESID, BENS, COD_VENDEDOR, INFOCOM, ENDENTRAGA,');
                 DMPESSOA.TCliente.SQL.Add('ATUALIZAR, COD_USUARIO, ATIVO, CREDENCIAL, RAMOATIV, ATACADISTA, COD_FORMPAG,');
                 DMPESSOA.TCliente.SQL.Add('EXPORT, SEPARAR, MULTA, JURO, OBS, SCPC, TAMANHO, INFORMACAO,');
                 DMPESSOA.TCliente.SQL.Add('DIAVENCIMENTO)');
                 DMPESSOA.TCliente.SQL.Add('values');
                 DMPESSOA.TCliente.SQL.Add('(:COD_CLIENTE, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :R_SAL_CONJ, :R_SALARIO,');
                 DMPESSOA.TCliente.SQL.Add(':R_HON_PROF, :R_OUTREC, :D_ALUGUEL, :D_RESIDENCIA, :D_VEICULO, :D_FAMILIAR,');
                 DMPESSOA.TCliente.SQL.Add(':D_OUTDESP, :LIM_CRED, :QTDTEMPORESID, :BENS, :COD_VENDEDOR, :INFOCOM,');
                 DMPESSOA.TCliente.SQL.Add(':ENDENTRAGA, :ATUALIZAR, :COD_USUARIO, :ATIVO, :CREDENCIAL, :RAMOATIV,');
                 DMPESSOA.TCliente.SQL.Add(':ATACADISTA, :COD_FORMPAG, :EXPORT, :SEPARAR, :MULTA, :JURO, :OBS, :SCPC,');
                 DMPESSOA.TCliente.SQL.Add(':TAMANHO, :INFORMACAO, :DIAVENCIMENTO)');

                 DMPESSOA.TCliente.ParamByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
                 DMPESSOA.TCliente.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
                 DMPESSOA.TCliente.ParamByName('COD_INTERNO').AsInteger := XCOD_CLIENTE;
                 DMPESSOA.TCliente.ParamByName('DATA_CAD').AsDateTime := Date();
                 DMPESSOA.TCliente.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;

                 If cbConsumidor.Checked
                 Then Begin
                     DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '0';
                 End
                 Else Begin
                     DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '1';
                 End;

                 DMPESSOA.TCliente.ExecSQL;
                 // inserir novo cliente
                 DMPESSOA.TCliente.Close;
                 DMPESSOA.TCliente.SQL.Clear;
                 DMPESSOA.TCliente.SQL.Add('select * from cliente');
                 DMPESSOA.TCliente.Open;


                 // add proximo codigo
                 Try
                   DMMACS.TCodigo.Edit;
                   DMMACS.TCodigo.FieldByname('COD_CLIENTE').AsInteger := XCOD_CLIENTE+1;
                   DMMACS.TCodigo.Post;
                   DMMACS.IBTCodigo.CommitRetaining;
                 Except
					MessageDlg('ERRO: 356'+#13+#10+'Conflito ao atualizar o código de cliente', mtWarning, [mbOK], 0);
                 End;


                 If RGTIPO.ItemIndex = 0
                 Then Begin

                     //ALEX - 21/05/2009: TRECHO ABAIXO COMENTADO
                     {
                     DMPESSOA.TALX.Close;
                     DMPESSOA.TALX.SQL.Clear;
                     DMPESSOA.TALX.SQL.Add('select max(pessoaf.cod_pessoaf) as maximo from pessoaf');
                     DMPESSOA.TALX.Open;

                     DMMACS.TCodigo.Edit;
                     DMMACS.TCodigo.FieldByname('COD_PESSOAF').AsInteger := DMPESSOA.TALX.FieldByname('maximo').AsInteger+1;
                     DMMACS.TCodigo.Post;
                     }

                     XCOD_PESSOAF:=DMMACS.TCodigo.FieldByName('COD_PESSOAF').AsInteger;

                      //verifica se este codigo de PESSOAF já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
                      XFlag:=0;
                      while XFlag=0 do
                      Begin
                         DMPESSOA.TALX.Close;
                         DMPESSOA.TALX.SQL.Clear;
                         DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAF WHERE PESSOAF.COD_PESSOAF=:CODIGO');
                         DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCOD_PESSOAF;
                         DMPESSOA.TALX.Open;

                         If Not DMPESSOA.TALX.IsEmpty Then
                             XCOD_PESSOAF:=XCOD_PESSOAF+1
                         Else
                             XFlag:=1;
                      End;

                     //inserir pessoa fisica
                          DMPESSOA.TPessoaF.Close;
                          DMPESSOA.TPessoaF.SQL.Clear;
                          DMPESSOA.TPessoaF.SQL.Add('insert into pessoaf');
                          DMPESSOA.TPessoaF.SQL.Add('(COD_PESSOAF, COD_PESSOA, ESTADO_CIVIL, SEXO, EMP_TRAB, END_TRAB, BAIRRO_TRAB,');
                          DMPESSOA.TPessoaF.SQL.Add('DATA_ADMIS, CARGO, RG, DATA_EXPED, ORGAO_EXPED, TITULO, NOME_CONJ, DATANASC_CONJ,');
                          DMPESSOA.TPessoaF.SQL.Add('RG_CONJ, CPF_CONJ, EMP_CONJ, NOME_PAI, NOME_MAE, ENDE_FILIACAO)');
                          DMPESSOA.TPessoaF.SQL.Add('values');
                          DMPESSOA.TPessoaF.SQL.Add('(:COD_PESSOAF, :COD_PESSOA, :ESTADO_CIVIL, :SEXO, :EMP_TRAB, :END_TRAB,');
                          DMPESSOA.TPessoaF.SQL.Add(':BAIRRO_TRAB, :DATA_ADMIS, :CARGO, :RG, :DATA_EXPED, :ORGAO_EXPED, :TITULO,');
                          DMPESSOA.TPessoaF.SQL.Add(':NOME_CONJ, :DATANASC_CONJ, :RG_CONJ, :CPF_CONJ, :EMP_CONJ, :NOME_PAI,');
                          DMPESSOA.TPessoaF.SQL.Add(':NOME_MAE, :ENDE_FILIACAO)');

                         DMPESSOA.TPessoaF.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
                         DMPESSOA.TPessoaF.ParamByName('COD_PESSOAF').AsInteger := XCOD_PESSOAF;
                         DMPESSOA.TPessoaF.ExecSQL;

                          DMPESSOA.TPessoaF.Close;
                          DMPESSOA.TPessoaF.SQL.Clear;
                          DMPESSOA.TPessoaF.SQL.Add('select * from pessoaf');
                          DMPESSOA.TPessoaF.Open;

                         // add proximo codigo
                         Try
                           DMMACS.TCodigo.Edit;
                           DMMACS.TCodigo.FieldByName('COD_PESSOAF').AsInteger := XCOD_PESSOAF + 1;
                           DMMACS.TCodigo.Post;
                           DMMACS.IBTCodigo.CommitRetaining;
                         Except
                           MessageDlg('ERRO: 421'+#13+#10+'Conflito ao atualizar o código de pessoa fisica', mtWarning, [mbOK], 0);
                         End;
                 End
                 Else Begin

                     //ALEX - 21/05/2009: TRECHO COMENTADO
                     {
                     DMPESSOA.TALX.Close;
                     DMPESSOA.TALX.SQL.Clear;
                     DMPESSOA.TALX.SQL.Add('select max(pessoaj.cod_pessoaj) as maximo from pessoaj');
                     DMPESSOA.TALX.Open;

                     DMMACS.TCodigo.Edit;
                      DMMACS.TCodigo.FieldByname('COD_PESSOAJ').AsInteger := DMPESSOA.TALX.FieldByname('maximo').AsInteger+1;
                      DMMACS.TCodigo.Post;
                      }

                     XCOD_PESSOAJ:=DMMACS.TCodigo.FieldByName('COD_PESSOAJ').AsInteger;

                      //verifica se este codigo de PESSOAF já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
                      XFlag:=0;
                      while XFlag=0 do
                      Begin
                         DMPESSOA.TALX.Close;
                         DMPESSOA.TALX.SQL.Clear;
                         DMPESSOA.TALX.SQL.Add('SELECT * FROM PESSOAJ WHERE PESSOAJ.COD_PESSOAJ=:CODIGO');
                         DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCOD_PESSOAJ;
                         DMPESSOA.TALX.Open;

                         If Not DMPESSOA.TALX.IsEmpty Then
                             XCOD_PESSOAJ:=XCOD_PESSOAJ+1
                         Else
                             XFlag:=1;
                      End;

                      // INSERIR PESSOA JURIDICA
                         DMPESSOA.TPessoaJ.Close;
                         DMPESSOA.TPessoaJ.SQL.Clear;
                         DMPESSOA.TPessoaJ.SQL.Add('insert into pessoaJ');
                         DMPESSOA.TPessoaJ.SQL.Add('(COD_PESSOAJ, COD_PESSOA, INSC_EST, RAZAO_SOCIAL, INSC_MUN, WEB_PAGE)');
                         DMPESSOA.TPessoaJ.SQL.Add('values');
                         DMPESSOA.TPessoaJ.SQL.Add('(:COD_PESSOAJ, :COD_PESSOA, :INSC_EST, :RAZAO_SOCIAL, :INSC_MUN, :WEB_PAGE)');

                         DMPESSOA.TPessoaJ.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;

                         DMPESSOA.TPessoaJ.ParamByName('COD_PESSOAJ').AsInteger := XCOD_PESSOAJ;

                         DMPESSOA.TPessoaJ.ParamByName('RAZAO_SOCIAL').AsString := edNome.Text;

                         DMPESSOA.TPessoaJ.ExecSQL;

                         DMPESSOA.TPessoaJ.Close;
                         DMPESSOA.TPessoaJ.SQL.Clear;
                         DMPESSOA.TPessoaJ.SQL.Add('select * from pessoaJ');
                         DMPESSOA.TPessoaJ.Open;

                         // add proximo codigo
                         Try
                           DMMACS.TCodigo.Edit;
                           DMMACS.TCodigo.FieldByName('COD_PESSOAJ').AsInteger := XCOD_PESSOAJ + 1;
                           DMMACS.TCodigo.Post;
                           DMMACS.IBTCodigo.CommitRetaining;
                         Except
                           MessageDlg('ERRO: 483'+#13+#10+'Conflito ao atualizar o código de pessoa juridica', mtWarning, [mbOK], 0);
                         End;
                 End;
             End;

             //ALEX - 21/05/2009: COMENTADO ABAIXO
             {
             DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add('select max(equipamento.cod_equipamento) as maximo from equipamento');
               DMPESSOA.TALX.Open;

               DMMACS.TCodigo.Edit;
                DMMACS.TCodigo.FieldByname('COD_EQUIPAMENTO').AsInteger := DMPESSOA.TALX.FieldByname('maximo').AsInteger+1;
                DMMACS.TCodigo.Post;
             }

             XCOD_EQUIPAMENTO:=DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger;

             //verifica se este codigo de PESSOAF já esta sendo usado, se estiver sendo usado ele vai incrementando até encontrar um sem uso
             XFlag:=0;
             while XFlag=0 do
             Begin
                 DMPESSOA.TALX.Close;
                 DMPESSOA.TALX.SQL.Clear;
                 DMPESSOA.TALX.SQL.Add('SELECT * FROM EQUIPAMENTO WHERE EQUIPAMENTO.COD_EQUIPAMENTO=:CODIGO');
                 DMPESSOA.TALX.ParamByName('CODIGO').AsInteger:=XCOD_EQUIPAMENTO;
                 DMPESSOA.TALX.Open;

                 If Not DMPESSOA.TALX.IsEmpty Then
                     XCOD_EQUIPAMENTO:=XCOD_EQUIPAMENTO+1
                 Else
                     XFlag:=1;
             End;

             DMPESSOA.TEquip.Close;
             DMPESSOA.TEquip.SQL.Clear;
             DMPESSOA.TEquip.SQL.Add('insert into EQUIPAMENTO');
             DMPESSOA.TEquip.SQL.Add('(COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, MARCA, MODELO, ANO, COR, CHASSI,');
             DMPESSOA.TEquip.SQL.Add('PLACA, DTAQUISICAO, CONCESSIONARIA, MOTOR, ANOMOTOR, CHASSIMOTOR, KMATUAL,');
             DMPESSOA.TEquip.SQL.Add('UNIDRODAGEM, NUM_FROTA, ALTURAMAX)');
             DMPESSOA.TEquip.SQL.Add('values');
             DMPESSOA.TEquip.SQL.Add('(:COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :MARCA, :MODELO,:ANO, :COR,');
             DMPESSOA.TEquip.SQL.Add(':CHASSI, :PLACA, :DTAQUISICAO, :CONCESSIONARIA, :MOTOR, :ANOMOTOR, :CHASSIMOTOR,');
             DMPESSOA.TEquip.SQL.Add(':KMATUAL, :UNIDRODAGEM, :NUM_FROTA, :ALTURAMAX)');

             DMPESSOA.TEquip.ParamByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO;
             DMPESSOA.TEquip.ParamByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
             DMPESSOA.TEquip.ParamByName('MODELO').AsString := edModelo.Text;
             DMPESSOA.TEquip.ParamByName('DESCRICAO').AsString := edModelo.Text;
             DMPESSOA.TEquip.ParamByName('PLACA').AsString := edPlaca.Text;
             DMPESSOA.TEquip.ParamByName('NUM_FROTA').AsString := edNumFrota.Text;
             DMPESSOA.TEquip.ExecSQL;

             DMPESSOA.TEquip.Close;
             DMPESSOA.TEquip.SQL.Clear;
             DMPESSOA.TEquip.SQL.Add('select * from EQUIPAMENTO');
             DMPESSOA.TEquip.Open;

             // add proximo codigo
             Try
               DMMACS.TCodigo.Edit;
               DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO + 1;
               DMMACS.TCodigo.Post;
               DMMACS.IBTCodigo.CommitRetaining;
             Except
               MessageDlg('ERRO: 548'+#13+#10+'Conflito ao atualizar o código de equipamento', mtWarning, [mbOK], 0);
             End;


         DMMACS.Transaction.CommitRetaining;
         DMPESSOA.TransacPessoa.CommitRetaining;
      Except
         Mensagem('   A T E N Ç Ã O   ','Falha na tentativa de gravação!','',1,1,false,'I');
         DMMACS.Transaction.RollbackRetaining;
         DMPESSOA.TransacPessoa.RollbackRetaining;
         Exit;
      End;

   End;

end;

function TFCadPlaca.verificaPessoa(msg:Boolean):Boolean;
Begin
     Result := False;
     // - 27/04/2009: verificar se CPF/CNPJ ja existi
     If Trim(edCNPJCPF.Text) <> ''
     Then Begin
       DMPESSOA.TALX.Close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add('select * from pessoa');
       DMPESSOA.TALX.SQL.Add('where pessoa.cpfcnpj like :CPFCNPJ and pessoa.cod_pessoa in ( select cliente.cod_pessoa from cliente)');
       DMPESSOA.TALX.ParamByName('CPFCNPJ').AsString := Trim(edCNPJCPF.Text);
       DMPESSOA.TALX.Open;

       If not DMPESSOA.TALX.IsEmpty
       Then Begin

            If msg
            Then Begin

                If Mensagem('   A T E N Ç Ã O   ','Foi encontrado um cliente com este CPF/CNPJ. Deseja utiliza-lo?','',2,3,false,'A')=2
                Then Begin

                     XCOD_PESSOA := DMPESSOA.TALX.FieldByName('COD_PESSOA').AsInteger;
                     FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_PESSOA', DMPESSOA.TALX.FieldByName('COD_PESSOA').AsString , '');
                     XCOD_CLIENTE := DMPESSOA.TCliente.FieldByName('cod_cliente').AsInteger;

                     edNome.Text := DMPESSOA.TALX.FieldByName('NOME').AsString;
                     edFone.Text := DMPESSOA.TALX.FieldByName('TELREL').AsString;

                     // selecionando dados da tabela pessoa fisica
                     DMPESSOA.TPessoaF.Close;
                     DMPESSOA.TPessoaF.SQL.Clear;
                     DMPESSOA.TPessoaF.SQL.Add('select * from pessoaf where pessoaf.cod_pessoa = :codigo');
                     DMPESSOA.TPessoaF.ParamByName('codigo').AsInteger := XCOD_PESSOA;
                     DMPESSOA.TPessoaF.Open;

                     If DMPESSOA.TPessoaF.IsEmpty
                     Then
                         RGTIPO.ItemIndex := 1
                     Else
                         RGTIPO.ItemIndex := 0;
                     
                     If SelectRegistro('VWCIDADE', 'COD_CIDADE', DMPESSOA.TALX.FieldByName('COD_CIDADE').AsString) = True
                      Then Begin //Slecionou o registro procurado
                           XCOD_CIDADE:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
                           FrmCidade.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
                           FrmCidade.EdDescricao.Text:=DMMACS.TSelect.FieldByName('UF').AsString+'-'+DMMACS.TSelect.FieldByName('NOME').AsString;
                      End
                      Else Begin
                           XCOD_CIDADE:=-1;
                           FrmCidade.EDCodigo.Text:='';
                           FrmCidade.EdDescricao.Text:='';
                      End;

                     Result := True;

                     edPlaca.SetFocus;
                End
                Else Begin
                    limpar(True, False);
                    Result := False;
                End;
            End
            Else Begin
                 XCOD_PESSOA := DMPESSOA.TALX.FieldByName('COD_PESSOA').AsInteger;
                 FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_PESSOA', DMPESSOA.TALX.FieldByName('COD_PESSOA').AsString , '');
                 XCOD_CLIENTE := DMPESSOA.TCliente.FieldByName('cod_cliente').AsInteger;
                 Result := True;
            End;
       End;
     End;
End;

function TFCadPlaca.verificaEquipamento(msg:Boolean):Boolean;
Begin

     Result := False;

     // - 27/04/2009: verificar se PLACA JA EXISTI
     If Trim(edPlaca.Text) <> ''
     Then Begin

       DMPESSOA.TALX.Close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add('select * from equipamento');
       DMPESSOA.TALX.SQL.Add('where upper(equipamento.placa) like Upper(:PLACA)');
       DMPESSOA.TALX.ParamByName('PLACA').AsString := Trim(edPlaca.Text);
       DMPESSOA.TALX.Open;

       If not DMPESSOA.TALX.IsEmpty
       Then Begin
            // - 27/04/2009:    VERIFICAR SE ENCONTRA CLIENTE E PESSOA
            If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.TALX.FieldByName('COD_CLIENTE').AsString , '')
            Then Begin
               If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString , '')
               Then Begin               
                  If msg
                  Then Begin  
                      If Mensagem('   A T E N Ç Ã O   ','A placa informada já está cadastrada para ' + DMPESSOA.TPessoa.FieldByName('NOME').AsString + '.' + #13 + 'Utilizar cliente e placa encontrado?','',2,3,false,'A')=2
                      Then Begin

                           XCOD_PESSOA := DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger;
                           edNome.Text := DMPESSOA.TPessoa.FieldByName('NOME').AsString;
                           edFone.Text := DMPESSOA.TPessoa.FieldByName('TELREL').AsString;
                           edCNPJCPF.Text := DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString;

                           XCOD_CLIENTE := DMPESSOA.TCliente.FieldByName('cod_cliente').AsInteger;

                           XCOD_EQUIPAMENTO := DMPESSOA.TALX.FieldByName('COD_EQUIPAMENTO').AsInteger;
                           edPlaca.Text := DMPESSOA.TALX.FieldByName('PLACA').AsString;
                           edModelo.Text := DMPESSOA.TALX.FieldByName('MODELO').AsString;
                           edNumFrota.Text := DMPESSOA.TALX.FieldByName('NUM_FROTA').AsString;


                           // selecionando dados da tabela pessoa fisica
                           DMPESSOA.TPessoaF.Close;
                           DMPESSOA.TPessoaF.SQL.Clear;
                           DMPESSOA.TPessoaF.SQL.Add('select * from pessoaf where pessoaf.cod_pessoa = :codigo');
                           DMPESSOA.TPessoaF.ParamByName('codigo').AsInteger := XCOD_PESSOA;
                           DMPESSOA.TPessoaF.Open;

                           If DMPESSOA.TPessoaF.IsEmpty
                           Then
                               RGTIPO.ItemIndex := 1
                           Else
                               RGTIPO.ItemIndex := 0;

                           XOK := True;
                           Result := True;
                           
                           btnConfirmar.Click;
                      End;
                  End
                  Else Begin
                       XCOD_EQUIPAMENTO := DMPESSOA.TALX.FieldByName('COD_EQUIPAMENTO').AsInteger;
                       Result := True;
                  End;
               End;
            End;
       End;
     End;


End;

procedure TFCadPlaca.edCNPJCPFExit(Sender: TObject);
begin
     If Trim(edCNPJCPF.Text) <> ''
     Then Begin
         verificaPessoa(true);
     End;
end;

procedure TFCadPlaca.edPlacaExit(Sender: TObject);
begin
     If Trim(edPlaca.Text) <> ''
     Then Begin
          verificaEquipamento(true);

     End;
end;

procedure TFCadPlaca.edNomeChange(Sender: TObject);
begin
     Repaint;
end;

procedure TFCadPlaca.edCNPJCPFChange(Sender: TObject);
begin
     Repaint;
end;

procedure TFCadPlaca.edPlacaChange(Sender: TObject);
begin
     Repaint;
end;

procedure TFCadPlaca.edModeloChange(Sender: TObject);
begin
     Repaint;
end;

procedure TFCadPlaca.edNumFrotaChange(Sender: TObject);
begin
     Repaint;
end;



end.
