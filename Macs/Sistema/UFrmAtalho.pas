unit UFrmAtalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, Buttons, xmldom, XMLIntf, msxmldom, XMLDoc, ShellAPI,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP,URLMON;

type
  TFrmAtalho = class(TFrame)
    ImgAtalho: TImage;
    IconOrdem: TImage;
    IconOrdem02: TImage;
    Image1: TImage;
    IconPedvenda02: TImage;
    IconPedvenda: TImage;
    IconPedCompra: TImage;
    IconPedCompra02: TImage;
    IconLancaixa02: TImage;
    IconLancaixa: TImage;
    IconEstoque02: TImage;
    IconEstoque: TImage;
    IconCP: TImage;
    IconCP02: TImage;
    IconCr: TImage;
    IconCr02: TImage;
    IconBanco02: TImage;
    IconBanco: TImage;
    IconCheque: TImage;
    IconCheque02: TImage;
    IconCliente: TImage;
    IconCliente02: TImage;
    IconFornecedor: TImage;
    IconFornecedor02: TImage;
    IconOrcamento02: TImage;
    IconOrcamento: TImage;
    IconEmail: TImage;
    IconRss: TImage;
    XMLSuporte: TXMLDocument;
    IconTicket: TImage;
    IconRemoto: TImage;
    IFTP: TIdFTP;
    procedure IconOrdemClick(Sender: TObject);
    procedure IconOrdem02MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IconPedvenda02MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure IconPedCompra02MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure IconLancaixa02MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure IconPedvendaClick(Sender: TObject);
    procedure IconPedCompraClick(Sender: TObject);
    procedure IconLancaixaClick(Sender: TObject);
    procedure IconEstoqueClick(Sender: TObject);
    procedure IconEstoque02MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure IconCPClick(Sender: TObject);
    procedure IconCP02MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IconCr02MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IconCrClick(Sender: TObject);
    procedure IconBanco02MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IconBancoClick(Sender: TObject);
    procedure IconCheque02MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IconChequeClick(Sender: TObject);
    procedure IconCliente02MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure IconClienteClick(Sender: TObject);
    procedure IconFornecedor02MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure IconFornecedorClick(Sender: TObject);
    procedure IconOrcamento02MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure IconOrcamentoClick(Sender: TObject);
    procedure IconEmailClick(Sender: TObject);
    procedure IconRssClick(Sender: TObject);
    procedure IconTicketClick(Sender: TObject);
    procedure IconRemotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //função utilizada para ativar icones (0=nenhum)
    Function AtivaIcone(Icone: Integer): Boolean;
    //Transfere Arquivo Compactado para Ftp
    Function TransfFTP: Boolean;

  end;

implementation

uses UDMMacs, UOrdemMec, Alxor32, UOrdem, UMenu, UPedVenda, UPedCompra,
  UDMCaixa, ULancCaixa, AlxMessage, UProduto, UCtasPagar, UCtaReceber,
  UMovBanco, ULanCHEntr, UCliente, UFORNECEDOR, UOrcamento, UEmailSuporte,
  UNovidades, UOrdemDesp, UOrdemPet, UOrdemLoca, UOrdemRetifica,
  UOrdemGrafica, UOrcamentoMac, UOrcamento3, UOrdemProduc;

{$R *.dfm}

