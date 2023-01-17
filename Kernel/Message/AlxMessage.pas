unit AlxMessage;
    {***************************************************************************}
    //Unidade de fun��es Est�ticas Auxiliares para os sistemas da �rion Software
    //Cia��o     : 03/09/2002
    //Criador    : Alex A. Mazur
    //Direitos   : Os direitos est�o reservados a �rion Software
    //Link       : Orion Macs
    //Atualiza��o: 03/09/2002
    //Vers�o     : 1.0
    {***************************************************************************}

interface
    Function MsgInfoData(msg:String; data,minimo,maximo:TDateTime; validacao:Boolean):TDateTime;
    Function Mensagem(Titulo, Menssage, Detalhes:String; botao, Focu: Integer; Detal: Boolean; Icon: Char): Integer;
    Procedure Erro(Empresa, Formulario, Controle, Aplicacao, TipoErro, erro: String);
    Procedure LimpaIcones;


implementation
Uses
    dialogs, Forms, windows,  SysUtils,
    UMessage, UInfData;

Procedure LimpaIcones;
Begin
    FMessage.IconAtencao.Visible:=False;
    FMessage.IconErro.Visible:=False;
    FMessage.IconInformacao.Visible:=False;
    FMessage.IconConfirmacao.Visible:=False;
End;

Procedure Erro(Empresa, Formulario, Controle, Aplicacao, TipoErro, erro: String);
Var
	FileName:String;
    LogFile:TextFile;
    Menssagem:String;
    Detalhes: String;
//  	I: Integer;
begin
	Try
	    FileName:='LogErro.Log';
	    AssignFile(logFile, Filename);
	    If FileExists (FileName) Then
	       Append(LogFile)
	    else Begin
	        Rewrite (LogFile);
    	    Writeln (LogFile, '=>'+Empresa+'<= [Abertura: '+DateTimeToStr (Now)+']');
        End;
  	    Writeln (LogFile, '');
	    Writeln (LogFile, '[[Erro]]==>: '+erro); //E.Message);
	    Writeln (LogFile, '        [OCORRENCIA]=>'+DateTimeToStr (Now) + ' [FORM]=> ' +Formulario{+Screen.ActiveForm.Name }+ ' [CONTROLE]=> '+Controle {Screen.ActiveForm.ActiveControl.Name}+ ' [SOFTWARE]=> ' + Aplicacao{TApp.Title});
{	    If TipoErro='EAccessViolation'
	    Then Begin
	    	Menssagem:='Ocorreu um acesso inv�lido a regi�es de mem�ria. O sistema tentou acessar um objeto ainda n�o criado.'+#13;
	        Detalhes:='O Sistema ir� retornar as informa��es antigas, cancelando o processo que provocou o erro.'+#13;
            Detalhes:=Detalhes+'Tente fechar todas as janelas deste sistema, refa�a a opera��o e se mesmo assim, o erro for provocado novamente, rein�cie o sistema operacional'+#13;
	    End;}
	    If TipoErro='EConvertError'
	    Then Begin
			Menssagem:='N�o foi poss�vel realizar a convers�o estipulada'+#13;
	        Detalhes:='O sistema recebeu comandos, para processar convers�o de valores, mas estas n�o podem ser realizadas por n�o serem do tipo esperado. Como EX: se esperava 0,00 e voc� entrou como 0.00 ou vice-versa.'+#13;
            Detalhes:=Detalhes+'Provavelmente este problema ocorreu, por algum valor com que voc� deu entrada. Verifique estes valores e tente novamente.'+#13;
	    End;
	    If TipoErro='EInOutError'
	    Then Begin
			Menssagem:='Ocorreu um erro de Entrada/Sa�da!'+#13+#10+'O sistema encontrou problemas ocasionado por algum arquivo que trabalhava com seu Sistema Operacional.'+#13;
	        Detalhes:='Este tipo de problema geralmente acontece, quando o sistema trabalha gerando arquivos de exporta��o/importa��o.'+#13;
            Detalhes:=Detalhes+'Rein�ciar seu sistema talvez seja a solu��o mais indicada.'+#13;
	    End;
	    If (TipoErro='EIntOverFlow') or (TipoErro='EInvalidOp') or (TipoErro='OverFlow')  or (TipoErro='ERangeError')
	    Then Begin
			Menssagem:='O n�mero informado ou gerado � muito grande para ser suportado.'+#13;
	        Detalhes:='Quando um numero � informado ou gerado, ele � armazenado em uma vari�vel. A vari�vel reservada para este n�mero � pequena para seu valor. Tente trabalhar com n�meros menores.'+#13+'Caso o problema persistir, reinicie o Sistema Operacional.'+#13;
	    End;

	    If (TipoErro='EDivByZero') or (TipoErro='ZeroDivide')
	    Then Begin
			Menssagem:='Em algum momento deste processo o Sistema tentou dividir um n�mero por Zero.'+#13;
	        Detalhes:='Em um determinado momento do c�lculo, o sitema teve que bloquear o processo, por encontrar um situa��o err�nea. Onde se tentava dividir um n�mero por zero.'+#13+'Para regularizar esta situa��o modifique os valores de entrada, para que outro c�lculo seja gerado.'+#13;
	    End;

	    If TipoErro='EOutOfMemory'
	    Then Begin
			Menssagem:='Sistema bloqueado por falta de mem�ria!'+#13;
	        Detalhes:='Este erro ocorreu por falta de mem�ria para o sistema. Rein�cie o Sistema Operacional e execute o sistema com o m�nimo de programas abertos.'+#13+'Se este problema persistir ser� necessario a aquisi��o de mais mem�ria para este computador.'+#13;
	    End;

	    If Erro='Dataset Open'
	    Then Begin
			Menssagem:='DataSet Aberto!'+#13;
	        Detalhes:='Este erro ocorreu por falta de mem�ria para o sistema. Rein�cie o Sistema Operacional e execute o sistema com o m�nimo de programas abertos.'+#13+'Se este problema persistir ser� necessario a aquisi��o de mais mem�ria para este computador.'+#13;
	    End;

