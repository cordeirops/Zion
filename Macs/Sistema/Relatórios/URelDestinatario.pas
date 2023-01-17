unit URelDestinatario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, ExtCtrls, TFlatEditUnit, Mask;

type
  TFRelDestinatario = class(TFPadraoRelatorio)
    GroupBox5: TGroupBox;
    EdDataIni: TMaskEdit;
    EdDataFin: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    LUZMINUS: TShape;
    LUZOPEN: TShape;
    btnOpenDest: TBitBtn;
    btnApagaDest: TBitBtn;
    edNomeDest: TFlatEdit;
    edCodigoDest: TFlatEdit;
    edCodigoFornec: TFlatEdit;
    edNomeFornec: TFlatEdit;
    Shape1: TShape;
    btnOpenFornec: TBitBtn;
    Shape2: TShape;
    btnApagaFornec: TBitBtn;
    rbtAbertura: TRadioButton;
    rbtFechamento: TRadioButton;
    Label3: TLabel;
    procedure btnOpenFornecClick(Sender: TObject);
    procedure btnOpenDestClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnApagaFornecClick(Sender: TObject);
    procedure btnApagaDestClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCodigoFornecKeyPress(Sender: TObject; var Key: Char);
    procedure edCodigoDestKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelDestinatario: TFRelDestinatario;
  xCodFornec, xCodDest: Integer;

implementation
uses UDmPessoa, Alxor32, UFORNECEDOR, DB, UCliente, UDMEstoque, UDMEntrada,
  Math, AlxMessage, UPadrao, UDMMacs;

{$R *.dfm}

procedure TFRelDestinatario.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Relatório de Destinatário' ;  
	xCodDest := 0;
	xCodFornec := 0;
   EdDataIni.SetFocus;
end;

procedure TFRelDestinatario.btnOpenFornecClick(Sender: TObject);
begin
  inherited;
  FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', 'ORDER BY NOME');
  if AbrirForm(TFFornecedor, FFornecedor, 1) = 'Selected' then
  begin
  		xCodFornec := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
  		edCodigoFornec.Text := DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
       edNomeFornec.Text := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
  end;
end;

procedure TFRelDestinatario.btnApagaFornecClick(Sender: TObject);
begin
  inherited;
	xCodFornec := 0;
   edCodigoFornec.Text := '';
   edNomeFornec.Text := '';
end;

procedure TFRelDestinatario.btnOpenDestClick(Sender: TObject);
begin
  inherited;
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', 'ORDER BY NOME');
  if AbrirForm(TFCliente, FCliente, 1) = 'Selected' then
  begin
  		xCodDest := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
  		edCodigoDest.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       edNomeDest.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
  end;
end;

procedure TFRelDestinatario.btnApagaDestClick(Sender: TObject);
begin
  inherited;
	xCodDest := 0;
   edCodigoDest.Text := '';
   edNomeDest.Text := '';
end;

