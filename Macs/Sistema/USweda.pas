unit USweda;

interface

  /////////////////////////////////////////////////
  //////////////// FUNÇÕES DA SWEDA ///////////////
  ////////////////////////////////////////////////
// abrir porta da sweda
Function AbrePorta(Numero,Timeout:Integer):Boolean; far; Export; external 'SERSWEDA.DLL' index 1;
// envia qualquer comando para sweda
Function EnviaComando(Texto1:PChar):ShortString; far; Export; external 'SERSWEDA.DLL' index 2;   

implementation

end.
 