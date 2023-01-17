unit URelPessoa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls;

type
  TFRelPessoa = class(TForm)
    QRClienteResum: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    LComplemento: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape2: TQRShape;
    QRBand4: TQRBand;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRFuncResum: TQuickRep;
    QRBand5: TQRBand;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel9: TQRLabel;
    QRShape4: TQRShape;
    QRLabel10: TQRLabel;
    QRBand6: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand7: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape5: TQRShape;
    QRBand8: TQRBand;
    QRShape6: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRFornecResum: TQuickRep;
    QRBand9: TQRBand;
    QRLabel16: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel17: TQRLabel;
    QRShape7: TQRShape;
    QRLabel18: TQRLabel;
    QRBand10: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand11: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRShape8: TQRShape;
    QRBand12: TQRBand;
    QRShape9: TQRShape;
    QRLabel23: TQRLabel;
    QRAniver: TQuickRep;
    QRBand13: TQRBand;
    QRLabel24: TQRLabel;
    QRSysData7: TQRSysData;
    QRSysData8: TQRSysData;
    QRDBText20: TQRDBText;
    QRBand14: TQRBand;
    QRDBText21: TQRDBText;
    QRLIntervalo: TQRLabel;
    QRBand15: TQRBand;
    QRShape10: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRBand16: TQRBand;
    QRShape13: TQRShape;
    QRLabel31: TQRLabel;
    procedure QRBand13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Mes: String;
  end;


var
  FRelPessoa: TFRelPessoa;


implementation

uses UDMPessoa, UDMMacs, UCliente;

{$R *.DFM}

procedure TFRelPessoa.QRBand13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLIntervalo.Caption:='Aniversariantes de '+Mes;
end;

end.
