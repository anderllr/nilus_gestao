unit uFrmCadRelMatricial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, CLookUp,
  FMTBcd, SqlExpr, CFind, CPanelGradient, CDBCheckBox, CDBMemo, CDBComboBox,
  CDBRadioGroup, RDprint;

type
  TFrmCadRelMatricial = class(TFrmCadPadraoGrid)
    TabCampos: TTabSheet;
    CGroupBox1: TCGroupBox;
    CLabel2: TCLabel;
    DBEdescRelMatricial: TCDBEdit;
    DBEidRelMatricial: TCDBEdit;
    CLabel1: TCLabel;
    CGroupBox3: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    DBEdescRelMatricial2: TCDBEdit;
    DBEidRelMatricial2: TCDBEdit;
    CGroupBox4: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox5: TCGroupBox;
    BtnNovoTab: TCBitBtn;
    BtnExcluirTab: TCBitBtn;
    BtnCancelarTab: TCBitBtn;
    BtnSalvarTab: TCBitBtn;
    sdsTab: TSQLDataSet;
    actCadTpDesconto: TAction;
    sdsCampos: TSQLDataSet;
    dspCampos: TDataSetProvider;
    cdsCampos: TClientDataSet;
    dsCampos: TDataSource;
    CGroupBox6: TCGroupBox;
    CLabel6: TCLabel;
    DBEidCampo: TCDBEdit;
    CLabel3: TCLabel;
    DBElinha: TCDBEdit;
    CLabel7: TCLabel;
    DBEcoluna: TCDBEdit;
    cdsProduto: TClientDataSet;
    CLabel9: TCLabel;
    CLabel10: TCLabel;
    DBCBdescAlinhamento: TCDBComboBox;
    DBCKimprime: TCDBCheckBox;
    DBEdescCampo: TCDBEdit;
    cdsCampos2: TClientDataSet;
    CLabel11: TCLabel;
    actRegua: TAction;
    RDprint1: TRDprint;
    DBRtamFonte2: TCDBRadioGroup;
    CLabel8: TCLabel;
    DBEmascara: TCDBEdit;
    CGroupBox7: TCGroupBox;
    DBCKnegrito: TCDBCheckBox;
    DBCKItalico: TCDBCheckBox;
    DBCKsublinhado: TCDBCheckBox;
    DBMsqlRelMatricial: TCDBMemo;
    CGroupBox8: TCGroupBox;
    CLabel16: TCLabel;
    DBEordem: TCDBEdit;
    CLabel17: TCLabel;
    DBCBimpTraco: TCDBComboBox;
    CLabel18: TCLabel;
    DBCBtipoTraco: TCDBComboBox;
    CLabel19: TCLabel;
    DBEtamTraco: TCDBEdit;
    CLabel20: TCLabel;
    DBEiniTraco: TCDBEdit;
    CLabel21: TCLabel;
    DBEmaxLinhas: TCDBEdit;
    CLabel22: TCLabel;
    DBCBdecisao: TCDBComboBox;
    CLabel23: TCLabel;
    DBEmaxColunas: TCDBEdit;
    CLabel24: TCLabel;
    DBEtamColunas: TCDBEdit;
    DBCKlista: TCDBCheckBox;
    CLabel25: TCLabel;
    DBELinhaIni: TCDBEdit;
    CGroupBox9: TCGroupBox;
    DBRtamFonte: TCDBRadioGroup;
    DBRavanco: TCDBRadioGroup;
    DBCKdescPorta: TCDBComboBox;
    CLabel15: TCLabel;
    CLabel12: TCLabel;
    DBCBdescModelo: TCDBComboBox;
    REspaco: TRadioGroup;
    CLabel13: TCLabel;
    DBEqtLinhas: TCDBEdit;
    CLabel14: TCLabel;
    DBEqtColunas: TCDBEdit;
    CBitBtn1: TCBitBtn;
    DBCKlista2: TCDBCheckBox;
    CLabel26: TCLabel;
    DBEListaIni2: TCDBEdit;
    DBCKexpandido: TCDBCheckBox;
    CLabel27: TCLabel;
    DBCBtipoCampo: TCDBComboBox;
    CLabel29: TCLabel;
    DBEtamTraco2: TCDBEdit;
    DBCKconexao: TCDBCheckBox;
    procedure cdsCamposAfterScroll(DataSet: TDataSet);
    procedure DBCBtipoCampoExit(Sender: TObject);
    procedure DBCKlistaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actReguaExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure PagAbasChange(Sender: TObject);
    procedure cdsCamposAfterInsert(DataSet: TDataSet);
    procedure dsCamposStateChange(Sender: TObject);
    procedure dspCamposBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DBEidCampoExit(Sender: TObject);
    procedure BtnSalvarTabClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBEidRelMatricialExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure HabilitaLista;
    procedure HabilitaTamanhoCampo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadRelMatricial: TFrmCadRelMatricial;

