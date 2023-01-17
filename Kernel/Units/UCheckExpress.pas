unit UCheckExpress;

interface


uses
    SysUtils, XMLDoc, XMLIntf, IdHTTP, Classes, ShellApi;

Type

    TLayoutCheckExpress = class
            public
                  //titulo:TFont;
                  UF :String;

    End;

function resourceExists(url:string):boolean;

function ConsultaBacen(logon, senha, tipopessoa, numdocumento:String):String;
function ConsultaExpress(logon, senha, tipopessoa, numdocumento,numbanco, numagencia, ctacorrente, chqinicial, digchqinicial, chqfinal, chqdigfinal, valor, data:String):String;
function ConsultaDividas(logon, senha, tipopessoa, numdocumento,  numDDD, numFone, numbanco, numagencia, ctacorrente, chqinicial, digchqinicial, chqfinal, chqdigfinal, valor, data:String):String;
function ConsultaPlus(logon, senha, tipopessoa, numdocumento, numDDD, numFone, numbanco, numagencia, ctacorrente, chqinicial, digchqinicial, chqfinal, chqdigfinal, valor, data:String):String;
function ConsultaDVB(logon, senha, tipopessoa, numdocumento, numDDD, numFone:String):String;
function ConsultaCartorial(logon, senha, tipopessoa, numdocumento, numDDD, numFone:String):String;
function ConsultaCompleta(logon, senha, tipopessoa, numdocumento, numDDD, numFone:String):String;
function ConsultaCaptura(logon, senha, tipopessoa, numdocumento, cmc7, valor, data:String):String;

function converteDecimal(valor:String):String;
function converteCNPJCPF(valor:String):String;
function converteData(valor:String):String;
function converteHora(valor:String):String;


function headerCE(node:IXMLNode):String;
function resumoRespostaCE(node:IXMLNode):String;
function chequeSemFundoSerasaCE(node:IXMLNode):String;
function detalheRechequeCE(node:IXMLNode):String;
function protestosCE(node:IXMLNode):String;
function acoesCE(node:IXMLNode):String;
function falenciaConcordataCE(node:IXMLNode):String;
function pieCE(node:IXMLNode):String;
function refinCE(node:IXMLNode):String;
function srfCE(node:IXMLNode):String;
function convemDevedoresCE(node:IXMLNode):String;
function chequesSemFundoBacenCE(node:IXMLNode):String;
function chequeSenFundoVarejoCE(node:IXMLNode):String;
function pendenciaComercioCE(node:IXMLNode):String;
function pendenciaFinanceiraCE(node:IXMLNode):String;
function rechequeContumaciaCE(node:IXMLNode):String;
function confirmeiCE(node:IXMLNode):String;
function confirmeiBancoCE(node:IXMLNode):String;
function grafiasCE(node:IXMLNode):String;
function telefoneCE(node:IXMLNode):String;
function passagensInternasCheckExpressCE(node:IXMLNode):String;
function passagensInternasSerasaCE(node:IXMLNode):String;
function passagensMercadoSerasaCE(node:IXMLNode):String;
function referenciaComercialSerasaCE(node:IXMLNode):String;
function teleconsultadosCE(node:IXMLNode):String;
function mensagensCE(node:IXMLNode):String;
function resultadoCapturaCE(node:IXMLNode):String;
function confirmacaoBancariaCE(node:IXMLNode):String;

function xmlToHtml(node, layout :IXMLNode; out arquivo:String):Boolean;

var
  objetivo, subjetivo :Boolean; // verificar na função resumoRespostaCE

implementation

uses UWebBrowser, Forms;


function resourceExists(url:string):boolean;
var h:tidhttp;
begin
  result:=false;
  try
    h:=TIdHttp.Create(nil);
    try
      h.Head(url);
      result:=h.response.ResponseCode=200;
    finally
      freeandnil(h);
    end;
  except
  end;
end;


function ConsultaBacen(logon, senha, tipopessoa, numdocumento:String):String;
Begin
   Result := 'http://www.checkexpress.com.br/ws_bacen/Consulta.asmx/Consultar?Logon=' + Trim(logon) +'&Senha=' + Trim(senha) +'&TipPessoa=' + Trim(tipopessoa) +'&NumDocumento=' + Trim(numdocumento);
End;

function ConsultaExpress(logon, senha, tipopessoa, numdocumento,numbanco, numagencia, ctacorrente, chqinicial, digchqinicial, chqfinal, chqdigfinal, valor, data:String):String;
Begin
   Result := 'http://www.checkexpress.com.br/ws_express/Consulta.asmx/Consultar?Logon=' + Trim(logon) +'&Senha=' + Trim(senha) +'&TipPessoa=' + Trim(tipopessoa) +'&NumDocumento=' + Trim(numdocumento) +'&NumBanco=' + Trim(numbanco) +'&NumAgencia=' + Trim(numagencia) +'&CtaCorrente=' + Trim(ctacorrente) +'&ChqInicial=' + Trim(chqinicial) +'&DigChqInicial=' + Trim(digchqinicial) +'&ChqFinal=' + Trim(chqfinal) +'&DigChqFinal=' + Trim(chqdigfinal) +'&Valor=' + Trim(valor) +'&Vencimento=' + Trim(data);
End;

function ConsultaDividas(logon, senha, tipopessoa, numdocumento,  numDDD, numFone, numbanco, numagencia, ctacorrente, chqinicial, digchqinicial, chqfinal, chqdigfinal, valor, data:String):String;
Begin
  Result := 'http://www.checkexpress.com.br/ws_dividas/Consulta.asmx/Consultar?Logon=' + Trim(logon) +'&Senha=' + Trim(senha) +'&TipPessoa=' + Trim(tipopessoa) +'&NumDocumento=' + Trim(numdocumento) +'&NumDDD=' + Trim(numDDD) +'&NumTelefone=' + Trim(numFone) +'&NumBanco=' + Trim(numbanco) +'&NumAgencia=' + Trim(numagencia) +'&CtaCorrente=' + Trim(ctacorrente) +'&ChqInicial=' + Trim(chqinicial) +'&DigChqInicial=' + Trim(digchqinicial) +'&ChqFinal=' + Trim(chqfinal) +'&DigChqFinal=' + Trim(chqdigfinal) +'&Valor=' + Trim(valor) +'&Vencimento=' + Trim(data);
End;

function ConsultaPlus(logon, senha, tipopessoa, numdocumento, numDDD, numFone, numbanco, numagencia, ctacorrente, chqinicial, digchqinicial, chqfinal, chqdigfinal, valor, data:String):String;
Begin
   Result := 'http://www.checkexpress.com.br/ws_plus/Consulta.asmx/Consultar?Logon=' + Trim(logon) +'&Senha=' + Trim(senha) +'&TipPessoa=' + Trim(tipopessoa) +'&NumDocumento=' + Trim(numdocumento) +'&NumDDD=' + Trim(numDDD) +'&NumTelefone=' + Trim(numFone) +'&NumBanco=' + Trim(numbanco) +'&NumAgencia=' + Trim(numagencia) +'&CtaCorrente=' + Trim(ctacorrente) +'&ChqInicial=' + Trim(chqinicial) +'&DigChqInicial=' + Trim(digchqinicial) +'&ChqFinal=' + Trim(chqfinal) +'&DigChqFinal=' + Trim(chqdigfinal) +'&Valor=' + Trim(valor) +'&Vencimento=' + Trim(data);
End;

function ConsultaDVB(logon, senha, tipopessoa, numdocumento, numDDD, numFone:String):String;
Begin
   Result := 'http://www.checkexpress.com.br/ws_dvb/Consulta.asmx/Consultar?Logon=' + Trim(logon) +'&Senha=' + Trim(senha) +'&TipPessoa=' + Trim(tipopessoa) +'&NumDocumento=' + Trim(numdocumento) +'&NumDDD=' + Trim(numDDD) +'&NumTelefone=' + Trim(numFone);
End;

function ConsultaCartorial(logon, senha, tipopessoa, numdocumento, numDDD, numFone:String):String;
Begin
    Result := 'http://www.checkexpress.com.br/ws_cartorial/Consulta.asmx/Consultar?Logon=' + Trim(logon) +'&Senha=' + Trim(senha) +'&TipPessoa=' + Trim(tipopessoa) +'&NumDocumento=' + Trim(numdocumento) +'&NumDDD=' + Trim(numDDD) +'&NumTelefone=' + Trim(numFone);
End;

function ConsultaCompleta(logon, senha, tipopessoa, numdocumento, numDDD, numFone:String):String;
Begin
    Result := 'http://www.checkexpress.com.br/ws_completa/Consulta.asmx/Consultar?Logon=' + Trim(logon) +'&Senha=' + Trim(senha) +'&TipPessoa=' + Trim(tipopessoa) +'&NumDocumento=' + Trim(numdocumento) +'&NumDDD=' + Trim(numDDD) +'&NumTelefone=' + Trim(numFone);
End;

function ConsultaCaptura(logon, senha, tipopessoa, numdocumento, cmc7, valor, data:String):String;
Begin
   Result := 'http://www.checkexpress.com.br/ws_captura/Captura.asmx/Capturar?Logon=' + Trim(logon) +'&Senha=' + Trim(senha) +'&TipoPessoa=' + Trim(tipopessoa) +'&Documento=' + Trim(numdocumento) +'&CMC7=' + Trim(cmc7) +'&Valor=' + Trim(valor) +'&Vencimento=' + Trim(data);
End;



function converteDecimal(valor:String):String;
var
  tmp :Double;
Begin
  If Trim(valor) = '' Then
    Result := ''
  Else
    Try
      tmp := StrToFloat(Copy(valor, 0, Length(valor)-2) + ',' + Copy(valor, Length(valor)-2, 2));
      Result := FormatFloat('0.00', tmp);
    Except
      Result := '';
    End;
End;

function converteCNPJCPF(valor:String):String;
Begin
  If Trim(valor) = '' Then
    Result := ''
  Else
    Result := Copy(valor, 0, 3) + '.' + Copy(valor, 2, 3) + '.' + Copy(valor, 5, 3) + '-' + Copy(valor, 8, 2);
End;

function converteData(valor:String):String;
Begin
  If Trim(valor) = '' Then
    Result := ''
  Else
    Result := Copy(valor, 0, 2) + '/' + Copy(valor, 3, 2) + '/' + Copy(valor, 5, 4);
End;

function converteHora(valor:String):String;
Begin
  If Trim(valor) = '' Then
    Result := ''
  Else
    Result := Copy(valor, 0, 2) + ':' + Copy(valor, 3, 2);
End;


function headerCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;


  If node <> nil
  Then Begin

        html.Add('<tr>');
            html.Add('<td height="10">');
                html.Add('<!-- Linha de Espa?amento -->');
            html.Add('</td>');
        html.Add('</tr>');

        html.Add('<tr>');
            html.Add('<td>');
                html.Add('<table width="760" cellspacing="0" cellpadding="0">');  // monta tabela principal para o header
                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760">');     // tabela com titulo principal para a tabela (Dados Consultados)
                                html.Add('<tr>');
                                    html.Add('<td bgcolor="#C0C0C0" class="titNoticia_white">');
                                        html.Add('&nbsp;Dados Consultados</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');

                              html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td width="59" bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Consulta:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="124" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['consulta'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="44" class="titNoticia">');
                                                    html.Add('&nbsp;Fonte:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="111" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['fonte'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="81" class="titNoticia">');
                                                    html.Add('&nbsp;Tipo Pessoa:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="48" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['pessoa'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="99" class="titNoticia">');
                                                    html.Add('&nbsp;N&ordm; documento:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="158" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteCNPJCPF(node.ChildNodes['documento'].Text) + '</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                  html.Add('</td>');
                                html.Add('</tr>');


                If node.ChildNodes['vencimento'].Text <> ''
                Then Begin
                              html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td width="53" bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;CMC7:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="285" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['cmc7'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="45" class="titNoticia">');
                                                    html.Add('&nbsp;Valor:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="94" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteDecimal(node.ChildNodes['valor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="88" class="titNoticia">');
                                                    html.Add('&nbsp;Vencimento:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="167" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(node.ChildNodes['vencimento'].Text) + '</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                  html.Add('</td>');
                                html.Add('</tr>');
                End;

                If node.ChildNodes['cheque_inicial'].Text <> ''
                Then Begin
                              html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td width="135" bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Chq. Inicial:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="94" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['cheque_inicial'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="130" class="titNoticia">');
                                                    html.Add('&nbsp;Chq. Final:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="94" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['cheque_final'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="65" class="titNoticia">');
                                                    html.Add('&nbsp;Banco:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="150" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['banco'].Text + '</td>');
												html.Add('<td bgcolor="#eeeeee" width="88" class="titNoticia">');
                                                    html.Add('&nbsp;Agencia:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="150" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['agencia'].Text + '</td>');
												html.Add('<td bgcolor="#eeeeee" width="65" class="titNoticia">');
                                                    html.Add('&nbsp;C/C:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="197" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['conta_corrente'].Text + '</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                  html.Add('</td>');
                                html.Add('</tr>');
                End;
                html.Add('</table>');
            html.Add('</td>');
        html.Add('</tr>');


  End;

  Result := html.Text;

End;

function resumoRespostaCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin


      If node.ChildNodes['restr_objetivo'].Text = 'S' Then
        objetivo := True
      Else
        objetivo := False;

      If node.ChildNodes['restr_subjetivo'].Text = 'S' Then
        subjetivo := True
      Else
        subjetivo := False;
        
                  html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Transa&ccedil;&atilde;o</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="136" class="titNoticia">');
                                                    html.Add('&nbsp;N&uacute;mero da Consulta:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="111" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['numero'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="40" class="titNoticia">');
                                                    html.Add('&nbsp;Data:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="147" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(node.ChildNodes['data'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="47" class="titNoticia">');
                                                    html.Add('&nbsp;Hora:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="251" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteHora(node.ChildNodes['hora'].Text) + '</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
								                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="233" class="titNoticia">');
                                                    html.Add('&nbsp;Apontamentos Restritivos Objetivos:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="138" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['restr_objetivo'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="230" class="titNoticia">');
                                                    html.Add('&nbsp;Apontamentos Restritivos Subjetivos:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="139" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['restr_subjetivo'].Text + '</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function chequeSemFundoSerasaCE(node:IXMLNode):String;
var
  html :TStringList;
  tmp :IXMLNode;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin

        html.Add('<tr>');
            html.Add('<td height="10">');
                html.Add('<!-- Linha de Espa?amento -->');
            html.Add('</td>');
        html.Add('</tr>');

        tmp := node.ChildNodes.FindNode('resumo');

        //cabeçalho

        html.Add('<tr>');
            html.Add('<td>');
                html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760">');
                                html.Add('<tr>');
                                    html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                        html.Add('&nbsp;Cheque sem Fundo SERASA </td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td bgcolor="#D3D3D3" class="titNoticia">');
                                        html.Add('&nbsp;Qtde: ' + tmp.ChildNodes['qtd'].Text + '&nbsp;&nbsp;Ocorr&ecirc;ncia mais Antiga: ' + converteData(tmp.ChildNodes['data_inicial'].Text) + '&nbsp;&nbsp;Ocorr&ecirc;ncia');
                                        html.Add('mais Recente: ' + converteData(tmp.ChildNodes['data_final'].Text) + '</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');


              tmp := node.ChildNodes.FindNode('detalhes');

              If tmp <> nil
              Then Begin
                            //cabeçalho dados
                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760">');
                                html.Add('<tr>');
                                    html.Add('<td bgcolor="#eeeeee" width="80" class="titNoticia">');
                                        html.Add('&nbsp;Data</td>');
                                    html.Add('<td bgcolor="#eeeeee" width="43" class="titNoticia">');
                                        html.Add('&nbsp;Banco</td>');
                                    html.Add('<td bgcolor="#eeeeee" width="53" class="titNoticia">');
                                        html.Add('&nbsp;Ag&ecirc;ncia</td>');
                                    html.Add('<td bgcolor="#eeeeee" width="56" class="titNoticia">');
                                        html.Add('&nbsp;C/C</td>');
                                    html.Add('<td bgcolor="#eeeeee" width="42" class="titNoticia">');
                                        html.Add('&nbsp;Al&iacute;nea</td>');
                                    html.Add('<td bgcolor="#eeeeee" width="99" class="titNoticia">');
                                        html.Add('&nbsp;Valor</td>');
                                    html.Add('<td bgcolor="#eeeeee" width="42" class="titNoticia">');
                                        html.Add('&nbsp;Pra&ccedil;a</td>');
                                    html.Add('<td bgcolor="#eeeeee" width="91" class="titNoticia">');
                                        html.Add('&nbsp;Nome Banco </td>');
                                    html.Add('<td bgcolor="#eeeeee" width="31" class="titNoticia">');
                                        html.Add('&nbsp;UF</td>');
                                    html.Add('<td bgcolor="#eeeeee" width="119" class="titNoticia">');
                                        html.Add('&nbsp;N. Cheque</td>');
                                    html.Add('<td bgcolor="#eeeeee" width="56" class="titNoticia">');
                                        html.Add('&nbsp;TCC</td>');
                                html.Add('</tr>');

                           tmp.ChildNodes.First;
                           repeat
                              //dados
                                html.Add('<tr>');
                                    html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                        html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_ocor'].Text) + '</td>');
                                    html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                        html.Add('&nbsp;' + tmp.ChildNodes['banco'].Text + '</td>');
                                    html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                        html.Add('&nbsp;' + tmp.ChildNodes['agencia'].Text + '</td>');
                                    html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                        html.Add('&nbsp;' + tmp.ChildNodes['conta'].Text + '</td>');
                                    html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                        html.Add('&nbsp;' + tmp.ChildNodes['alinea'].Text + '</td>');
                                    html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                        html.Add('&nbsp;' + converteDecimal(tmp.ChildNodes['valor'].Text) + '</td>');
                                    html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                        html.Add('&nbsp;' + tmp.ChildNodes['praca'].Text + '</td>');
                                    html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                        html.Add('&nbsp;' + tmp.ChildNodes['nome_banco'].Text + '</td>');
                                    html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                        html.Add('&nbsp;' + tmp.ChildNodes['uf'].Text + '</td>');
                                    html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                        html.Add('&nbsp;' + tmp.ChildNodes['cheque'].Text + '</td>');
                                    html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                        html.Add('&nbsp;' + tmp.ChildNodes['titular_conta_conjunta'].Text + '</td>');
                                html.Add('</tr>');

                                tmp := tmp.NextSibling;

                            until tmp = nil;

                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');

                End;
                
                html.Add('</table>');
            html.Add('</td>');
        html.Add('</tr>');

  End;

  Result := html.Text;

End;

function detalheRechequeCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                    html.Add('<tr>');
                      html.Add('<td height="10">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Recheque</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');

                                    //cabeçalho

                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="80" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="41" class="titNoticia">');
                                                    html.Add('&nbsp;Hora</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="45" class="titNoticia">');
                                                    html.Add('&nbsp;Banco</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="54" class="titNoticia">');
                                                    html.Add('&nbsp;Ag&ecirc;ncia</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="61" class="titNoticia">');
                                                    html.Add('&nbsp;C/C</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="78" class="titNoticia">');
                                                    html.Add('&nbsp;Chq. Inicial </td>');
                                                html.Add('<td bgcolor="#eeeeee" width="78" class="titNoticia">');
                                                    html.Add('&nbsp;Chq. Final </td>');
                                                html.Add('<td bgcolor="#eeeeee" width="131" class="titNoticia">');
                                                    html.Add('&nbsp;Motivo</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="123" class="titNoticia">');
													                          html.Add('&nbsp;Doc. Original </td>');
                                                html.Add('<td bgcolor="#eeeeee" width="25" class="titNoticia">');
													                          html.Add('&nbsp;TP</td>');
                                            html.Add('</tr>');

                                            // dados
                                      node.ChildNodes.First;
                                      repeat
                                          If Copy(node.XML, 0, 18) = '<detalhe_recheque>'
                                          Then Begin
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(node.ChildNodes['data_cad'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteHora(node.ChildNodes['hora_cad'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['banco'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['agencia'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['conta'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['cheque_inicial'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['cheque_final'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['motivo'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + node.ChildNodes['doc_original'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + node.ChildNodes['tipo_pessoa'].Text + '</td>');
                                            html.Add('</tr>');
                                          End;
                                            node := node.NextSibling;

                                       until node = nil;

                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function protestosCE(node:IXMLNode):String;
var
  html :TStringList;
  tmp :IXMLNode;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin

                   html.Add('<tr>');
                      html.Add('<td height="10">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');

                                                tmp := node.ChildNodes.FindNode('resumo');

                                                html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                                    html.Add('&nbsp;Protestos</td>');
                                            html.Add('<tr>');
                                              html.Add('<td bgcolor="#D3D3D3" class="titNoticia">');
                                                  html.Add('&nbsp;Qtde: ' + tmp.ChildNodes['qtd'].Text + '&nbsp;&nbsp;Ocorr&ecirc;ncia mais Antiga: ' + converteData(tmp.ChildNodes['data_inicial'].Text) + '&nbsp;&nbsp;Ocorr&ecirc;ncia');
                                                  html.Add('mais Recente: ' + converteData(tmp.ChildNodes['data_final'].Text) + '</td>');
                                          html.Add('</tr>');
                                       html.Add('</table>');
                                    html.Add('</td>');
                               html.Add('</tr>');


                      tmp := node.ChildNodes.FindNode('detalhes');

                      If tmp <> nil
                      Then Begin
                                html.Add('<tr>');
                                   html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="92" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="58" class="titNoticia">');
                                                    html.Add('&nbsp;Cart&oacute;rio</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="62" class="titNoticia">');
                                                    html.Add('&nbsp;Natureza</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="107" class="titNoticia">');
                                                    html.Add('&nbsp;Valor</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="78" class="titNoticia">');
                                                    html.Add('&nbsp;Pra&ccedil;a</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="30" class="titNoticia">');
                                                    html.Add('&nbsp;UF</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="207" class="titNoticia">');
													                          html.Add('&nbsp;Cidade</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="90" class="titNoticia">');
													                          html.Add('&nbsp;Anota&ccedil;&atilde;o</td>');
                                            html.Add('</tr>');
                                            
                                      tmp.ChildNodes.First;
                                      repeat
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_ocor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['cartorio'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['natureza'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteDecimal(tmp.ChildNodes['valor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['praca'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['uf'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + tmp.ChildNodes['cidade'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');

                                                If UpperCase(tmp.ChildNodes['sub_judice'].Text) = 'S' Then
                                                  html.Add('&nbsp;Sub Jud&iacute;cie </td>')
                                                Else If UpperCase(tmp.ChildNodes['sub_judice'].Text) = 'N' Then
                                                  html.Add('&nbsp;Normal</td>')
                                                Else
													                          html.Add('&nbsp;</td>');

                                            html.Add('</tr>');

                                          tmp := tmp.NextSibling;

                                      until tmp = nil;

                                      html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                           End;

                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function acoesCE(node:IXMLNode):String;
var
  html :TStringList;
  tmp :IXMLNode;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                       html.Add('<tr>');
                      html.Add('<td height="10">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');

                                                tmp := node.ChildNodes.FindNode('resumo');

                                                html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                                    html.Add('&nbsp;A&ccedil;&otilde;es</td>');
                                            html.Add('<tr>');
                                              html.Add('<td bgcolor="#D3D3D3" class="titNoticia">');
                                                  html.Add('&nbsp;Qtde: ' + tmp.ChildNodes['qtd'].Text + '&nbsp;&nbsp;Ocorr&ecirc;ncia mais Antiga: ' + converteData(tmp.ChildNodes['data_inicial'].Text) + '&nbsp;&nbsp;Ocorr&ecirc;ncia');
                                                  html.Add('mais Recente: ' + converteData(tmp.ChildNodes['data_final'].Text) + '</td>');
                                          html.Add('</tr>');
                                       html.Add('</table>');
                                    html.Add('</td>');
                               html.Add('</tr>');


                      tmp := node.ChildNodes.FindNode('detalhes');

                      If tmp <> nil
                      Then Begin
                                html.Add('<tr>');
                                   html.Add('<td>');
                                        html.Add('<table width="760">');

                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="78" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="71" class="titNoticia">');
                                                    html.Add('&nbsp;Vara C&iacute;vil </td>');
                                                html.Add('<td bgcolor="#eeeeee" width="62" class="titNoticia">');
                                                    html.Add('&nbsp;Natureza</td>');
												                        html.Add('<td bgcolor="#eeeeee" width="75" class="titNoticia">');
													                          html.Add('&nbsp;Distribuidor</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="96" class="titNoticia">');
                                                    html.Add('&nbsp;Valor</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="41" class="titNoticia">');
                                                    html.Add('&nbsp;Pra&ccedil;a</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="27" class="titNoticia">');
                                                    html.Add('&nbsp;UF</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="189" class="titNoticia">');
                                                    html.Add('&nbsp;Cidade</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="81" class="titNoticia">');
													                          html.Add('&nbsp;Principal</td>');
                                            html.Add('</tr>');

                                            
                                      tmp.ChildNodes.First;
                                      repeat
                                           html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_ocor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['vara_civil'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['distribuidor'].Text + '</td>');
												                        html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + tmp.ChildNodes['natureza'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteDecimal(tmp.ChildNodes['valor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['praca'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['uf'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + tmp.ChildNodes['cidade'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                If UpperCase(tmp.ChildNodes['principal'].Text) = 'P' Then
                                                  html.Add('&nbsp;Coobrigado </td>')
                                                Else If UpperCase(tmp.ChildNodes['sub_judice'].Text) = 'C' Then
                                                  html.Add('&nbsp;Principal</td>')
                                                Else
													                          html.Add('&nbsp;</td>');

                                            html.Add('</tr>');


                                          tmp := tmp.NextSibling;

                                      until tmp = nil;

                                      html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                           End;

                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function falenciaConcordataCE(node:IXMLNode):String;
var
  html :TStringList;
  tmp:  IXMLNode;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                   html.Add('<tr>');
                      html.Add('<td height="10">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');

                                                tmp := node.ChildNodes.FindNode('resumo');

                                                html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                                    html.Add('&nbsp;Fal&ecirc;ncia Concordata </td>');
                                            html.Add('<tr>');
                                              html.Add('<td bgcolor="#D3D3D3" class="titNoticia">');
                                                  html.Add('&nbsp;Qtde: ' + tmp.ChildNodes['qtd'].Text + '&nbsp;&nbsp;Ocorr&ecirc;ncia mais Antiga: ' + converteData(tmp.ChildNodes['data_inicial'].Text) + '&nbsp;&nbsp;Ocorr&ecirc;ncia');
                                                  html.Add('mais Recente: ' + converteData(tmp.ChildNodes['data_final'].Text) + '</td>');
                                          html.Add('</tr>');
                                       html.Add('</table>');
                                    html.Add('</td>');
                               html.Add('</tr>');


                      tmp := node.ChildNodes.FindNode('detalhes');

                      If tmp <> nil
                      Then Begin
                                html.Add('<tr>');
                                   html.Add('<td>');
                                        html.Add('<table width="760">');

                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="80" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="102" class="titNoticia">');
                                                    html.Add('&nbsp;Vara C&iacute;vil </td>');
                                                html.Add('<td bgcolor="#eeeeee" width="105" class="titNoticia">');
                                                    html.Add('&nbsp;Natureza</td>');
												                        html.Add('<td bgcolor="#eeeeee" width="63" class="titNoticia">');
                                                    html.Add('&nbsp;Pra&ccedil;a</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="38" class="titNoticia">');
                                                    html.Add('&nbsp;UF</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="344" class="titNoticia">');
													                          html.Add('&nbsp;Cidade</td>');
                                            html.Add('</tr>');

                                            
                                      tmp.ChildNodes.First;
                                      repeat
                                           html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_ocor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['vara_civil'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['natureza'].Text + '</td>');
												                        html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['praca'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['uf'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + tmp.ChildNodes['cidade'].Text + '</td>');
                                            html.Add('</tr>');

                                          tmp := tmp.NextSibling;

                                      until tmp = nil;

                                      html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                           End;

                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function pieCE(node:IXMLNode):String;
var
  html :TStringList;
  tmp :IXMLNode;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                    html.Add('<tr>');
                      html.Add('<td height="10">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');

                                                tmp := node.ChildNodes.FindNode('resumo');

                                                html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                                    html.Add('&nbsp;PIE</td>');
                                            html.Add('<tr>');
                                              html.Add('<td bgcolor="#D3D3D3" class="titNoticia">');
                                                  html.Add('&nbsp;Qtde: ' + tmp.ChildNodes['qtd'].Text + '&nbsp;&nbsp;Ocorr&ecirc;ncia mais Antiga: ' + converteData(tmp.ChildNodes['data_inicial'].Text) + '&nbsp;&nbsp;Ocorr&ecirc;ncia');
                                                  html.Add('mais Recente: ' + converteData(tmp.ChildNodes['data_final'].Text) + '</td>');
                                          html.Add('</tr>');
                                       html.Add('</table>');
                                    html.Add('</td>');
                               html.Add('</tr>');


                      tmp := node.ChildNodes.FindNode('detalhes');

                      If tmp <> nil
                      Then Begin
                                html.Add('<tr>');
                                   html.Add('<td>');
                                        html.Add('<table width="760">');

                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="76" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="59" class="titNoticia">');
                                                    html.Add('&nbsp;Natureza</td>');
												                        html.Add('<td bgcolor="#eeeeee" width="79" class="titNoticia">');
                                                    html.Add('&nbsp;Qualifica&ccedil;&atilde;o</td>');
												                        html.Add('<td bgcolor="#eeeeee" width="69" class="titNoticia">');
                                                    html.Add('&nbsp;Vara C&iacute;vil </td>');
                                                html.Add('<td bgcolor="#eeeeee" width="123" class="titNoticia">');
													                          html.Add('&nbsp;CNPJ Empresa </td>');
												                        html.Add('<td bgcolor="#eeeeee" width="326" class="titNoticia">');
													                          html.Add('&nbsp;Nome Empresa </td>');
                                            html.Add('</tr>');


                                      tmp.ChildNodes.First;
                                      repeat
                                           html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_ocor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['natureza'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['qualificacao'].Text + '</td>');
												                        html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['vara_civil'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['cnpj_empresa'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + tmp.ChildNodes['nome_empresa'].Text + '</td>');
                                            html.Add('</tr>');

                                          tmp := tmp.NextSibling;

                                      until tmp = nil;

                                      html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                           End;

                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function refinCE(node:IXMLNode):String;
var
  html :TStringList;
  tmp :IXMLNode;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                      html.Add('<tr>');
                      html.Add('<td height="10">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');

                                                tmp := node.ChildNodes.FindNode('resumo');

                                                html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                                    html.Add('&nbsp;REFIN</td>');
                                            html.Add('<tr>');
                                              html.Add('<td bgcolor="#D3D3D3" class="titNoticia">');
                                                  html.Add('&nbsp;Qtde: ' + tmp.ChildNodes['qtd'].Text + '&nbsp;&nbsp;Ocorr&ecirc;ncia mais Antiga: ' + converteData(tmp.ChildNodes['data_inicial'].Text) + '&nbsp;&nbsp;Ocorr&ecirc;ncia');
                                                  html.Add('mais Recente: ' + converteData(tmp.ChildNodes['data_final'].Text) + '</td>');
                                          html.Add('</tr>');
                                       html.Add('</table>');
                                    html.Add('</td>');
                               html.Add('</tr>');


                      tmp := node.ChildNodes.FindNode('detalhes');

                      If tmp <> nil
                      Then Begin
                                html.Add('<tr>');
                                   html.Add('<td>');
                                        html.Add('<table width="760">');

                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="76" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="59" class="titNoticia">');
                                                    html.Add('&nbsp;Natureza</td>');
												                        html.Add('<td bgcolor="#eeeeee" width="44" class="titNoticia">');
                                                    html.Add('&nbsp;Banco</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="54" class="titNoticia">');
                                                    html.Add('&nbsp;Ag&ecirc;ncia</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="108" class="titNoticia">');
													                          html.Add('&nbsp;Valor </td>');
												                        html.Add('<td bgcolor="#eeeeee" width="43" class="titNoticia">');
													                          html.Add('&nbsp;Pra&ccedil;a </td>');
												                        html.Add('<td bgcolor="#eeeeee" width="25" class="titNoticia">');
													                          html.Add('&nbsp;UF</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="169" class="titNoticia">');
													                          html.Add('&nbsp;Nome Banco </td>');
												                        html.Add('<td bgcolor="#eeeeee" width="142" class="titNoticia">');
													                          html.Add('&nbsp;Cidade</td>');
                                            html.Add('</tr>');


                                      tmp.ChildNodes.First;
                                      repeat
                                           html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_ocor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['natureza'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['banco'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['agencia'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteDecimal(tmp.ChildNodes['valor'].Text) + '</td>');
												                        html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['praca'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['uf'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + tmp.ChildNodes['nome_banco'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + tmp.ChildNodes['cidade'].Text + '</td>');
                                            html.Add('</tr>');

                                          tmp := tmp.NextSibling;

                                      until tmp = nil;

                                      html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                           End;

                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function srfCE(node:IXMLNode):String;
var
  html :TStringList;
  tmp :IXMLNode;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                    html.Add('<tr>');
                      html.Add('<td height="10">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');

                                                tmp := node.ChildNodes.FindNode('resumo');

                                                html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                                    html.Add('&nbsp;SRF</td>');
                                            html.Add('<tr>');
                                              html.Add('<td bgcolor="#D3D3D3" class="titNoticia">');
                                                  html.Add('&nbsp;Qtde: ' + tmp.ChildNodes['qtd'].Text + '&nbsp;&nbsp;Ocorr&ecirc;ncia mais Antiga: ' + converteData(tmp.ChildNodes['data_inicial'].Text) + '&nbsp;&nbsp;Ocorr&ecirc;ncia');
                                                  html.Add('mais Recente: ' + converteData(tmp.ChildNodes['data_final'].Text) + '</td>');
                                          html.Add('</tr>');
                                       html.Add('</table>');
                                    html.Add('</td>');
                               html.Add('</tr>');


                      tmp := node.ChildNodes.FindNode('detalhes');

                      If tmp <> nil
                      Then Begin
                                html.Add('<tr>');
                                   html.Add('<td>');
                                        html.Add('<table width="760">');

                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="93" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="655" class="titNoticia">');
                                                    html.Add('&nbsp;Natureza</td>');
                                            html.Add('</tr>');


                                      tmp.ChildNodes.First;
                                      repeat
                                           html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_ocor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['natureza'].Text + '</td>');
                                            html.Add('</tr>');

                                          tmp := tmp.NextSibling;

                                      until tmp = nil;

                                      html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                           End;

                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function convemDevedoresCE(node:IXMLNode):String;
var
  html :TStringList;
  tmp :IXMLNode;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                    html.Add('<tr>');
                      html.Add('<td height="10">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');

                                                tmp := node.ChildNodes.FindNode('resumo');

                                                html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                                    html.Add('&nbsp;Conv&ecirc;m Devedores </td>');
                                            html.Add('<tr>');
                                              html.Add('<td bgcolor="#D3D3D3" class="titNoticia">');
                                                  html.Add('&nbsp;Qtde: ' + tmp.ChildNodes['qtd'].Text + '&nbsp;&nbsp;Ocorr&ecirc;ncia mais Antiga: ' + converteData(tmp.ChildNodes['data_inicial'].Text) + '&nbsp;&nbsp;Ocorr&ecirc;ncia');
                                                  html.Add('mais Recente: ' + converteData(tmp.ChildNodes['data_final'].Text) + '</td>');
                                          html.Add('</tr>');
                                       html.Add('</table>');
                                    html.Add('</td>');
                               html.Add('</tr>');


                      tmp := node.ChildNodes.FindNode('detalhes');

                      If tmp <> nil
                      Then Begin
                                html.Add('<tr>');
                                   html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="76" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="59" class="titNoticia">');
                                                    html.Add('&nbsp;Natureza</td>');
												                        html.Add('<td bgcolor="#eeeeee" width="44" class="titNoticia">');
                                                    html.Add('&nbsp;Pra&ccedil;a</td>');
												                        html.Add('<td bgcolor="#eeeeee" width="72" class="titNoticia">');
                                                    html.Add('&nbsp;Valor</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="24" class="titNoticia">');
                                                    html.Add('&nbsp;UF</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="131" class="titNoticia">');
													                          html.Add('&nbsp;Cidade</td>');
												                        html.Add('<td bgcolor="#eeeeee" width="182" class="titNoticia">');
													                          html.Add('&nbsp;Informante</td>');
												                        html.Add('<td bgcolor="#eeeeee" width="136" class="titNoticia">');
													                          html.Add('&nbsp;Contrato</td>');
                                            html.Add('</tr>');

                                            
                                      tmp.ChildNodes.First;
                                      repeat
                                           html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_ocor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['natureza'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['praca'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteDecimal(tmp.ChildNodes['valor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['uf'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['cidade'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + tmp.ChildNodes['informante'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + tmp.ChildNodes['contrato'].Text + '</td>');
                                            html.Add('</tr>');

                                          tmp := tmp.NextSibling;

                                      until tmp = nil;

                                      html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                           End;

                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function chequesSemFundoBacenCE(node:IXMLNode):String;
var
  html :TStringList;
  tmp :IXMLNode;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin

                      html.Add('<tr>');
                          html.Add('<td height="10">');
                              html.Add('<!-- Linha de Espa?amento -->');
                          html.Add('</td>');
                      html.Add('</tr>');

                                  //cabeçalho resumo
                      html.Add('<tr>');
                          html.Add('<td>');
                              html.Add('<table width="760">');
                                  html.Add('<tr>');
                                      html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                          html.Add('&nbsp;Resumo - Cheque Sem Fundos Banco Central</td>');
                                  html.Add('</tr>');
                              html.Add('</table>');
                          html.Add('</td>');
                      html.Add('</tr>');

                              //dados resumo

                      html.Add('<tr>');
                            html.Add('<td>');
                                html.Add('<table width="760">');
                                    html.Add('<tr>');
                                      //colunas
                                        html.Add('<td bgcolor="#eeeeee" width="82" class="titNoticia">');
                                            html.Add('&nbsp;Qtde Ocor.</td>');
                                        html.Add('<td bgcolor="#eeeeee" width="88" class="titNoticia">');
                                            html.Add('&nbsp;Primeira em </td>');
                                        html.Add('<td bgcolor="#eeeeee" width="83" class="titNoticia">');
                                            html.Add('&nbsp;&Uacute;ltimo em</td>');
                                        html.Add('<td bgcolor="#eeeeee" width="56" class="titNoticia">');
                                            html.Add('&nbsp;Banco</td>');
                                        html.Add('<td bgcolor="#eeeeee" width="77" class="titNoticia">');
                                            html.Add('&nbsp;Ag&ecirc;ncia</td>');
                                        html.Add('<td bgcolor="#eeeeee" width="346" class="titNoticia">');
                                            html.Add('&nbsp;Nome Banco</td>');
                                    html.Add('</tr>');

                                    tmp := node.ChildNodes.FindNode('resumo');


                                    //dados
                                    html.Add('<tr>');
                                        html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                            html.Add('&nbsp;' + tmp.ChildNodes['qtd'].Text + '</td>');
                                        html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                            html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_inicial'].Text) + '</td>');
                                        html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                            html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_final'].Text) + '</td>');
                                        html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                            html.Add('&nbsp;' + tmp.ChildNodes['banco'].Text + '</td>');
                                        html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                            html.Add('&nbsp;' + tmp.ChildNodes['agencia'].Text + '</td>');
                                        html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                            html.Add('&nbsp;' + tmp.ChildNodes['nome_banco'].Text + '</td>');
                                    html.Add('</tr>');
                                html.Add('</table>');
                            html.Add('</td>');
                        html.Add('</tr>');

                        // cabeçalho resumo
                        tmp := node.ChildNodes.FindNode('detalhes');
                   If tmp <> nil
                   Then Begin
                        html.Add('<tr>');
                            html.Add('<td>');
                                html.Add('<table width="760">');
                                    html.Add('<tr>');
                                        html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                            html.Add('&nbsp;Detalhes - Cheque Sem Fundos Banco Central</td>');
                                    html.Add('</tr>');
                                html.Add('</table>');
                            html.Add('</td>');
                        html.Add('</tr>');
                        //dados resumo
                        html.Add('<tr>');
                            html.Add('<td>');
                                html.Add('<table width="760">');
                                  //colunas
                                    html.Add('<tr>');
                                        html.Add('<td bgcolor="#eeeeee" width="79" class="titNoticia">');
                                            html.Add('&nbsp;Qtde Ocor.</td>');
                                        html.Add('<td bgcolor="#eeeeee" width="79" class="titNoticia">');
                                            html.Add('&nbsp;Dt. Ocor. </td>');
                                        html.Add('<td bgcolor="#eeeeee" width="60" class="titNoticia">');
                                            html.Add('&nbsp;Banco</td>');
                                        html.Add('<td bgcolor="#eeeeee" width="61" class="titNoticia">');
                                            html.Add('&nbsp;Ag&ecirc;ncia</td>');
                                        html.Add('<td bgcolor="#eeeeee" width="42" class="titNoticia">');
                                            html.Add('&nbsp;Pra&ccedil;a</td>');
                                        html.Add('<td bgcolor="#eeeeee" width="39" class="titNoticia">');
                                            html.Add('&nbsp;UF</td>');
                                        html.Add('<td bgcolor="#eeeeee" width="154" class="titNoticia">');
                                            html.Add('&nbsp;Cidade</td>');
                                        html.Add('<td bgcolor="#eeeeee" width="210" class="titNoticia">');
                                            html.Add('&nbsp;Nome Banco</td>');
                                    html.Add('</tr>');
                                    //dados


                                 tmp.ChildNodes.First;
                                 repeat
                                        html.Add('<tr>');
                                            html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                html.Add('&nbsp;' + tmp.ChildNodes['qtd'].Text + '</td>');
                                            html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_ocorr'].Text) + '</td>');
                                            html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                html.Add('&nbsp;' + tmp.ChildNodes['banco'].Text + '</td>');
                                            html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                html.Add('&nbsp;' + tmp.ChildNodes['agencia'].Text + '</td>');
                                            html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                html.Add('&nbsp;' + tmp.ChildNodes['praca'].Text + '</td>');
                                            html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                html.Add('&nbsp;' + tmp.ChildNodes['uf'].Text + '</td>');
                                            html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                html.Add('&nbsp;' + tmp.ChildNodes['cidade'].Text + '</td>');
                                            html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                html.Add('&nbsp;' + tmp.ChildNodes['nome_banco'].Text + '</td>');
                                        html.Add('</tr>');
                                    tmp := tmp.NextSibling;
                                until tmp = nil;
                        End;

                                html.Add('</table>');
                            html.Add('</td>');
                        html.Add('</tr>');

  End;

  Result := html.Text;

End;

function chequeSenFundoVarejoCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                     html.Add('<tr>');
                          html.Add('<td height="10">');
                              html.Add('<!-- Linha de Espa?amento -->');
                          html.Add('</td>');
                      html.Add('</tr>');

                html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                                    html.Add('&nbsp;Cheque sem Fundo no Varejo </td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="44" class="titNoticia">');
                                                    html.Add('&nbsp;Qtde </td>');
                                                html.Add('<td bgcolor="#eeeeee" width="92" class="titNoticia">');
                                                    html.Add('&nbsp;Data Recente</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="44" class="titNoticia">');
                                                    html.Add('&nbsp;Banco</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="57" class="titNoticia">');
                                                    html.Add('&nbsp;Ag&ecirc;ncia</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="159" class="titNoticia">');
                                                    html.Add('&nbsp;Nome Banco</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="237" class="titNoticia">');
													                          html.Add('&nbsp;Origem</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="52" class="titNoticia">');
												                            html.Add('&nbsp;Sigla E.</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="39" class="titNoticia">');
													                          html.Add('&nbsp;L/F</td>');
                                            html.Add('</tr>');


                                      node.ChildNodes.First;
                                      repeat
                                          If Copy(node.XML, 0, 25) = '<cheque_sem_fundo_varejo>'
                                          Then Begin
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['qtd'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(node.ChildNodes['data_recente'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['banco'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['agencia'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['nome_banco'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + node.ChildNodes['origem'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + node.ChildNodes['sigla_embratel'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + node.ChildNodes['loja_filial'].Text + '</td>');
                                            html.Add('</tr>');
                                           End;
                                           node := node.NextSibling;

                                       until node = nil;
                                            
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');

  End;

  Result := html.Text;

End;

function pendenciaComercioCE(node:IXMLNode):String;
var
  html :TStringList;
  tmp : IXMLNode;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                    html.Add('<tr>');
                          html.Add('<td height="15">');
                              html.Add('<!-- Linha de Espa?amento -->');
                          html.Add('</td>');
                      html.Add('</tr>');
                    html.Add('<tr>');
                    tmp := node.ChildNodes.FindNode('resumo');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                                    html.Add('&nbsp;Pend&ecirc;ncias no Com&eacute;rcio </td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#D3D3D3" class="titNoticia">');
                                                    html.Add('&nbsp;Qtde: ' + tmp.ChildNodes['qtd'].Text + '&nbsp;&nbsp;Ocorr&ecirc;ncia mais Antiga: ' + converteData(tmp.ChildNodes['data_inicial'].Text) + '&nbsp;&nbsp;Ocorr&ecirc;ncia');
                                                    html.Add('mais Recente: ' + converteData(tmp.ChildNodes['data_final'].Text) + '</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');


                        tmp := node.ChildNodes.FindNode('detalhes');

                        If tmp <> nil
                        Then Begin
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                        
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="81" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="128" class="titNoticia">');
                                                    html.Add('&nbsp;Modalidade</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="95" class="titNoticia">');
                                                    html.Add('&nbsp;Avalista</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="53" class="titNoticia">');
                                                    html.Add('&nbsp;Moeda</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="107" class="titNoticia">');
											  		                        html.Add('&nbsp;Valor</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="73" class="titNoticia">');
                                                    html.Add('&nbsp;Contrato</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="140" class="titNoticia">');
                                                    html.Add('&nbsp;Origem</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="47" class="titNoticia">');
                                                    html.Add('&nbsp;Pra&ccedil;a </td>');
                                            html.Add('</tr>');

                                 tmp.ChildNodes.First;
                                 repeat
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_ocor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['modalidade'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');

                                                If tmp.ChildNodes['avalista'].Text = 'N' Then
                                                    html.Add('&nbsp;N&atilde;o &eacute; avalista </td>')
                                                Else
                                                    html.Add('&nbsp;Avalista</td>');

                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['tipo_moeda'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + converteDecimal(tmp.ChildNodes['valor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['contrato'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['origem'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['praca'].Text + '</td>');
                                            html.Add('</tr>');

                                    tmp := tmp.NextSibling;

                                 until tmp = nil;

                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            End;
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function pendenciaFinanceiraCE(node:IXMLNode):String;
var
  html :TStringList;
  tmp :IXMLNode;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
          html.Add('<tr>');
                          html.Add('<td height="15">');
                              html.Add('<!-- Linha de Espa?amento -->');
                          html.Add('</td>');
                      html.Add('</tr>');
                    html.Add('<tr>');
                    
                    tmp := node.ChildNodes.FindNode('resumo');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                                    html.Add('&nbsp;Pend&ecirc;ncias Financeiras </td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#D3D3D3" class="titNoticia">');
                                                    html.Add('&nbsp;Qtde: ' + tmp.ChildNodes['qtd'].Text + '&nbsp;&nbsp;Ocorr&ecirc;ncia mais Antiga: ' + converteData(tmp.ChildNodes['data_inicial'].Text) + '&nbsp;&nbsp;Ocorr&ecirc;ncia');
                                                    html.Add('mais Recente: ' + converteData(tmp.ChildNodes['data_final'].Text) + '</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');


                        tmp := node.ChildNodes.FindNode('detalhes');

                        If tmp <> nil
                        Then Begin
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                        
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="81" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="128" class="titNoticia">');
                                                    html.Add('&nbsp;Modalidade</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="95" class="titNoticia">');
                                                    html.Add('&nbsp;Avalista</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="53" class="titNoticia">');
                                                    html.Add('&nbsp;Moeda</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="107" class="titNoticia">');
											  		                        html.Add('&nbsp;Valor</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="73" class="titNoticia">');
                                                    html.Add('&nbsp;Contrato</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="140" class="titNoticia">');
                                                    html.Add('&nbsp;Origem</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="47" class="titNoticia">');
                                                    html.Add('&nbsp;Pra&ccedil;a </td>');
                                            html.Add('</tr>');

                                 tmp.ChildNodes.First;
                                 repeat
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(tmp.ChildNodes['data_ocor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['modalidade'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');

                                                If tmp.ChildNodes['avalista'].Text = 'N' Then
                                                    html.Add('&nbsp;N&atilde;o &eacute; avalista </td>')
                                                Else
                                                    html.Add('&nbsp;Avalista</td>');

                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['tipo_moeda'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + converteDecimal(tmp.ChildNodes['valor'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['contrato'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['origem'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + tmp.ChildNodes['praca'].Text + '</td>');
                                            html.Add('</tr>');

                                    tmp := tmp.NextSibling;

                                 until tmp = nil;

                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            End;
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function rechequeContumaciaCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin


                      html.Add('<tr>');
                          html.Add('<td height="15">');
                              html.Add('<!-- Linha de Espa?amento -->');
                          html.Add('</td>');
                      html.Add('</tr>');

                      html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');

                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Recheque Contum&acirc;ncia</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');

                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');

                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="82" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="42" class="titNoticia">');
                                                    html.Add('&nbsp;Hora</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="46" class="titNoticia">');
                                                    html.Add('&nbsp;Banco</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="55" class="titNoticia">');
                                                    html.Add('&nbsp;Ag&ecirc;ncia</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="62" class="titNoticia">');
                                                    html.Add('&nbsp;C/C</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="80" class="titNoticia">');
                                                    html.Add('&nbsp;Chq. Inicial </td>');
                                                html.Add('<td bgcolor="#eeeeee" width="80" class="titNoticia">');
                                                    html.Add('&nbsp;Chq. Final </td>');
                                                html.Add('<td bgcolor="#eeeeee" width="220" class="titNoticia">');
                                                    html.Add('&nbsp;Motivo</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="53" class="titNoticia">');
													                          html.Add('&nbsp;CF</td>');
                                            html.Add('</tr>');

                                      node.ChildNodes.First;
                                      repeat
                                          If Copy(node.XML, 0, 21) = '<recheque_contumacia>'
                                          Then Begin
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteData(node.ChildNodes['data_cad'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + converteHora(node.ChildNodes['hora_cad'].Text) + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['banco'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['agencia'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['conta_corrente'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['cheque_inicial'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['cheque_final'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['motivo'].Text + '</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
													                          html.Add('&nbsp;' + node.ChildNodes['codigo_fonte'].Text + '</td>');
                                            html.Add('</tr>');
                                          End;
                                        node := node.NextSibling;

                                       until node = nil;
                                            
                                      html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function confirmeiCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin

                    html.Add('<tr>');
                          html.Add('<td height="15">');
                              html.Add('<!-- Linha de Espa?amento -->');
                          html.Add('</td>');
                      html.Add('</tr>');

                html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Confirma&ccedil;&atilde;o de Nome (atualizado em&nbsp;' + converteData(node.ChildNodes['data_ultatualizacao'].Text) + ')</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760" cellpadding="0" cellspacing="0">');

                                            html.Add('<tr>');
                                                html.Add('<td>');
                                                    html.Add('<table width="760">');
                                                        html.Add('<tr>');
                                                            html.Add('<td bgcolor="#eeeeee" width="55" class="titNoticia">');
                                                                html.Add('&nbsp;Nome:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="470" class="txtNormal">');
                                                                html.Add('&nbsp;' + node.ChildNodes['nome'].Text + '</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="135" class="titNoticia">');
                                                                html.Add('&nbsp;Data de Nascimento:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="80" class="txtNormal">');
                                                                html.Add('&nbsp;' + converteData(node.ChildNodes['data'].Text) + '</td>');
                                                        html.Add('</tr>');
                                                    html.Add('</table>');
                                                html.Add('</td>');
                                            html.Add('</tr>');

                                            html.Add('<tr>');
                                                html.Add('<td>');
                                                    html.Add('<table width="759">');
                                                        html.Add('<tr>');
                                                            html.Add('<td bgcolor="#eeeeee" width="60" class="titNoticia">');
                                                                html.Add('&nbsp;Situa&ccedil;&atilde;o:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="175" class="txtNormal">');

                                                            If node.ChildNodes['srf'].Text = '0' Then
                                                              html.Add('&nbsp;INAPTA</td>')
                                                            Else If node.ChildNodes['srf'].Text = '2' Then
                                                              html.Add('&nbsp;ATIVA</td>')
                                                            Else If node.ChildNodes['srf'].Text = '6' Then
                                                              html.Add('&nbsp;SUSPENSA</td>')
                                                            Else If node.ChildNodes['srf'].Text = '8' Then
                                                              html.Add('&nbsp;CANCELADO</td>')
                                                            Else If node.ChildNodes['srf'].Text = '9' Then
                                                              html.Add('&nbsp;CANCELADA</td>')
                                                            Else
                                                                html.Add('&nbsp;</td>');

                                                            html.Add('<td bgcolor="#eeeeee" width="132" class="titNoticia">');
																                                html.Add('&nbsp;Nome M&atilde;e/Fantasia: </td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="372" class="txtNormal">');
																                                html.Add('&nbsp;' + node.ChildNodes['nome_mae_fantasia'].Text + '</td>');
                                                        html.Add('</tr>');
                                                    html.Add('</table>');
                                                html.Add('</td>');
                                            html.Add('</tr>');

                                            If ((node.ChildNodes['uf'].Text <> '') or (node.ChildNodes['cidade'].Text <> '') or (node.ChildNodes['mensagem'].Text <> ''))
                                            Then Begin
                                              html.Add('<tr>');
                                                  html.Add('<td>');
                                                      html.Add('<table width="759">');
                                                          html.Add('<tr>');
                                                              html.Add('<td bgcolor="#eeeeee" width="31" class="titNoticia">');
                                                                  html.Add('&nbsp;UF:</td>');
                                                              html.Add('<td bgcolor="#eeeeee" width="32" class="txtNormal">');
                                                                  html.Add('&nbsp;' + node.ChildNodes['uf'].Text + '</td>');
                                                              html.Add('<td bgcolor="#eeeeee" width="54" class="titNoticia">');
                                                                  html.Add('&nbsp;Cidade:</td>');
                                                              html.Add('<td bgcolor="#eeeeee" width="182" class="txtNormal">');
                                                                  html.Add('&nbsp;' + node.ChildNodes['cidade'].Text + '</td>');
                                                              html.Add('<td bgcolor="#eeeeee" width="73" class="titNoticia">');
                                                                  html.Add('&nbsp;Mensagem:</td>');
                                                              html.Add('<td bgcolor="#eeeeee" width="359" class="txtNormal">');
                                                                  html.Add('&nbsp;' + node.ChildNodes['mensagem'].Text + '</td>');
                                                          html.Add('</tr>');
                                                      html.Add('</table>');
                                                  html.Add('</td>');
                                              html.Add('</tr>');
                                            End;
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function confirmeiBancoCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                      html.Add('<tr>');
                          html.Add('<td height="15">');
                              html.Add('<!-- Linha de Espa?amento -->');
                          html.Add('</td>');
                      html.Add('</tr>');

                  html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Informa&ccedil;&otilde;es do Banco Consultado </td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760" cellpadding="0" cellspacing="0">');
                                            html.Add('<tr>');
                                                html.Add('<td>');
                                                    html.Add('<table width="760">');
                                                        html.Add('<tr>');
                                                            html.Add('<td bgcolor="#eeeeee" width="51" class="titNoticia">');
                                                                html.Add('&nbsp;Banco:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="41" class="txtNormal">');
                                                                html.Add('&nbsp;' + node.ChildNodes['codigo'].Text + '</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="52" class="titNoticia">');
                                                                html.Add('&nbsp;Nome:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="258" class="txtNormal">');
                                                                html.Add('&nbsp;' + node.ChildNodes['nome_fantasia'].Text + '</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="47" class="titNoticia">');
                                                                html.Add('&nbsp;Status:</td>');
															                              html.Add('<td bgcolor="#eeeeee" width="283" class="txtNormal">');

                                                            If node.ChildNodes['status'].Text = '1' Then
                                                              html.Add('&nbsp;Liquida&ccedil;&atilde;o</td>')
                                                            Else If node.ChildNodes['status'].Text = '2' Then
                                                              html.Add('&nbsp;N&atilde;o trabalha com conta corrente</td>')
                                                            Else IF node.ChildNodes['status'].Text = '3' Then
                                                              html.Add('&nbsp;Participa do Recheque</td>')
                                                            Else IF node.ChildNodes['status'].Text = '4' Then
                                                                html.Add('&nbsp;N&atilde;o Participa do Recheque</td>')
                                                            Else
                                                              html.Add('&nbsp;</td>');
                                                        html.Add('</tr>');
                                                    html.Add('</table>');
                                                html.Add('</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');

  End;

  Result := html.Text;

End;

function grafiasCE(node:IXMLNode):String;
var
  html :TStringList;
  i :integer;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin


                      html.Add('<tr>');
                          html.Add('<td height="15">');
                              html.Add('<!-- Linha de Espa?amento -->');
                          html.Add('</td>');
                      html.Add('</tr>');

                      html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Registro de Grafias </td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760" cellpadding="0" cellspacing="0">');
                                            html.Add('<tr>');
                                                html.Add('<td>');
                                                    html.Add('<table width="760">');

                                                    node.ChildNodes.First;
                                                    For i:=0 to node.ChildNodes.Count -1 do
                                                    Begin
                                                        html.Add('<tr>');
                                                            html.Add('<td bgcolor="#eeeeee" width="48" class="titNoticia">');
                                                                html.Add('&nbsp;Nome:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="700" class="txtNormal">');
                                                                html.Add('&nbsp;' + node.ChildNodes[i].Text + '</td>');
                                                        html.Add('</tr>');
                                                    End;
                                                    html.Add('</table>');
                                                html.Add('</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function telefoneCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
      html.Add('<tr>');
                      html.Add('<td height="15">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');



                                            // dados
                                      node.ChildNodes.First;
                                      repeat
                                          If Copy(node.XML, 0, 10) = '<telefone>'
                                          Then Begin


                                              html.Add('<tr><td>');
                                              html.Add('<table width="760" cellspacing="0" cellpadding="0"><tr><td>');
                                              html.Add('<table width="760"><tr>');
                                              html.Add('<td bgcolor="#C0C0C0" class="titNoticia_white">&nbsp;Informa&ccedil;&otilde;es da Lista Telef&ocirc;nica</td>');
                                              html.Add('</tr></table></td></tr><tr><td>');
                                              html.Add('<table width="760" cellpadding="0" cellspacing="0">');
                                              html.Add('<tr><td><table width="760"><tr>');
                                              html.Add('<td bgcolor="#eeeeee" width="37" class="titNoticia">');
                                              html.Add('&nbsp;DDD:</td><td bgcolor="#eeeeee" width="22" class="txtNormal">');
                                              html.Add('&nbsp;' + node.ChildNodes['ddd'].Text + '</td><td bgcolor="#eeeeee" width="59" class="titNoticia">');
                                              html.Add('&nbsp;Telefone:</td><td bgcolor="#eeeeee" width="72" class="txtNormal">');
                                              html.Add('&nbsp;' + node.ChildNodes['telefone'].Text + '</td><td bgcolor="#eeeeee" width="76" class="titNoticia">');
                                              html.Add('&nbsp;Documento:</td> <td bgcolor="#eeeeee" width="102" class="txtNormal">');
                                              html.Add('&nbsp;' + node.ChildNodes['documento'].Text + '</td><td bgcolor="#eeeeee" width="66" class="titNoticia">');
                                              html.Add('&nbsp;Assinante:</td><td bgcolor="#eeeeee" width="290" class="txtNormal">');
                                              html.Add('&nbsp;' + node.ChildNodes['assinante'].Text + '</td>');
                                              html.Add('</tr></table></td></tr><tr><td>');
                                              html.Add('<table width="759">');
                                              html.Add('<tr><td width="31" bgcolor="#eeeeee" class="titNoticia">');
                                              html.Add('&nbsp;Rua:</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="319" class="txtNormal">');
                                              html.Add('&nbsp;' + node.ChildNodes['rua'].Text + '</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="55" class="titNoticia">');
                                              html.Add('&nbsp;N&uacute;mero: </td>');
                                              html.Add('<td bgcolor="#eeeeee" width="58" class="txtNormal">');
                                              html.Add('&nbsp;' + node.ChildNodes['numero'].Text + '</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="48" class="titNoticia">');
                                              html.Add('&nbsp;Bairro: </td>');
                                              html.Add('<td bgcolor="#eeeeee" width="220" class="txtNormal">');
                                              html.Add('&nbsp;' + node.ChildNodes['bairro'].Text + '</td>');
                                              html.Add('</tr></table></td></tr><tr>');
                                              html.Add('<td><table width="759"><tr>');
                                              html.Add('<td bgcolor="#eeeeee" width="26" class="titNoticia">');
                                              html.Add('&nbsp;UF:</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="22" class="txtNormal">');
                                              html.Add('&nbsp;' + node.ChildNodes['uf'].Text + '</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="52" class="titNoticia">');
                                              html.Add('&nbsp;Cidade:</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="164" class="txtNormal">');
                                              html.Add('&nbsp;' + node.ChildNodes['cidade'].Text + '</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="34" class="titNoticia">');
                                              html.Add('&nbsp;CEP:</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="78" class="txtNormal">');
                                              html.Add('&nbsp;' + node.ChildNodes['cep'].Text + '</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="85" class="titNoticia">');
                                              html.Add('&nbsp;Tipo de Doc.  :</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="80" class="txtNormal">');
                                              If UpperCase(node.ChildNodes['tipo_doc'].Text) = 'I' Then
                                                html.Add('&nbsp;Indefinido</td>')
                                              Else If UpperCase(node.ChildNodes['tipo_doc'].Text) = 'F' Then
                                                html.Add('&nbsp;F&iacute;sica</td>')
                                              Else If UpperCase(node.ChildNodes['tipo_doc'].Text) = 'J' Then
                                                html.Add('&nbsp;Jur&iacute;dico</td>')
                                              Else
                                                html.Add('&nbsp;</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="80" class="titNoticia">');
                                              html.Add('&nbsp;Classe Ass.:</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="94" class="txtNormal">');
                                              If UpperCase(node.ChildNodes['classe_assinante'].Text) = '0' Then
                                                html.Add('&nbsp;N&atilde;o Definida </td>')
                                              Else If UpperCase(node.ChildNodes['classe_assinante'].Text) = '1' Then
                                                html.Add('&nbsp;Residencial</td>')
                                              Else If UpperCase(node.ChildNodes['classe_assinante'].Text) = '2' Then
                                                html.Add('&nbsp;Comercial</td>')
                                              Else
                                                html.Add('&nbsp;</td>');
                                              html.Add('</tr>');
                                              html.Add('</table>');
                                              html.Add('</td>');
                                              html.Add('</tr>');
                                              html.Add('<tr>');
                                              html.Add('<td>');
                                              html.Add('<table width="760">');
                                              html.Add('<tr>');
                                              html.Add('<td bgcolor="#eeeeee" width="154" class="titNoticia">');
                                              html.Add('Data Instala&ccedil;&atilde;o :</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="149" class="txtNormal">');
                                              html.Add('&nbsp;' + converteData(node.ChildNodes['data_instalacao'].Text) + '</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="85" class="titNoticia">');
                                              html.Add('&nbsp;Doc. Confere :</td>');
                                              html.Add('<td bgcolor="#eeeeee" width="352" class="txtNormal">');
                                              If UpperCase(node.ChildNodes['doc_confere'].Text) = 'S' Then
                                                html.Add('&nbsp;Doc. Consultado Confere com Doc. do Assinante da Linha </td>')
                                              Else If UpperCase(node.ChildNodes['doc_confere'].Text) = 'N' Then
                                                html.Add('&nbsp;Doc. Consultado N&atilde;o Confere com Doc. do Assinante da Linha </td>')
                                              Else
                                                html.Add('&nbsp;</td>');
                                              html.Add('</tr></table></td>');
                                              html.Add('</tr></table></td>');
                                              html.Add('</tr></table></td></tr>');

                                          End;
                                            node := node.NextSibling;

                                       until node = nil;

  End;

  Result := html.Text;

End;

function passagensInternasCheckExpressCE(node:IXMLNode):String;
var
  html :TStringList;
  i :Integer;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                    html.Add('<tr>');
                      html.Add('<td height="15">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Controle de Consultas - Interno Rede Check Express </td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                               html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="84" class="titNoticia">');
                                                    html.Add('&nbsp;Data</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="664" class="titNoticia">');
                                                    html.Add('&nbsp;Nome</td>');
                                            html.Add('</tr>');

                                      node.ChildNodes.First;

                                      For i:=0 to node.ChildNodes.Count - 1 do
                                      Begin
                                        If (i mod 2) = 0
                                        Then Begin
                                            html.Add('<tr>');
                                                  html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                      html.Add('&nbsp;' + converteData(node.ChildNodes[i].Text) + '</td>');
                                        End
                                        Else Begin
                                            html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                      html.Add('&nbsp;' + node.ChildNodes[i].Text + '</td>');
                                              html.Add('</tr>');
                                        End;
                                      End;

                                            
                                      html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function passagensInternasSerasaCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin

                  html.Add('<tr>');
                      html.Add('<td height="15">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');

                    html.Add('<tr>');
                        html.Add('<td align="left" class="titNoticia">');
                            html.Add('<table width="760">');
                                html.Add('<tr>');
                                    html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                        html.Add('&nbsp;Registro de Consultas Mais Recentes</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Passagens Internas - SERASA  </td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia" width="280">');
                                                    html.Add('&nbsp;Data de Emiss&atilde;o do 1&ordm; Cheque &aacute; Vista:</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal" width="468">');
                                                    html.Add('&nbsp;' + Copy(node.ChildNodes['dt_emiss_prim_chq_vista'].Text, 0, 2) + '/' + Copy(node.ChildNodes['dt_emiss_prim_chq_vista'].Text, 3, 2) + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Data de Emiss&atilde;o do &Uacute;ltimo Cheque &aacute; Vista:</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + Copy(node.ChildNodes['dt_emiss_ult_chq_vista'].Text, 0, 2) + '/' + Copy(node.ChildNodes['dt_emiss_ult_chq_vista'].Text, 3, 2) + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Total de Cheques a vista &uacute;ltimos 15 dias:</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['total_chqs_vista_15_dias'].Text + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Total de Cheques a prazo &uacute;ltimos 30 dias:');
                                                html.Add('</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['total_chqs_prazo_30_dias'].Text + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Total de Cheques a prazo entre 31 e 60 dias:');
                                                html.Add('</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['total_chqs_prazo_31_60_dias'].Text + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Total de Cheques a prazo entre 61 e 90 dias:</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['total_chqs_prazo_61_90_dias'].Text + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Total de Cheques a Prazo Emitidos :');
                                                html.Add('</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['total_chqs_prazo_emitidos'].Text + '</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');


  End;

  Result := html.Text;

End;

function passagensMercadoSerasaCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Passagens Mercado - SERASA  </td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia" width="280">');
                                                    html.Add('&nbsp;Data de Emiss&atilde;o do 1&ordm; Cheque &aacute; Vista:</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal" width="468">');
                                                    html.Add('&nbsp;' + Copy(node.ChildNodes['dt_emiss_prim_chq_vista'].Text, 0, 2) + '/' + Copy(node.ChildNodes['dt_emiss_prim_chq_vista'].Text, 3, 2) + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Data de Emiss&atilde;o do &Uacute;ltimo Cheque &aacute; Vista:</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + Copy(node.ChildNodes['dt_emiss_ult_chq_vista'].Text, 0, 2) + '/' + Copy(node.ChildNodes['dt_emiss_ult_chq_vista'].Text, 3, 2) + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Total de Cheques a vista &uacute;ltimos 15 dias:</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['total_chqs_vista_15_dias'].Text + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Total de Cheques a prazo &uacute;ltimos 30 dias:');
                                                html.Add('</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['total_chqs_prazo_30_dias'].Text + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Total de Cheques a prazo entre 31 e 60 dias:');
                                                html.Add('</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['total_chqs_prazo_31_60_dias'].Text + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Total de Cheques a prazo entre 61 e 90 dias:</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['total_chqs_prazo_61_90_dias'].Text + '</td>');
                                            html.Add('</tr>');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="titNoticia">');
                                                    html.Add('&nbsp;Total de Cheques a Prazo Emitidos :');
                                                html.Add('</td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes['total_chqs_prazo_emitidos'].Text + '</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');


  End;

  Result := html.Text;

End;


function referenciaComercialSerasaCE(node:IXMLNode):String;
var
  html :TStringList;
  i :Integer;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin

                    html.Add('<tr>');
                      html.Add('<td height="15">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');

                        html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Refer&ecirc;ncia Comercial - Cheques &aacute; prazo mais recentes</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="115" class="titNoticia">');
                                                    html.Add('&nbsp;</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="538" class="titNoticia">');
                                                    html.Add('&nbsp;Nome do Credor </td>');
                                                html.Add('<td bgcolor="#eeeeee" width="91" class="titNoticia">');
                                                    html.Add('&nbsp;Data Emiss&atilde;o </td>');
                                            html.Add('</tr>');

                                      node.ChildNodes.First;
                                      For i:=0 to node.ChildNodes.Count - 1 do
                                      Begin
                                        If (i mod 2) = 0
                                        Then Begin
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + IntToStr(i+1) + '&ordm; Mais Recente </td>');
                                                html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + node.ChildNodes[i].Text + '</td>');
                                        End
                                        Else Begin
                                             html.Add('<td bgcolor="#eeeeee" class="txtNormal">');
                                                    html.Add('&nbsp;' + Copy(node.ChildNodes[i].Text, 0, 2) + '/' + Copy(node.ChildNodes[i].Text, 3, 2) + '</td>');
                                            html.Add('</tr>');
                                        End;
                                      End;  
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function teleconsultadosCE(node:IXMLNode):String;
var
  html :TStringList;
  i: Integer;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                    html.Add('<tr>');
                      html.Add('<td height="15">');
                        html.Add('<!-- Linha de Espa?amento -->');
                      html.Add('</td>');
                    html.Add('</tr>');


                    html.Add('<tr>');
                        html.Add('<td align="left" class="titNoticia">');
                            html.Add('<table width="760">');
                                html.Add('<tr>');
                                    html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                        html.Add('&nbsp;&Uacute;ltimos Telefones Consultados</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');

                                      node.ChildNodes.First;
                                      For i:=0 to node.ChildNodes.Count - 1 do
                                      Begin
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#eeeeee" width="110" class="titNoticia">');
                                                    html.Add('&nbsp;' + IntToStr(i+1) + '&ordm; Mais Recente:</td>');
                                                html.Add('<td bgcolor="#eeeeee" width="638" class="txtNormal">');
                                                    html.Add('&nbsp;' + Copy(node.ChildNodes[i].Text, 0, 4) + '-' +Copy(node.ChildNodes[i].Text, 4, 4) + '</td>');
                                            html.Add('</tr>');
                                      End;
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function mensagensCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                      html.Add('<tr>');
                          html.Add('<td height="15">');
                              html.Add('<!-- Linha de Espa?amento -->');
                          html.Add('</td>');
                      html.Add('</tr>');

                  html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760">');
                                html.Add('<tr>');
                                    html.Add('<td bgcolor="silver" class="titNoticia_white">');
                                        html.Add('&nbsp;Mensagens</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');

               node.ChildNodes.First;
              repeat
                  If Copy(node.XML, 0, 11) = '<mensagens>'
                  Then Begin

                    html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760">');
                                html.Add('<tr>');
                                    html.Add('<td bgcolor="#eeeeee" width="760" class="titNoticia_red">');
                                        html.Add('&nbsp;' + node.ChildNodes['cod_mensagem'].Text + ' ' + node.ChildNodes['mensagem'].Text + '</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
                  End;
                  node := node.NextSibling;
              until node = nil;
  End;

  Result := html.Text;

End;

function resultadoCapturaCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                       html.Add('<tr>');
                          html.Add('<td height="15">');
                              html.Add('<!-- Linha de Espa?amento -->');
                          html.Add('</td>');
                      html.Add('</tr>');

                      html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Resultado Captura </td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760" cellpadding="0" cellspacing="0">');
                                            html.Add('<tr>');
                                                html.Add('<td>');
                                                    html.Add('<table width="760">');
                                                        html.Add('<tr>');
                                                            html.Add('<td bgcolor="#eeeeee" width="69" class="titNoticia">');
                                                                html.Add('&nbsp;Indicador:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="43" class="txtNormal">');
                                                                html.Add('&nbsp;' + node.ChildNodes['indicador_capturado'].Text + '</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="79" class="titNoticia">');
                                                                html.Add('&nbsp;Mensagem:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="549" class="txtNormal">');
                                                                html.Add('&nbsp;' + node.ChildNodes['mensagem_captura'].Text + '</td>');
                                                        html.Add('</tr>');
                                                    html.Add('</table>');
                                                html.Add('</td>');
                                            html.Add('</tr>');
											                      html.Add('<tr>');
                                                html.Add('<td>');
                                                    html.Add('<table width="760">');
                                                        html.Add('<tr>');
                                                            html.Add('<td bgcolor="#eeeeee" width="51" class="titNoticia">');
                                                                html.Add('&nbsp;Data:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="122" class="txtNormal">');
                                                                html.Add('&nbsp;' + converteData(node.ChildNodes['data_captura'].Text) + '</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="40" class="titNoticia">');
                                                                html.Add('&nbsp;Hora:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="90" class="txtNormal">');
                                                                html.Add('&nbsp;' + converteHora(node.ChildNodes['hora_captura'].Text) + '</td>');
															                              html.Add('<td bgcolor="#eeeeee" width="135" class="titNoticia">');
                                                                html.Add('&nbsp;N&uacute;mero da consulta :</td>');
															                              html.Add('<td bgcolor="#eeeeee" width="294" class="txtNormal">');
                                                                html.Add('&nbsp;' + node.ChildNodes['numero_consulta'].Text + '</td>');
                                                        html.Add('</tr>');
                                                    html.Add('</table>');
                                                html.Add('</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;

function confirmacaoBancariaCE(node:IXMLNode):String;
var
  html :TStringList;
Begin

  html := TStringList.Create;

  If node <> nil
  Then Begin
                      html.Add('<tr>');
                          html.Add('<td height="10">');
                              html.Add('<!-- Linha de Espa?amento -->');
                          html.Add('</td>');
                      html.Add('</tr>');

                      html.Add('<tr>');
                        html.Add('<td>');
                            html.Add('<table width="760" cellspacing="0" cellpadding="0">');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760">');
                                            html.Add('<tr>');
                                                html.Add('<td bgcolor="#C0C0C0" class="titNoticia_white">');
                                                    html.Add('&nbsp;Confirma&ccedil;&atilde;o Banc&aacute;ria (atualizado em&nbsp;' + converteData(node.ChildNodes['data_ultatualizacao'].Text) + ')</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                                html.Add('<tr>');
                                    html.Add('<td>');
                                        html.Add('<table width="760" cellpadding="0" cellspacing="0">');
                                            html.Add('<tr>');
                                                html.Add('<td>');
                                                    html.Add('<table width="760">');
                                                        html.Add('<tr>');
                                                            html.Add('<td bgcolor="#eeeeee" width="55" class="titNoticia">');
                                                                html.Add('&nbsp;Nome:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="330" class="txtNormal">');
                                                                html.Add('&nbsp;' + node.ChildNodes['nome_agencia'].Text + '</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="69" class="titNoticia">');
                                                                html.Add('&nbsp;Endere&ccedil;o:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="286" class="txtNormal">');
                                                                html.Add('&nbsp;' + node.ChildNodes['endereco'].Text + '</td>');
                                                        html.Add('</tr>');
                                                    html.Add('</table>');
                                                html.Add('</td>');
                                            html.Add('</tr>');
											                      html.Add('<tr>');
                                                html.Add('<td>');
                                                    html.Add('<table width="759">');
                                                        html.Add('<tr>');
                                                            html.Add('<td bgcolor="#eeeeee" width="31" class="titNoticia">');
                                                                html.Add('&nbsp;UF:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="32" class="txtNormal">');
                                                                html.Add('&nbsp;' + node.ChildNodes['uf'].Text + '</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="54" class="titNoticia">');
																                                html.Add('&nbsp;Cidade:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="182" class="txtNormal">');
                                                                html.Add('&nbsp;' + node.ChildNodes['cidade'].Text + '</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="64" class="titNoticia">');
																                                html.Add('&nbsp;Telefone:</td>');
                                                            html.Add('<td bgcolor="#eeeeee" width="368" class="txtNormal">');
																                                html.Add('&nbsp;(' + node.ChildNodes['ddd_fone'].Text + ') ' + Copy(node.ChildNodes['telefone'].Text, 0, 4) + '-' + Copy(node.ChildNodes['telefone'].Text, 4, 4) + '</td>');
                                                        html.Add('</tr>');
                                                    html.Add('</table>');
                                                html.Add('</td>');
                                            html.Add('</tr>');
                                        html.Add('</table>');
                                    html.Add('</td>');
                                html.Add('</tr>');
                            html.Add('</table>');
                        html.Add('</td>');
                    html.Add('</tr>');
  End;

  Result := html.Text;

End;


function xmlToHtml(node, layout :IXMLNode; out arquivo:String):Boolean;
var
  cabecalho:TStringList;
Begin

    cabecalho := TStringList.Create;

    cabecalho.Add('<html>');
      cabecalho.Add('<head>');
        cabecalho.Add('<title>Consulta Cadastral</title>');
        cabecalho.Add('<link href="Style.css" rel="stylesheet" type="text/css">');
      cabecalho.Add('</head>');
      cabecalho.Add('<body bgcolor="#ffffff" leftmargin="0" topmargin="0" scroll="yes" marginwidth="0"');
      cabecalho.Add('marginheight="0">');
        cabecalho.Add('<table width="761" border="0" cellspacing="0" cellpadding="0" align="center">');

          {cabecalho.Add('<tr>');
            cabecalho.Add('<td height="25" class="titForm_orange" align="left">');
                cabecalho.Add('&nbsp;&nbsp;&nbsp;Consulta Check Express</td>');
          cabecalho.Add('</tr>'); }

          cabecalho.Add('<tr>');
            cabecalho.Add('<td height="5">');
                cabecalho.Add('<!-- Linha de Espa?amento -->');
            cabecalho.Add('</td>');
        cabecalho.Add('</tr>');

          cabecalho.Add('<tr>');
            cabecalho.Add('<td>');
              cabecalho.Add('<table width="760" cellpadding="0" cellspacing="0"><tr>');
                  cabecalho.Add('<td width="437" align="left" valign="middle" class="titForm_orange">');
                    cabecalho.Add('&nbsp;<img src="http://www.mzrsistemas.com/images/logo_orion1.JPG" alt="logomzr" width="16" height="16">');
                    cabecalho.Add('&nbsp;&nbsp;MZR SISTEMAS - Consulta Check Express &nbsp;&nbsp;<img src="http://www.mzrsistemas.com/images/checkExpress.bmp" alt="logomzr" width="16" height="16"></td>');
                cabecalho.Add('<td align="right" width="321" class="titForm_10">(45)3055-4758 / (45)3055-4759</td>');
              cabecalho.Add('</tr>');
          cabecalho.Add('</table>');
          cabecalho.Add('</td>');
          cabecalho.Add('</tr>');

          cabecalho.Add('<tr>');
            cabecalho.Add('<td height="10">');
                cabecalho.Add('<!-- Linha de Espa?amento -->');
            cabecalho.Add('</td>');
        cabecalho.Add('</tr>');

          cabecalho.Add(resumoRespostaCE(node.ChildNodes.FindNode('resumo_resposta')));

          cabecalho.Add(headerCE(node.ChildNodes.FindNode('header')));

          cabecalho.Add(confirmeiBancoCE(node.ChildNodes.FindNode('confirmei_banco')));

          cabecalho.Add(confirmeiCE(node.ChildNodes.FindNode('confirmei')));

          cabecalho.Add(confirmacaoBancariaCE(node.ChildNodes.FindNode('confirmacao_bancaria')));

          cabecalho.Add(mensagensCE(node.ChildNodes.FindNode('mensagens')));

          cabecalho.Add(telefoneCE(node.ChildNodes.FindNode('telefone')));

          cabecalho.Add(chequesSemFundoBacenCE(node.ChildNodes.FindNode('cheque_sem_fundo_bacen')));

          cabecalho.Add(chequeSemFundoSerasaCE(node.ChildNodes.FindNode('cheque_sem_fundo_serasa')));

          cabecalho.Add(protestosCE(node.ChildNodes.FindNode('protestos')));

          cabecalho.Add(acoesCE(node.ChildNodes.FindNode('acoes')));

          cabecalho.Add(falenciaConcordataCE(node.ChildNodes.FindNode('falencia_concordata')));

          cabecalho.Add(pieCE(node.ChildNodes.FindNode('pie')));

          cabecalho.Add(refinCE(node.ChildNodes.FindNode('refin')));

          cabecalho.Add(srfCE(node.ChildNodes.FindNode('srf')));

          cabecalho.Add(convemDevedoresCE(node.ChildNodes.FindNode('convem_devedores')));

          cabecalho.Add(detalheRechequeCE(node.ChildNodes.FindNode('detalhe_recheque')));

          cabecalho.Add(chequeSenFundoVarejoCE(node.ChildNodes.FindNode('cheque_sem_fundo_varejo')));

          cabecalho.Add(rechequeContumaciaCE(node.ChildNodes.FindNode('recheque_contumacia')));

          cabecalho.Add(grafiasCE(node.ChildNodes.FindNode('grafias')));

          cabecalho.Add(pendenciaFinanceiraCE(node.ChildNodes.FindNode('pendencia_financeira')));

          cabecalho.Add(pendenciaComercioCE(node.ChildNodes.FindNode('pendencia_comercio')));

          cabecalho.Add(passagensInternasCheckExpressCE(node.ChildNodes.FindNode('passagens_internas_checkexpress')));

          cabecalho.Add(passagensInternasSerasaCE(node.ChildNodes.FindNode('passagens_internas_serasa')));

          cabecalho.Add(passagensMercadoSerasaCE(node.ChildNodes.FindNode('passagens_mercado_serasa')));

          cabecalho.Add(referenciaComercialSerasaCE(node.ChildNodes.FindNode('referencia_comercial_serasa')));

          cabecalho.Add(teleconsultadosCE(node.ChildNodes.FindNode('teleconsultados')));

          cabecalho.Add(resultadoCapturaCE(node.ChildNodes.FindNode('resultado_captura')));

          cabecalho.Add('<tr>');
            cabecalho.Add('<td height="10">');
                cabecalho.Add('<!-- Linha de Espa?amento -->');
            cabecalho.Add('</td>');
        cabecalho.Add('</tr>');

          cabecalho.Add('<tr>');
            cabecalho.Add('<td>');
              cabecalho.Add('<table width="760">');
                cabecalho.Add('<tr>');
                  cabecalho.Add('<td bgcolor="#C0C0C0" class="titNoticia_white" align="center">');
                    cabecalho.Add('<a href="http://www.mzrsistemas.com">www.mzrsistemas.com</a> </td>');
                  cabecalho.Add('</tr>');
              cabecalho.Add('</table>');
            cabecalho.Add('</td>');
          cabecalho.Add('</tr>');

          cabecalho.Add('<tr>');
            cabecalho.Add('<td>');
              cabecalho.Add('<table width="760">');
                cabecalho.Add('<tr>');
                  cabecalho.Add('<td bgcolor="#C0C0C0" class="titNoticia_white" align="center">');
                    cabecalho.Add('<a href="http://www.checkexpress.com.br">Check Express Group</a> </td>');
                  cabecalho.Add('</tr>');
              cabecalho.Add('</table>');
            cabecalho.Add('</td>');
          cabecalho.Add('</tr>');

        cabecalho.Add('</table>');
      cabecalho.Add('</body>');
     cabecalho.Add('</html>');

     arquivo := 'c:\MZR\Arquivos\CheckExpress\HTML\Resultado_Consulta_' + FormatDateTime('dd.mm.yyyy', Date()) + '_' + FormatDateTime('hh.mm', Time()) + '.html';

     cabecalho.SaveToFile(arquivo);




End;





end.
