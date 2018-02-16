unit uFrmCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ImgList, ButtonGroup, CButtonGroup, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, DB, DBClient, Provider, CEdit, StdCtrls,
  EditAlign, ActnList, Buttons, CBitBtn, CDBEdit, CFind, CDBComboBox,
  CPanelGradient, CDBRadioGroup, DBXpress;

type
  TFrmCadPadrao = class(TFrmPadrao)
    cdsPadrao: TClientDataSet;
    dspPadrao: TDataSetProvider;
    dsPadrao: TDataSource;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    ImgBotoes: TImageList;
    BtnCancelar: TCBitBtn;
    BtnExcluir: TCBitBtn;
    BtnNovo: TCBitBtn;
    BtnPesquisar: TCBitBtn;
    procedure cdsPadraoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dspPadraoBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actPesquisarExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure cdsPadraoAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actNovoExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsPadraoAfterPost(DataSet: TDataSet);
    procedure cdsPadraoBeforeCancel(DataSet: TDataSet);
    procedure cdsPadraoBeforeClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    //Procedures customizadas
    procedure HabilitaBotoes(DataSet : TDataSet);

    procedure ExecSemChave(DataSet : TClientDataSet; Cancelar, Excluir, Novo, Sender: TCBitBtn);
    function BuscaChave(Tabela: TClientDataSet; vl_chave: Array of TObject): boolean;
    procedure GravaChave(par: byte; Serie : string; campo : TCustomEdit);
    procedure GravaDireto(par: byte; Serie : string; campo : TCustomEdit; cpChave: Array of TCustomEdit; tabChave: String; tabela: TClientDataSet);
    procedure GravaChaveSec(tabela: TCustomClientDataSet; vl_chave : Array of TObject);
    procedure LimpaEdits;
    function VerificaState: Boolean;
    procedure AbreTabSecundaria;
    procedure SqlInicial(indice: byte);
    function  GeraAutoInc(tabela : TCustomClientDataSet; nome_tabela: string; campo : string; vl_chave : Array of TObject): integer;
    procedure IniciaTabela;
    function BuscaChaveGrid(Tabela: TClientDataSet; vl_chave: Array of TObject): Boolean;
    function BuscaChaveSec(Tabela: TClientDataSet; vl_chave: Array of TObject): Boolean;
  private
    { Private declarations }
  public
    Tabelas : Array of TClientDataSet; //variável que armazernará as tabelas usadas no cadastro
    chave: Array of TObject;
    tab_chave : string; //variável que armazenará a tabela principal da chave
    foco : TCustomEdit; //o primeiro foco da tela
    exceto : Array of TCustomEdit; // ao limpar qual(is) não deve(m) ser limpado(s) exemplo campo empresa
    situacao : string; //se a tela for controlada por situação e não se exclui e sim cancela esse é o campo para tratar
    situacaoA : string; //situação se Ativo
    situacaoX : string;
    sqlpadrao : TStrings;
    FindPesquisa : TCFind;
    Grid, empFiscal, empCont : Boolean;
    { Public declarations }
  end;

var
  FrmCadPadrao: TFrmCadPadrao;

implementation

uses uDmPadrao, DBCtrls, uFuncao, uRecError, uFrmPrincipal;

{$R *.dfm}
//*****************************************************************************/
//  INICIO DOS PROCEDIMENTOS CUSTOMIZADOS
//*****************************************************************************/
procedure TFrmCadPadrao.HabilitaBotoes(DataSet : TDataSet);
//verifica o estado da tabela e habilita e desabilita os
//botões
begin
  actPesquisar.Enabled := true;
  if Assigned(actSalvar) then
    actSalvar.Enabled := DataSet.State in [dsInsert, dsEdit];

  if Assigned(actExcluir) then
    actExcluir.Enabled := (DataSet.State in [dsBrowse]) and (not (DataSet.IsEmpty));

  if Assigned(actCancelar) then
    actCancelar.Enabled := DataSet.State in [dsInsert, dsEdit];

  if Assigned(actNovo) then
    actNovo.Enabled := DataSet.State in [dsBrowse];
end;
//*****************************************************************************/
procedure TFrmCadPadrao.ExecSemChave(DataSet : TClientDataSet; Cancelar, Excluir, Novo, Sender: TCBitBtn);
//verifica o estado da tabela e habilita e desabilita os
//botões
begin
  if Assigned(Excluir) then
    if Sender.Name = Excluir.Name then
    begin
      DataSet.Delete;
      DataSet.ApplyUpdates(0);
    end;

  if Assigned(Cancelar) then
    if Sender.Name = Cancelar.Name then
    begin
      DataSet.Cancel;
    end;

  if Assigned(Novo) then
    if Sender.Name = Novo.Name then
    begin
      DataSet.Append;
    end;
