unit uFrmCadRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, CFind, DB, SqlExpr, Provider,
  DBClient, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl,
  CGroupBox, CDBMemo, CDBRadioGroup, frxClass, ACBrBase, ACBrExtenso,
  System.Actions;

type
  TFrmCadRecibo = class(TFrmCadPadraoEmpFiscal)
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidRecibo: TIntegerField;
    cdsPadraoidMovCaixa: TIntegerField;
    cdsPadraoidMovConta: TIntegerField;
    cdsPadraotipo: TSmallintField;
    cdsPadraovlRecibo: TFMTBCDField;
    cdsPadraodtRecibo: TSQLTimeStampField;
    cdsPadraoreferencia: TStringField;
    cdsPadraoidCadGeral: TIntegerField;
    cdsPadraovlDescAcres: TFMTBCDField;
    cdsPadraofator: TStringField;
    CGroupBox2: TCGroupBox;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    DBEdtRecibo: TCDBEdit;
    DBEvlRecibo: TCDBEdit;
    DBEidRecibo: TCDBEdit;
    DBMMreferencia: TCDBMemo;
    DBRGtipo: TCDBRadioGroup;
    lblCliFor: TCLabel;
    LookCliente: TCLookUp;
    DBEidCadGeral: TCDBEdit;
    Extenso: TACBrExtenso;
    Report: TfrxReport;
    ACBrExtenso1: TACBrExtenso;
    procedure DBRGtipoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure DBEidReciboExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadRecibo: TFrmCadRecibo;

implementation

uses uFrmPrincipal, uFrmCadFuncao, uFuncao, uDmPadrao;

{$R *.dfm}

procedure TFrmCadRecibo.actSalvarExecute(Sender: TObject);
Var
  slSQL: TStringList;
  sql : string;
