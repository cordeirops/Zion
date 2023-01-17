unit UEcf;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, ExtCtrls, TFlatHintUnit, Buttons, StdCtrls, jpeg, EditFloat,
  ColorEditFloat, DrLabel;
  

type
  TFECF = class(TFPadrao)
    GroupBox1: TGroupBox;
    Shape3: TShape;
    Label1: TLabel;
    Shape5: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Shape6: TShape;
    Label4: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn23: TBitBtn;
    EDVlrDesc: TColorEditFloat;
    CBDesc: TCheckBox;
    CBAcrec: TCheckBox;
    EdVlrPag: TColorEditFloat;
    EdIndicPag: TColorEditFloat;
    EdIndicCancItem: TColorEditFloat;
    BitBtn14: TBitBtn;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn8: TBitBtn;
    BitBtn15: TBitBtn;
    EdVlrSup: TColorEditFloat;
    EdVlrSangria: TColorEditFloat;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    EdIndicRec: TColorEditFloat;
    EdVlrRec: TColorEditFloat;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn3: TBitBtn;
    CBPORTA: TComboBox;
    GroupBox6: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Button1: TButton;
    AddAliqIndic: TColorEditFloat;
    AddAliq: TColorEditFloat;
    GroupBox3: TGroupBox;
    Shape7: TShape;
    Label9: TLabel;
    Label10: TLabel;
    Shape8: TShape;
    Label11: TLabel;
    BitBtn4: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    EdRedIni: TColorEditFloat;
    EdRedFin: TColorEditFloat;
    EdFormPag: TEdit;
    BitBtn24: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    BitBtn30: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FECF: TFECF;

implementation

uses UMenu, Alxor32, UDMMacs, AlxMessage, Alxorprn;

{$R *.DFM}

procedure TFECF.BitBtn5Click(Sender: TObject);
begin
  inherited;
   // FUNÇÃO PARA ABRIR CUPOM
   ecfAbreCupom;
end;

procedure TFECF.BitBtn6Click(Sender: TObject);
begin
   // função vende item
   Vende_Item_Emulador;
end;

procedure TFECF.BitBtn7Click(Sender: TObject);
begin
  inherited;
   PagaCupom_Emulador(EdVlrPag.Text);
end;

procedure TFECF.BitBtn10Click(Sender: TObject);
var
XAux : integer;
begin
  inherited;
  FiltraTabela(DMMACS.TLoja, 'LOJA', '', '', '');
  ecfFecha_Cupom('FECHA CUPOM - Mzr Sistemas');
  //FMenu.MPF.FechaCupom(' '+DMMACS.TLoja.FieldByName('FRASEECF').AsString);
end;

procedure TFECF.BitBtn13Click(Sender: TObject);
begin
  inherited;
   // FUNÇÃO PARA CANCELAR CUPOM
   ecfCancelaCupom;
end;

procedure TFECF.BitBtn11Click(Sender: TObject);
begin
  inherited;
  // função para cancelar ultimo item
  Cancela_Ultimo_Item;
end;

procedure TFECF.BitBtn14Click(Sender: TObject);
begin
  inherited;
   // FUNÇÃO CANCELA ITEM GENERICO
   Cancela_Item_Pos(StrToInt(EdIndicCancItem.Text));
end;

procedure TFECF.BitBtn18Click(Sender: TObject);
begin
  inherited;
  // Função para abrir gaveta
   ecfOpenGaveta;
End;

procedure TFECF.BitBtn8Click(Sender: TObject);
begin
  inherited;
	Mensagem(' A T E N Ç Ã O ', 'NÃO IMPLEMENTADO!', '', 1, 1, False, 'E');
end;

procedure TFECF.BitBtn15Click(Sender: TObject);
begin
  inherited;
	Mensagem(' A T E N Ç Ã O ', 'NÃO IMPLEMENTADO!', '', 1, 1, False, 'E');