end;
//*****************************************************************************/

function TFrmCadPadrao.BuscaChave(Tabela: TClientDataSet; vl_chave: Array of TObject): boolean;
//verifica os campos da chave para trazer os registros
var
  i : integer;
  Field, sql, sqlnovo, valor : string;
  vl_indice : Variant;
begin
  sql := '';
  sqlNovo := '';
  valor := '';
  Result := true;
  //*******************************************************************//
  //***********TRATA O FOCO DOS BOTÕES*********************************//
  if Assigned((Formulario.FindComponent('BtnBaixar') as TCBitBtn)) then
    if ((Formulario.FindComponent('BtnBaixar') as TCBitBtn).Focused) then
      exit;
  if Assigned((Formulario.FindComponent('BtnFechar') as TCBitBtn)) then
    if ((Formulario.FindComponent('BtnFechar') as TCBitBtn).Focused) then
      exit;
  if Assigned((Formulario.FindComponent('BtnPesquisar') as TCBitBtn)) then
    if ((Formulario.FindComponent('BtnPesquisar') as TCBitBtn).Focused) then
      exit;
  if Assigned((Formulario.FindComponent('BtnNovo') as TCBitBtn)) then
    if ((Formulario.FindComponent('BtnNovo') as TCBitBtn).Focused) then
      exit;
  if Assigned((Formulario.FindComponent('BtnCancelar') as TCBitBtn)) then
    if ((Formulario.FindComponent('BtnCancelar') as TCBitBtn).Focused) then
      exit;

  //busca o Sql Padrao
  for i := 0 to high(tabelas) do
    if Tabelas[i].Name = Tabela.Name then
      sql := SqlPadrao.Strings[i];

  vl_indice := VarArrayCreate([0,high(vl_chave)], VarOleStr);
  for i := 0 to High(vl_chave) do
  begin
    valor := Funcao.RetornaValorEField(vl_chave[i], 3);
    Field := Funcao.RetornaValorEField(vl_chave[i], 2);

    vl_indice[i] := Funcao.RetornaValorEField(vl_chave[i], 1);
    //se o i for igual a zero não coloca a vírgula
    if i = 0 then
      sqlNovo := sql + ' WHERE ' + Field + ' = ' + valor
    else
      sqlNovo := sqlNovo + ' AND ' + Field + ' = ' + valor
  end;
  if Tabela.State in [dsInsert, dsEdit] then
    Tabela.Cancel;

  Tabela.Active := false;
  Tabela.CommandText := SqlNovo;

  if not Tabela.Active then
    Tabela.Active := true;

  Tabela.EnableControls;
  if Tabela.IsEmpty then
  begin
    Result := false;
    if Grid then
      IniciaTabela
    else
      for i := 0 to high(tabelas) do
        sqlInicial(i);
    Tabela.Append;

    for i := 0 to high(vl_chave) do
      if trim(vl_indice[i]) <> '' then
        Tabela.FieldByName(Funcao.RetornaValorEField(vl_chave[i], 2)).value := vl_indice[i];
  end
  else
    Tabela.EnableControls;
//  AbreTabSecundaria;
end;
//************************************************************************************/
procedure TFrmCadPadrao.GravaChave(par: byte; Serie : string; campo : TCustomEdit);
{procedimento que grava a chave da tabela por ser campo Edit sem ligação com o BD
par:
  0 - Grava o que está no edit e valida quando estiver vazio
  1 - Campo Auto-Incremento Busca o ultimo e soma mais 1
  2 - Utiliza o próximo número de uma tabela de documentos (serie por exemplo)
}
var
  i, ch : integer;
  where, Field, valor : string;
  tab : TClientDataSet;
  temvalor, Inteiro : boolean;
