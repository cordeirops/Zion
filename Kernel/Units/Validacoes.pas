unit Validacoes;

interface

Uses
   StdCtrls, FResultadoValidacoes, Forms, URelGeralMovimentacoesFinanceiras, Windows;

   //Declara��o de Fun��es
   //Chamada de fun��es de testes
   Function TestaValidaSistema: Boolean;
   //Teste tela de relat�rios geral de movimenta��es financeiro
   Function TesteRelGeralMovimentacoes: Boolean;
   //Teste tela de Or�amento de mecanica
   Function TesteFOrcamentoMac: Boolean;
   //Teste do banco cep rua
   Function TesteBancoCepRua: Boolean;

implementation

uses
  Dialogs, UOrcamentoMac, SysUtils;
   //Implementa��o de Fun��es
      //Chamada de fun��es de testes
   Function TestaValidaSistema: Boolean;
   Begin
       Try
           Result:=True;
           FResultadoValidacoesTestes.Memo1.Clear;
           FResultadoValidacoesTestes.Memo1.Lines.Add('Erro: ');
           
           //Teste do banco de cep rua
           If TesteBancoCepRua=False
           Then Begin
               Result:=False;
               FResultadoValidacoesTestes.Memo1.Lines.Add('  - O banco de CEP e Ruas n�o foi encontrado junto ao sistema.')
           End;

           //FRelGeralMovimentacoesFinanceiras.TesteRelGeralMovimentacoes
           If  TesteRelGeralMovimentacoes=False
           Then Begin
               Result:=False;
               FResultadoValidacoesTestes.Memo1.Lines.Add('  - A Tela URelGeralMovimenta��es deve ser criada automaticamente em mem�ria.')
           End;

           //FRelGeralMovimentacoesFinanceiras.TesteRelGeralMovimentacoes
           If TesteFOrcamentoMac=False
           Then Begin
               Result:=False;
               FResultadoValidacoesTestes.Memo1.Lines.Add('  - A Tela FOrcamentoMac deve ser criada automaticamente em mem�ria.')
           End;

           If Result=False
           Then Begin
               FResultadoValidacoesTestes.ShowModal;
           End
           Else Begin
               MessageDlg('Valida��o Positiva!', mtInformation, [mbOK], 0);
           End;
       Except

       End;
   End;

   //Teste do banco cep rua
   Function TesteBancoCepRua: Boolean;
   Begin
       Try
           //tentamos acessar propriedade
           If not FileExists(ExtractFilePath(Application.ExeName)+'CEPRUA.GDB') Then
               Result:=False
           else
               Result:=True;
       Except
           Result:=False;
       End;
   End;

   //Teste tela de relat�rios geral de movimenta��es financeiro
   Function TesteRelGeralMovimentacoes: Boolean;
   Begin
       Try
           //tentamos acessar propriedade
           FRelGeralMovimentacoesFinanceiras.CBPedCompra.Checked;
       Except
           Result:=False;
       End;
   End;
   
   //Teste tela de Or�amento de mecanica
   Function TesteFOrcamentoMac: Boolean;
   Begin
       Try
           //tentamos acessar propriedade
           FOrcamentoMac.lbNumFrota.Caption;
       Except
           Result:=False;
       End;
   End;

end.
