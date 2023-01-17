unit URelCtasSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, DrLabel, jpeg, ExtCtrls, UFrmBusca, Mask, DBCtrls;

type
  TFRelCtasSetor = class(TFPadraoRelatorio)
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    RGTIPODT: TRadioGroup;
    RGESCOLHA: TRadioGroup;
    FrmVendedorIni: TFrmBusca;
    FrmCidadeIni: TFrmBusca;
    PBoleto: TPanel;
    LTextoBusca: TLabel;
    DBBanco: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FrmVendedorIniBTNOPENClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FrmVendedorIniEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmVendedorIniBTNMINUSClick(Sender: TObject);
    procedure FrmCidadeIniBTNOPENClick(Sender: TObject);
    procedure FrmCidadeIniBTNMINUSClick(Sender: TObject);
    procedure FrmCidadeIniEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmVendedorIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);



  private
    { Private declarations }
    //Imprime relatórios de Contas a receber por Setor
    Procedure ImpRCtasRSetor;
	 //Imprime relatórios de Boletos Emitidos
	 Procedure ImpRBoletos;

  public
    { Public declarations }
  end;

var
  FRelCtasSetor: TFRelCtasSetor;
  XVENDEDOR, XCIDADE: Integer;
  XVENDINI, XVENDFIM: STRING;

implementation

uses UDMMacs, UDMConta, UMenu, UDMPessoa, UFuncionario, Alxor32,
  UDMGEOGRAFIA, UCadCidade, UPadrao, UDmBanco, DB;

{$R *.dfm}

//Imprime relatórios de Contas a receber por Setor
Procedure TFRelCtasSetor.ImpRCtasRSetor;
Var
	XJuncao, TIPO: STRING;
   TIPODT: STRING;
