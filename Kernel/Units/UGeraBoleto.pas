unit UGeraBoleto;

interface

Uses
   Classes, Graphics, SysUtils,extctrls;
////Variaveis////
var
   ////Dados Bancários///
   XCarteira, XDigCodCedente:String;
   XDataVencimento,XDigitoAgencia,XcodBanco:String;
   XNossoNum, XCodCedente, XDigitoNossoNum, XCodAgCedente:String;
   XNumDocmento,XCedenteNome,XNumeroConta,XDigitoConta:String;

   XCodigo,XInst :String;
   XDataMoraJuros,XDataProtesto,XDataDesconto,XDataAbatimento,XDataDocumento,XDataProcessamento: TDateTime;

   ///Dados do Sacado////
   XEndNum,XEndComp,XEndBairro,XEndCep,XEndCidade:String;
   XEndUF,XEndRua,XSacadoNome,XNumCpfCnpj,XtiPessoa:String;
   
   XValorDoc,XValorMoraJuros, XValorDesconto, XValorAbatimento:Real;

   XHeight,XWidth :Integer;

   ///Variaveis para uso da formatação///
   XAgenciaCodigoCedente,XNossoNumero,ACarteira,XEspecieDocumento,XCodigoBanco: string;
   XInstrucoes: TStringList;
   XClasseBanco: TPersistentClass;
   XBanco: TPersistent;


    //Paulo 19/01/2011: função para tratamento dos campos no boleto
    procedure GeraBoleto();
    //Paulo 21/01/2011: Formata boleto para o banco sicob 
    procedure FormatarBoleto756(XAgenciaCodigoCedente, XNossoNumero, XCarteira, XEspecieDocumento: string);
    //Paulo 19/01/2011: Função resposável em formatar alguns textos para o boleto
    Function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
    function Modulo10(Valor: String) : string;
    function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;
    //Paulo 19/01/2011: Funçaõ que retorna o digito do banco
    function GetDigito(XCodBco:String): string;
    //Paulo 21/01/2011: Função resposavel em gerar o código de barras
    function GerarCodigoBarra (Xcodbanco:String): String;
    //Paulo 21/01/2011: GEra o campo livre para o código de barra
    function GeraCampoLivre(XCodBco, XNossoNumero, XCodAg, XCodCed,XCart: String):string;
    //Paulo 21/01/2011: fator de vencimento é a quantidade de dias entre 07/Nov/1997 e a data de vencimento do título
    function CalcularFatorVencimento(DataDesejada : TDateTime) : string;
    //Paulo 21/01/2011: Traduz dígitos do código de barras para valores de 0 e 1, formando um código do tipo Intercalado 2 de 5
    function Define2de5 : string;
    //Paulo 21/01/2011: Gera a linha digitavel que vai na parte de cima do carnê 
    function GeraLinhaDigitavel : string;
    //Paulo 21/01/2011: Gera a imagem do código de barra
    function GeraImagemCodBarra : TImage;
    //Paulo 21/01/2011: Formata o nosso numero para diversos bancos
    function FormataNossoNumero(XcodBanco):String;


implementation

uses UPadraoContas, Dialogs;



type
   {Informações sobre o banco}
   TgBanco = class(TPersistent)
   private
      fCodigo : string; {Código do banco na câmara de compensação}
      procedure SetCodigo(XCodigoBanco : string);
     // function GetDigito : string; {Retorna o dígito do código do banco}
      function GetNome   : string; {Retorna o nome do banco}
   public
      procedure   Assign(XBanco: TgBanco); reintroduce;
   published
      property Codigo : string read fCodigo write SetCodigo;
      //property Digito : string read GetDigito;
      property Nome   : string read GetNome;
   end;



Function Teste(XCodBco, XNossoNum, XCodAg, XCodCed,XCart: String): String;
Begin