procedure TFRelDestinatario.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   PComunica.Visible := true;
   PComunica.BringToFront;
   PComunica.Refresh;
   PComunica.Repaint;

   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add(' select pessoa.nome, pessoa.telrel FONE, subproduto.descricao, itenspedc.qtdeprod QTDE, itenspedc.valunit UNIT, itenspedc.valortotal TOTAL from pedcompra ');
   If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='EQUIPE') or (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='MANUTENÇÃO') Then
       DMESTOQUE.TRel.SQL.Add(' left join vwordem on pedcompra.cod_destinatario = vwordem.cod_ordem ');
   DMESTOQUE.TRel.SQL.Add(' left join fornecedor on fornecedor.cod_fornec = pedcompra.cod_fornec ');
   DMESTOQUE.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa = fornecedor.cod_pessoa ');
   DMESTOQUE.TRel.SQL.Add(' left join itenspedc on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
   DMESTOQUE.TRel.SQL.Add(' left join estoque on estoque.cod_estoque = itenspedc.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' where (pessoa.nome is not null) and (subproduto.descricao is not null)  ');
   if (EdDataIni.text <> '  /  /    ') and (EdDataFin.Text <> '  /  /    ') then
   begin
   	if not (rbtAbertura.Checked) and not (rbtFechamento.Checked) then
       begin
			Mensagem(' I N F O R M A Ç Ã O ', 'Escolha entre data de abertura ou fechamento do pedido.', '', 1,1, false, 'i');
           PComunica.Visible := False;
           PComunica.SendToBack;
           PComunica.Refresh;
           PComunica.Repaint;
           Exit;
		end
       else begin
       	if rbtAbertura.Checked then
           begin
               DMESTOQUE.TRel.SQL.Add('and (pedcompra.dtpedcomp between :dtIni and :dtFin)');
               DMESTOQUE.TRel.ParamByName('DTINI').AsString := EdDataIni.Text;
               DMESTOQUE.TRel.ParamByName('DTFIN').AsString := EdDataFin.Text;
           end
           else begin
               DMESTOQUE.TRel.SQL.Add('and (pedcompra.dtfech between :dtIni and :dtFin)');
               DMESTOQUE.TRel.ParamByName('DTINI').AsString := EdDataIni.Text;
               DMESTOQUE.TRel.ParamByName('DTFIN').AsString := EdDataFin.Text;
           end;
       end;
   end;

   if xCodFornec <> 0 then
   begin
	    DMESTOQUE.TRel.SQL.Add(' and (pedcompra.cod_fornec = :fornec) ');
	    DMESTOQUE.TRel.ParamByName('FORNEC').AsInteger := xCodFornec;
   end;

   if xCodDest <> 0 then
   begin
       If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='EQUIPE') or (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='MANUTENÇÃO') Then
           DMESTOQUE.TRel.SQL.Add(' and (vwordem.cod_cliente=:dest) ')
       Else
           DMESTOQUE.TRel.SQL.Add(' and (pedcompra.cod_destinatario = :dest) ');
	    DMESTOQUE.TRel.ParamByName('DEST').AsInteger := xCodDest;
   end;
   DMESTOQUE.TRel.SQL.Add('ORDER BY NOME');

   DMESTOQUE.TRel.Open;

   if not DMESTOQUE.TRel.IsEmpty then
   begin
   	FSDSRel.DataSet := DMESTOQUE.TRel;
       FSRel.Dataset := FSDSRel;

   	FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfDestinatario.frf');
   	FSRel.ShowReport;
   end
  	else
		Mensagem(' I N F O R M A Ç Ã O ', 'O relatório retornou sem informações!', '', 1,1, false, 'i');

   PComunica.Visible := False;
   PComunica.SendToBack;       
end;

procedure TFRelDestinatario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  	//Edmar - 08/05/2014 - Limpa campos ao fechar o formulário
	btnApagaDestClick(sender);
   btnApagaFornecClick(sender);
   EdDataIni.Text := '  /  /    ';
   EdDataFin.Text := '  /  /    ';
end;

//Edmar - 08/05/2014 - Busca o fornecedor com base no que foi informado no campo correspondente
procedure TFRelDestinatario.edCodigoFornecKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	if key = #13 then
   begin
   	if edCodigoFornec.Text <> '' then
       begin//Edmar - 08/05/2014 - Filtra view de fornecedor com o código informado
       	if FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_INTERNO', edCodigoFornec.Text, '') then
           begin
		  		xCodFornec := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
       		edCodigoFornec.Text := DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
		        edNomeFornec.Text := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           end
           else begin
		  		xCodFornec := 0;
       		edCodigoFornec.Text := '';
		        edNomeFornec.Text := '';
           end;
       end
       else begin
           xCodFornec := 0;
           edCodigoFornec.Text := '';
           edNomeFornec.Text := '';
       end;
   end;
end;

//Edmar - 08/05/2014 - Busca o cliente(destinatario) com base no que foi informado no campo correspondente
procedure TFRelDestinatario.edCodigoDestKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	if Key = #13 then
   begin
   	if edCodigoDest.Text <> '' then
       begin//Edmar - 08/05/2014 - Filtra view de cliente com o código informado
       	if Filtratabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', edCodigoDest.Text, '')then
           begin
           	xCodDest := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
               edCodigoDest.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
               edNomeDest.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
           end
           else begin
               xCodDest := 0;
               edCodigoDest.Text := '';
               edNomeDest.Text := '';
           end;
       end
       else begin
       	xCodDest := 0;
           edCodigoDest.Text := '';
           edNomeDest.Text := '';
       end;
   end;
end;

end.