begin
  where := '';
  tab := TClientDataSet.Create(Self);
  tab.ProviderName := 'dspLookUp';
  valor := '';
  case par of
  0 : begin
        for i := 0 to high(chave) do
        begin
          valor := Funcao.RetornaValorEField(chave[i],1);
          Field := Funcao.RetornaValorEField(chave[i],2);

          if (trim(valor) = '') then
            messagedlg('O campo "' + Field + '" precisa ter um valor!', mtwarning, [mbok], 0);
        end;
      end; //0 :
  1 : begin
        temvalor := true;
        tab.Active := false;
        i := 0;
        //busca os valores lançados para a chave - loop nos campos
        while i <= high(chave) do
        begin
          Field := Funcao.RetornaValorEField(chave[i], 2);
          //passa a buscar na tabela principal
          if not (Tabelas[0].FieldByName(Field).DataType in [ftInteger, ftSmallint, ftBCD, ftLargeint, ftFMTBcd]) then
            Inteiro := false
          else
            inteiro := true;

          if (Funcao.RetornaValorEField(chave[i], 1) = '') then //achou a chave sem valor que irá ser incrementada
          begin
            temvalor := false;

            if not Inteiro then //se não for inteiro não incrementa
            begin
              messagedlg('O campo "' + Field + '" precisa ter um valor!', mtwarning, [mbok], 0);
              if (chave[i] is TCEdit) or (chave[i] is TCDBEdit) then
                (chave[i] as TCustomEdit).SetFocus;
              exit;
            end;//if vl_chave[i].DataType <> ftInteger then
            tab.CommandText := 'SELECT MAX(' + Field + ') AS ' + Field + ' FROM ' + tab_chave;
            if trim(where) <> '' then
              tab.CommandText := tab.CommandText + where;
            break;
          end //if trim(vl_chave[i].Text) = '' then
          else
          begin
            if i = 0 then
              where := ' WHERE '
            else
              where := where + ' AND ';

            where := where + Field + ' = ' + Funcao.RetornaValorEField(chave[i], 3);
          end;
          i := i + 1;
        end; //while i <= high(vl_chave) - 1 do
        if temvalor = false then
        begin
          tab.Active := true;
          if (tab.FieldByName(Field).IsNull) or (trim(tab.FieldByName(Field).AsString) = '') then
            tabelas[0].FieldByName(Field).AsString := '1'
          else
            tabelas[0].FieldByName(Field).AsString := inttostr(tab.FieldByName(Field).AsInteger+1);
        end;
      end;//1 :
  2 : begin
        tab.CommandText := 'SELECT * FROM serie WHERE cd_empresa = ' +
                           TCustomEdit(formulario.FindComponent('cd_empresa')).Text + ' AND ' +
                           ' nr_serie = ' + quotedStr(Serie);
        tab.Active := true;
        if (trim(campo.Text) = '') then
          campo.Text := IntToStr(tab.FieldByName('nr_documento').AsInteger + 1);
        if tabelas[0].State in [dsInsert] then //só quando está inserindo
        begin
          tab.Edit;
          tab.FieldByName('nr_documento').AsInteger := strtoint(campo.Text);
          tab.Post;
          tab.ApplyUpdates(0);
        end;
      end;
  end;//case par of
  for ch := 0 to high(chave) do
  begin
    Field := Funcao.RetornaValorEField(chave[ch], 2);
    if trim(Tabelas[0].FieldByName(Field).AsString) = '' then
      Tabelas[0].FieldByName(Field).AsString := Funcao.RetornaValorEField(chave[ch], 1);
  end;
  //libera a variável do clientdataset
  tab.Free;
end;
//*****************************************************************************/
procedure TFrmCadPadrao.GravaDireto(par: byte; Serie : string; campo : TCustomEdit; cpChave: Array of TCustomEdit; tabChave: String; tabela: TClientDataSet);
{procedimento que grava a chave da tabela por ser campo Edit sem ligação com o BD
par:
  0 - Grava o que está no edit e valida quando estiver vazio
  1 - Campo Auto-Incremento Busca o ultimo e soma mais 1
  2 - Utiliza o próximo número de uma tabela de documentos (serie por exemplo)
}
var
  i, ch : integer;
  where, Field : string;
  tab : TClientDataSet;
  temvalor, Inteiro : boolean;