//função utilizada para ativar icones (0=nenhum)
Function TFrmAtalho.AtivaIcone(Icone: Integer): Boolean;
Begin
	 If Tag=1
    Then Begin
        //Icone de ordem
        IconOrdem02.Visible:=True;
        IconOrdem02.BringToFront;

        //Icone de Pedido de venda
        IconPedvenda02.Visible:=True;
        IconPedvenda02.BringToFront;

        //Icone de Pedido de compra
        IconPedCompra02.Visible:=True;
        IconPedCompra02.BringToFront;

        //Icone de lançamento de caixa
        IconLancaixa02.Visible:=True;
        IconLancaixa02.BringToFront;

        //Icone de Estoque
        IconEstoque02.Visible:=True;
        IconEstoque02.BringToFront;

        //Icone de CP
        IconCP02.Visible:=True;
        IconCP02.BringToFront;

        //Icone de CR
        IconCR02.Visible:=True;
        IconCR02.BringToFront;

        //Icone de Lançamentos Bancário
        IconBanco02.Visible:=True;
        IconBanco02.BringToFront;

        //Icone de Lançamentos cheque
        IconCheque02.Visible:=True;
        IconCheque02.BringToFront;

        //Icone de clientes
        IconCliente02.Visible:=True;
        IconCliente02.BringToFront;

        //Icone de fornecedor
        IconFornecedor02.Visible:=True;
        IconFornecedor02.BringToFront;

        //Icone de orçamento
        IconOrcamento02.Visible:=True;
        IconOrcamento02.BringToFront;

        Tag:=0;
    End;

    //Ativa imagem do primeiro icone
    If Icone=1
    Then Begin
       IconOrdem.Visible:=True;
       IconOrdem.BringToFront;
       Tag:=1;
    End;
    //Ativa imagem do segundo icone (pedido de venda)
    If Icone=2
    Then Begin
       IconPedvenda.Visible:=True;
       IconPedvenda.BringToFront;
       Tag:=1;
    End;
    //Ativa imagem do terceiro icone (pedido de compra)
    If Icone=3
    Then Begin
       IconPedCompra.Visible:=True;
       IconPedCompra.BringToFront;
       Tag:=1;
    End;
    //Ativa imagem do quarto icone (Lan caixa)
    If Icone=4
    Then Begin
       IconLancaixa.Visible:=True;
       IconLancaixa.BringToFront;
       Tag:=1;
    End;
    //Ativa imagem do quinto icone (Lan caixa)
    If Icone=5
    Then Begin
       IconEstoque.Visible:=True;
       IconEstoque.BringToFront;
       Tag:=1;
    End;
    //Ativa imagem do sexto icone (Ctas Pagar)
    If Icone=6
    Then Begin
       IconCP.Visible:=True;
       IconCP.BringToFront;
       Tag:=1;
    End;
    //Ativa imagem do setimo icone (Ctas Receber)
    If Icone=7
    Then Begin
       IconCR.Visible:=True;
       IconCR.BringToFront;
       Tag:=1;
    End;
    //Ativa imagem do oitavo icone (Lançamentos bancários)
    If Icone=8
    Then Begin
       IconBanco.Visible:=True;
       IconBanco.BringToFront;
       Tag:=1;
    End;
    //Ativa imagem do nono icone (Lançamentos de cheque)
    If Icone=9
    Then Begin
       IconCheque.Visible:=True;
       IconCheque.BringToFront;
       Tag:=1;
    End;
    //Ativa imagem do decimo icone (Lançamentos de cliente)
    If Icone=10
    Then Begin
       IconCliente.Visible:=True;
       IconCliente.BringToFront;
       Tag:=1;
    End;
    //Ativa imagem do decimo primeiro icone (Lançamentos de fornecedores)
    If Icone=11
    Then Begin
       IconFornecedor.Visible:=True;
       IconFornecedor.BringToFront;
       Tag:=1;
    End;
    //Ativa imagem icone (orçamento)
    If Icone=12
    Then Begin
       IconOrcamento.Visible:=True;
       IconOrcamento.BringToFront;
       Tag:=1;
    End;
End;
procedure TFrmAtalho.IconOrdemClick(Sender: TObject);
begin
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE' Then
       AbrirForm(TFOrdemMec, FOrdemMec, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'DESPACHANTE' Then
       AbrirForm(TFOrdemDesp, FOrdemDesp, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'PETSHOP' Then
       AbrirForm(TFOrdemPet, FOrdemPet, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'LOCAÇÃO' Then
       AbrirForm(TFOrdemLoca, FOrdemLoca, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'RETIFICA' Then
       AbrirForm(TFOrdemRetifica, FOrdemRetifica, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'GRAFICA' Then
       AbrirForm(TFOrdemGrafica, FOrdemGrafica, 0);
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'INDUSTRIA' Then
       AbrirForm(TFOrdemProduc, FOrdemProduc, 0);

   If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'DESPACHANTE') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'INDUSTRIA')  and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'PETSHOP')   and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'RETIFICA')   and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'LOCAÇÃO')   and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'GRAFICA') Then
       AbrirForm(TFOrdem, FOrdem, 0);
