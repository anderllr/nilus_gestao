unit uFrmPesNfETransito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox,
  EditAlign, CEdit;

type
  TFrmPesNfETransito = class(TFrmPadraoPesqEmpFiscal)
    LblCad: TCLabel;
    DBEidCliente: TCDBEdit;
    DBEidCadCliente: TCDBEdit;
    LookClienteFiscal: TCLookUp;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtFinal: TCDBEdit;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidCadCliente: TIntegerField;
    cdsGrididNfE: TIntegerField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGrididFornecedor: TIntegerField;
    cdsGrididCadFornecedor: TSmallintField;
    cdsGriddescCadFornecedor: TStringField;
    cdsGrididProduto: TIntegerField;
    cdsGriddescProduto: TStringField;
    cdsGrididSafra: TIntegerField;
    cdsGridPlaca: TStringField;
    cdsGriddescVeiculo: TStringField;
    cdsGrididMotorista: TSmallintField;
    cdsGrididDocSerie: TStringField;
    procedure DBGridDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure DBEidClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesNfETransito: TFrmPesNfETransito;

implementation

uses uFrmPesClienteFiscal, uFrmCadRomaneio, uFuncao, uDmPadrao;

{$R *.dfm}

procedure TFrmPesNfETransito.actExecutarExecute(Sender: TObject);
var
sql : string;
begin
  sql := ' Select nft.idDocSerie, nft.idNfE,nfe.dtEmissao,f.idFornecedor, f.idCadFornecedor,f.descCadFornecedor, ' +
         ' p.idProduto, p.descProduto, nfe.idSafra, nfet.Placa, nfet.descVeiculo, nfet.idMotorista ' +
         ' From NfETransito AS nft INNER JOIN NfE AS nfe ' +
         '	 ON nft.idEmpresa = nfe.idEmpresa ' +
         ' AND nft.idCadEmpresa = nfe.idCadEmpresa ' +
         ' AND nft.idDocSerie = nfe.idDocSerie ' +
         ' AND nft.idFornecedor = nfe.idFornecedor ' +
         ' AND nft.idCadFornecedor = nfe.idCadFornecedor ' +
         ' AND nft.idNfE = nfe.idNfE INNER JOIN NfEProduto nfep ' +
	       ' ON nft.idEmpresa = nfep.idEmpresa ' +
         ' AND nft.idCadEmpresa = nfep.idCadEmpresa ' +
         ' AND nft.idDocSerie = nfep.idDocSerie ' +
         ' AND nft.idFornecedor = nfep.idFornecedor ' +
         ' AND nft.idCadFornecedor = nfep.idCadFornecedor ' +
         ' AND nft.idNfE = nfep.idNfE INNER JOIN NfETransporte AS nfet ' +
	       ' ON nft.idEmpresa = nfet.idEmpresa ' +
         ' AND nft.idCadEmpresa = nfet.idCadEmpresa ' +
         ' AND nft.idDocSerie = nfet.idDocSerie ' +
         ' AND nft.idFornecedor = nfet.idFornecedor ' +
         ' AND nft.idCadFornecedor = nfet.idCadFornecedor ' +
         ' AND nft.idNfE = nfet.idNfE INNER JOIN Produto AS p ON nfep.idProduto = p.idProduto ' +
         ' INNER JOIN vCadFornecedorFiscal AS f ON f.idFornecedor = nft.idFornecedor ' +
         ' AND f.idCadFornecedor = nft.idCadFornecedor  '+
         '  WHERE nft.idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa,3) +
         '    AND nft.idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa,3) +
         '    AND nft.idRomaneio IS NULL ';

   if  ((trim(DBEidCliente.Text) <> '' ) AND (trim(DBEidCadCliente.Text) <> '' ) )then
   begin
     sql := sql + '   AND nft.idFornecedor = ' + funcao.RetornaValorEField(DBEidCliente,3) +
                  '   AND nft.idCadFornecedor = ' + funcao.RetornaValorEField(DBEidCadCliente,3);
   end;

   if  ((trim(DBEdtInicial.Text) <> '' ) AND (trim(DBEdtFinal.Text) <> '' ) )then
   begin
     sql := sql + '   AND nfe.dtEmissao BETWEEN ' + quotedstr(DBEdtInicial.Text) +
                  '   AND ' + quotedstr(DBEdtFinal.Text);
   end;

   sql := sql + ' ORDER BY f.descCadFornecedor ';


  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;

  //inherited;

end;

procedure TFrmPesNfETransito.DBEidClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with (Formulario.FindComponent('cdsPadrao') as TClientDataset) do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadCliente') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
 end;

procedure TFrmPesNfETransito.DBGridDblClick(Sender: TObject);
begin
  if not (FrmCadRomaneio.cdsPadrao.state in [dsInsert, dsEdit]) then
    FrmCadRomaneio.cdsPadrao.Insert;

  FrmCadRomaneio.cdsPadrao.FieldByName('idCliente').Value := cdsGrid.FieldByName('idFornecedor').Value;
  FrmCadRomaneio.cdsPadrao.FieldByName('idCadCliente').Value := cdsGrid.FieldByName('idCadFornecedor').Value;
  FrmCadRomaneio.cdsPadrao.FieldByName('idSafra').Value := cdsGrid.FieldByName('idSafra').Value;
  FrmCadRomaneio.cdsPadrao.FieldByName('dtRomaneio').Value := cdsGrid.FieldByName('dtEmissao').Value;
  FrmCadRomaneio.cdsPadrao.FieldByName('Placa').Value := cdsGrid.FieldByName('Placa').Value;
  FrmCadRomaneio.cdsPadrao.FieldByName('descVeiculo').Value := cdsGrid.FieldByName('descVeiculo').Value;
  FrmCadRomaneio.cdsPadrao.FieldByName('idMotorista').Value := cdsGrid.FieldByName('idMotorista').Value;
  FrmCadRomaneio.cdsPadrao.FieldByName('idProduto').Value := cdsGrid.FieldByName('idProduto').Value;

  inherited;
end;

procedure TFrmPesNfETransito.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidCliente;
end;

procedure TFrmPesNfETransito.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').Value := FrmCadRomaneio.cdsEmpresa.FieldByName('idEmpresa').Value;;
  cdsPadrao.FieldByName('idCadEmpresa').Value := FrmCadRomaneio.cdsEmpresa.FieldByName('idCadEmpresa').Value;
end;

end.