begin
  where := '';
  tab := TClientDataSet.Create(Self);
  tab.ProviderName := 'dspLookUp';
  inteiro := true;
  case par of
  0 : begin
        for i := 0 to high(cpChave) do
        begin
          if (cpChave[i] is TCDBEdit) then
            Field := (cpChave[i] as TCDBEdit).DataField
          else
            if (cpChave[i] is TCEdit) then
              Field := cpChave[i].Name;

          if trim(cpChave[i].Text) = '' then
            messagedlg('O campo "' + Field + '" precisa ter um valor!', mtwarning, [mbok], 0);
        end;
      end; //0 :
  1 : begin
        temvalor := true;
        tab.Active := false;
        i := 0;
        //busca os valores lançados para a chave - loop nos campos
        while i <= high(cpChave) do
        begin
          if (cpChave[i] is TCDBEdit) then
          begin
            Field := (cpChave[i] as TCDBEdit).DataField;
            if not ((cpChave[i] as TCDBEdit).Field.DataType in [ftInteger, ftSmallint]) then
              Inteiro := false;
          end
          else
            if (cpChave[i] is TCEdit) then
            begin
              Field := cpChave[i].Name;
              if not ((cpChave[i] as TCEdit).DataType in [ftInteger, ftSmallint]) then
                Inteiro := false;
            end;

          if (trim(cpChave[i].Text) = '') then //achou a chave sem valor que irá ser incrementada
          begin
            temvalor := false;

            if not Inteiro then //se não for inteiro não incrementa
            begin
              messagedlg('O campo "' + Field + '" precisa ter um valor!', mtwarning, [mbok], 0);
              cpChave[i].SetFocus;
              exit;
            end;//if vl_chave[i].DataType <> ftInteger then
            tab.CommandText := 'SELECT MAX(' + Field + ') AS ' + Field + ' FROM ' + tabChave;
            if trim(where) <> '' then
              tab.CommandText := tab.CommandText + where;
            break;
          end //if trim(vl_chave[i].Text) = '' then
          else
          begin
            if i = 0 then
              where := ' WHERE '
            else
              where := where + ' AND ';

            where := where + Field + ' = ' + cpChave[i].Text;
          end;
          i := i + 1;
        end; //while i <= high(vl_chave) - 1 do
        if temvalor = false then
        begin
          tab.Active := true;
          if (tab.FieldByName(Field).IsNull) or (trim(tab.FieldByName(Field).AsString) = '') then
            cpChave[i].text := '1'
          else
            cpChave[i].text := inttostr(tab.FieldByName(Field).AsInteger+1);
        end;
      end;//1 :
  2 : begin
        tab.CommandText := 'SELECT * FROM serie WHERE cd_empresa = ' +
                           TCustomEdit(formulario.FindComponent('cd_empresa')).Text + ' AND ' +
                           ' nr_serie = ' + quotedStr(Serie);
        tab.Active := true;
        if (trim(campo.Text) = '') then
          campo.Text := IntToStr(tab.FieldByName('nr_documento').AsInteger + 1);
        if tabela.State in [dsInsert] then //só quando está inserindo
        begin
          tab.Edit;
          tab.FieldByName('nr_documento').AsInteger := strtoint(campo.Text);
          tab.Post;
          tab.ApplyUpdates(0);
        end;
      end;
  end;//case par of
  for ch := 0 to high(cpChave) do
  begin
    if (cpChave[ch] is TCDBEdit) then
      Field := (cpChave[ch] as TCDBEdit).DataField
    else
      if (cpChave[ch] is TCEdit) then
        Field := cpChave[ch].Name;
    tabela.FieldByName(Field).AsString := cpChave[ch].Text;
  end;
  if tabela.State in [dsInsert, dsEdit] then
  begin
    tabela.Post;
    tabela.ApplyUpdates(0);
  end;
  //libera a variável do clientdataset
  tab.Free;
end;
//*****************************************************************************/
procedure TFrmCadPadrao.LimpaEdits;
var
  i, j : integer;
  limpa : boolean;
begin
  for i := 0 to formulario.ComponentCount - 1 do
    if (components[i] is TCEdit) then
    begin
      limpa := true;
      j := 0;
      while (j <= high(exceto)) and (limpa = true) do
      begin
        if (components[i] as TCEdit) = exceto[j] then
          limpa := false;
        j := j + 1;
      end;
      if limpa then
//        if (components[i] as TCEdit). then
        (components[i] as TCEdit).Clear;
    end;
end;

//*****************************************************************************/
function TFrmCadPadrao.VerificaState: Boolean;
begin
  result := true;
  if Tabelas[0].State in [dsInsert, dsEdit] then
    if messagedlg('Deseja cancelar as alterações?', mtconfirmation, [mbyes, mbno], 0, mbyes) = mryes then
      result := false
    else
      result := true;
end;
//*****************************************************************************/
procedure TFrmCadPadrao.AbreTabSecundaria;
var
  i, j : integer;
  sql, order, Field : string;
begin
  for i  := 1 to High(tabelas) do
  begin
    tabelas[i].Active := false;
    order := '';
    if pos(UpperCase('order'), UpperCase(sqlpadrao[i])) > 0 then
    begin
      sql := copy(sqlpadrao[i], 1, pos(UpperCase('order'), UpperCase(sqlpadrao[i]))-1);
      order := copy(sqlpadrao[i], pos(UpperCase('order'), UpperCase(sqlpadrao[i])), length(sqlpadrao[i]));
    end
    else
      sql := sqlpadrao[i];

    for j := 0 to high(chave) do
    begin
      Field := Funcao.RetornaValorEField(chave[j], 2);

      if Pos(Uppercase('where'), UpperCase(sql)) <= 0 then
        sql := sql + ' WHERE ' + Field + ' = ' + quotedstr(Funcao.RetornaValorEField(chave[j], 1))
      else
        sql := sql + ' AND ' + Field + ' = ' + quotedstr(Funcao.RetornaValorEField(chave[j], 1));
    end;
    tabelas[i].Close;
    tabelas[i].CommandText := sql + ' ' + order;
    tabelas[i].Open;
  end;
