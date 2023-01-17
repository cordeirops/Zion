unit UValidacaoNFe;

interface

Uses

    SysUtils, Classes, Forms, Windows, IBQuery, IBDataBase, UMenu, DB, Buttons;


    function ValidaData(dataTmp:String):String;

     function ValidaCNPJ(str:String):String;

     function ValidaCPF(str:String):String;

     function ValidaIE(str:String):String;

     function TirarCarct01(str:String):String;

     function ValidaAcentos(str:String):String;

     function ValidaTam(str:String; tamMin:Integer; tamMax:Integer):String;

     function ValidaTamObg(str:String; tam:Integer):String;

     function ValidaNumeroNF(str:String):String;

     function ValidaDois(str:String):String;

     function ValidaTres(str:String):String;

     function ValidaQuatro(str:String):String;

     function InserirZero(str:String; qnt:Integer):String;

     function PosCar(Text,Busca : string) : integer;

     function TrocaVirgula(numero :Double):String;

     function TrocaData(data:TDateTime):String;

     function TrocaHora(hora:TDateTime):String;

     function VirgulaTroca(numero :String):Double;

     function DataTroca(data:String):TDateTime;

     function HoraTroca(hora:String):TDateTime;

     function TirarAcentos(CrtEsp:Boolean; str:WideString):WideString;

implementation

uses Math;

// validar data
function ValidaData(dataTmp:String):String;
var
   tmp: TDateTime;
   data: String;
begin

    data := Trim(dataTmp);

    try

       tmp := StrToDate(data);

       data := FormatDateTime('yyyy-mm-dd', tmp);

       Result := data;

  except

     Result := '';

  end;

end;


//validar cnpj
function ValidaCNPJ(str:String):String;
begin

    str := Trim(str);

    str := TirarCarct01(str);

    //if Length(str) <> 14 then
      // str := '';

    ValidaCNPJ := str;

end;

function ValidaCPF(str:String):String;
begin

    str := Trim(str);

    str := TirarCarct01(str);

    //if Length(str) <> 11 then
      // str := '';

    ValidaCPF := str;

end;


function ValidaIE(str:String):String;
begin
    str := Trim(str);

    str := TirarCarct01(str);

    ValidaIE := str;
end;


//tira da string . / -
function TirarCarct01(str:String):String;
begin

    str  := StringReplace(str, '.', '',[rfReplaceAll]);
    str  := StringReplace(str, '/', '',[rfReplaceAll]);
    str  := StringReplace(str, '-', '',[rfReplaceAll]);

    TirarCarct01 := str;

end;