end;

procedure TFECF.BitBtn19Click(Sender: TObject);
begin
  inherited;
  // fUNÇÃO RECEBIMENTO
   Recebimento;
end;

procedure TFECF.BitBtn20Click(Sender: TObject);
begin
  inherited;
  // Função autenticar
   Autenticar;
end;

procedure TFECF.BitBtn4Click(Sender: TObject);
begin
  inherited;
   Status_Cupom;
end;

procedure TFECF.BitBtn16Click(Sender: TObject);
begin
  inherited;
  if (MODELO_IMPRESSORA = 'BEMATECH')
  THEN BEGIN
       //ShowMessage(MPF.FlagsFiscais(0));
  END;
  IF (MODELO_IMPRESSORA = 'ELGIN')
  THEN BEGIN
       Mensagem(' A T E N Ç Ã O ', 'NÃO IMPLEMENTADO PARA ELGIN.', '', 1, 1, False, 'E');
  END;     
end;

procedure TFECF.BitBtn21Click(Sender: TObject);
Var
 x:String;
 ult_indice, XAux: integer;
begin
  if (MODELO_IMPRESSORA = 'BEMATECH')
  THEN BEGIN
      //x:=IntToStr(MPF.ProgramaFormaPagamento(EdFormPag.Text));
      ShowMessage('Forma de pagamento numero '+ x);
  END;
  IF (MODELO_IMPRESSORA = 'ELGIN')
  THEN BEGIN
       //ult_indice := ult_indice + 1;
       ult_indice := 1;
       XAux := 1;
       // programando novo pagamento
       while XAux <> 0 do
       begin
           if (ult_indice = 20)
           THEN BEGIN
               Mensagem(' A T E N Ç Ã O ', 'Já existem 20 formas de pagamentos cadastradas. Limite máximo.', '', 1, 1, False, 'E');
           END;


           XAux := ecfPayPatterns(IntToStr(ult_indice), EdFormPag.Text);

           if XAux = 0
           THEN BEGIN
               ecfPayPatterns(IntToStr(ult_indice), EdFormPag.Text);
               Mensagem('CADASTRO DE FORMA DE PAGAMENTO', 'NOME: '+ EdFormPag.Text, '', 1, 1, False, 'C');
               Exit;
           END;
           ult_indice := ult_indice + 1;
       end;
  END;

end;

procedure TFECF.BitBtn22Click(Sender: TObject);
begin
  inherited;
   // verifica se o usuario possui impressora ou nao
   If Verifica_Impressora = false
   Then Begin
       Exit;
   End
   Else Begin

       IF (MODELO_IMPRESSORA = 'BEMATECH')
       THEN BEGIN
           //MPF.HorarioVerao;
       END;
       IF (MODELO_IMPRESSORA = 'ELGIN')
       THEN BEGIN
           Mensagem('   E L G I N   ', 'NÃO IMPLEMENTADO PARA ELGIN.', '', 1, 1, False, 'E');
       END;
       If (MODELO_IMPRESSORA = 'SWEDA')
       Then Begin
           Mensagem('   S W E D A   ', 'NÃO IMPLEMENTADO PARA SWEDA.', '', 1, 1, False, 'E');
       End;
   End;
end;

procedure TFECF.BitBtn24Click(Sender: TObject);
var
 x:String;
 I,k:integer;
 Aliquota:Double;