end;

procedure TFrmAtalho.IconOrdem02MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   AtivaIcone(1);
end;

procedure TFrmAtalho.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   AtivaIcone(0);
end;

procedure TFrmAtalho.IconPedvenda02MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   AtivaIcone(2);
end;

procedure TFrmAtalho.IconPedCompra02MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   AtivaIcone(3);
end;

procedure TFrmAtalho.IconLancaixa02MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   AtivaIcone(4);
end;

procedure TFrmAtalho.IconPedvendaClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;
    If DMMACS.TLoja.FieldByName('VENDSALDONEG').AsString='2'
    Then Begin
		MessageDlg('Este Módulo esta bloqueado no sistema!', mtWarning, [mbOK], 0);
       Exit;
	 End;

    FMenu.XDevolucao:=False;
    FMenu.XRemessaGarantia:=False;
    FMenu.XSimplesRemessa:=False;
    FMenu.XOutrosFisc:=False;
    FMenu.XOutrosEnt:=False;
    FMenu.XNotaEntrada:=False;    
    AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
end;

procedure TFrmAtalho.IconPedCompraClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADPEDCOMP', 'M')=False Then
  		Exit;
   FMenu.XOutrosEnt:=False;
   FMenu.XOutrosFisc:=False;
   AbrirForm(TFPEDCOMPRA, FPEDCOMPRA, 0);
end;

procedure TFrmAtalho.IconLancaixaClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('LANCX', 'M')=False Then
  		Exit;

    //VERIFICA SE O CAIXA ESTA ABERTO
    If DMCAIXA.VerifAbCaixa=False
    Then Begin
        Mensagem('A T E N Ç Ã O ', 'O Caixa escolhido não se encontra aberto. Para realizar a maioria das operações financeiras é obrigado que o caixa esteja aberto!', '', 1,1, false, 'a');
        Exit;
    End
    Else Begin
        AbrirForm(TFLancCaixa, FLancCaixa, 0);
    End;
end;

procedure TFrmAtalho.IconEstoqueClick(Sender: TObject);
begin
    AbrirForm(TFPRODUTO, FPRODUTO, 0);
end;

procedure TFrmAtalho.IconEstoque02MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   AtivaIcone(5);
end;

procedure TFrmAtalho.IconCPClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CP', 'M')=False Then
  		Exit;
	 FMenu.TIPOAUX:='NORMAL';
    AbrirForm(TFCtaPagar, FCtaPagar, 0);
end;

procedure TFrmAtalho.IconCP02MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   AtivaIcone(6);
end;

procedure TFrmAtalho.IconCr02MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   AtivaIcone(7);
end;

procedure TFrmAtalho.IconCrClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CR', 'M')=False Then
  		Exit;
    AbrirForm(TFCtaReceber, FCtaReceber, 0);
end;

procedure TFrmAtalho.IconBanco02MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   AtivaIcone(8);
end;

procedure TFrmAtalho.IconBancoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('MOVBANCO', 'M')=False Then
  		Exit;

    AbrirForm(TFMovBanco, FMovBanco, 0);  
end;

procedure TFrmAtalho.IconCheque02MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   AtivaIcone(9);
end;

procedure TFrmAtalho.IconChequeClick(Sender: TObject);
begin
    AbrirForm(TFLanCHEntr, FLanCHEntr, 0);
end;

procedure TFrmAtalho.IconCliente02MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   AtivaIcone(10);
end;

procedure TFrmAtalho.IconClienteClick(Sender: TObject);
begin
    FMenu.TIPOREL:='';
    AbrirForm(TFCliente, FCliente, 0);
end;

procedure TFrmAtalho.IconFornecedor02MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   AtivaIcone(11);
end;

