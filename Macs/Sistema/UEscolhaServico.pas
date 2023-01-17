unit UEscolhaServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TFEscolhaServico = class(TForm)
    dbServico: TDBGrid;
    edCodigo: TEdit;
    edDescricao: TEdit;
    btBusca: TButton;
    btSelecionar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btBuscaClick(Sender: TObject);
    procedure edDescricaoEnter(Sender: TObject);
    procedure edCodigoEnter(Sender: TObject);
    procedure btSelecionarClick(Sender: TObject);
    procedure edDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btConfimarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEscolhaServico: TFEscolhaServico;

implementation

uses UDmServ, DB, Alxor32, UMenu;

{$R *.dfm}

procedure TFEscolhaServico.FormActivate(Sender: TObject);
begin
	Caption:='Escolha de Serviços';
	DMServ.Alx.Close;
   dmserv.alx.SQL.Clear;
   DMServ.Alx.SQL.Add('select num_servico, descricao from servico_nfse where ativo = :at');
   DMServ.Alx.ParamByName('at').AsString := '1';
   DMServ.Alx.Open;
end;

procedure TFEscolhaServico.btBuscaClick(Sender: TObject);
begin
	if edCodigo.Text <> '' then
   begin
     DMServ.Alx.Close;
     dmserv.alx.SQL.Clear;
     DMServ.Alx.SQL.Add('select num_servico Numero, descricao from servico_nfse where (num_servico = :cod) and (ativo = :at)');
     DMServ.Alx.ParamByName('cod').AsString := edCodigo.Text;
     DMServ.Alx.ParamByName('at').AsString := '1';
     DMServ.Alx.Open;
   end;

	if edDescricao.Text <> '' then
   begin
     DMServ.Alx.Close;
     dmserv.alx.SQL.Clear;
     DMServ.Alx.SQL.Add('select num_servico Numero, descricao from servico_nfse where (upper(descricao) like upper(:desc)) and (ativo = :at)');
     DMServ.Alx.ParamByName('desc').AsString := edDescricao.Text+'%';
     DMServ.Alx.ParamByName('at').AsString := '1'; 
     DMServ.Alx.Open;
   end;
end;

procedure TFEscolhaServico.edDescricaoEnter(Sender: TObject);
begin
	edCodigo.Text := '';
end;

procedure TFEscolhaServico.edCodigoEnter(Sender: TObject);
begin
	edDescricao.Text := '';
end;

procedure TFEscolhaServico.btSelecionarClick(Sender: TObject);
begin
  //Ao selecionar um serviço atualiza o despadic com o serviço selecionado
  FMenu.xServico := DMServ.Alx.FieldByName('num_servico').AsString;
  FormActivate(sender);
  Close;
end;

procedure TFEscolhaServico.edDescricaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	if key = vk_return then
   	btBusca.Click;

   if key = vk_escape then
   	FormActivate(sender);
end;

procedure TFEscolhaServico.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_return then
   	btBusca.Click;

       if key = vk_escape then
   	FormActivate(sender);
end;

procedure TFEscolhaServico.btConfimarClick(Sender: TObject);
begin
	//Ao clicar em confirmar, fecha a tela da escolha do serviço e começa a emissão da nfse
	showMessage(DMServ.Alx.FieldByName('nome').AsString);

   showMessage(dmserv.talx1.fieldbyname('email').AsString);
end;

end.