end;

//*****************************************************************************/
procedure TFrmCadPadrao.GravaChaveSec(tabela: TCustomClientDataSet; vl_chave : Array of TObject);
var
  i : integer;
  Field : String;
begin
  for i := 0 to high(vl_chave) do
  begin
    Field := Funcao.RetornaValorEField(vl_chave[i], 2);
//    showmessage(vl_chave[i].Text);
    if (trim(tabela.FieldByName(Field).AsString) = '') or (trim(tabela.FieldByName(Field).AsString) = '0') then
      if trim(Funcao.RetornaValorEField(vl_chave[i], 1)) <> '' then
        tabela.FieldByName(Field).NewValue := Funcao.RetornaValorEField(vl_chave[i], 1)
      else
        tabela.FieldByName(Field).NewValue := '0';
  end;
  //e já finaliza a tabela
//  tabela.Post;
end;
//*****************************************************************************/
procedure TFrmCadPadrao.SqlInicial(indice: byte);
var
  sql, order : string;
begin
  tabelas[indice].Active := false;
  if pos(UpperCase('order'), UpperCase(sqlpadrao[indice])) > 0 then
  begin
    sql := copy(sqlpadrao[indice], 1, pos(UpperCase('order'), UpperCase(sqlpadrao[indice]))-1);
    order := copy(sqlpadrao[indice], pos(UpperCase('order'), UpperCase(sqlpadrao[indice])), length(sqlpadrao[indice]));
  end
  else
    sql := sqlpadrao[indice];
  if pos('WHERE', UpperCase(sql)) > 0 then
    tabelas[indice].CommandText := sql + ' AND 1 = 2 ' + order
  else
    tabelas[indice].CommandText := sql + ' WHERE 1 = 2 ' + order;
  tabelas[indice].Active := true;
end;
//*****************************************************************************/
function  TFrmCadPadrao.GeraAutoInc(tabela : TCustomClientDataSet; nome_tabela: string; campo : string; vl_chave : Array of TObject): integer;
var
  valor, i : integer;
  tab : TClientDataSet;
  Field, where, vl : string;
begin
  tab := TClientDataSet.Create(Self);
  tab.ProviderName := 'dspLookUp';
  valor := 1;
  if (trim(tabela.FieldByName(campo).AsString) = '') or (trim(tabela.FieldByName(campo).AsString) = '0') then
  begin
    where := '';
    for i := 0 to high(vl_chave) do
    begin
      Field := Funcao.RetornaValorEField(vl_chave[i], 2) ;
      vl := Funcao.RetornaValorEField(vl_chave[i], 1);

      //se o i for igual a zero não coloca a vírgula
      if i = 0 then
        where := ' WHERE ' + Field + ' = ' + quotedstr(vl)
      else
        where := where + ' AND ' + Field + ' = ' + quotedstr(vl);
    end;

    tab.Active := false;
    tab.CommandText := 'SELECT MAX(' + campo + ') ' + campo + ' FROM ' + nome_tabela;
    if trim(where) <> '' then
      tab.CommandText := tab.CommandText + ' ' + where;
    tab.Active := true;
    if trim(tab.FieldByName(campo).AsString) = '' then
      valor := 1
    else
      valor := tab.FieldByName(campo).AsInteger + 1;
    tabela.FieldByName(campo).NewValue := valor;      
  end;

  Result := Valor;
end;
//*****************************************************************************/
procedure TFrmCadPadrao.IniciaTabela;
var
  order, sql : string;
begin
  Tabelas[0].Active := false;
  sql := SqlPadrao.Strings[0];
  order := '';
  if empFiscal or empCont then
  begin
    if pos('ORDER', UpperCase(sql)) > 0 then
    begin
      order := copy(sql, pos('ORDER', UpperCase(sql)), Length(sql));
      sql := copy(sql, 1, pos('ORDER', UpperCase(sql))-1);
    end;

    if pos('WHERE', UpperCase(sql)) > 0 then
      sql := sql + ' AND ' + tab_chave + '.idEmpresa = ' +
            (Formulario.FindComponent('cdsEmpresa') as TClientDataset).FieldByName('idEmpresa').AsString
    else
      sql := sql + ' WHERE ' + tab_chave + '.idEmpresa = ' +
            (Formulario.FindComponent('cdsEmpresa') as TClientDataset).FieldByName('idEmpresa').AsString;
    if empFiscal then
      sql := sql + ' AND ' + tab_chave + '.idCadEmpresa = ' +
            (Formulario.FindComponent('cdsEmpresa') as TClientDataset).FieldByName('idCadEmpresa').AsString;
    sql := sql + ' ' + order;
  end;
  Tabelas[0].CommandText := sql;
