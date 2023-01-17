unit UCadOferta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls,
  TFlatButtonUnit, Grids, DBGrids, Mask, EditFloat, Menus, ColorMaskEdit,
  FR_Class, FR_DSet, FR_DBSet;

type
  TFCadOferta = class(TFPadrao)
    PCadastro: TPanel;
    BtnCtrlCad: TFlatButton;
    Shape1: TShape;
    FlatButton1: TFlatButton;
    PRemover: TPanel;
    Shape2: TShape;
    DBGrid5: TDBGrid;
    EdCtrlInterno: TEdit;
    EdBarra: TEdit;
    EdVencimento: TMaskEdit;
    EdOferta: TFloatEdit;
    BtnDelete: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    BBExcluir: TBitBtn;
    GBDataVenc: TGroupBox;
    EdData1: TColorMaskEdit;
    EDData2: TColorMaskEdit;
    Label6: TLabel;
    Label7: TLabel;
    GBDataOferta: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    EDDataOferta1: TColorMaskEdit;
    EDDataOferta2: TColorMaskEdit;
    BBRemoveTudo: TBitBtn;
    BBOfertas: TBitBtn;
    FDSCaixa: TfrDBDataSet;
    FSRel: TfrReport;
    BBImprimir: TBitBtn;
    BtnProcProd: TBitBtn;
    procedure BtnCtrlCadClick(Sender: TObject);
    procedure FlatButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdCtrlInternoKeyPress(Sender: TObject; var Key: Char);
    procedure EdBarraKeyPress(Sender: TObject; var Key: Char);
    procedure EdOfertaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnDeleteClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BBExcluirClick(Sender: TObject);
    procedure EDData2KeyPress(Sender: TObject; var Key: Char);
    procedure EDDataOferta2KeyPress(Sender: TObject; var Key: Char);
    procedure EdData1KeyPress(Sender: TObject; var Key: Char);
    procedure EDDataOferta1KeyPress(Sender: TObject; var Key: Char);
    procedure BBRemoveTudoClick(Sender: TObject);
    procedure BBOfertasClick(Sender: TObject);
    procedure BBImprimirClick(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //seleciona produtos para remoçao de oferta
    Function SelecionaRemoveOferta(XTipo: String): Boolean;
    //seleciona produtos da oferta
    Function SelecionaOferta: Boolean;
    //seleciona produtos para inserir a oferta
    Function SelecionaParaOferta(XParametro, XValorFiltr: String): Boolean;
    // exclui as ofertas selecionadas
    Procedure Exclui_Ofertas;
    // verifica se existem produtos para serem excluidos
    Function Verifica_Ofertas: boolean;
    // seleciona dados por data de vencimento
    Procedure Select_DataVenc;
    // seleciona dados por data oferta
    Procedure Select_DataOferta;
    // seleciona dados conforme parametros
    Procedure Select_Dados;
    // Procedure para remover todas as ofertas, independente de estar selecinada ou nao
    Procedure Remove_TodasOfertas;
    // Verica se existem dados para serem apagados, usado na função Remove_Todas as ofertas
    Function Verifica_TodasOfertas: boolean;

  end;

var
  FCadOferta: TFCadOferta;

implementation

uses UDMEstoque, UDMMacs, UMenu, Alxor32, AlxMessage, URelEstoque,
  UProduto;

{$R *.dfm}
//seleciona produtos para inserir a oferta
Function TFCadOferta.SelecionaParaOferta(XParametro, XValorFiltr: String): Boolean;
Begin
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select Estoque.cod_estoque, subproduto.contrint, subproduto.codbarra, subproduto.descricao, estoque.dataoferta, estoque.vencimentooferta, ');
   DMESTOQUE.Alx.SQL.Add(' estoque.precooferta, estoque.vendvarv from estoque ');
   DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.Alx.SQL.Add(' Where (' + XParametro+ ' = :Parametro)' );
   DMESTOQUE.Alx.ParamByName('Parametro').AsString:=XValorFiltr;
   DMESTOQUE.Alx.SQL.Text;
   DMESTOQUE.Alx.Open;
   If Not DMESTOQUE.Alx.IsEmpty
   Then Begin
      DMESTOQUE.TEstoque.Close;
      DMESTOQUE.TEstoque.SQL.Clear;
      DMESTOQUE.TEstoque.SQL.Add(' Select * from estoque where Estoque.cod_estoque = :CodigoEstoque ');
      DMESTOQUE.TEstoque.ParamByName('CodigoEstoque').AsString:=DMESTOQUE.Alx.FieldByName('cod_estoque').AsString;
      DMESTOQUE.TEstoque.Open;
      If not DMESTOQUE.TEstoque.IsEmpty
      Then Begin
           DMESTOQUE.TEstoque.Edit;
           DMESTOQUE.TEstoque.FieldByName('PRECOOFERTA').AsCurrency:=EdOferta.ValueNumeric;
           DMESTOQUE.TEstoque.FieldByName('DATAOFERTA').AsDateTime:=Date();
           DMESTOQUE.TEstoque.FieldByName('VENCIMENTOOFERTA').AsDateTime:=StrToDate(EdVencimento.Text);
           DMESTOQUE.TEstoque.Post;
           DMESTOQUE.TransacEstoque.CommitRetaining;
           EdCtrlInterno.Text:='';
           EdOferta.ValueNumeric:=0;
           EdOferta.SetFocus;
           Result:=True;
      End
      Else Begin
           Result:=False;
      End;
   End
   Else Begin
   	Result:=False;
   End;
   //Seleciona Produtos em oferta
   SelecionaOferta;
End;

//seleciona produtos da oferta
Function TFCadOferta.SelecionaOferta: Boolean;
Begin
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select estoque.cod_estoque, subproduto.contrint, subproduto.codbarra, subproduto.descricao, estoque.dataoferta, estoque.vencimentooferta, ');
   DMESTOQUE.Alx.SQL.Add(' estoque.precooferta, estoque.vendvarv, subproduto.mark from estoque ');
   DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.Alx.SQL.Add(' Where (estoque.precooferta<>0) order by descricao');
   DMESTOQUE.Alx.Open;

End;
//seleciona produtos para remoçao de oferta
Function TFCadOferta.SelecionaRemoveOferta(XTipo: String): Boolean;
Begin
   // seleciona todos os dados que estao em oferta e entre as datas de vencimento da oferta
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select estoque.cod_estoque, subproduto.contrint, subproduto.codbarra, subproduto.descricao, estoque.dataoferta, estoque.vencimentooferta, ');
   DMESTOQUE.Alx.SQL.Add(' estoque.precooferta, estoque.vendvarv, subproduto.mark from estoque ');
   DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.Alx.SQL.Add(' Where (estoque.precooferta<>0) ');
   If XTipo='VENCIMENTO'
   Then Begin
       DMESTOQUE.Alx.SQL.Add(' and estoque.vencimentooferta between :Data1 and :Data2');
       DMESTOQUE.Alx.ParamByName('Data1').AsString := EdData1.Text;
       DMESTOQUE.Alx.ParamByName('Data2').AsString := EdData2.Text;
   End;
   If XTipo='OFERTA'
   Then Begin
       DMESTOQUE.Alx.SQL.Add(' and estoque.dataoferta between :Data1 and :Data2');
       DMESTOQUE.Alx.ParamByName('Data1').AsString := EDDataOferta1.Text;
       DMESTOQUE.Alx.ParamByName('Data2').AsString := EDDataOferta2.Text;
   End;

   DMESTOQUE.Alx.Open;
End;


procedure TFCadOferta.BtnCtrlCadClick(Sender: TObject);
begin
  inherited;
   PCadastro.Visible:=True;
	PCadastro.BringToFront;
   SelecionaOferta;
   EdOferta.SetFocus;
end;

procedure TFCadOferta.FlatButton1Click(Sender: TObject);
begin
  inherited;
  	PRemover.Visible:=True;
   PRemover.BringToFront;

end;

procedure TFCadOferta.FormActivate(Sender: TObject);
begin
  inherited;
   BtnCtrlCad.Click;
   // atualiza a edit referente a data
   EdVencimento.Text := DateToStr(Date());

end;

procedure TFCadOferta.EdCtrlInternoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13 Then
       SelecionaParaOferta('subproduto.contrint', EdCtrlInterno.Text);
end;

procedure TFCadOferta.EdBarraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13 Then
       SelecionaParaOferta('subproduto.codbarra', EdBarra.Text);
end;

procedure TFCadOferta.EdOfertaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=Vk_Down Then
       DMESTOQUE.Alx.Next;
   If Key=vk_Up Then
       DMESTOQUE.Alx.Prior;
end;

procedure TFCadOferta.BtnDeleteClick(Sender: TObject);
begin
  inherited;
   If Not DMESTOQUE.Alx.IsEmpty
   Then Begin
      DMESTOQUE.TEstoque.Close;
      DMESTOQUE.TEstoque.SQL.Clear;
      DMESTOQUE.TEstoque.SQL.Add(' Select * from estoque where Estoque.cod_estoque = :CodigoEstoque ');
      DMESTOQUE.TEstoque.ParamByName('CodigoEstoque').AsString:=DMESTOQUE.Alx.FieldByName('cod_estoque').AsString;
      DMESTOQUE.TEstoque.Open;
      If not DMESTOQUE.TEstoque.IsEmpty
      Then Begin
           DMESTOQUE.TEstoque.Edit;
           DMESTOQUE.TEstoque.FieldByName('PRECOOFERTA').AsCurrency:=0;
           DMESTOQUE.TEstoque.Post;
           DMESTOQUE.TransacEstoque.CommitRetaining;
           EdCtrlInterno.Text:='';
           EdVencimento.Text:=DMESTOQUE.TEstoque.FieldByName('dataoferta').AsString;
           EdOferta.ValueNumeric:=0;
           EdOferta.SetFocus;
      End;
   End;
   //Seleciona Produtos em oferta
   SelecionaOferta;
end;


procedure TFCadOferta.DBGrid1DblClick(Sender: TObject);
begin
  inherited;

   DMESTOQUE.TSubProd.Close;
   DMESTOQUE.TSubProd.SQL.Clear;
   DMESTOQUE.TSubProd.SQL.Add(' select * from estoque ');
   DMESTOQUE.TSubProd.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TSubProd.SQL.Add(' where estoque.cod_estoque = :codigo ');
   DMESTOQUE.TSubProd.ParamByName('codigo').AsString := DMESTOQUE.Alx.fieldbyname('cod_estoque').AsString;
   DMESTOQUE.TSubProd.Open;

   DMESTOQUE.TSubProd.Edit;
   If DMESTOQUE.TSubProd.FieldByName('Mark').AsString = ''
   Then Begin
       DMESTOQUE.TSubProd.FieldByName('Mark').AsString := 'X';
   End
   Else Begin
       DMESTOQUE.TSubProd.FieldByName('Mark').AsString := '';
   End;
   DMESTOQUE.TSubProd.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;

   // faz nova atualização da grid conforme as Edits, se estao preenchidas ou nao
   Select_Dados;
end;

procedure TFCadOferta.BBExcluirClick(Sender: TObject);
begin
  inherited;
   // analisa os dados a serem excluidos, se nao existir nenhum a função retorna false
   If Verifica_Ofertas = false
   Then Begin
       Exit;
   End;

   If Mensagem('   A T E N Ç Ã O   ', 'Tem certeza que deseja excluir as ofertas selecionadas ?' , '', 2, 3, False, 'C') = 3
   Then Begin
       // seleciona dados conforme as edits, se estão preenchidas ou nao
       Select_Dados;       
       Exit;
   End
   Else Begin
       // exclui ofertas selecionadas
       Exclui_Ofertas;
       // seleciona os dados para atualização da grid
       Select_Dados;
   End;

end;

// exclui todos os produrtos selecionado, marcado com X
procedure TFCadOferta.Exclui_Ofertas;
begin
   // seleciona todos os dados que estao em oferta e o campo mark selecionado
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select estoque.cod_estoque, subproduto.contrint, subproduto.codbarra, subproduto.descricao, estoque.dataoferta, estoque.vencimentooferta, ');
   DMESTOQUE.Alx.SQL.Add(' estoque.precooferta, estoque.vendvarv, subproduto.mark from estoque ');
   DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.Alx.SQL.Add(' Where (subproduto.mark = '+ #39 + 'X' + #39 +' ) ');
   DMESTOQUE.Alx.SQL.Add(' and ');
   DMESTOQUE.Alx.SQL.Add(' estoque.precooferta<>0 ');
   DMESTOQUE.Alx.Open;

   while not DMESTOQUE.Alx.Eof do
   Begin
      DMESTOQUE.TEstoque.Close;
      DMESTOQUE.TEstoque.SQL.Clear;
      DMESTOQUE.TEstoque.SQL.Add(' Select * from estoque where Estoque.cod_estoque = :CodigoEstoque ');
      DMESTOQUE.TEstoque.ParamByName('CodigoEstoque').AsString:=DMESTOQUE.Alx.FieldByName('cod_estoque').AsString;
      DMESTOQUE.TEstoque.Open;
      If not DMESTOQUE.TEstoque.IsEmpty
      Then Begin
           DMESTOQUE.TEstoque.Edit;
           DMESTOQUE.TEstoque.FieldByName('PRECOOFERTA').AsCurrency:=0;
           DMESTOQUE.TEstoque.Post;
           DMESTOQUE.TransacEstoque.CommitRetaining;
           EdCtrlInterno.Text:='';
           EdOferta.ValueNumeric:=0;
           EdOferta.SetFocus;
      End;

      // seleciona tudo de subproduto referente ao coigo do subprod para atualizar o campo Mark
      DMESTOQUE.TSubProd.Close;
      DMESTOQUE.TSubProd.SQL.Clear;
      DMESTOQUE.TSubProd.SQL.Add('select * from subproduto where subproduto.cod_subproduto = :codigo');
      DMESTOQUE.TSubProd.ParamByName('codigo').AsString := DMESTOQUE.TEstoque.fieldbyname('cod_subprod').AsString;
      DMESTOQUE.TSubProd.Open;

      DMESTOQUE.TSubProd.Edit;
      DMESTOQUE.TSubProd.FieldByName('mark').AsString := '';
      DMESTOQUE.TSubProd.Post;
      DMESTOQUE.TransacEstoque.CommitRetaining;       

   DMESTOQUE.Alx.Next;
   End;

   //Seleciona Produtos em oferta
   SelecionaOferta; 
end;

// seleciona os produtos que estão com o preco de oferta maior que zero
Function TFCadOferta.Verifica_Ofertas: boolean;
begin

   // pprimeiro verifica se existem produtos em oferta
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select count(estoque.cod_estoque) as contador from estoque ');
   DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.Alx.SQL.Add(' where estoque.precooferta<>0 ');
   If (EdData1.Text <> '  /  /    ') and (EDData2.Text <> '  /  /    ')
   Then Begin
       DMESTOQUE.Alx.SQL.Add(' and estoque.vencimentooferta between :Data1 and :Data2');
       DMESTOQUE.Alx.ParamByName('Data1').AsString := EdData1.Text;
       DMESTOQUE.Alx.ParamByName('Data2').AsString := EdData2.Text;
   End;
   If (EDDataOferta1.Text <> '  /  /    ') and (EDDataOferta2.Text <> '  /  /    ')
   Then Begin
       DMESTOQUE.Alx.SQL.Add(' and estoque.dataoferta between :Data1 and :Data2');
       DMESTOQUE.Alx.ParamByName('Data1').AsString := EDDataOferta1.Text;
       DMESTOQUE.Alx.ParamByName('Data2').AsString := EDDataOferta2.Text;
   End;
   DMESTOQUE.Alx.Open;

   // se existe produto em oferta, verifica se o mark possui X. Se não tiver eh pq o usuario não selecionou produto p ser excluido, ai eh exibido a msg
   If DMESTOQUE.Alx.FieldByName('contador').AsInteger > 0
   Then Begin
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add(' select count(estoque.cod_estoque) as contador from estoque ');
       DMESTOQUE.Alx1.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.Alx1.SQL.Add(' where estoque.precooferta<>0 ');
       DMESTOQUE.Alx1.SQL.Add(' and (subproduto.mark = ' + #39 + 'X' + #39 + ')');
       DMESTOQUE.Alx1.Open;

       // exibe a msg se nao tiver itens marcados para serem excluidos
       If DMESTOQUE.Alx1.FieldByName('contador').AsInteger = 0
       Then Begin
           Mensagem('A T E N Ç Ã O!', 'Selecione os produtos para serem excluídos', '' , 1, 1, false, 'A');
           Result := false;

           // atualiza a grid com os produtos em oferta
           Select_Dados;
           Exit;
       End
       Else Begin
           Result := true;
           exit;
       End;
   End;
   If DMESTOQUE.Alx.FieldByName('contador').AsInteger = 0
   Then Begin
       Mensagem('A T E N Ç Ã O!', 'Não há produtos em oferta para serem excluídos.', '' , 1, 1, false, 'A');
       Result := false;
       exit;
   End;         
end;

procedure TFCadOferta.EDData2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   If Key = #13
   Then Begin
       If ((EdData1.Text='  /  /    ') and (EdData2.Text='  /  /    ')) AND ((EDDataOferta1.Text='  /  /    ') and (EDDataOferta2.Text='  /  /    '))Then
           SelecionaRemoveOferta('')
       Else
          // seleciona dados por data de vencimento
          SelecionaRemoveOferta('VENCIMENTO');
   End;       

end;

// seleciona dados por data de vencimento
Procedure TFCadOferta.Select_DataVenc;
begin

   // seleciona todos os dados que estao em oferta e entre as datas de vencimento da oferta
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select estoque.cod_estoque, subproduto.contrint, subproduto.codbarra, subproduto.descricao, estoque.dataoferta, estoque.vencimentooferta, ');
   DMESTOQUE.Alx.SQL.Add(' estoque.precooferta, estoque.vendvarv, subproduto.mark from estoque ');
   DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.Alx.SQL.Add(' Where (estoque.precooferta<>0) ');
   DMESTOQUE.Alx.SQL.Add(' and estoque.vencimentooferta between :Data1 and :Data2');
   DMESTOQUE.Alx.ParamByName('Data1').AsString := EdData1.Text;
   DMESTOQUE.Alx.ParamByName('Data2').AsString := EdData2.Text;
   DMESTOQUE.Alx.Open;

end;

procedure TFCadOferta.EDDataOferta2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If Key = #13
   Then Begin
       If ((EdData1.Text='  /  /    ') and (EdData2.Text='  /  /    ')) AND ((EDDataOferta1.Text='  /  /    ') and (EDDataOferta2.Text='  /  /    '))Then
           SelecionaRemoveOferta('')
       Else
           // seleciona dados por data de oferta
           Select_DataOferta;

   End;
end;

// seleciona dados por data de oferta
Procedure TFCadOferta.Select_DataOferta;
begin

   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select estoque.cod_estoque, subproduto.contrint, subproduto.codbarra, subproduto.descricao, estoque.dataoferta, estoque.vencimentooferta, ');
   DMESTOQUE.Alx.SQL.Add(' estoque.precooferta, estoque.vendvarv, subproduto.mark from estoque ');
   DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.Alx.SQL.Add(' Where (estoque.precooferta<>0) ');
   DMESTOQUE.Alx.SQL.Add(' and estoque.dataoferta between :Data1 and :Data2');
   DMESTOQUE.Alx.ParamByName('Data1').AsString := EDDataOferta1.Text;
   DMESTOQUE.Alx.ParamByName('Data2').AsString := EDDataOferta2.Text;
   DMESTOQUE.Alx.Open;

end;

procedure TFCadOferta.EdData1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   If Key = #13
   Then Begin
       If ((EdData1.Text='  /  /    ') and (EdData2.Text='  /  /    ')) AND ((EDDataOferta1.Text='  /  /    ') and (EDDataOferta2.Text='  /  /    '))Then
           SelecionaRemoveOferta('')
       Else
          // seleciona dados por data de vencimento
          SelecionaRemoveOferta('VENCIMENTO');
   End;       

end;

procedure TFCadOferta.EDDataOferta1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If Key = #13
   Then Begin
       If ((EdData1.Text='  /  /    ') and (EdData2.Text='  /  /    ')) AND ((EDDataOferta1.Text='  /  /    ') and (EDDataOferta2.Text='  /  /    '))Then
           SelecionaRemoveOferta('')
       Else
           // seleciona dados por data de oferta
           Select_DataOferta;

   End;
end;

// seleciona dados conform parametro
procedure TFCadOferta.Select_Dados;
begin
   // se as Edit da data de vencimento não estiverem vazias, a SQL eh baseada no vencimento da oferta
   If (EdData1.Text<>'  /  /    ') and (EdData2.Text<>'  /  /    ') Then
       SelecionaRemoveOferta('VENCIMENTO');
   // se as Edit da data de oferta não estiverem vazias, a SQL eh baseada na data oferta
   If (EDDataOferta1.Text<>'  /  /    ') and (EDDataOferta2.Text<>'  /  /    ') Then
       SelecionaRemoveOferta('OFERTA');
   // se tudo estiver vazio, faz select sem restrição
   If ((EdData1.Text='  /  /    ') and (EdData2.Text='  /  /    ')) AND ((EDDataOferta1.Text='  /  /    ') and (EDDataOferta2.Text='  /  /    '))Then
       SelecionaRemoveOferta('');
end;

procedure TFCadOferta.BBRemoveTudoClick(Sender: TObject);
begin
  inherited;
   // verifica se existem dados, ofertas para serem apagadas
   If Verifica_TodasOfertas = false
   Then Begin
       Mensagem('A T E N Ç Ã O!', 'Não há produtos em oferta para serem excluídos.', '' , 1, 1, false, 'A');
       Exit;
   End;

   If Mensagem('   A T E N Ç Ã O   ', 'Tem certeza que deseja excluir as ofertas cadastradas ?' , '', 2, 3, False, 'C') = 3
   Then Begin
       // seleciona dados conforme as edits, se estão preenchidas ou nao
       Select_Dados;
       Exit;
   End
   Else Begin
       // exclui todas ofertas
       Remove_TodasOfertas;
       // seleciona dados conforme as edits, se estão preenchidas ou nao
       Select_Dados;
   End;

end;

// remove todas as ofertas, independente de ter selecionado ou nao
Procedure TFCadOferta.Remove_TodasOfertas;
begin

   // seleciona todos os dados que estao em oferta
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select estoque.cod_estoque, subproduto.contrint, subproduto.codbarra, subproduto.descricao, estoque.dataoferta, estoque.vencimentooferta, ');
   DMESTOQUE.Alx.SQL.Add(' estoque.precooferta, estoque.vendvarv, subproduto.mark from estoque ');
   DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.Alx.SQL.Add(' Where estoque.precooferta<>0');
   DMESTOQUE.Alx.Open;

   While not DMESTOQUE.Alx.Eof do
   begin
       DMESTOQUE.TEstoque.Close;
       DMESTOQUE.TEstoque.SQL.Clear;
       DMESTOQUE.TEstoque.SQL.Add(' Select * from estoque where Estoque.cod_estoque = :CodigoEstoque ');
       DMESTOQUE.TEstoque.ParamByName('CodigoEstoque').AsString:=DMESTOQUE.Alx.FieldByName('cod_estoque').AsString;
       DMESTOQUE.TEstoque.Open;
       If not DMESTOQUE.TEstoque.IsEmpty
       Then Begin
            DMESTOQUE.TEstoque.Edit;
            DMESTOQUE.TEstoque.FieldByName('PRECOOFERTA').AsCurrency:=0;
            DMESTOQUE.TEstoque.Post;
            DMESTOQUE.TransacEstoque.CommitRetaining;
            EdCtrlInterno.Text:='';
            EdOferta.ValueNumeric:=0;
            EdOferta.SetFocus;
       End;
   // proximo registro
   DMESTOQUE.Alx.Next;
   end;


end;

procedure TFCadOferta.BBOfertasClick(Sender: TObject);
begin
  inherited;
   // seleciona todas as ofertas
   SelecionaOferta;
end;

// verifica se existem dadso para serem apagados, usado na função Remove_TodasOfertas
Function TFCadOferta.Verifica_TodasOfertas: boolean;
begin
   // pprimeiro verifica se existem produtos em oferta
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select count(estoque.cod_estoque) as contador from estoque ');
   DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.Alx.SQL.Add(' where estoque.precooferta<>0 ');
   DMESTOQUE.Alx.Open;

   If DMESTOQUE.Alx.FieldByName('contador').AsInteger = 0 then
       Result := false
   Else
       result := true;


end;

// imprimi a lista de ofertas
procedure TFCadOferta.BBImprimirClick(Sender: TObject);
begin
  inherited;

   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ESTOQUE.precooferta, ESTOQUE.VENCIMENTOOFERTA,  ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ESTOQUE.DATAOFERTA, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.estMAX, estoque.estmin, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   DMESTOQUE.TRel.SQL.Add(' and (estoque.precooferta<>0) order by subproduto.descricao');
   DMESTOQUE.TRel.Open;

   	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
  	DMMACS.TLoja.FieldByName('TMP1').AsString:='';
   DMMACS.TLoja.Post;

   If DMESTOQUE.TRel.IsEmpty
   Then Begin
       Mensagem('A T E N Ç Ã O!', 'Não há produtos em oferta para impressão.', '' , 1, 1, false, 'I');
       Exit;
   End;

   FSRel.LoadFromFile('C:\MZR\MACS\Rel\Frflistaoferta.frf');
   FSRel.ShowReport;
end;

//abre formulario de produtos para seleção de produto em oferta
procedure TFCadOferta.BtnProcProdClick(Sender: TObject);
begin
  inherited;
   if AbrirForm(TFProduto, FProduto, 1)='Selected'
   then begin
       //Filtra tabela de subproduto de acordo com o produto selecionado em fproduto
       If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
           Exit;

       //Filtra tabela de produto de acordo com o produto selecionado em fproduto
       If FiltraTabela(DMEstoque.TProduto, 'PRODUTO', 'COD_PRODUTO', DMEstoque.WSimilar.FieldByName('COD_PRODUTO').AsString, '')=False Then
           Exit;

       //Filtra tabela de estoque de acordo com o produto selecionado em fproduto
       If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
           Exit;

       // buscando o codigo de barras na tabela CODIGOBARRA
       FiltraTabela(DMESTOQUE.TCodBarra,'CODIGOBARRA','COD_ESTOQUE',DMESTOQUE.TEstoque.FieldByname('cod_estoque').AsString,'');

       // seleciona os dados da loja
       FiltraTabela(DMMACS.TLoja, 'LOJA','COD_LOJA', FMenu.LCODLOJA.Caption,'');

       //escreve na edit o contrint do produto selecionado
       EdCtrlInterno.Text:=DMEstoque.TSubProd.FieldByName('CONTRINT').AsString;
       EdBarra.Text := DMESTOQUE.TCodBarra.FieldByname('CODBARRA').AsString;
       EdCtrlInterno.SetFocus;
   end;
end;

end.