implementation

uses uDmPadrao, uFuncao, uFrmTpCadDesconto;

{$R *.dfm}

procedure TFrmCadRelMatricial.actReguaExecute(Sender: TObject);
var
     a, b, c  : integer;
     L1, L2   : string;
begin
  inherited;
     // Atualiza Propriedades...
     with RDprint1 do
        begin
        // Propriedades gerais do RDprint...
        UsaGerenciadorImpr           := True;
        TitulodoRelatorio            := 'Régua';
        OpcoesPreview.Preview        := true;
        OpcoesPreview.CaptionPreview := 'Régua';
        OpcoesPreview.PreviewZoom    := -1;
        try
           TamanhoQteLPP       := TLinha(DBRtamFonte.itemindex);
           case DBRtamFonte.itemindex of
              0 : FonteTamanhoPadrao := S10cpp;
              1 : FonteTamanhoPadrao := S12cpp;
              2 : FonteTamanhoPadrao := S17cpp;
              3 : FonteTamanhoPadrao := S20cpp;
              end;
           TamanhoQteLinhas    := strtoint(DBEqtLinhas.text);
           TamanhoQteColunas   := strtoint(DBEqtColunas.text);
           except
              messagedlg('Valores inválidos...', mtwarning, [mbok], 0);
              exit;
           end;
        end;

     // Imprime matriz auxiliar para programação...
     with RDprint1 do
        begin
        abrir;

//        if not RDprint1.Setup then
//           exit;

        // Régua Horizontal
        L1 := '1   .    1    .    2    .    3    .    4    .    5    .    6    .    7    .    8    .    9    .   10    .   11    .   12    .   13    .   14    .   15    .   16    .   17    .   18    .   19    .   20    .   21    .   22    .   23    .   24    .   25    .';
        L2 := '223456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345';
        imp (01, 01, copy(L1,1,strtoint(DBEqtColunas.text)));
        imp (02, 01, copy(L2,1,strtoint(DBEqtColunas.text)));

        // Imprime Tracos...
        c := 10;
        case REspaco.itemindex of
           0 : c := 3;
           1 : c := 5;
           2 : c := 10;
           end;
        for a := 3 to  Strtoint(DBEqtLinhas.text) do
           begin
           for b := 3 to  Strtoint(DBEqtColunas.text) do
              begin
              if (a mod c) = 0 then
                 if (b mod c) = 0 then
                    imp(a, b, '+')
                 else
                    imp(a, b, '-')
              else
                 if (b mod c) = 0 then
                    imp(a, b, '|');
              end;
           end;

        // Régua Vertical
        for a := 3 to  Strtoint(DBEqtLinhas.text) do
           imp (a, 1, FormatFloat('##0', a));
        fechar;
        end;
end;

procedure TFrmCadRelMatricial.actSalvarExecute(Sender: TObject);
begin
  if cdsCampos.State in [dsInsert, dsEdit]  then
    cdsCampos.Cancel;

  if cdsPadrao.FieldByName('lista').AsString = 'S' then
    if not cdsCampos.IsEmpty then
    begin
      cdsCampos.First;
      while not cdsCampos.Eof do
      begin
        cdsCampos.Edit;
        cdsCampos.FieldByName('linha').Value := cdsPadrao.FieldByName('LinhaIni').Value;
        cdsCampos.Post;
        cdsCampos.Next;
      end;
    end;
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadRelMatricial.BtnSalvarTabClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCampos, BtnSalvarTab, BtnCancelarTab, BtnExcluirTab, BtnNovoTab, (Sender as TCBitBtn), 'idCampo');
  DBEidCampo.SetFocus;