//  showmessage(sql);
  Tabelas[0].Active := true;
  Tabelas[0].EnableControls;
end;
//*****************************************************************************/
function TFrmCadPadrao.BuscaChaveGrid(Tabela: TClientDataSet; vl_chave: Array of TObject): Boolean;
//verifica os campos da chave para trazer os registros
var
  i : integer;
  Field, Fields, valor : string;
  vl_indice : Variant;
  temnulo : boolean;
begin
  valor := '';
  Fields := '';
  temnulo := false;
  Result := false;

  Tabela.EnableControls;
  vl_indice := VarArrayCreate([0,high(vl_chave)], VarOleStr);

  for i := 0 to High(vl_chave) do
  begin
    valor := Funcao.RetornaValorEField(vl_chave[i], 1);
    Field := Funcao.RetornaValorEField(vl_chave[i], 2);

    if trim(valor) = '' then
      temnulo := true;

    vl_indice[i] := valor;
    if Trim(Fields) = '' then
      Fields := Field
    else
      Fields := Fields + ';' + Field;
  end;

  if not Tabela.Active then
    Tabela.Active := true;

  if Tabela.State in [dsInsert, dsEdit] then
    Tabela.Cancel;

  if ((Formulario.FindComponent('BtnFechar') as TCBitBtn).Focused)
    or ((Formulario.FindComponent('BtnPesquisar') as TCBitBtn).Focused)
    or ((Formulario.FindComponent('BtnCancelar') as TCBitBtn).Focused)    
    or ((Formulario.FindComponent('BtnNovo') as TCBitBtn).Focused) then
  begin
    Result := true;
    exit;
  end;

  if temnulo then
    tabela.Append
  else
    if not Tabela.Locate(Fields, vl_indice, []) then
    begin
      IniciaTabela;
      Tabela.Append;
    end
    else
      Result := true;

  if tabela.State in [dsInsert] then
    for i := 0 to high(chave) do
      Tabela.FieldByName(Funcao.RetornaValorEField(vl_chave[i], 2)).AsString := vl_indice[i];
end;

//*****************************************************************************/
function TFrmCadPadrao.BuscaChaveSec(Tabela: TClientDataSet; vl_chave: Array of TObject): Boolean;
//verifica os campos da chave para trazer os registros
var
  i : integer;
  Field, Fields, valor : string;
  vl_indice : Variant;
  temnulo : boolean;
begin
  valor := '';
  Fields := '';
  temnulo := false;

  vl_indice := VarArrayCreate([0,high(vl_chave)], VarOleStr);

  for i := 0 to High(vl_chave) do
  begin
    valor := Funcao.RetornaValorEField(vl_chave[i], 1);
    Field := Funcao.RetornaValorEField(vl_chave[i], 2);

    if trim(valor) = '' then
      temnulo := true;

    vl_indice[i] := valor;
    if Trim(Fields) = '' then
      Fields := Field
    else
      Fields := Fields + ';' + Field;
  end;

  if ((Formulario.FindComponent('BtnFechar') as TCBitBtn).Focused)
    or ((Formulario.FindComponent('BtnPesquisar') as TCBitBtn).Focused)
    or ((Formulario.FindComponent('BtnCancelar') as TCBitBtn).Focused)
    or ((Formulario.FindComponent('BtnNovo') as TCBitBtn).Focused) then
  begin
    result := true;
    exit;
  end;

  if temnulo then
  begin
    result := false;
    exit;
  end
  else
  begin
    if Tabela.State in [dsInsert, dsEdit] then
      Tabela.Cancel;
    if not Tabela.Locate(Fields, vl_indice, []) then
    begin
      Tabela.Append;
      Result := false;
    end
    else
      Result := true;
  end;

  if tabela.State in [dsInsert] then
    for i := 0 to high(vl_chave) do
      Tabela.FieldByName(Funcao.RetornaValorEField(vl_chave[i], 2)).AsString := vl_indice[i];
end;

//*****************************************************************************/
//  FIM DOS PROCEDIMENTOS CUSTOMIZADOS
//*****************************************************************************/