begin
   // verifica se o usuario possui impressora ou nao
   If Verifica_Impressora = false
   Then Begin
       Exit;
   End
   Else Begin

       IF (MODELO_IMPRESSORA = 'BEMATECH')
       THEN BEGIN
           x:='';
           //k:=MPF.Aliquotas;   // retorna o numero de aliquotas cadastradas
           for I:=1 to k do
           begin
               //Aliquota:=MPF.MAliquota[I]; // array que contem as aliquotas
               x:=x+'Alíquota '+IntToStr(I)+' - '+formatFloat('00.00',Aliquota)+#13;
           end;
           ShowMessage(x);
       END;
       IF (MODELO_IMPRESSORA = 'ELGIN')
       THEN BEGIN
           Mensagem('   E L G I N   ', 'NÃO IMPLEMENTADO PARA ELGIN.', '', 1, 1, False, 'E');
       END;
       If (MODELO_IMPRESSORA = 'SWEDA')
       Then Begin
           Mensagem('   S W E D A   ', 'NÃO IMPLEMENTADO PARA SWEDA.', '', 1, 1, False, 'E');
       End;
   End;       
end;

procedure TFECF.BitBtn26Click(Sender: TObject);
begin
  inherited;

   // verifica se o usuario possui impressora ou nao
   If Verifica_Impressora = false
   Then Begin
       Exit;
   End
   Else Begin

       IF (MODELO_IMPRESSORA = 'BEMATECH')
       THEN BEGIN
           //ShowMessage('tamanho da string '+ IntToStr(Length(MPF.UltimaReducao)));
       END;
       IF (MODELO_IMPRESSORA = 'ELGIN')
       THEN BEGIN
           Mensagem('   E L G I N   ', 'NÃO IMPLEMENTADO PARA ELGIN.', '', 1, 1, False, 'E');
       END;
       If (MODELO_IMPRESSORA = 'SWEDA')
       Then Begin
           Mensagem('   S W E D A   ', 'NÃO IMPLEMENTADO PARA SWEDA.', '', 1, 1, False, 'E');
       End;

   End;

end;

procedure TFECF.BitBtn2Click(Sender: TObject);
begin
  inherited;
   // função para abrir porta
   ecfAbrePorta;

end;

procedure TFECF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  // Fecha porta impressora

end;

procedure TFECF.BitBtn17Click(Sender: TObject);
begin
  inherited;
//  FMenu.FMenu.MPF.LeituraMemoriaFiscal(0,DataInicial,DataFinal);
    if (MODELO_IMPRESSORA = 'BEMATECH')
  THEN BEGIN
       //MPF.LeituraMemoriaFiscal(1, EdRedIni.Text, EdRedFin.Text);
  END;
  IF (MODELO_IMPRESSORA = 'ELGIN')
  THEN BEGIN
       Mensagem(' A T E N Ç Ã O ', 'NÃO IMPLEMENTADO PARA ELGIN.', '', 1, 1, False, 'E');
  END;

end;

procedure TFECF.BitBtn12Click(Sender: TObject);
begin
  inherited;
  // FUNÇÃO PARA REDUÇÃO Z
  ReducaoZ; 
end;

procedure TFECF.BitBtn27Click(Sender: TObject);
var
  Data,Hora:String;
begin
   // verifica se o usuario possui impressora ou nao
   If Verifica_Impressora = false
   Then Begin
       Exit;
   End
   Else Begin

       IF (MODELO_IMPRESSORA = 'BEMATECH')
       THEN BEGIN
           //Data:=MPF.Data;
           //Hora:=MPF.Hora;
           ShowMessage('A data atual é '+data+' e a hora '+hora);
       END;
       IF (MODELO_IMPRESSORA = 'ELGIN')
       THEN BEGIN
           Mensagem('   E L G I N   ', 'NÃO IMPLEMENTADO PARA ELGIN.', '', 1, 1, False, 'E');
       END;
       If (MODELO_IMPRESSORA = 'SWEDA')
       Then Begin
           Mensagem('   S W E D A   ', 'NÃO IMPLEMENTADO PARA SWEDA.', '', 1, 1, False, 'E');
       End;
   End;       
end;

procedure TFECF.BitBtn28Click(Sender: TObject);
var
  Data:String;