{        Menssagem:='Error: '+(erro)+#13+'Numero: '+IntToStr(E.ErrorCount);
        //Percorre os registros de erroe
        For I:=0 to E.ErrorCount - 1 do
        Begin
        	Detalhes:='Message: 'E.Errors[I].Message;
        	Detalhes:=Detalhes+#13+'Categoria....: '+IntToStr(E.Errors[I].Category);
        	Detalhes:=Detalhes+#13+'Code de erro.:'+IntToStr(E.Errors[I].ErrorCode);
        	Detalhes:=Detalhes+#13+'SubCodigo....: '+IntToStr(E.Errors[I].SubCode);
        	Detalhes:=Detalhes+#13+'Erro nativo..: '+ IntToStr(E.Errors[I].NativeError);
        End;}
        If Menssagem='' Then
           Menssagem:=Menssagem+Erro;
        Detalhes:=Detalhes+#13+'ORIGINAL:' +#13+erro;
	    CloseFile (LogFile);
	    If TipoErro<>'EAccessViolation' Then
            Mensagem('MENSAGEM', Menssagem, Detalhes, 1, 1, True, 'E')
    Except
    End;
End;

Function Mensagem(Titulo, Menssage, Detalhes: String; Botao, Focu: Integer; Detal:Boolean; Icon: Char): Integer;
Begin
	Try
    Application.CreateForm(TFMessage, FMessage);

 	 FMessage.LComunic.Caption:=Titulo;

    FMessage.MMenssagem.Lines.Text:=menssage;

    LimpaIcones;

    If (Botao=1) Then
            FMessage.BtnOk.Visible:=True;
    If (Botao=2)
    Then Begin
            FMessage.BtnSim.Visible:=True;
            FMessage.Btnnao.Visible:=True;
    End;
    If (Botao=3)
    Then Begin
            FMessage.BtnSim.Visible:=True;
            FMessage.Btnnao.Visible:=True;
            FMessage.BtnCancelar.Visible:=True;
    End;

    Case Focu of
        1: fMessage.Tag:=1;
        2: fMessage.Tag:=2;
        3: fMessage.Tag:=3;
        4: FMessage.Tag:=4;
    end;

    If UpCase(Icon)='C'
    Then Begin
            FMessage.IconConfirmacao.Visible:=True;
            FMessage.IconConfirmacao.BringToFront;
    End;

    If UpCase(Icon)='I'
    Then Begin
            FMessage.IconInformacao.Visible:=True;
            FMessage.IconInformacao.BringToFront;
    End;

    If UpCase(Icon)='A'
    Then Begin
            FMessage.IconAtencao.Visible:=True;
            FMessage.IconAtencao.BringToFront;
    End;

    If UpCase(Icon)='E'
    Then Begin
            FMessage.IconErro.Visible:=True;
			 FMessage.IconErro.BringToFront;
    End;

    FMessage.ShowModal;

    If FMessage.BtnOk.Tag=1 Then
        Mensagem:=1;
    If FMessage.BtnSim.Tag=1 Then
        Mensagem:=2;
    If FMessage.BtnNao.Tag=1 Then
        Mensagem:=3;
    If FMessage.BtnCancelar.Tag=1 Then
        Mensagem:=4;

    FMessage.Action:=nil;
    FMessage.Free;
   Except
   End;
End;

Function MsgInfoData(msg:String; data,minimo,maximo:TDateTime; validacao:Boolean):TDateTime;
Begin

  Try
    Try
      Application.CreateForm(TFInfoData, FInfoData);

      FInfoData.setMessageData(msg, data, minimo, maximo, validacao);

      FInfoData.ShowModal;

      Result := FInfoData.edData.Date;
      
     Finally
       FInfoData.Action:=nil;
       FInfoData.Free;
     End;
   Except
   End;

End;

end.
