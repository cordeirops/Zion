unit UInfoClienteEquip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, UFrmBusca, cxControls, cxContainer, cxEdit,
  cxTextEdit, StdCtrls, Grids, DBGrids;

type
  TFInfoClienteEquip = class(TFrame)
    PPrincipal: TPanel;
    FrmCliente: TFrmBusca;
    PCliente: TPanel;
    lbCPJCNPJ: TLabel;
    lbFone: TLabel;
    edCPFCNPJ: TcxTextEdit;
    edFone: TcxTextEdit;
    lbEndereco: TLabel;
    edEndereco: TcxTextEdit;
    lbDtCad: TLabel;
    edDtCad: TcxTextEdit;
    lbDtVenda: TLabel;
    edUltVenda: TcxTextEdit;
    lbUltServico: TLabel;
    edUltServico: TcxTextEdit;
    PEquipamento: TPanel;
    lbCntInfo: TLabel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure PPrincipalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FrmClienteBTNMINUSClick(Sender: TObject);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    procedure FrmClienteEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }


    procedure MostraCliente;

  public
    { Public declarations }
    XCodCliente:Integer;
    procedure LimpaCampos;
    procedure PesquisaCodigo(codigo:String);
     procedure PesquisaCodigoInterno(codigo:String);
    procedure PesquisaDescricao(descricao:String);
    procedure PesquisaPlaca(descricao:String);
  end;

implementation

uses UDMPessoa, DB, UDMMacs, UDmServ, Alxor32, UCliente, UDMEstoque;

{$R *.dfm}
//limpa todos os campos e limpa a tabela
procedure TFInfoClienteEquip.LimpaCampos;
begin
   FrmCliente.EDCodigo.Text := '';
   FrmCliente.EdDescricao.Text := '';
   edEndereco.Text := '';
   edDtCad.Text := '';
   edUltVenda.Text := '';
   edUltServico.Text := '';
   edFone.Text := '';
   edCPFCNPJ.Text := '';
   lbCntInfo.Caption := '';
   XCodCliente := 0;
   lbCntInfo.Repaint;
   DMPESSOA.TEquip.Close;
   FrmCliente.Repaint;
   PPrincipal.Repaint;
end;