begin
   // verifica se o usuario possui impressora ou nao
   If Verifica_Impressora = false
   Then Begin
       Exit;
   End
   Else Begin
       IF (MODELO_IMPRESSORA = 'BEMATECH')
       THEN BEGIN
           //Data:=MPF.DataMovimento;
           ShowMessage('A data do movimento é '+data);
       END;

       IF (MODELO_IMPRESSORA = 'ELGIN')
       THEN BEGIN
           Mensagem('   E L G I N   ', 'NÃO IMPLEMENTADO PARA ELGIN.', '', 1, 1, False, 'E');
       END;
       If (MODELO_IMPRESSORA = 'SWEDA')
       Then Begin
            Mensagem('   S W E D A   ', 'NÃO IMPLEMENTADO PARA SWEDA.', '', 1, 1, False, 'E');
       End;
   End;
end;

procedure TFECF.BitBtn29Click(Sender: TObject);
var
  Retorno:Integer;
begin

   // verifica se o usuario possui impressora ou nao
   If Verifica_Impressora = false
   Then Begin
       Exit;
   End
   Else Begin
       IF (MODELO_IMPRESSORA = 'BEMATECH')
       THEN BEGIN
       { Retorno:
                  0 sucesso
                  1 erro na comunicacao fisica
                 -2 parametro invalida
                 -3 versao antiga de firmware }

           //Retorno:=MPF.Comando('|27|');
           if Retorno<>0 then
               ShowMessage('Erro: '+IntToStr(Retorno))
           else
      END;
      IF (MODELO_IMPRESSORA = 'ELGIN')
      THEN BEGIN
           Mensagem('   E L G I N   ', 'NÃO IMPLEMENTADO PARA ELGIN.', '', 1, 1, False, 'E');
      END;
      If (MODELO_IMPRESSORA = 'SWEDA')
      Then Begin
           Mensagem('   S W E D A   ', 'NÃO IMPLEMENTADO PARA SWEDA.', '', 1, 1, False, 'E');
      End;
   End;
end;

procedure TFECF.BitBtn30Click(Sender: TObject);
var
  Cod,Dig:String;
begin
   // verifica se o usuario possui impressora ou nao
   If Verifica_Impressora = false
   Then Begin
       Exit;
   End
   Else Begin

      IF (MODELO_IMPRESSORA = 'BEMATECH')
      THEN BEGIN
          Cod:='000000000001';              // '400999390209' ->0
          //Dig:=MPF.Ean13(Cod);
          if Dig<>'' then
             ShowMessage('O digito verificador do Código '+Cod+' é '+Dig);
      END;

      IF (MODELO_IMPRESSORA = 'ELGIN')
      THEN BEGIN
           Mensagem('   E L G I N   ', 'NÃO IMPLEMENTADO PARA ELGIN.', '', 1, 1, False, 'E');
      END;
      If (MODELO_IMPRESSORA = 'SWEDA')
      Then Begin
           Mensagem('   S W E D A   ', 'NÃO IMPLEMENTADO PARA SWEDA.', '', 1, 1, False, 'E');
      End;
   End;
end;

procedure TFECF.Button1Click(Sender: TObject);
begin
  inherited;
	//MPF.AdicionaAliquota(AddAliqIndic.ValueInteger, AddAliq.ValueNumeric);
end;

procedure TFECF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  // LeituraX de impressoras
  LeituraX;
end;

procedure TFECF.BitBtn23Click(Sender: TObject);
begin
  inherited;
	Status_Papel;
end;

procedure TFECF.BitBtn9Click(Sender: TObject);
begin
  inherited;
  // se o checkbox do desconto estiver selecionado, o valor ira com sinal negativo
   If (CBDesc.Checked = true)
   Then begin
       Inicia_Fechamento_Emulador('-' + EDVlrDesc.Text);
   End
   // se valor do acrescimo estiver selecionado o parametro tera valor positivo
   Else Begin
       Inicia_Fechamento_Emulador(EDVlrDesc.Text);
   End;

end;

end.