end;

procedure TFrmCadRelMatricial.cdsCamposAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  with cdsCampos do
  begin
    FieldByName('coluna').Value := 1;
    FieldByName('tamFonte').Value := 2;
    FieldByName('imprime').Value := 'N';
    FieldByName('negrito').Value := 'N';
    FieldByName('italico').Value := 'N';
    FieldByName('sublinhado').Value := 'N';
    FieldByName('conexao').Value := 'S';    
    FieldByName('expandido').Value := 'N';
    FieldByName('mascara').Value := '';
    FieldByName('tipoCampo').Value := 'CAMPO';
    FieldByName('descAlinhamento').Value := 'ESQUERDA';    
    FieldByName('tamTraco').Value := 0;
    if FieldByName('descCampo').Value = '' then
      FieldByName('descCampo').Value := '[]';
  end;//with cdsCampos do
end;

procedure TFrmCadRelMatricial.cdsCamposAfterScroll(DataSet: TDataSet);
begin
  inherited;
  HabilitaTamanhoCampo;
end;

procedure TFrmCadRelMatricial.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  //Inclui os campos com valor padrao
  with cdsPadrao do
  begin
    if State in [dsInsert] then
    begin
      FieldByName('descPorta').Value := 'LPT1';
      FieldByName('tamFonte').Value := 2;
      FieldByName('avanco').Value := 6;
      FieldByName('descModelo').Value := 'Epson';
      FieldByName('qtLinhas').Value := 66;
      FieldByName('qtColunas').Value := 80;
      FieldByName('ordem').Value := 1;
      FieldByName('impTraco').Value := 'NENHUM';
      FieldByName('tipoTraco').Value := 'SIMPLES';
      FieldByName('tamTraco').Value := 0;
      FieldByName('iniTraco').Value := 0;
      FieldByName('maxLinhas').Value := 1;
      FieldByName('decisao').Value := 'NENHUM';
      FieldByName('maxColunas').Value := 1;
      FieldByName('tamColunas').Value := 0;      
      FieldByName('lista').Value := 'N';
      FieldByName('LinhaIni').Value := 0;
    end;
  end;
end;

procedure TFrmCadRelMatricial.DBEidRelMatricialExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
  AbreTabSecundaria;
  if (not (cdsPadrao.State in [dsEdit, dsInsert])) and (not cdsCampos.IsEmpty) then
    funcao.SomenteLeitura([DBMsqlRelMatricial], true)
  else
    funcao.SomenteLeitura([DBMsqlRelMatricial], false);
  HabilitaLista;    
end;

procedure TFrmCadRelMatricial.DBCBtipoCampoExit(Sender: TObject);
begin
  inherited;
  HabilitaTamanhoCampo;
  if DBCKconexao.Enabled then
    DBCKconexao.SetFocus;
end;

procedure TFrmCadRelMatricial.DBCKlistaExit(Sender: TObject);
begin
  inherited;
  HabilitaLista;
end;

procedure TFrmCadRelMatricial.DBEidCampoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCampos, [DBEidCampo]);
  HabilitaTamanhoCampo;
end;

procedure TFrmCadRelMatricial.DBGridCellClick(Column: TColumn);
begin
  inherited;
  AbreTabSecundaria;
end;

procedure TFrmCadRelMatricial.dsCamposStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarTab, BtnCancelarTab, BtnExcluirTab, BtnNovoTab);
end;

procedure TFrmCadRelMatricial.dspCamposBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if DeltaDS.State in [dsEdit, dsInsert] then
    GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspCampos' then
      GeraAutoInc(DeltaDS, 'RelMatricialCampo', 'idCampo', chave);
  end;

end;

procedure TFrmCadRelMatricial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadRelMatricial := nil;
end;