begin
  GravaChave(1, '', nil);
  inherited;
  Report.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'Recibo.fr3');
  slSQL := TStringList.Create;
  slSQL.Add('select g.idCadGeral, a.descCadAdicional, a.idInscEstadual, a.idCnpjCpf, a.idCidade,');
  slSQL.Add('a.endereco, a.numero, a.complemento, a.bairro, a.cep, a.fone,');
  slSQL.Add('rtrim(c.descCidade) + ''-'' + c.idEstado nome_cidade, rtrim(c.codDDD) codDDD');
  slSQL.Add('from cadgeral g');
  slSQL.Add('inner join cadadicional a');
  slSQL.Add('on (a.idcadgeral = g.idcadgeral)');
  slSQL.Add('inner join cidade c');
  slSQL.Add('on (c.idCidade = a.idCidade)');
  slSQL.Add('where g.idcadgeral = ' + DBEidEmpresa.Text + ' and');
  slSQL.Add('a.idcadadicional = ' + DBEidCadEmpresa.Text + ' and');
  slSQL.Add('g.empresa = ''S''');


  Extenso.Valor := cdsPadrao.FieldByName('vlRecibo').Value;

  (Report.FindComponent('Memo40') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo26') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo41') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo39') as TfrxMemoView).Visible := False;

  //  Report.Variables['idRecibo']            := QuotedStr('PAG/XXX000001');

  Report.Variables['Nome-Assinatura']     := QuotedStr(FrmPrincipal.ExecutaSQLRet([], '', 'select descCadAdicional from cadadicional where idcadgeral = ' + cdsPadrao.FieldbyName('idCadGeral').AsString).FieldByName('descCadAdicional').asString);
  Report.Variables['Cnpj-Cpf-Assinatura'] := QuotedStr(FrmPrincipal.ExecutaSQLRet([], '', 'select idCnpjCpf from cadadicional where idcadgeral = ' + cdsPadrao.FieldbyName('idCadGeral').AsString).FieldByName('idCnpjCpf').asString);
  Report.Variables['valor']               := QuotedStr(Funcao.Mascara(FloatToStr(Extenso.Valor), 6, ''));
  Report.Variables['extenso-monetario']   := QuotedStr(UpperCase(Extenso.Texto));

  //Inicio do Tratamento de Valor de Desconto
  if (cdsPadrao.FieldByName('vlDescAcres').AsFloat <> 0) AND (Trim(cdsPadrao.FieldByName('fator').AsString) = 'DE') then
  begin
    (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Clear;
    (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Add('Desconto:');
    (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Clear;
    (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Add('Desconto:');
    Report.Variables['vlDescAcres'] := cdsPadrao.FieldByName('vlDescAcres').Value;
  end
  else
    if (cdsPadrao.FieldByName('vlDescAcres').AsFloat <> 0) AND (Trim(cdsPadrao.FieldByName('fator').AsString) = 'AC') then
    begin
      (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Clear;
      (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Add('Acrescimo:');
      (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Clear;
      (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Add('Acrescimo:');
      Report.Variables['vlDescAcres'] := cdsPadrao.FieldByName('vlDescAcres').Value;
    end;

    if (cdsPadrao.FieldByName('vlDescAcres').AsFloat <> 0) AND (Trim(cdsPadrao.FieldByName('fator').AsString) = 'AD') then
    begin
      // Apenas para não dar erros
      Report.Variables['vlDescAcres'] := cdsPadrao.FieldByName('vlDescAcres').Value;
      (Report.FindComponent('Memo40') as TfrxMemoView).Visible := False;
      (Report.FindComponent('Memo26') as TfrxMemoView).Visible := False;
      (Report.FindComponent('Memo41') as TfrxMemoView).Visible := False;
      (Report.FindComponent('Memo39') as TfrxMemoView).Visible := False;
    end;

  Report.Variables['Referencia']         := QuotedStr(cdsPadrao.Fieldbyname('referencia').AsString);
  With FrmPrincipal.ExecutaSQLRet([], '', slSQL.Text) Do
  Begin
    Report.Variables['Nome-Empresa']     := QuotedStr(FieldByName('descCadAdicional').asString);
    Report.Variables['Cnpj-Cpf-Empresa'] := QuotedStr(FieldByName('idCnpjCpf').asString);
    Report.Variables['IE-RG-Empresa']    := QuotedStr(FieldByName('idInscEstadual').asString);
    Report.Variables['Endereco']         := QuotedStr(Format('%s, %s - %s', [FieldByName('endereco').asString, FieldByName('numero').asString, FieldByName('complemento').asString]));
    Report.Variables['Cidade']           := QuotedStr(FieldByName('nome_cidade').asString);
    Report.Variables['Fone']             := QuotedStr(Format('(%s)%s', [FieldByName('codDDD').asString, FieldByName('fone').asString]));
    Report.Variables['Nome']             := QuotedStr(FieldByName('descCadAdicional').asString);
    Report.Variables['local-data']       := QuotedStr(FieldByName('NOME_CIDADE').asString + ', ' + funcao.CDoW(cdsPadrao.FieldByName('dtRecibo').AsDateTime, exdDMA));
    Report.Variables['idRecibo']         := cdsPadrao.fieldByname('idRecibo').AsString;
  End;
  slSQL.Free;
  slSQL := Nil;
  Report.ShowReport;
end;

procedure TFrmCadRecibo.DBEidReciboExit(Sender: TObject);
begin
  inherited;
  BuscaChave(cdsPadrao, chave);
end;

procedure TFrmCadRecibo.DBRGtipoExit(Sender: TObject);
begin
  inherited;
  if cdsPadrao.FieldByName('tipo').AsString = '1' then
    lblCliFor.Caption := 'Cliente'
  else
    lblCliFor.Caption := 'Fornecedor';
end;

procedure TFrmCadRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadRecibo := nil;
end;

procedure TFrmCadRecibo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidRecibo;
  foco := DBEidRecibo;
  tab_chave := 'Recibo';
  Height := 377;
  Width := 578;
end;

end.