procedure TFrmAtalho.IconFornecedorClick(Sender: TObject);
begin
    AbrirForm(TFFornecedor, FFornecedor, 0);
end;

procedure TFrmAtalho.IconOrcamento02MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   AtivaIcone(12);
end;

procedure TFrmAtalho.IconOrcamentoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PEDVENDA', 'M')=False Then
  		Exit;
    If DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString='MECANICA' Then
    	AbrirForm(TFORCAMENTOMAC, FORCAMENTOMAC, 0)
    Else
		if DMMACS.TLoja.FieldByName('TIPOORCAMENTO').AsString = 'INDUSTRIA' Then
       	AbrirForm(TFOrcamento3, FOrcamento3, 0)
       else
    		AbrirForm(TFORCAMENTO, FORCAMENTO, 0);
end;

procedure TFrmAtalho.IconEmailClick(Sender: TObject);
begin
        //Paulo 22/02/2011: Aki é aberto o link   }
        //HlinkNavigateString(nil,'http://www.mzrsistemas.com/chat/chat.php');
        //ShellExecute(Handle, 'Open', 'http://www.mzrsistemas.com/chat/chat.php', nil, nil, SW_SHOWNORMAL);
        Try
        	ShellExecute(Handle, 'Open', 'http://mzrsistemas.mysuite1.com.br/empresas/mzrs/verifica.php', nil, nil, SW_SHOWNORMAL);
        Except
			MessageDlg('O Chat de Suporte esta indisponível, entre em contato pelo e-mail suporte@mzrsistemas.com', mtWarning, [mbOK], 0);
        End;
end;

procedure TFrmAtalho.IconRssClick(Sender: TObject);
begin
	AbrirForm(TFNovidades, FNovidades, 0);
end;

procedure TFrmAtalho.IconTicketClick(Sender: TObject);
begin
    Try
       ShellExecute(Handle, 'Open', 'http://mzrsistemas.mysuite1.com.br/central.php', nil, nil, SW_SHOWNORMAL);
    Except
       MessageDlg('O Ticket de Suporte esta indisponível, entre em contato pelo e-mail suporte@mzrsistemas.com', mtWarning, [mbOK], 0);
    End; 
end;

procedure TFrmAtalho.IconRemotoClick(Sender: TObject);
begin
     try
     	MessageDlg('Nesta etapa, o sistema poderá solicitar permissão para copiar o aplicativo de Suporte Remoto.'+#13+#10+'Para que tudo funcione corretamente, é necessário que permita esta solicitação.', mtWarning, [mbOK], 0);
         //Alex - 26/07/2014 - Verifica se o arquivo Suporte-MZR.exe existe
         if FileExists(ExtractFilePath(Application.ExeName)+'Suporte-MZR.exe') then
         begin
         		WinExec('Suporte-MZR.exe', SW_SHOW)
         end
         Else Begin
               If TransfFTP = True Then
          			WinExec('Suporte-MZR.exe', SW_SHOW)
         End;

     except
     	Mensagem(' A T E N Ç Ã O ', 'Ocorreram problemas ao tentar iniciar o programa de suporte!', '', 1,1, false, 'i');
     end;
end;
//Transfere Arquivo Compactado para Ftp
Function TFrmAtalho.TransfFTP: Boolean;
var
  DirecDownFtp,DirecUpFtp,ArquivoFtp,LineFtp,dirDowFTP,dirUpFTP,RepliFtp,Line2Ftp,NameFtp: String;
Begin
	Try
   	Result:=True;
       IFTP.Username := 'mzrsistemas01';
       IFTP.Password := 'ecg879bd';
       IFTP.Host	  := 'ftp.mzrsistemas.com';
       Try
           IFTP.Connect();
           IFTP.ChangeDir('/downloads/');
           IFTP.Get('Suporte-MZR.exe', (ExtractFilePath(Application.ExeName)+'Suporte-MZR.exe'), false);
           IFTP.Disconnect;
       Except
       	MessageDlg('Não foi possível efetuar download do aplicativo de suporte remoto.', mtWarning, [mbOK], 0);
           Result:=False;
       End; 
   Except

	End;
End;

end.