procedure TFrmCadRelMatricial.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCampos;
  chave[0] := DBEidRelMatricial;
  foco := DBEidRelMatricial;
  tab_chave := 'RelMatricial';
end;

procedure TFrmCadRelMatricial.FormShow(Sender: TObject);
begin
  inherited;
  DBEidRelMatricialExit(DBEidRelMatricial);
end;

procedure TFrmCadRelMatricial.HabilitaLista;
begin
  if cdsPadrao.FieldByName('lista').AsString = 'N' then
  begin
    funcao.SomenteLeitura([DBELinhaIni, DBEmaxLinhas, DBCBdecisao, DBEmaxColunas, DBEtamColunas], true);
    funcao.SomenteLeitura([DBELinha], false);
  end
  else
  begin
    funcao.SomenteLeitura([DBELinhaIni, DBEmaxLinhas, DBCBdecisao, DBEmaxColunas, DBEtamColunas], false);
    funcao.SomenteLeitura([DBELinha], true);
  end;
end;

procedure TFrmCadRelMatricial.HabilitaTamanhoCampo;
begin
  if cdsCampos.FieldByName('tipoCampo').AsString = 'CAMPO' then
  begin
    funcao.SomenteLeitura([DBCKConexao, DBEtamTraco2], true);
    funcao.SomenteLeitura([DBEdescCampo, DBCBdescAlinhamento, DBEmascara, DBRtamFonte2, DBCKnegrito,
                           DBCKItalico, DBCKsublinhado, DBCKexpandido], false);
  end
  else //significa que é traço
  begin
    funcao.SomenteLeitura([DBCKConexao, DBEtamTraco2], false);
    funcao.SomenteLeitura([DBEdescCampo, DBCBdescAlinhamento, DBEmascara, DBRtamFonte2, DBCKnegrito,
                           DBCKItalico, DBCKsublinhado, DBCKexpandido], true);
    if cdsCampos.State in [dsInsert, dsEdit] then
    begin
      cdsCampos.FieldByName('descCampo').AsString := '[' + cdsCampos.FieldByName('tipoCampo').AsString + ']';
      cdsCampos.FieldByName('tamFonte').AsInteger := 4;      
    end;
  end;
end;

procedure TFrmCadRelMatricial.PagAbasChange(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if PagAbas.ActivePageIndex = 1 then
  begin
    if Trim(DBMsqlRelMatricial.Text) = '' then
    begin
      messagedlg('O Sql deve ser informado primeiramente!', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      DBMsqlRelMatricial.SetFocus;
      exit;
    end;
    if cdsCampos.IsEmpty then
    begin
      try
        with cdsCampos2 do
        begin
          Active := false;
          CommandText := DBMsqlRelMatricial.Lines.Text;
          Active := true;
        end;
      except
        on E: Exception do
        begin
          messagedlg(E.Message, mterror, [mbok], E.HelpContext);
          messagedlg('Erro no Sql!', mterror, [mbok], E.HelpContext);
          PagAbas.ActivePageIndex := 0;
          exit;
        end;
      end; //fim do try
      //se chegou aqui foi pq deu certo o sql
      for i := 0 to cdsCampos2.FieldDefs.Count - 1 do
      begin
        with cdsCampos do
        begin
          Append;
          if Trim(DBEidRelMatricial.Text) <> '' then
            FieldByName('idRelMatricial').AsString := DBEidRelMatricial.Text
          else
            FieldByName('idRelMatricial').AsString := '0';
          FieldByName('idCampo').Value := i + 1;
          FieldByName('descCampo').Value := cdsCampos2.FieldDefs[i].DisplayName;
          if cdsPadrao.FieldByName('lista').AsString = 'S' then
            FieldByName('linha').Value := cdsPadrao.FieldByName('linhaIni').Value
          else
            FieldByName('linha').Value := 1;          
          Post;
        end;//with cdsCampos do
      end; //fim do for i := 0 to cdsCampos2.FieldDefs.Count - 1 do

    end;//fim do if cdsCampos.IsEmpty then
  end; // fim do   if PagAbas.ActivePageIndex = 1 then
end;

end.