Begin
	//FILTRA LOJA
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   If RGESCOLHA.ItemIndex=0 Then
       TIPO:='Pendentes. ';
   If RGESCOLHA.ItemIndex=1 Then
       TIPO:='Baixadas. ';
   If RGESCOLHA.ItemIndex=2 Then
       TIPO:='Caderneta. ';
   //PREPARA TIPO DE SELEÇÃO DE DATA
  	Case RGTIPODT.ItemIndex of
  		0: TIPODT:='ctareceber.dtlanc';
      	1: TIPODT:='parcelacr.dtvenc';
      	2: TIPODT:='parcelacr.DTDEBITO';
	End;

   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:=TIPODT+' - Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+EdDataFim.Text+#13+FrmVendedorIni.EdDescricao.Text+#13+'Tipo: '+TIPO+' Cidade: '+FrmCidadeIni.EdDescricao.Text;
   DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Receber/Setor de Vendas';
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

	XJuncao:= ' And ';
   DMCONTA.TRel.Close;
   DMCONTA.TRel.SQL.Clear;
   DMCONTA.TRel.SQL.Add(' SELECT parcelacr.cobranca, parcelacr.desconto, parcelacr.dtdebito, parcelacr.dtvenc, ');
   DMCONTA.TRel.SQL.Add(' parcelacr.juros, parcelacR.multa, parcelacR.numparc, parcelacR.valor, parcelacr.valorpg, ');
   DMCONTA.TRel.SQL.Add(' ctareceber.cod_usuario, ctareceber.dtlanc, ctareceber.historico, ctareceber.numdoc, ');
   DMCONTA.TRel.SQL.Add(' cliente.cod_interno, Cliente.cod_cliente, pessoa.nome, Pessoa.Telrel, vwfuncionario.nome As Vendedor ');
   DMCONTA.TRel.SQL.Add('  FROM parcelacr Left join ctareceber on parcelacr.cod_ctareceber=ctareceber.cod_ctareceber ');
   DMCONTA.TRel.SQL.Add('   left join cliente on ctareceber.cod_cliente = cliente.cod_cliente ');
   DMCONTA.TRel.SQL.Add('   left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
   DMCONTA.TRel.SQL.Add('   Left join vwfuncionario on cliente.cod_vendedor = vwfuncionario.cod_func ');
   DMCONTA.TRel.SQL.Add('   left join FORMPAG on CTARECEBER.COD_FORMPAG = FORMPAG.COD_FORMPAG ');
   DMCONTA.TRel.SQL.Add(' WHERE (FORMPAG.COD_LOJA='+FMenu.LCODLOJA.Caption+')');

   If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
		DMCONTA.TRel.SQL.Add(XJuncao+ ' ('+TIPODT+' Between :Data1 and :Data2) ');
		DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
		DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
        XJuncao:=' And ';
   End;
   If (XVENDEDOR>0)
   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
	   	DMCONTA.TRel.SQL.Add(XJuncao+' (CLIENTE.COD_VENDEDOR = :VENDEDOR)');
	   	DMCONTA.TRel.ParamByName('VENDEDOR').AsInteger:=XVENDEDOR;
       XJuncao:=' And ';
   End;
   If (XCIDADE>0)
   Then Begin
  		DMCONTA.TRel.SQL.Add(' AND (PESSOA.COD_CIDADE = :CIDADE) ');
  		DMCONTA.TRel.ParamByName('CIDADE').AsInteger:=XCIDADE ;
   End;
   If RGESCOLHA.ItemIndex=0
   Then Begin//se for pedido apenas relatório de pendentes
		DMCONTA.TRel.SQL.Add(XJuncao+' ((PARCELACR.FECH<>'+#39+'S'+#39+') OR (PARCELACR.FECH IS NULL))');
	    XJuncao:= ' AND ';
	End;
	If RGESCOLHA.ItemIndex=1
   Then Begin//se realisar relatório apenas de baixados
		DMCONTA.TRel.SQL.Add(XJuncao+' (PARCELACR.FECH='+#39+'S'+#39+')');
	    XJuncao:= ' AND ';
	End;
   DMCONTA.TRel.SQL.Add(' order by vwfuncionario.nome, pessoa.nome, cliente.cod_cliente, parcelacr.dtvenc ');
   DMCONTA.TRel.SQL.Text;
   DMCONTA.TRel.Open;
	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaRecSetor.frf');
   FSRel.ShowReport;
End;

//Imprime relatórios de Boletos Emitidos
Procedure TFRelCtasSetor.ImpRBoletos;
Var
	XJuncao, TIPO: STRING;
   TIPODT: STRING;
Begin
	//FILTRA LOJA
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:=TIPODT+' - Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+EdDataFim.Text+#13+FrmVendedorIni.EdDescricao.Text+#13+'Tipo: '+TIPO+' Cidade: '+FrmCidadeIni.EdDescricao.Text;
   DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Contas a Receber/Boletos Emitidos';
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

	XJuncao:= ' And ';
   DMCONTA.TRel.Close;
   DMCONTA.TRel.SQL.Clear;
   DMCONTA.TRel.SQL.Add(' select vwfuncionario.nome  as vendedor, cliente.cod_cliente, vwparcr.nome as nomecli, vwctacor.descbanco, vwctacor.numctacor, parcelacr.valor, ');
   DMCONTA.TRel.SQL.Add('  pedvenda.numped, parcelacr.numboleto, pedvenda.numfiscal, ctareceber.dtlanc, ');
   DMCONTA.TRel.SQL.Add('  parcelacr.dtvenc From parcelacr ');
   DMCONTA.TRel.SQL.Add('  Left join vwparcr on parcelacr.cod_parcelacr = vwparcr.cod_parcelacr ');
   DMCONTA.TRel.SQL.Add(' left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
   DMCONTA.TRel.SQL.Add(' left join vwctareceber on ctareceber.cod_ctareceber = vwctareceber.cod_ctareceber ');
   DMCONTA.TRel.SQL.Add(' left join pedvenda on ctareceber.cod_gerador = pedvenda.cod_pedvenda ');
   DMCONTA.TRel.SQL.Add(' left join cliente on ctareceber.cod_cliente = cliente.cod_cliente ');
   DMCONTA.TRel.SQL.Add(' left join vwctacor on parcelacr.cod_ctacor = vwctacor.cod_ctacor ');
   DMCONTA.TRel.SQL.Add(' left join vwfuncionario on pedvenda.cod_pedvenda = vwfuncionario.cod_func ');
   DMCONTA.TRel.SQL.Add(' left join formpag on ctareceber.cod_formpag = formpag.cod_formpag ');
   DMCONTA.TRel.SQL.Add(' WHERE (FORMPAG.COD_LOJA='+FMenu.LCODLOJA.Caption+')');
   //Filtra pela Cta Corrente
   If DBBanco.Text<>''
   Then Begin
   	DMCONTA.TRel.SQL.Add(' AND (parcelacr.cod_ctacor=:CodigoConta) ');
       DMCONTA.TRel.ParamByName('CodigoConta').AsInteger:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
   End
   Else Begin
   	DMCONTA.TRel.SQL.Add(' AND ((parcelacr.numboleto<>'+#39+#39+') AND (parcelacr.numboleto is not Null)) ');
   End;
   If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
   	If RGTIPODT.ItemIndex = 0 Then
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( ctareceber.dtlanc Between :Data1 and :Data2) ');
   	If RGTIPODT.ItemIndex = 1 Then
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.dtvenc Between :Data1 and :Data2) ');
   	If RGTIPODT.ItemIndex = 2 Then
			DMCONTA.TRel.SQL.Add(XJuncao+ ' ( parcelacr.dtdebito Between :Data1 and :Data2) ');


		DMCONTA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
		DMCONTA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
        XJuncao:=' And ';
   End;
   //Controle Para Pendentes
   If RGESCOLHA.ItemIndex = 0 Then
	   DMCONTA.TRel.SQL.Add(' AND ((parcelacr.fech<>'+#39+'S'+#39+') or (parcelacr.fech is  Null)) ');
   //Controle Para Baixadas
   If RGESCOLHA.ItemIndex = 1 Then
	   DMCONTA.TRel.SQL.Add(' AND (parcelacr.fech<>'+#39+'S'+#39+') ');


   If (XVENDEDOR>0)
   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
	   	DMCONTA.TRel.SQL.Add(XJuncao+' (CLIENTE.COD_VENDEDOR = :VENDEDOR)');
	   	DMCONTA.TRel.ParamByName('VENDEDOR').AsInteger:=XVENDEDOR;
       XJuncao:=' And ';
   End;
   If (XCIDADE>0)
   Then Begin
  		DMCONTA.TRel.SQL.Add(' AND (PESSOA.COD_CIDADE = :CIDADE) ');
  		DMCONTA.TRel.ParamByName('CIDADE').AsInteger:=XCIDADE ;
   End;
   DMCONTA.TRel.SQL.Add(' Order by vwfuncionario.nome, pedvenda.nomecli, ctareceber.cod_ctareceber, parcelacr.numboleto ');
   DMCONTA.TRel.SQL.Text;
   DMCONTA.TRel.Open;
	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfBoletos.frf');
   FSRel.ShowReport;
End;

procedure TFRelCtasSetor.FormActivate(Sender: TObject);
begin
  inherited;
	If FMenu.TIPOREL ='RELBOLETOS' 
   Then Begin
   	Caption:='Relatórios de Boletos Emitidos';
       PBoleto.Visible:=True;
   End;
	If FMenu.TIPOREL='RELCTARSETOR'
   Then Begin
   	Caption:='Contas a Receber por Setor';
       PBoleto.Visible:=False;
   End;
   RGESCOLHA.Visible:=True;
   RGTIPODT.Visible:=True;
   FSDSRel.DataSource:=DMCONTA.DRel;
   EdDataIni.SetFocus;
end;

procedure TFRelCtasSetor.FrmVendedorIniBTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA TODAS OS ESTADOS PARA CONSUTA
	 filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', ' Order by NOME');

    If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
    Then Begin
       XVENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
       FrmVendedorIni.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
       FrmVendedorIni.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsString;
    End
    Else Begin
        XVENDEDOR:=-1;
        FrmVendedorIni.EdDescricao.Text:='';
        FrmVendedorIni.EDCodigo.text:='';
    End;
    FrmVendedorIni.Repaint;
end;

procedure TFRelCtasSetor.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   If FMenu.TIPOREL='RELCTARSETOR' Then
   	ImpRCtasRSetor;
   If FMenu.TIPOREL='RELBOLETOS' Then
		ImpRBoletos;
end;

procedure TFRelCtasSetor.FrmVendedorIniEDCodigoKeyPress(Sender: TObject;
  var Key: Char);

 { begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmVendedorIni.EDCodigo.Text<>''
       Then Begin
	       If filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', ' Order by NOME') = True
	       Then Begin //Slecionou o registro procurado
				XVENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
               FrmVendedorIni.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
               FrmVendedorIni.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsString;
          End
          Else Begin
				XVENDEDOR:=-1;
               FrmVendedorIni.EdDescricao.Text:='';
               FrmVendedorIni.EDCodigo.text:='';
          End;
       End
       Else Begin
     			XVENDEDOR:=-1;
               FrmVendedorIni.EdDescricao.Text:='';
               FrmVendedorIni.EDCodigo.text:='';
       End;
   End;
   FrmVendedorIni.Repaint;
end;  }
//****************************
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmVendedorIni.EDCodigo.Text<>''
       Then Begin
          filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', ' Order by NOME');
	       If SelectRegistro('VWFUNCIONARIO', 'COD_FUNC', FrmVendedorIni.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
               XVENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
           	FrmVendedorIni.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsString;
           	FrmVendedorIni.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
          End
          Else Begin
				XVENDEDOR:=-1;
               FrmVendedorIni.EdDescricao.Text:='';
               FrmVendedorIni.EDCodigo.text:='';
          End;
       End
       Else Begin
     			XVENDEDOR:=-1;
               FrmVendedorIni.EdDescricao.Text:='';
               FrmVendedorIni.EDCodigo.text:='';
       End;
   End;
end;

procedure TFRelCtasSetor.FrmVendedorIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
  XVENDEDOR:=-1;
  FrmVendedorIni.EDCodigo.Text:='';
  FrmVendedorIni.EdDescricao.Text:='';  
  FrmVendedorIni.Repaint;
end;

procedure TFRelCtasSetor.FrmCidadeIniBTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA TODAS OS ESTADOS PARA CONSUTA
	 filtraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', ' Order by NOME');

    If AbrirForm(TFCadCidade, FCadCidade, 1)='Selected'
    Then Begin
        XCIDADE:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
        FrmCidadeIni.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
        FrmCidadeIni.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    End
    Else Begin
        XCIDADE:=-1;
        FrmCidadeIni.EdDescricao.Text:='';
        FrmCidadeIni.EDCodigo.text:='';
    End;
  	 FrmCidadeIni.Repaint;
end;

procedure TFRelCtasSetor.FrmCidadeIniBTNMINUSClick(Sender: TObject);
begin
  inherited;                        
  XCIDADE:=-1;
  FrmCidadeIni.EDCodigo.Text:='';
  FrmCidadeIni.EdDescricao.Text:='';
  FrmCidadeIni.Repaint;
end;

procedure TFRelCtasSetor.FrmCidadeIniEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmCidadeIni.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('VWCIDADE', 'COD_CIDADE', FrmCidadeIni.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
				XCIDADE:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
           	FrmCidadeIni.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
           	FrmCidadeIni.EdDescricao.Text:=DMMACS.TSelect.FieldByName('UF').AsString+'-'+DMMACS.TSelect.FieldByName('NOME').AsString;
          End
          Else Begin
				XCIDADE:=-1;
           	FrmCidadeIni.EDCodigo.Text:='';
           	FrmCidadeIni.EdDescricao.Text:='';
          End;
       End
       Else Begin
     	    	XCIDADE:=-1;
           	FrmCidadeIni.EDCodigo.Text:='';
           	FrmCidadeIni.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFRelCtasSetor.FrmVendedorIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
	If Key = VK_return
   Then Begin
   	If FiltraTabela(DMPESSOA.VWFUNCIONARIO, 'VWFORNEC', 'COD_INTERNO',FrmVendedorIni.EDCodigo.Text, '')=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
         	XVENDINI:=DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString;
           FrmVendedorIni.EdDescricao.Text:=DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XVENDINI:='';
           FrmVendedorIni.EdDescricao.Text:='';
           FrmVendedorIni.EDCodigo.Text:='';
       End;
   End;
end;

end.