// MOSTRA OS DADOS DO CLIENTE E FILTRA O EQUIPAMENTO
procedure TFInfoClienteEquip.MostraCliente;
begin
   FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByNAme('COD_PESSOA').AsString, '');

   XCodCliente := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;

   FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('cod_interno').AsString;
   FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('nome').AsString;

   edCPFCNPJ.Text := DMPESSOA.WCliente.FieldByName('cpfcnpj').AsString;
   edEndereco.Text := DMPESSOA.WCliente.FieldByName('nome').AsString;
   edFone.Text := DMPESSOA.WCliente.FieldByName('telrel').AsString;
   edEndereco.Text := DMPESSOA.TPessoa.FieldByName('endereco').AsString+' - '+DMPESSOA.WCliente.FieldByName('bairro').AsString+' / '+DMPESSOA.WCliente.FieldByName('cidade').AsString;

   edDtCad.Text :=  DMPESSOA.TPessoa.FieldByName('data_ini').AsString;

   //ulttima ordem de serviço
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' SELECT * from ordem');
   DMMACS.TALX.SQL.Add(' where ordem.cod_cliente=:CODCLIENTE ');
   DMMACS.TALX.ParamByName('CODCLIENTE').AsInteger:=XCodCliente;
   DMMACS.TALX.SQL.Add(' order by ordem.dtfech desc ');
   DMMACS.TALX.Open;
   edUltServico.Text := DMMACS.TALX.FieldByName('dtabert').AsString;


   //ultima venda do cliente
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' SELECT Pedvenda.valor, pedvenda.dtpedven, pedvenda.numped FROM PEDVENDA ');
   //DMMACS.TALX.SQL.Add(' Left Join cliente on pedvenda.cod_cliente = cliente.cod_cliente ');
   DMMACS.TALX.SQL.Add(' where pedvenda.cod_cliente=:CODCLIENTE ');
   DMMACS.TALX.ParamByName('CODCLIENTE').AsInteger:=XCodCliente;
   DMMACS.TALX.SQL.Add(' order by pedvenda.dtpedven desc ');
   DMMACS.TALX.Open;
   edUltVenda.Text := DMMACS.TALX.FieldByName('dtpedven').AsString;

   lbCntInfo.Caption:='';
   lbCntInfo.Repaint;
   //**********************
   //**Documentos em atraso
   //**********************
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select count(vwparcr.cod_parcelacr) as  CONT, sum(vwparcr.valor) as TOTAL From vwparcr ');
   DMMACS.TALX.SQL.Add(' where (vwparcr.dtvenc<:data) AND (vwparcr.fech<>'+#39+'S'+#39+') and (vwparcr.cod_cliente=:COD_CLIENTE) ');
	DMMACS.TALX.ParamByName('DATA').AsDate:=Date();
	DMMACS.TALX.ParamByName('COD_CLIENTE').AsInteger:=XCodCliente;
   DMMACS.TALX.Open;
   If Not DMMACS.TALX.IsEmpty
   Then Begin
   	If DMMACS.TALX.FieldByName('CONT').AsInteger>0
       Then Begin
       	 lbCntInfo.Caption:='Documentos em atraso: '+DMMACS.TALX.FieldByName('CONT').AsString+'   Valor: R$ '+FormatFloat('0.00', DMMACS.TALX.FieldByName('TOTAL').AsCurrency);
         lbCntInfo.Repaint;
       End;
   End;

   if FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'cod_cliente', IntToStr(XCodCliente), ' and equipamento.ativo = '+#39+'1'+#39) = True
   then begin

   end
   else begin

   end;

end;
//PESQUISA PELO CODIGO DO CLIENTE
procedure TFInfoClienteEquip.PesquisaCodigo(codigo:String);
begin
   //If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+EdCodCli.Text+#39)=True
    If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', codigo, '')=True
    then begin
        MostraCliente;
    end
    else begin
        LimpaCampos;
    end;
end;
//PESQUISA PELO CODIGO INTERNO DO CLIENTE
procedure TFInfoClienteEquip.PesquisaCodigoInterno(codigo:String);
begin
   If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+codigo+#39)=True
    then begin
        MostraCliente;
    end
    else begin
        LimpaCampos;
    end;
end;
//PESQUISA PELO NOME DO CLIENTE
procedure TFInfoClienteEquip.PesquisaDescricao(descricao:String);
begin
  If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE','' , 'upper(nome) like (upper ('+#39+descricao+'%'+#39+'))')=True
    then begin
        MostraCliente;
    end
    else begin
        LimpaCampos;
    end;
end;
 //PESQUISA PELA PLACA DO EQUIPAMENTO
procedure TFInfoClienteEquip.PesquisaPlaca(descricao:String);
begin
   DMESTOQUE.Alx.close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select * from equipamento');
       DMESTOQUE.Alx.SQL.Add('where (upper(equipamento.placa) like upper ('+#39+descricao+#39+')) AND (EQUIPAMENTO.ATIVO='+#39+'1'+#39+')');
       DMESTOQUE.Alx.Open;
       if DMESTOQUE.alx.IsEmpty
       then begin
          LimpaCampos;
          eXIT;
       END;

   If FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',DMESTOQUE.Alx.FieldByname('cod_cliente').AsString,'')=True
    then begin
        MostraCliente;
    end
    else begin
        LimpaCampos;
    end;
end;
procedure TFInfoClienteEquip.PPrincipalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //ReleaseCapture();
    //SendMessage(PPrincipal.Handle, $A1, 2, 0);
end;
 //CLICK EM LIMPAR
procedure TFInfoClienteEquip.FrmClienteBTNMINUSClick(Sender: TObject);
begin
  FrmCliente.BTNMINUSClick(Sender);
  LimpaCampos;
  FrmCliente.EDCodigo.SetFocus;
end;
 //CLICK PROCURAR CLIENTE
procedure TFInfoClienteEquip.FrmClienteBTNOPENClick(Sender: TObject);
begin
  FrmCliente.BTNOPENClick(Sender);
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
       PesquisaCodigo(DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString);
   End
   Else Begin
       LimpaCampos;
   End;
end;
  //PRESS ENTER NO CODIGO DO CLIENTE
procedure TFInfoClienteEquip.FrmClienteEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
If Key = VK_return
   Then Begin
       If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmCliente.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           MostraCliente;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           LimpaCampos;
       End;
   End;
   FrmCliente.Repaint;
end;

end.