procedure TFrmCadPadrao.actCancelarExecute(Sender: TObject);
//botão cancelar
begin
  inherited;
  tabelas[0].Cancel;
  LimpaEdits;
  if not Grid then  
    SqlInicial(0)
  else
    IniciaTabela;
  (Formulario.FindComponent('PagAbas') as TCPageControl).ActivePageIndex := 0;
  if Assigned(foco) then  
    foco.SetFocus;
end;

procedure TFrmCadPadrao.actExcluirExecute(Sender: TObject);
//botão excluir
var
  i : integer;
begin
  inherited;
  if Trim(situacao) = '' then //não é por situação
  begin
    if messagedlg('Deseja realmente excluir o registro selecionado?', mtconfirmation, [mbyes, mbno], 0, mbno) = mryes then
    begin
      for i := 1 to high(tabelas) do
      begin
        //exclui os registros
        with tabelas[i] do
        begin
          First;
          While not Eof do
            Delete;
          ApplyUpdates(0);          
        end;
      end;
      tabelas[0].Delete;
      tabelas[0].ApplyUpdates(0);
      LimpaEdits;
      (Formulario.FindComponent('PagAbas') as TCPageControl).ActivePageIndex := 0;
      if Assigned(foco) then      
        foco.SetFocus;
    end;
  end //if Trim(situacao) = '' then //não é por situação
  else
  begin
    if messagedlg('O registro será cancelado! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0, mbno) = mryes then
    begin
      tabelas[0].Edit;
      if trim(situacaoX) = '' then
        Tabelas[0].FieldByName(situacao).AsString := 'X'
      else
        Tabelas[0].FieldByName(situacao).AsString := situacaoX;      
      for i := 0 to high(tabelas) do
      begin
        if tabelas[i].State in [dsEdit, dsInsert] then        
          Tabelas[i].Post;
        Tabelas[i].ApplyUpdates(0);
      end;
    end;
  end;
end;

procedure TFrmCadPadrao.actNovoExecute(Sender: TObject);
//botão novo
var
  i : integer;
begin
  inherited;
  if not VerificaState then
    exit;
  if Grid then
    IniciaTabela
  else
    for i := 0 to high(tabelas) do
      SqlInicial(i);
  Tabelas[0].EnableControls;
  Tabelas[0].Append;
  LimpaEdits;
  (Formulario.FindComponent('PagAbas') as TCPageControl).ActivePageIndex := 0;
  if Assigned(foco) then
    foco.SetFocus;
end;

procedure TFrmCadPadrao.actPesquisarExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  if Assigned(FindPesquisa) then
  begin
    FindPesquisa.ShowModal;
    if (trim(Tabelas[0].FieldByName(FindPesquisa.ValueField).AsString) <>  trim(findpesquisa.Value)) and (trim(FindPesquisa.Value) <> '') then
    begin
      if Tabelas[0].State in [dsEdit, dsInsert] then
        Tabelas[0].Cancel;
      if Grid then
        IniciaTabela
      else
        for i := 0 to high(Tabelas) do
          SqlInicial(i);
      Tabelas[0].Edit;
//      showmessage(findpesquisa.Value);
      Tabelas[0].FieldByName(FindPesquisa.ValueField).AsString := FindPesquisa.Value;
      (formulario.FindComponent('PagAbas') as TCPageControl).ActivePageIndex := 0;
      if Assigned(foco) then
        foco.SetFocus;
    end;
  end;
end;

procedure TFrmCadPadrao.actSalvarExecute(Sender: TObject);
//botão Salvar
var
  i : integer;
begin
  inherited;
  //  Tabelas[0].DisableControls;
  if (Trim(situacao) <> '') and (Trim(situacaoA) <> '') then
  begin
    if (Tabelas[0].FieldByName(situacao).AsString <> situacaoA) and (Tabelas[0].FieldByName(situacao).AsString = situacaoX) then
      if messagedlg('Deseja ativar o cadastro?', mtconfirmation, [mbyes, mbno], 0, mbyes) = mryes  then
        Tabelas[0].FieldByName(situacao).AsString := situacaoA;
  end;
  for i := 0 to high(tabelas) do
  begin
    if tabelas[i].Active then
    begin
      if tabelas[i].State in [dsEdit, dsInsert] then
        Tabelas[i].Post;
     
      Tabelas[i].ApplyUpdates(0);
    end;
  end;

  if not Grid then
    BuscaChave(Tabelas[0], chave)
  else
    BuscaChaveGrid(Tabelas[0], chave);  
  AbreTabSecundaria;
  if Assigned((Formulario.FindComponent('BtnNovo') as TCBitBtn)) then
    if ((Formulario.FindComponent('BtnNovo') as TCBitBtn).Enabled) and ((Formulario.FindComponent('BtnNovo') as TCBitBtn).Visible) then
      (Formulario.FindComponent('BtnNovo') as TCBitBtn).SetFocus;
end;

procedure TFrmCadPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ((formulario.FindComponent('cdsPadrao') as TClientDataSet).State in [dsEdit, dsInsert]) then
    if funcao.VerificaAlteracoes(tabelas) then
    begin
      if messagedlg('Deseja sair sem salvar?', mtconfirmation, [mbyes, mbno], 0, mbno) = mrno then
      begin
        Action := caNone;
        exit;
      end
      else
        Tabelas[0].Cancel;
    end;
  Tabelas[0].Active := false;
  inherited;
  sqlpadrao.Free;
end;

procedure TFrmCadPadrao.FormCreate(Sender: TObject);
begin
  //inicia as variáveis dinâmicas com o tamanho 1 pode-se aumentar depois diretamente no form
  SetLength(Tabelas, 1);
  SetLength(chave, 1);
  SetLength(exceto, 1);
  situacao := '';
  sqlpadrao := TStringList.Create;
  Grid := false;
  empFiscal := false;
  empCont := false;
  inherited;
end;

procedure TFrmCadPadrao.FormShow(Sender: TObject);
var
  i : integer;
begin
  inherited;
  //atualiza o sqlpadrao
//  setlength(sqlpadrao, high(tabelas));
  for i := 0 to high(tabelas) do
  begin
    sqlpadrao.Add(Tabelas[i].CommandText);
    if Grid then
      IniciaTabela
    else
      SqlInicial(i);
  end;
  if Assigned(foco) then
  begin
    foco.TabStop := false;
    foco.SetFocus;
  end;
  if Trim(situacao) <> '' then // é por situação
  begin
    actExcluir.Caption := '&Cancelar';
    actCancelar.Caption := '&Desfazer';
  end;
end;

procedure TFrmCadPadrao.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.Name = Tabelas[0].Name then
  begin
    if (trim(situacao) <> '') and (trim(situacaoA) <> '') then
      if Tabelas[0].FieldByName(situacao).AsString = '' then
        Tabelas[0].FieldByName(situacao).AsString := situacaoA;
  end
  else
    if not (Tabelas[0].State in [dsInsert, dsEdit]) then
      if Tabelas[0].Active then
        Tabelas[0].Edit;
end;

procedure TFrmCadPadrao.cdsPadraoAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  inherited;
  for i := 0 to DataSet.FieldDefs.Count - 1 do
//    if DataSet.FieldDefs[i].DataType in [ftFMTBcd, ftBCD] then
      DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
end;

procedure TFrmCadPadrao.cdsPadraoAfterPost(DataSet: TDataSet);
var
  i, j, nulo : integer;
begin
  inherited;
  for i := 1 to High(tabelas) do
    if tabelas[i].State in [dsEdit, dsInsert] then
    begin
      nulo := 0;
      for j := 0 to tabelas[i].FieldCount - 1 do
        if (not (tabelas[i].Fields[j].IsNull)) or (trim(tabelas[i].Fields[j].AsString) = '') then
          nulo := 1;
        if nulo = 0 then      
          tabelas[i].Cancel
        else
          funcao.UpdateChave(tabelas[i], chave);
    end;
end;

procedure TFrmCadPadrao.cdsPadraoBeforeCancel(DataSet: TDataSet);
var
  i : integer;
begin
  inherited;
  for i := High(tabelas) downto 1 do
  begin
    tabelas[i].Cancel;
    SqlInicial(i);
  end;
end;

procedure TFrmCadPadrao.cdsPadraoBeforeClose(DataSet: TDataSet);
var
  i : integer;
begin
  inherited;
  //fecha as secundarias
  for i := 1 to High(tabelas) do
    tabelas[i].Active := false;
end;

procedure TFrmCadPadrao.cdsPadraoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
//  if E.Message <> '' then
//  begin
//    Action := raRefresh;
//    raise Exception.Create(E.Message);
//  end;
  Action := HandleReconcileError(Dataset, UpdateKind, E);
  frmPrincipal.erro := 1;
end;

procedure TFrmCadPadrao.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  if (Sender as TDataSource).Name = 'dsPadrao' then
    HabilitaBotoes((Sender as TDataSource).DataSet);
end;

procedure TFrmCadPadrao.dspPadraoBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  DmPadrao.dbConexao.CloseDataSets;
end;

end.