end;
//Paulo 19/01/2011: função para tratamento dos campos no boleto
procedure GeraBoleto();
// GetFormatoBoleto: procedure(XTitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string) of object;
begin
   XInstrucoes := TStringList.Create;
   //formata de acordo
   If (XCodBanco<>'001') AND (XCodBanco<>'756')  AND (XCodBanco<>'237') And (XCodBanco<>'748') Then
   	XAgenciaCodigoCedente := XCodAgCedente + '/' + XCodCedente;

	//NOSSO NUMERO P/ O BRADESCO
   If XCodBanco='237'
   Then Begin
		XNossoNumero:=Formatar(XNossoNum, 11,false,'0');
   End;
   If XCodBanco='001'
   Then Begin
   	If (Length(XCodAgCedente)=5) OR (Length(XCodAgCedente)=4)
   	Then Begin
			XAgenciaCodigoCedente:=XCodAgCedente+'-'+XDigitoAgencia+'/'+Formatar(XCodCedente, 9,false,'0')+'-'+XDigCodCedente;
   	End;
   	If XDigitoNossoNum<> '' Then
   		XNossoNumero := XNossoNum + '-' + XDigitoNossoNum
   	Else
			XNossoNumero := XNossoNum;
   End;
   If XCodBanco='756'
   Then Begin
   	XAgenciaCodigoCedente:=Formatar(XCodAgCedente, 4, False, '0')+'/00/'+Formatar(XCodCedente, 7, False, '0');
  		XNossoNumero := XNossoNum;
   End;
   If XCodBanco='748'
   Then Begin
   	XAgenciaCodigoCedente:=XCodAgCedente+'.'+XDigitoAgencia+'-'+XCodCedente;
  		XNossoNumero := XNossoNum+'-'+XDigCodCedente;
   End;

   FormataNossoNumero(XcodBanco);

   ACarteira := XCarteira;
   XEspecieDocumento := '';

   XCodigoBanco := Formatar(XCodBanco,3,false,'0');
   XClasseBanco := GetClass('TgBanco'+XCodigoBanco);


   {if XClasseBanco <> nil then
   begin
      XBanco := XClasseBanco.Create;
      TRY
         @GetFormatoBoleto := ABanco.MethodAddress('FormatarBoleto');
         if @GetFormatoBoleto <> nil
         Then Begin
           If (ACodigoBanco<>'001') AND (ACodigoBanco<>'756') AND (ACodigoBanco<>'237') Then
				GetFormatoBoleto(Self,AAgenciaCodigoCedente,ANossoNumero,ACarteira, AEspecieDocumento);
           If ACodigoBanco='001'
           Then Begin
           	//PARA BANCO DO BRASIL
         		If (Length(Cedente.ContaBancaria.CodigoAgencia)<>5) AND (Length(Cedente.ContaBancaria.CodigoAgencia)<>4) Then
           		GetFormatoBoleto(Self,AAgenciaCodigoCedente,ANossoNumero,ACarteira, AEspecieDocumento)
           	Else
           		GetFormatoBoleto(Self, NullAsStringValue,ANossoNumero,ACarteira, AEspecieDocumento);
           End;
           If (ACodigoBanco='756') Then
				GetFormatoBoleto(Self, NullAsStringValue, NullAsStringValue, ACarteira, AEspecieDocumento);
           If (ACodigoBanco='237') Then
				GetFormatoBoleto(Self, AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento);
         End;
         ABanco.Free;
      EXCEPT
         ABanco.Free;
         Raise;
      END
   end;}
   If (XCodigoBanco='341') Then
   	ACarteira := XCarteira;
   if XDataProtesto <> 0 then
      XInstrucoes.Add('Protestar em ' + FormatDateTime('dd/mm/yyyy',XDataProtesto));

   if XValorAbatimento <> 0 then
      if XDataAbatimento <> 0 then
         XInstrucoes.Add('Conceder abatimento de ' + FormatCurr('R$ #,##0.00',XValorAbatimento) + ' para pagamento até ' + FormatDateTime('dd/mm/yyyy',XDataAbatimento))
      else
         XInstrucoes.Add('Conceder abatimento de ' + FormatCurr('R$ #,##0.00',XValorAbatimento) + ' para pagamento até ' + FormatDateTime('dd/mm/yyyy',StrToDate(XDataVencimento)));

   if XValorDesconto <> 0 then
      if XDataDesconto <> 0 then
         XInstrucoes.Add('Conceder desconto de ' + FormatCurr('R$ #,##0.00',XValorDesconto) + ' por dia de antecipação para pagamento até ' + FormatDateTime('dd/mm/yyyy',XDataDesconto))
      else
         XInstrucoes.Add('Conceder desconto de ' + FormatCurr('R$ #,##0.00',XValorDesconto) + ' por dia de antecipação');

   if XValorMoraJuros <> 0 then
      if XDataMoraJuros <> 0 then
         XInstrucoes.Add('Cobrar juros de ' + FormatCurr('R$ #,##0.00',XValorMoraJuros) + ' por dia de atraso para pagamento a partir de ' + FormatDateTime('dd/mm/yyyy',XDataMoraJuros))
      else
         XInstrucoes.Add('Cobrar juros de ' + FormatCurr('R$ #,##0.00',XValorMoraJuros) + ' por dia de atraso');

   XInstrucoes.Add(XInst);

   GerarCodigoBarra (XcodBanco);
   
   
   {

      ReportTitle := 'Cobrança - ' + Cedente.ContaBancaria.Banco.Nome + ' - Sacado: ' + Sacado.Nome;

      {Ficha de compensação}  {
      //txtNomeBanco.Caption := Cedente.ContaBancaria.Banco.Nome;
      QRlbAg2 .Caption := Cedente.ContaBancaria.Banco.Codigo + '-' + Cedente.ContaBancaria.Banco.Digito;
      txtLocalPagamento.Caption := AnsiUpperCase(LocalPagamento);
      txtDataVencimento.Caption := FormatDateTime('dd/mm/yyyy',DataVencimento);
      txtNomeCedente.Caption := AnsiUpperCase(Cedente.Nome);
      txtAgenciaCodigoCedente.Caption := AAgenciaCodigoCedente;
      txtDataDocumento.Caption := FormatDateTime('dd/mm/yyyy',DataDocumento);
      txtNumeroDocumento.Caption := NumeroDocumento;
      txtEspecieDocumento.Caption := AEspecieDocumento;
      if AceiteDocumento = adSim then
         txtAceite.Caption := 'S'
      else
         txtAceite.Caption := 'N';
      txtDataProcessamento.Caption := FormatDateTime('dd/mm/yyyy',Now);
      txtNossoNumero.Caption := ANossoNumero;
      txtUsoBanco.Caption := '';
      txtCarteira.Caption := ACarteira;
      txtEspecieMoeda.Caption := 'R$';
      txtQuantidadeMoeda.Caption := '1';
      txtValorMoeda.Caption := FormatCurr('#,##0.00',ValorDocumento);
      txtValorDocumento.Caption := FormatCurr('#,##0.00',ValorDocumento);
      txtInstrucoes.Lines.Clear;
      txtInstrucoes.Lines.AddStrings(AInstrucoes);
      txtValorDescontoAbatimento.Caption := '';
      txtValorDescontoAbatimentoB.Caption := '';
      txtValorMoraMulta.Caption := '';
      txtValorMoraMultaB.Caption := '';
      txtValorCobrado.Caption := '';
      txtSacadoNome.Caption := AnsiUpperCase(Sacado.Nome);
      case Sacado.TipoInscricao of
         tiPessoaFisica  : txtSacadoCPFCGC.Caption := 'CPF: ' + FormatarComMascara('!000\.000\.000\-00;0; ',Sacado.NumeroCPFCGC);
         tiPessoaJuridica: txtSacadoCPFCGC.Caption := 'CNPJ: ' + FormatarComMascara('!00\.000\.000\/0000\-00;0; ',Sacado.NumeroCPFCGC);
         tiOutro         : txtSacadoCPFCGC.Caption := Sacado.NumeroCPFCGC;
      end;
      txtSacadoRuaNumeroComplemento.Caption := AnsiUpperCase(Sacado.Endereco.Rua + ', ' + Sacado.Endereco.Numero + '   ' + Sacado.Endereco.Complemento);
      txtSacadoCEPBairroCidadeEstado.Caption := AnsiUpperCase(FormatarComMascara('00000-000;0; ',Sacado.Endereco.CEP) + '    ' + Sacado.Endereco.Bairro + '    ' + Sacado.Endereco.Cidade + '    ' + Sacado.Endereco.Estado);
      txtCodigoBaixa.Caption := ANossoNumero;

      {Segunda via do boleto}  {
      txtNomeBanco2.Caption := Cedente.ContaBancaria.Banco.Nome;
      txtCodigoBanco2.Caption := Cedente.ContaBancaria.Banco.Codigo + '-' + Cedente.ContaBancaria.Banco.Digito;
      txtLocalPagamento2.Caption := AnsiUpperCase(LocalPagamento);
      txtDataVencimento2.Caption := FormatDateTime('dd/mm/yyyy',DataVencimento);
      txtNomeCedente2.Caption := AnsiUpperCase(Cedente.Nome);
      txtAgenciaCodigoCedente2.Caption := AAgenciaCodigoCedente;
      txtDataDocumento2.Caption := FormatDateTime('dd/mm/yyyy',DataDocumento);
      txtNumeroDocumento2.Caption := NumeroDocumento;
      txtEspecieDocumento2.Caption := AEspecieDocumento;
      if AceiteDocumento = adSim then
         txtAceite2.Caption := 'S'
      else
         txtAceite2.Caption := 'N';
      txtDataProcessamento2.Caption := FormatDateTime('dd/mm/yyyy',Now);
      txtNossoNumero2.Caption := ANossoNumero;
      txtUsoBanco2.Caption := '';
      txtCarteira2.Caption := ACarteira;
      txtEspecieMoeda2.Caption := 'R$';
      txtQuantidadeMoeda2.Caption := '1';
      txtValorMoeda2.Caption := FormatCurr('#,##0.00',ValorDocumento);
      txtValorDocumento2.Caption := FormatCurr('#,##0.00',ValorDocumento);
      txtInstrucoes2.Lines.Clear;
      txtInstrucoes2.Lines.AddStrings(AInstrucoes);
      txtValorDescontoAbatimento2.Caption := '';
      txtValorDescontoAbatimentoB2.Caption := '';
      txtValorMoraMulta2.Caption := '';
      txtValorMoraMultaB2.Caption := '';
      txtValorCobrado2.Caption := '';
      txtSacadoNome2.Caption := AnsiUpperCase(Sacado.Nome);
      case Sacado.TipoInscricao of
         tiPessoaFisica  : txtSacadoCPFCGC2.Caption := 'CPF: ' + FormatarComMascara('!000\.000\.000\-00;0; ',Sacado.NumeroCPFCGC);
         tiPessoaJuridica: txtSacadoCPFCGC2.Caption := 'CNPJ: ' + FormatarComMascara('!00\.000\.000\/0000\-00;0; ',Sacado.NumeroCPFCGC);
         tiOutro         : txtSacadoCPFCGC2.Caption := Sacado.NumeroCPFCGC;
      end;
      txtSacadoRuaNumeroComplemento2.Caption := AnsiUpperCase(Sacado.Endereco.Rua + ', ' + Sacado.Endereco.Numero + '   ' + Sacado.Endereco.Complemento);
      txtSacadoCEPBairroCidadeEstado2.Caption := AnsiUpperCase(FormatarComMascara('00000-000;0; ',Sacado.Endereco.CEP) + '    ' + Sacado.Endereco.Bairro + '    ' + Sacado.Endereco.Cidade + '    ' + Sacado.Endereco.Estado);
      txtCodigoBaixa2.Caption := ANossoNumero;

      {Terceira via do boleto}       {
      txtNomeBanco3.Caption := Cedente.ContaBancaria.Banco.Nome;
      txtCodigoBanco3.Caption := Cedente.ContaBancaria.Banco.Codigo + '-' + Cedente.ContaBancaria.Banco.Digito;
      txtLocalPagamento3.Caption := AnsiUpperCase(LocalPagamento);
      txtDataVencimento3.Caption := FormatDateTime('dd/mm/yyyy',DataVencimento);
      txtNomeCedente3.Caption := AnsiUpperCase(Cedente.Nome);
      txtAgenciaCodigoCedente3.Caption := AAgenciaCodigoCedente;
      txtDataDocumento3.Caption := FormatDateTime('dd/mm/yyyy',DataDocumento);
      txtNumeroDocumento3.Caption := NumeroDocumento;
      txtEspecieDocumento3.Caption := AEspecieDocumento;
      if AceiteDocumento = adSim then
         txtAceite3.Caption := 'S'
      else
         txtAceite3.Caption := 'N';
      txtDataProcessamento3.Caption := FormatDateTime('dd/mm/yyyy',Now);
      txtNossoNumero3.Caption := ANossoNumero;
      txtUsoBanco3.Caption := '';
      txtCarteira3.Caption := ACarteira;
      txtEspecieMoeda3.Caption := 'R$';
      txtQuantidadeMoeda3.Caption := '';
      txtValorMoeda3.Caption :='';
      txtValorDocumento3.Caption := FormatCurr('#,##0.00',ValorDocumento);
      txtInstrucoes3.Lines.Clear;
      txtInstrucoes3.Lines.AddStrings(AInstrucoes);
      txtValorDescontoAbatimento3.Caption := '';
      txtValorDescontoAbatimentoB3.Caption := '';
      txtValorMoraMulta3.Caption := '';
      txtValorMoraMultaB3.Caption := '';
      txtValorCobrado3.Caption := '';
      txtSacadoNome3.Caption := AnsiUpperCase(Sacado.Nome);
      case Sacado.TipoInscricao of
         tiPessoaFisica  : txtSacadoCPFCGC3.Caption := 'CPF: ' + FormatarComMascara('!000\.000\.000\-00;0; ',Sacado.NumeroCPFCGC);
         tiPessoaJuridica: txtSacadoCPFCGC3.Caption := 'CNPJ: ' + FormatarComMascara('!00\.000\.000\/0000\-00;0; ',Sacado.NumeroCPFCGC);
         tiOutro         : txtSacadoCPFCGC3.Caption := Sacado.NumeroCPFCGC;
      end;
      txtSacadoRuaNumeroComplemento3.Caption := AnsiUpperCase(Sacado.Endereco.Rua + ', ' + Sacado.Endereco.Numero + '   ' + Sacado.Endereco.Complemento);
      txtSacadoCEPBairroCidadeEstado3.Caption := AnsiUpperCase(FormatarComMascara('00000-000;0; ',Sacado.Endereco.CEP) + '    ' + Sacado.Endereco.Bairro + '    ' + Sacado.Endereco.Cidade + '    ' + Sacado.Endereco.Estado);
      txtCodigoBaixa3.Caption := ANossoNumero;
      txtLinhaDigitavel3.Caption := CodigoBarra.LinhaDigitavel;
      imgCodigoBarras3.Picture.Assign(CodigoBarra.Imagem.Picture);

     }
  // XInstrucoes.Free;


end;


//Paulo 19/01/2011: Função resposável em formatar alguns textos para o boleto
Function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto for MAIOR que o desejado, eliminar últimos caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto for MAIOR que o desejado, eliminar primeiros caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(AnsiUpperCase(Texto));
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            'Á','À','Â','Ä','Ã' : Texto[i] := 'A';
            'É','È','Ê','Ë' : Texto[i] := 'E';
            'Í','Ì','Î','Ï' : Texto[i] := 'I';
            'Ó','Ò','Ô','Ö','Õ' : Texto[i] := 'O';
            'Ú','Ù','Û','Ü' : Texto[i] := 'U';
            'Ç' : Texto[i] := 'C';
            'Ñ' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);
end;


procedure TgBanco.SetCodigo(XCodigoBanco: string);
begin
   XCodigoBanco := Formatar(XCodigoBanco,3,false,'0');
   if (XCodigoBanco = '000')
   then Begin
      fCodigo := ''
   End
   else Begin
   	if (XCodigoBanco <> fCodigo) then
      		fCodigo := XCodigoBanco;
   End;
end;

procedure TgBanco.Assign(XBanco : TgBanco);
begin
   Codigo := XBanco.Codigo;
end;


//Paulo 19/01/2011: Funçaõ que retorna o digito do banco
function GetDigito(XCodBco:String): string;
begin
	if XCodBco = '' then
      Result := ''
   else
      Result := Modulo11(XCodBco,9);
   if (XCodBco = '748') then
   	Result:='X';
end;

function TgBanco.GetNome : string;
var
   XCodigoBanco: string;
   XClasseBanco: TPersistentClass;
   XBanco: TPersistent;
   GetNomeBanco: function: string of object;
begin
   XCodigoBanco := Formatar(Codigo,3,false,'0');
   GetNomeBanco := nil;
   XClasseBanco := GetClass('TgBanco'+XCodigoBanco);
   if XClasseBanco <> nil then
   begin
      XBanco := XClasseBanco.Create;
      TRY
         @GetNomeBanco := XBanco.MethodAddress('GetNomeBanco');
         if @GetNomeBanco <> nil then
            Result :=  GetNomeBanco
         else
            Raise Exception.CreateFmt('O nome do banco %s não está disponível',[XCodigoBanco]);
         XBanco.Free;
      EXCEPT
         XBanco.Free;
         Raise;
      END;
   end
   else
      Raise Exception.CreateFmt('O banco %s não está disponível',[XCodigoBanco]);
end;

function Modulo10(Valor: String) : string;
{
   Rotina usada para cálculo de alguns dígitos verificadores
   Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
   esquerda e multiplica-se por 2121212...
   Soma-se cada um dos subprodutos. Caso algum dos subprodutos tenha mais de um
   dígito, deve-se somar cada um dos dígitos. (Exemplo: 7*2 = 14 >> 1+4 = 5)
   Divide-se a soma por 10.
   Faz-se a operação 10-Resto da divisão e devolve-se o resultado dessa operação
   como resultado da função Modulo10.
   Obs.: Caso o resultado seja maior que 9, deverá ser substituído por 0 (ZERO).
}
var
   Auxiliar : string;
   Contador, Peso : integer;
   Digito : integer;
begin
   Auxiliar := '';
   Peso := 2;
   for Contador := Length(Valor) downto 1 do
   begin
      Auxiliar := IntToStr(StrToInt(Valor[Contador]) * Peso) + Auxiliar;
      if Peso = 1 then
         Peso := 2
      else
         Peso := 1;
   end;

   Digito := 0;
   for Contador := 1 to Length(Auxiliar) do
   begin
      Digito := Digito + StrToInt(Auxiliar[Contador]);
   end;
   Digito := 10 - (Digito mod 10);
   if (Digito > 9) then
      Digito := 0;
   Result := IntToStr(Digito);
end;

function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;
{
   Rotina muito usada para calcular dígitos verificadores
   Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
   esquerda e multiplica-se pela seqüência de pesos 2, 3, 4 ... até BASE.
   Por exemplo: se a base for 9, os pesos serão 2,3,4,5,6,7,8,9,2,3,4,5...
   Se a base for 7, os pesos serão 2,3,4,5,6,7,2,3,4...
   Soma-se cada um dos subprodutos.
   Divide-se a soma por 11.
   Faz-se a operação 11-Resto da divisão e devolve-se o resultado dessa operação
   como resultado da função Modulo11.
   Obs.: Caso o resultado seja maior que 9, deverá ser substituído por 0 (ZERO).
}
var
   Soma : integer;
   Contador, Peso, Digito : integer;
begin
   Soma := 0;
   Peso := 2;
   for Contador := Length(Valor) downto 1 do
   begin
      Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
      if Peso < Base then
         Peso := Peso + 1
      else
         Peso := 2;
   end;

   if Resto then
      Result := IntToStr(Soma mod 11)
   else
   begin
      Digito := 11 - (Soma mod 11);
      if (Digito > 9) then
         Digito := 0;
      Result := IntToStr(Digito);
   end
end;

//Paulo 21/01/2011: Função resposavel em gerar o código de barras
function GerarCodigoBarra (Xcodbanco:String): String;
var
   XCodigoBan,
   XCodigoMoeda,
   XDigitoCodigoBarras,
   XFatorVencimento,
   XValorDocumento,
   XCampoLivre,
   XCodigoBarras: string;
   XClasseBanco: TPersistentClass;
   XBanco: TPersistent;

begin

   //Primeira parte do código de barras
   XCodigoBan := Formatar(XcodBanco,3,false,'0');
   XCodigoMoeda := '9';
   XFatorVencimento := Formatar(CalcularFatorVencimento(StrToDate(XDataVencimento)),4,false,'0');
   XValorDocumento := FormatCurr('0000000000',XValorDoc*100); {Formata o valor com 10 dígitos, incluindo as casas decimais, mas não mostra o ponto decimal}

   //Segunda parte do código de barras - Campo livre - Varia de acordo com o banco
   try
         XCampoLivre:=GeraCampoLivre(XcodBanco,XNossoNum,XCodAgCedente,XCodCedente,XCarteira);
   Except
         MessageDlg('A geração de código de barras para títulos do banco %s não está disponível', mtError, [mbOK], 0);

   end;
   
 	XCodigo := Copy(XCodigoBarras,1,4) + XDigitoCodigoBarras + Copy(XCodigoBarras,5,length(XCodigoBarras));
  	XCodigoBarras := XCodigoBanco + xCodigoMoeda + XFatorVencimento + XValorDocumento + XCampoLivre;
   //Calcula o dígito e completa o código de barras
   If XcodBanco = '756' Then
   	XCodigoBarras := XCodigoBanco + XCodigoMoeda + XFatorVencimento + XValorDocumento + XCarteira + XCodAgCedente+XCampoLivre;
   If XcodBanco ='748'
   Then Begin
   	XCodigoBarras := XCodigoBan + XCodigoMoeda + XFatorVencimento + XValorDocumento+XCampoLivre;
   End;

   XDigitoCodigoBarras := Modulo11(XCodigoBarras,9);
   if XDigitoCodigoBarras = '0' then
      XDigitoCodigoBarras := '1';
  	XCodigo := Copy(XCodigoBarras,1,4) + XDigitoCodigoBarras + Copy(XCodigoBarras,5, length(XCodigoBarras));
   If XcodBanco ='756' Then
   	XCodigo := Copy(XCodigoBarras,1,4) + XDigitoCodigoBarras + Copy(XCodigoBarras,5, length(XCodigoBarras));
   If XcodBanco ='748' Then
   	XCodigo := XCodigoBan + XCodigoMoeda + XDigitoCodigoBarras + XFatorVencimento + XValorDocumento + XCampoLivre;

end;


//Paulo 21/01/2011: GEra o campo livre para o código de barra
function GeraCampoLivre(XCodBco, XNossoNumero, XCodAg, XCodCed,XCart: String):string;
var

   XCodigoAgencia,
   XCodigoCedente: string;
begin

   if XCodBco = '756' then
   begin
      XCodigoAgencia := Formatar(XCodAg,4,false,'0');
      XCodigoCedente := Formatar(XCodCed,7,false,'0');
      Result := Formatar(XCart, 2, False, '0') +XCodigoCedente+XNossoNumero+'001';
   end;


end;

//Paulo 21/01/2011: Traduz dígitos do código de barras para valores de 0 e 1, formando um código do tipo Intercalado 2 de 5
function Define2de5 : string;

var
   CodigoAuxiliar : string;
   Start   : string;
   Stop    : string;
   T2de5   : array[0..9] of string;
   Codifi  : string;
   I       : integer;

begin
   Result := 'Erro';
   Start    := '0000';
   Stop     := '100';
   T2de5[0] := '00110';
   T2de5[1] := '10001';
   T2de5[2] := '01001';
   T2de5[3] := '11000';
   T2de5[4] := '00101';
   T2de5[5] := '10100';
   T2de5[6] := '01100';
   T2de5[7] := '00011';
   T2de5[8] := '10010';
   T2de5[9] := '01010';

   //Digitos
   for I := 1 to length(XCodigo) do
   begin
      if pos(XCodigo[I],'0123456789') <> 0 then
         Codifi := Codifi + T2de5[StrToInt(XCodigo[I])]
      else
         Exit;
   end;

   //Se houver um número ímpar de dígitos no Código, acrescentar um ZERO no início
   if odd(length(XCodigo)) then
      Codifi := T2de5[0] + Codifi;

   //Intercalar números - O primeiro com o segundo, o terceiro com o quarto, etc...
   I := 1;
   CodigoAuxiliar := '';
   while I <= (length(Codifi) - 9)do
   begin
      CodigoAuxiliar := CodigoAuxiliar + Codifi[I] + Codifi[I+5] + Codifi[I+1] + Codifi[I+6] + Codifi[I+2] + Codifi[I+7] + Codifi[I+3] + Codifi[I+8] + Codifi[I+4] + Codifi[I+9];
      I := I + 10;
   end;

    //Acrescentar caracteres Start e Stop
   Result := Start + CodigoAuxiliar + Stop;
end;

//Paulo 21/01/2011: Gera a linha digitavel que vai na parte de cima do carnê 
function GeraLinhaDigitavel : string;
var
   p1, p2, p3, p4, p5, p6,
   Campo1, Campo2, Campo3, Campo4, Campo5 : string;
begin
   If Copy(XCodigo,1,3)='756'
   Then Begin
   	//1º grupo SICOOB
       //BANCO+MOEDA+CARTEIRA+AGENCIA
   	p1 := Copy(XCodigo,1,4); // BANCO E MOEDA
   	p2 := Copy(XCodigo,20,1); // CARTEIRA
   	p3 := Copy(XCodigo,21,4); // AGENCIA
   	p4 := Modulo10(p1+p2+P3); // DIGITO VERIFICADOR
   	Campo1 := p1+P2+'.'+p3+P4;
   End
   Else Begin

      	{Campo 1 - composto pelo código do banco, código da moeda, as cinco primeiras posições
      	do campo livre e DV (modulo10) desse campo}

   	p1 := Copy(XCodigo,1,4);
   	p2 := Copy(XCodigo,20,5);
   	p3 := Modulo10(p1+p2);
   	p4 := p1+p2+p3;
   	p5 := Copy(p4,1,5);
   	p6 := Copy(p4,6,5);
   	Campo1 := p5+'.'+p6;
   End;
   If Copy(XCodigo,1,3)='756'
   Then Begin
   	//2º grupo p/ siccob
       //10 1 POSICOES DO CODIGO LIVRE+DIG VERIF
   	p1 := Copy(XCodigo, 25, 5); //1º 5 POSICOES DO COD LIVRE
       P2 := Copy(XCodigo, 30, 5);//OUTRAS 5 POSIÇOES DOA 10 º CARACTERES DO CAMPO LIVRE
   	p3 := Modulo10(p1+P2);//DIG VERF
   	Campo2 := P1+'.'+p2+P3;

   End
   Else Begin

      	{Campo 2 - composto pelas posiçoes 6 a 15 do campo livre
      	e DV (modulo10) deste campo}

   	p1 := Copy(XCodigo,25,10);
   	p2 := Modulo10(p1);
   	p3 := p1+p2;
   	p4 := Copy(p3,1,5);
   	p5 := Copy(p3,6,6);
   	Campo2 := p4+'.'+p5;
	End;
   If Copy(XCodigo,1,3)='756'
   Then Begin
		// 3º grupo sicoob
       // 10 1º posições do campo livre + dig verif
   	p1 := Copy(XCodigo,35,5);
   	p2 := Copy(XCodigo,40,5);
   	p3 := Modulo10(p1+p2);
   	Campo3 := p1+'.'+p2+p3;
   End
   Else Begin
   	{
      Campo 3 - composto pelas posicoes 16 a 25 do campo livre
      e DV (modulo10) deste campo}

   	p1 := Copy(XCodigo,35,10);
   	p2 := Modulo10(p1);
   	p3 := p1+p2;
   	p4 := Copy(p3,1,5);
   	p5 := Copy(p3,6,6);
   	Campo3 := p4+'.'+p5 ;
   End;
   //4 º grupo digito verificador do codigo de barras
  	Campo4 := Copy(XCodigo,5,1);

  	//5º grupo fator de vencimento+valor nominal
  	Campo5 := Copy(XCodigo, 6,14);

   Result := Campo1 + ' ' + Campo2 + ' ' + Campo3 + ' ' + Campo4 + ' ' + Campo5;
end;
//Paulo 21/01/2011: Gera a imagem do código de barra
function GeraImagemCodBarra : TImage;
const
   XCorBarra           = clBlack;
   XCorEspaco          = clWhite;
   XLarguraBarraFina   = 1;
   XLarguraBarraGrossa = 3;
   XAlturaBarra        = 50;
var
   X            : integer;
   Col          : integer;
   Lar          : integer;
   XCodigoAuxiliar : string;
begin
   GerarCodigoBarra (XcodBanco);
   XCodigoAuxiliar := Define2de5;
   Result := TImage.Create(nil);
   XHeight := XAlturaBarra;
   XWidth := 0;
   For X := 1 to Length(XCodigoAuxiliar) do
      case XCodigoAuxiliar[X] of
         '0' : XWidth := XWidth + XLarguraBarraFina;
         '1' : XWidth := XWidth + XLarguraBarraGrossa;
      end;

   Col:= 0;

   if XCodigoAuxiliar <> 'Erro' then
   begin
      for X := 1 to length(XCodigoAuxiliar) do
      begin
         {Desenha barra}
         with Result.Canvas do
         begin
            if Odd(X) then
               Pen.Color := XCorBarra
            else
               Pen.Color := XCorEspaco;

            if XCodigoAuxiliar[X] = '0' then
            begin
               for Lar := 1 to XLarguraBarraFina do
               begin
                  MoveTo(Col,0);
                  LineTo(Col,XAlturaBarra);
                  Col := Col + 1;
               end;
            end
            else
            begin
               for Lar := 1 to XLarguraBarraGrossa do
               begin
                  MoveTo(Col,0);
                  LineTo(Col,XAlturaBarra);
                  Col := Col + 1;
               end;
            end;
         end;
      end;
   end
   else
      Result.Canvas.TextOut(0,0,'Erro');
end;


//Paulo 21/01/2011: fator de vencimento é a quantidade de dias entre 07/Nov/1997 e a data de vencimento do título
function CalcularFatorVencimento(DataDesejada : TDateTime) : string;

begin
   Result := IntToStr( Trunc(DataDesejada - EncodeDate(1997,10,07)));
end;

//Paulo 21/01/2011: Formata boleto para o banco sicob 
procedure FormatarBoleto756(XAgenciaCodigoCedente, XNossoNumero, XCarteira, XEspecieDocumento: string);
begin
      {
      XCodAgCedente := Formatar(XCodAgCedente,4,false,'0') + '/' + Formatar(XCodCedente,7,false,'0');
      XCarteira := Formatar(XCarteira,2);
      case XEspecieDocumento of
         edApoliceSeguro                : AEspecieDocumento := 'AP';
         edCheque                       : AEspecieDocumento := 'CH';
         edDuplicataMercantil           : AEspecieDocumento := 'DM';
         edDuplicataMercantialIndicacao : AEspecieDocumento := 'DMI';
         edDuplicataRural               : AEspecieDocumento := 'DR';
         edDuplicataServico             : AEspecieDocumento := 'DS';
         edDuplicataServicoIndicacao    : AEspecieDocumento := 'DSI';
         edFatura                       : AEspecieDocumento := 'FAT';
         edLetraCambio                  : AEspecieDocumento := 'LC';
         edMensalidadeEscolar           : AEspecieDocumento := 'ME';
         edNotaCreditoComercial         : AEspecieDocumento := 'NCC';
         edNotaCreditoExportacao        : AEspecieDocumento := 'NCE';
         edNotaCreditoIndustrial        : AEspecieDocumento := 'NCI';
         edNotaCreditoRural             : AEspecieDocumento := 'NCR';
         edNotaDebito                   : AEspecieDocumento := 'ND';
         edNotaPromissoria              : AEspecieDocumento := 'NP';
         edNotaPromissoriaRural         : AEspecieDocumento := 'NPR';
         edNotaSeguro                   : AEspecieDocumento := 'NS';
         edParcelaConsorcio             : AEspecieDocumento := 'PC';
         edRecibo                       : AEspecieDocumento := 'RC';
         edTriplicataMercantil          : AEspecieDocumento := 'TM';
         edTriplicataServico            : AEspecieDocumento := 'TS'
      else
         XEspecieDocumento := '';
      end;
       }
end;

//Paulo 21/01/2011: Formata o nosso numero para diversos bancos
Function FormataNossoNumero(XcodBanco):String;
begin
//
end;



end.