// tirar acentos // colocar true para codigos especiais (ui!)
function ValidaAcentos(str:String):String;
var i:integer;
begin

   str := Trim(str);

   for i:=1 to length(str) do
   begin
     case Byte(str[i]) of
       192..198:str[i] := 'A';
       199:str[i] := 'C';
       200..203:str[i] := 'E';
       204..207:str[i] := 'I';
       208:str[i] := 'D';
       209:str[i] := 'N';
       210..214:str[i] := 'O';
       217..220:str[i] := 'U';
       221:str[i] := 'Y';
       224..230:str[i] := 'a';
       231:str[i] := 'c';
       232..235:str[i] := 'e';
       236..239:str[i] := 'i';
       241:str[i] := 'n';
       242..246:str[i] := 'o';
       249..252:str[i] := 'u';
       253:str[i] := 'y';
       255:str[i] := 'y';
       123..191:str[i] := '.';
     end;

   end;

   // - 14/04/2009: remover "Enter"
   str  := StringReplace(str, #13+#13, ' ',[rfReplaceAll]);
   str  := StringReplace(str, #13, ' ',[rfReplaceAll]);
   str  := StringReplace(str, #10, ' ',[rfReplaceAll]);

   //remover espaços duplicados
   str  := StringReplace(str, '  ', ' ',[rfReplaceAll]);
   str  := StringReplace(str, '   ', ' ',[rfReplaceAll]); //triplicados
   str  := StringReplace(str, '    ', ' ',[rfReplaceAll]); //quadruplicados

   str  := StringReplace(str, '&', 'e',[rfReplaceAll]);
       
   str  := StringReplace(str, '<', '&lt;',[rfReplaceAll]);
   str  := StringReplace(str, '>', '&gt;',[rfReplaceAll]);
   str  := StringReplace(str, '"', '&quot;',[rfReplaceAll]);
   str  := StringReplace(str, #39, '&#39;',[rfReplaceAll]);

   str  := StringReplace(str, #9, ' ',[rfReplaceAll]);

   If str='' Then //caso o string passado seja em branco retorna com um ponto, para não informar dados em branco
       str:='.';

   result := str;
end;

function ValidaTam(str:String; tamMin:Integer; tamMax:Integer):String;
begin

     str := ValidaAcentos(str);
     str := Trim(str);

    if (Length(str) < tamMin)then
       str := '';

    if (Length(str) > tamMax) then
          str := Copy(str, 1, tamMax);

       ValidaTam := str;

end;

function ValidaTamObg(str:String; tam:Integer):String;
begin
    str := ValidaAcentos(str);
    str := Trim(str);

    if (Length(str) <> tam)then
       str := '';

       ValidaTamObg := str;

end;

function ValidaNumeroNF(str:String):String;
var
   tmp: Double;
begin

   str := Trim(str);

   try

     //tmp := StrToFloat(str);

     //str := FormatFloat('900000000', tmp);

     Result:=str;

   except

      str :='';

      Result:=str;

   end;

end;

function ValidaDois(str:String):String;
begin

   str := Trim(str);

   str  := StringReplace(str, ',', '.',[rfReplaceAll]);

   if Length(str) = 0 then begin

       str := '0.00';

   end else if PosCar(str,'.') = 0 then begin

        str := str+'.00';

   end else begin

       str := InserirZero(str, 2);

   end;

   Result := str;

end;

function ValidaTres(str:String):String;
begin

   str := Trim(str);

   str  := StringReplace(str, ',', '.',[rfReplaceAll]);

   if Length(str) = 0 then begin

       str := '0.000';

   end else if PosCar(str,'.') = 0 then begin

        str := str+'.000';

   end else begin

       str := InserirZero(str, 3);

   end;

   Result := str;

end;

function ValidaQuatro(str:String):String;
begin

   str := Trim(str);

   str  := StringReplace(str, ',', '.',[rfReplaceAll]);

   if Length(str) = 0 then begin

       str := '0.0000';

   end else if PosCar(str,'.') = 0 then begin

        str := str+'.0000';

   end else begin

       str := InserirZero(str, 4);

   end;

   Result := str;

end;

function InserirZero(str:String; qnt:Integer):String;
var
   tmp:String;
   t,i:Integer;
begin

   str  := StringReplace(str, ',', '.',[rfReplaceAll]);

   t := PosCar(str, '.');

       tmp := Copy(str, t+1, qnt);

       for i:= Length(tmp) to qnt-1 do begin
           tmp := tmp+'0';
       end;

       str := Copy(str, 1, t)+tmp;

   Result := str;

end;

function PosCar(Text,Busca : string) : integer;
{Pesquisa um caractere à direita da string,
 retornando sua posição}
var n,retorno : integer;
begin
   retorno := 0;
   for n := length(Text) downto 1 do
   begin
      if Copy(Text,n,1) = Busca then
         begin
            retorno := n;
            break;
         end;
   end;
   Result := retorno;
end;

function TrocaVirgula(numero :Double):String;
var
   tmp :String;
begin
     tmp := FloatToStr(numero);
     tmp  := StringReplace(tmp, ',', '.',[rfReplaceAll]);
     Result := tmp;
end;

function TrocaData(data:TDateTime):String;
begin
    try
       Result := FormatDateTime('yyyy-mm-dd', data);
    except
     Result := ''; 
  end;
End;

function TrocaHora(hora:TDateTime):String;
begin
    try
       Result := FormatDateTime('hh:mm:ss', hora);
    except
     Result := ''; 
  end;
End;


function VirgulaTroca(numero :String):Double;
Begin

     numero  := StringReplace(numero, '.', ',',[rfReplaceAll]);

     Try
       If Trim(numero) <> '' Then
          Result := StrToFloat(numero)
       Else
        Result := 0;
     Except
           Result := 0;
     End;

End;

function DataTroca(data:String):TDateTime;
Begin
     Try
        If Trim(data) = '' Then
          Result := 0
        Else If StrToInt(Copy(data, 0, 1)) > 0
        Then
          Result :=  EncodeDate(StrToInt(Copy(data, 1,4)), StrToInt(Copy(data, 6, 2)), StrToInt(Copy(data, 9, 2)))
        Else
          Result := 0;
     Except
        Result := 0;
     End;

End;


function HoraTroca(hora:String):TDateTime;
Begin
     Try
        If Trim(hora) = '' Then
          Result := 0
        Else
          Result := StrToTime(hora);
     Except
        Result := 0;
     End;

End;

function TirarAcentos(CrtEsp:Boolean; str:WideString):WideString;
var i:integer;
begin
   for i:=1 to length(str) do
   begin
     case Byte(str[i]) of
       192..198:str[i] := 'A';
       199:str[i] := 'C';
       200..203:str[i] := 'E';
       204..207:str[i] := 'I';
       208:str[i] := 'D';
       209:str[i] := 'N';
       210..214:str[i] := 'O';
       217..220:str[i] := 'U';
       221:str[i] := 'Y';
       224..230:str[i] := 'a';
       231:str[i] := 'c';
       232..235:str[i] := 'e';
       236..239:str[i] := 'i';
       241:str[i] := 'n';
       242..246:str[i] := 'o';
       249..252:str[i] := 'u';
       253:str[i] := 'y';
       255:str[i] := 'y';
     end;
   end;

   //remover espaços duplicados
   str  := StringReplace(str, '  ', ' ',[rfReplaceAll]);

   if  CrtEsp then begin
       str  := StringReplace(str, '&', '&amp;',[rfReplaceAll]);
       str  := StringReplace(str, '<', '&lt;',[rfReplaceAll]);
       str  := StringReplace(str, '>', '&gt;',[rfReplaceAll]);
       str  := StringReplace(str, '"', '&quot;',[rfReplaceAll]);
       str  := StringReplace(str, #39, '&#39;',[rfReplaceAll]);
       str  := StringReplace(str, #13, '',[rfReplaceAll]);       
       str  := StringReplace(str, '#$D#$A', '.',[rfReplaceAll]);       
   end;

   result := str;
end;

end.
