unit uFrmPadraoImpressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CGroupBox, CRadioButton, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, DB, DBClient, Provider, FMTBcd, SqlExpr, ImgList, ActnList,
  RDprint, CCheckBox;

type
  TFrmPadraoImpressao = class(TForm)
    CGroupBox1: TCGroupBox;
    RBMatricial: TCRadioButton;
    RBLaser: TCRadioButton;
    PanBotoes: TCPanelGradient;
    BtnSalvar: TCBitBtn;
    BtnFechar: TCBitBtn;
    Bevel1: TBevel;
    dspTabela: TDataSetProvider;
    cdsTabela: TClientDataSet;
    dspCampos: TDataSetProvider;
    cdsCampos: TClientDataSet;
    sdsCampos: TSQLDataSet;
    sdsTabela: TSQLDataSet;
    Acao: TActionList;
    actFechar: TAction;
    ImgBotoes: TImageList;
    actImprimir: TAction;
    CHKPreview: TCCheckBox;
    sdsRelatorio: TSQLDataSet;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    RDprint1: TRDprint;
    procedure actFecharExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AbreRel;
    procedure ImpRel(cont: integer; col: integer);
    function RetTracoSimples(tamanho: integer): string;
    function RetCampos(campo: string): TStringList;
    procedure GeraTracos(lista: string);
    procedure ImpMatricial;
    procedure GeraRelCrystal;
  private
    { Private declarations }
    incCont, tab : integer;
  public
    { Public declarations }
    idRelMatricial : Array of integer; //foi definida assim pelo fato de um relatório ter vários grupos
    tabelas : Array of TClientDataSet; //para trabalhar com várias tabelas, terá que acompanhar no numero de
                                       //grupo do idRelMatricial, mesmo que repetida por exemplo. Diga-se que
                                       //a tabela do grupo 1 e 2 são a mesma então deve-se inicializar assim:
                                       // Tabelas[0] := cdsTabEscolhida;  Tabelas[1] := cdsTabEscolhida
                                       //repete na segunda a primeira
                                       //lembrando de seguir a ordem do cadastro de grupos
    Formulario : TForm;
    relCrystal : string;
    parametro : array of string;
//    Prn : TRDPrint;
//    cds : TClientDataSet;
  end;

var
  FrmPadraoImpressao: TFrmPadraoImpressao;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TFrmPadraoImpressao.AbreRel;
begin
    with RDPrint1 do
    begin
//      if not SetPrinterbyPorta(cdsRelatorio.FieldByName('descPorta').AsString) then
      if not SetPrinterbyName('Epson') then
      begin
        messagedlg('Erro ao abrir a porta de impressão!', mterror, [mbok], 0);
        RDPrint1.Abortar;
        exit;
      end;
      OpcoesPreview.Preview := (Formulario.FindComponent('CHKPreview') as TCCheckBox).Checked;
      UsaGerenciadorImpr           := True;
      OpcoesPreview.PreviewZoom    := -1;
      TamanhoQteLPP       := TLinha(cdsRelatorio.FieldByName('avanco').AsInteger);
      try
        case cdsRelatorio.FieldByName('avanco').AsInteger of
          0 : FonteTamanhoPadrao := S10cpp;
          1 : FonteTamanhoPadrao := S12cpp;
          2 : FonteTamanhoPadrao := S17cpp;
          3 : FonteTamanhoPadrao := S20cpp;
        end;
        TamanhoQteLinhas    := cdsRelatorio.FieldByName('qtLinhas').AsInteger;
        TamanhoQteColunas   := cdsRelatorio.FieldByName('qtColunas').AsInteger;
      except
        messagedlg('Valores inválidos...', mterror, [mbok], 0);
        RDPrint1.Abortar;
        exit;
      end;
      Abrir;
   end;
end;

procedure TFrmPadraoImpressao.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmPadraoImpressao.actImprimirExecute(Sender: TObject);
begin
  if (RBMatricial.Enabled) and (RBMatricial.Checked) then
    ImpMatricial
  else
    GeraRelCrystal;
end;

procedure TFrmPadraoImpressao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPadraoImpressao.FormCreate(Sender: TObject);
begin
  SetLength(tabelas, 1);
  Formulario := (Sender as TForm);
  SetLength(idRelMatricial, 1);
  idRelMatricial[0] := 0;
  SetLength(parametro, 1);
  relCrystal := '';  
end;

procedure TFrmPadraoImpressao.FormShow(Sender: TObject);
begin
  if idRelMatricial[0] = 0 then
    RBMatricial.Enabled := false;
  if trim(relCrystal) = '' then
    RBLaser.Enabled := false;
//  Prn := (Formulario.FindComponent('Print') as TRDPrint);
//  cds := (Formulario.FindComponent('Tabelas[tab]') as TClientDataSet);
//  (Formulario.FindComponent('CHKPreview') as TCCheckBox).Checked := true;
  CHKPreview.Checked := true;
end;

procedure TFrmPadraoImpressao.GeraTracos(lista: string);
var
  LTracoIni, LTracoFim, CTracoIni, CTracoFim, i : integer;
  traco, tracoduplo : boolean;
begin
  traco := false;
  tracoduplo := cdsRelatorio.FieldByName('tipoTraco').AsString = 'LINHA DUPLA';
  LTracoIni := 0;
  LTracoFim := 0;  
  //Inicia a Definição de traços
  if cdsRelatorio.FieldByName('impTraco').AsString <> 'NENHUM' then
  begin
    traco := true;
    if cdsRelatorio.FieldByName('impTraco').AsString = 'CAIXA' then
    begin
      cdsCampos.first; // a linha inicial é uma a menos que a linha inicial da primeira linha dos campos
      LTracoIni := cdsCampos.FieldByName('linha').AsInteger - 1;
      if lista <> 'S' then //se não for lista
      begin
        cdsCampos.Last; //e a final é 1 a mais que a ultima
        LTracoFim := cdsCampos.FieldByName('linha').AsInteger + 1;
      end
      else //se for lista tem que contar a quantidade de linhas
        LTracoFim := LTracoIni + Tabelas[tab].RecordCount + 1;
    end
    else
      if cdsRelatorio.FieldByName('impTraco').AsString = 'ENTRE LINHAS' then
      begin
        cdsCampos.first; // a linha inicial será uma depois da primeira e a final a mesma
        LTracoIni := cdsCampos.FieldByName('linha').AsInteger + 1;
        LTracoFim := LTracoIni;
        incCont := 2;
      end
      else
        if cdsRelatorio.FieldByName('impTraco').AsString = 'INICIO' then
        begin //não muda se for lista
          cdsCampos.first; // a linha inicial é uma a menos que a linha inicial da primeira linha dos campos
          LTracoIni := cdsCampos.FieldByName('linha').AsInteger - 1;
          LTracoFim := LTracoIni;
        end
        else
          if cdsRelatorio.FieldByName('impTraco').AsString = 'FINAL' then
          begin
            if lista <> 'S' then
            begin
              cdsCampos.Last; // a linha inicial é uma a mais que a linha final dos campos
              LTracoIni := cdsCampos.FieldByName('linha').AsInteger + 1;
            end
            else //se for lista tem que contar a quantidade de linhas
              LTracoIni := LTracoIni + Tabelas[tab].RecordCount + 1;
              LTracoFim := LTracoIni;
           end;
   end; //fim do //Inicia a Definição de traços
      //******************************************************************************************/
      //Gera os Traços
      if traco then
      begin
        CTracoIni := cdsRelatorio.FieldByName('iniTraco').AsInteger;
        CTracoFim := cdsRelatorio.FieldByName('tamTraco').AsInteger + CTracoIni;
  //      'ENTRE LINHAS'
        //Inicio e fim
        if (cdsRelatorio.FieldByName('impTraco').AsString = 'INICIO') OR (cdsRelatorio.FieldByName('impTraco').AsString = 'FINAL') then
        begin
          if cdsRelatorio.FieldByName('tipoTraco').AsString <> 'SIMPLES'  then
            RDPrint1.LinhaH(LTracoIni,CTracoIni,CTracoFim,0,TracoDuplo) //Traco duplo é variável booleana definida no inicio
          else
            RDPrint1.Imp(LTracoIni, CTracoIni, RetTracoSimples(cdsRelatorio.FieldByName('tamTraco').AsInteger));
        end //fim do if (cdsRelatorio.FieldByName('impTraco').AsString = 'INICIO') OR (cdsRelatorio.FieldByName('impTraco').AsString = 'FINAL') then
        else
          if (cdsRelatorio.FieldByName('impTraco').AsString = 'CAIXA') then
          //quando for caixa será usado o LTracoFim
          begin
              if cdsRelatorio.FieldByName('tipoTraco').AsString <> 'SIMPLES'  then
              begin
                RDPrint1.LinhaH(LTracoIni,CTracoIni,CTracoFim,1,TracoDuplo);
                RDPrint1.LinhaH(LTracoFim,CTracoIni,CTracoFim,2,TracoDuplo);
                RDPrint1.LinhaV(CTracoIni, LTracoIni + 1, LTracoFim - 1, 0, TracoDuplo);
                RDPrint1.LinhaV(CTracoFim, LTracoIni + 1, LTracoFim - 1, 0, TracoDuplo);
              end
              else
              begin
                //Gera o traço inicial
                RDPrint1.Imp(LTracoIni, CTracoIni, '+' + RetTracoSimples(cdsRelatorio.FieldByName('tamTraco').AsInteger-2) + '+');
                for i := LTracoIni + 1 to LTracoFim -1 do
                begin
                  RDPrint1.Imp(i, CTracoIni, '|');
                  RDPrint1.Imp(i, CTracoFim, '|');
                end; //fim  do for I := LTracoIni to LTracoFim do
                //Gera o traço final
                RDPrint1.Imp(LTracoFim, CTracoIni, '+' + RetTracoSimples(cdsRelatorio.FieldByName('tamTraco').AsInteger-2) + '+');
              end;
          end; // if (cdsRelatorio.FieldByName('impTraco').AsString = 'CAIXA') then
      end;
end;

procedure TFrmPadraoImpressao.ImpMatricial;
var
  i, cont, linha, coluna, col : integer;
  sql, lista : string;
begin
    //terá que abrir o relatório
    sql := '';
    //inclui na variável sql o grupo do relatório
    for i := 0 to high(idRelMatricial) do
    begin
      if i = 0 then
        sql := intToStr(idRelMatricial[i])
      else
       sql := sql + ', ' + intToStr(idRelMatricial[i]);
    end;

    if trim(sql) = '' then
    begin
      messagedlg('Relatório sem parâmetros definidos! Abortado!', mtwarning, [mbok], 0);
      exit;
    end;
    with cdsRelatorio do
    begin
      Active := False;
      CommandText := 'SELECT * FROM RelMatricial WHERE idRelMatricial IN (' + sql + ')' +
                     ' ORDER BY ordem, idRelMatricial';
      Active := true;
      First;
      AbreRel;
    end;

    tab := 0;
    while not cdsRelatorio.Eof do
    begin
      cont := 0;
      lista := cdsRelatorio.FieldByName('lista').AsString;

      incCont := 1; //incrementador da variável cont... campo que definirá a impressão de linhas entre os campos
      linha := 0;
      coluna := 0;
      col := 0;
      //Inicia lançando os campos //gera agora antes de entrar no loop da tabela
      cdsCampos.Active := false;
      cdsCampos.CommandText := 'SELECT * FROM RelMatricialCampo WHERE idRelMatricial = ' +
                               cdsRelatorio.FieldByName('idRelMatricial').AsString +
                               ' AND imprime = ' + QuotedStr('S') + ' ORDER BY linha, coluna';
      cdsCampos.Active := true;

      //Gera os Traços
      GeraTracos(lista);

      //independente da etapa sempre começará no inicio da tabela.
      Tabelas[tab].Active := false;
      Tabelas[tab].Active := true;
      Tabelas[tab].First;
      while not Tabelas[tab].Eof do
      begin
        ImpRel(cont, col);
        if lista = 'S' then
        begin
          Tabelas[tab].Next;
          Cont := Cont + incCont;
        end
        else
          Tabelas[tab].Last;
        linha := linha + 1;
        if (cdsRelatorio.FieldByName('maxLinhas').AsInteger > 0) and (lista = 'S')
            and (cdsRelatorio.FieldByName('maxLinhas').AsInteger = linha) then
          if cdsRelatorio.FieldByName('decisao').AsString = 'NENHUM' then
            Tabelas[tab].Last //como não tem decisão ao tomar e está no máximo de linha... finaliza a lista
          else
            if cdsRelatorio.FieldByName('decisao').AsString = 'NOVA COLUNA' then
            begin
              if (not (cdsRelatorio.FieldByName('maxColunas').AsInteger > 1)) or (not (cdsRelatorio.FieldByName('tamColunas').AsInteger > 0)) then
              begin
                messagedlg('Erro na configuração do Relatório!' + #13 +
                           'Para essa opção o número de colunas deve ser maior que 1 e ' + #13 +
                           'A distância entre elas maior que 0!', mterror, [mbok], 0) ;
                RDPrint1.Abortar;
                exit;
              end
              else //se estiver tudo configurado edita a coluna do cdsCampos
              begin
                Cont := 0; //zera o contador...
                col := col + cdsRelatorio.FieldByName('tamColunas').AsInteger;
                coluna := coluna + 1;
                if cdsRelatorio.FieldByName('maxColunas').AsInteger = coluna then
                  Tabelas[tab].Last;
                linha := 0;
              end; //fim do else do max colunas
            end; //fim do if cdsRelatorio.FieldByName('decisao').AsString = 'NOVA COLUNA' then
      end; // fim do while Tabelas[tab].eof do
      cdsRelatorio.Next;
    end; // while not cdsRelatorio.Eof do
end;

procedure TFrmPadraoImpressao.ImpRel(cont: integer; col: integer);
var
  existe, tracoduplo : boolean;
  i, c, linha, coluna : integer;
  Fonte : TFonte;
  vlCampo, mascara : String;
  vlCampoM : Double;
  campos : TStringList;
begin
  vlCampoM := 0;
  tracoduplo := cdsRelatorio.FieldByName('tipoTraco').AsString = 'LINHA DUPLA';
  With RDPrint1 do
  begin
    cdsCampos.First;
    while not cdsCampos.eof do
    begin
      //procura o campo na tabela de dados se existir atribui o valor dele senão ele mesmo será o valor
      //pega o numero da linha e coluna
      linha := cdsCampos.FieldByName('linha').AsInteger + cont; //soma o cont para o caso de lista
      coluna := cdsCampos.FieldByName('coluna').AsInteger + col;
      mascara := cdsCampos.FieldByName('mascara').AsString;

      if cdsCampos.FieldByName('tipoCampo').AsString = 'CAMPO' then
      begin
        //primeiro verifica se é um campo com concatenação
        if pos('+', trim(cdsCampos.FieldByName('descCampo').AsString)) > 0 then
        begin //existe então é um campo de concatenação
          campos := TStringList.Create;
          campos.Clear;
          campos.Text := RetCampos(trim(cdsCampos.FieldByName('descCampo').AsString)).Text;
          vlCampo := '';
          for c := 0 to campos.Count - 1 do
          begin
            existe := false;
            for i := 0 to Tabelas[tab].FieldDefs.Count - 1 do
              if trim(UpperCase(Tabelas[tab].FieldDefs[i].DisplayName)) = trim(UpperCase(campos.Strings[c])) then
                existe := true;

            if existe then
               vlCampo := vlCampo + Tabelas[tab].FieldByName(trim(campos.Strings[c])).AsString
            else
               vlCampo := vlCampo + campos.Strings[c];
          end; //fim do for c := 0 to RetCampos(trim(cdsCampos.FieldByName('descCampo').AsString)).Count - 1 do
          campos.Free;
        end //fim do if pos('+', trim(cdsCampos.FieldByName('descCampo').AsString)) > 0 then
        else
        begin
          if trim(cdsCampos.FieldByName('descCampo').AsString) = '[]' then //significa que é para dar espaço
            vlCampo := ''
          else
            if trim(cdsCampos.FieldByName('descCampo').AsString) = '[hora]' then //significa que é a hora exata
              vlCampo := TimeToStr(time)
          else
          begin
            existe := false;
            for i := 0 to Tabelas[tab].FieldDefs.Count - 1 do
              if trim(UpperCase(Tabelas[tab].FieldDefs[i].DisplayName)) = trim(UpperCase(cdsCampos.FieldByName('descCampo').AsString)) then
                existe := true;

            if existe then
              vlCampo := Tabelas[tab].FieldByName(cdsCampos.FieldByName('descCampo').AsString).AsString
            else
              vlCampo := cdsCampos.FieldByName('descCampo').AsString;
          end; //fim do else do espaço
        end; //fim do else de campo
        //Configura a Fonte
        Fonte := [];
        case cdsCampos.FieldByName('tamFonte').AsInteger of
          0 : Fonte := [normal];
          1 : Fonte := [comp12];
          2 : Fonte := [comp17];
          3 : Fonte := [comp20];
        end;
        if cdsCampos.FieldByName('negrito').AsString = 'S' then
          Fonte := Fonte + [negrito];
        if cdsCampos.FieldByName('italico').AsString = 'S' then
          Fonte := Fonte + [italico];
        if cdsCampos.FieldByName('sublinhado').AsString = 'S' then
          Fonte := Fonte + [sublinhado];
        if cdsCampos.FieldByName('expandido').AsString = 'S' then
          Fonte := Fonte + [expandido];

         if trim(mascara) = '[Data]' then //Campo data
        begin
          if vlCampo <> '' then
            vlCampo := FormatDateTime('dd/mm/yyyy', strtodate(vlCampo));
        end;

        if trim(mascara) <> '' then
          try
            vlCampoM := StrToFloat(vlCampo);
          except
            mascara := '';
          end;

        if (trim(mascara) <> '') then
        begin
          mascara := cdsCampos.FieldByName('mascara').AsString;
          impval(linha, coluna, mascara, vlCampoM, Fonte);
        end
        else
          if cdsCampos.FieldByName('descAlinhamento').AsString = 'DIREITA' then
          begin
            impD(linha, coluna, vlCampo, Fonte);
          end
          else
            if cdsCampos.FieldByName('descAlinhamento').AsString = 'CENTRALIZADO' then
              impC(linha, coluna, vlCampo, Fonte)
            else
              if Fonte = [] then
                imp(linha, coluna, vlCampo)
              else
                impF(linha, coluna, vlCampo, Fonte);
      end  // fim do if cdsCampos.FieldByName('tipoCampo').AsString = 'CAMPO' then
      else
        if cdsCampos.FieldByName('tipoCampo').AsString = 'TRACO HORIZONTAL' then
        begin
          if cdsRelatorio.FieldByName('tipoTraco').AsString <> 'SIMPLES'  then
            LinhaH(linha,coluna,cdsCampos.FieldByName('tamTraco').AsInteger+coluna,0,TracoDuplo) //Traco duplo é variável booleana definida no inicio
          else
            if cdsCampos.FieldByName('conexao').AsString = 'S' then
              Imp(linha, coluna, '+' + RetTracoSimples(cdsCampos.FieldByName('tamTraco').AsInteger)+'+')
            else
              Imp(linha, coluna, RetTracoSimples(cdsCampos.FieldByName('tamTraco').AsInteger));            
        end
        else
          if cdsCampos.FieldByName('tipoCampo').AsString = 'TRACO VERTICAL' then
          begin
            if cdsRelatorio.FieldByName('tipoTraco').AsString <> 'SIMPLES'  then
              LinhaV(coluna,linha, cdsCampos.FieldByName('tamTraco').AsInteger+linha,0,TracoDuplo) //Traco duplo é variável booleana definida no inicio
            else
            begin
              for i := 0 to cdsCampos.FieldByName('tamTraco').AsInteger -1 do
                Imp(linha+i, coluna, '|');
              if cdsCampos.FieldByName('conexao').AsString = 'S' then
              begin
                Imp(linha+cdsCampos.FieldByName('tamTraco').AsInteger, coluna, '+');
                Imp(linha-1, coluna, '+');
              end;
            end;
          end;

      cdsCampos.Next;
    end; // fim do while not cdscampos.eof do
  end; //fim do   With RDPrint1 do
end;

function TFrmPadraoImpressao.RetCampos(campo: string): TStringList;
//função que buscará concatenação de campos procurando pelo +
var
  i : integer;
  res : string;
begin
  Result := TStringList.Create;
  Result.Clear;
  res := '';
  for i := 1 to length(campo) do
  begin
    if (campo[i] <> '+') then
      res := res + campo[i]
    else
    begin
      Result.Add(res);
      res := '';
    end;
  end;
  Result.Add(res);
end;

function TFrmPadraoImpressao.RetTracoSimples(tamanho: integer): string;
//função que irá retornar o número de traços '-' para fazer uma linha
var
  i : integer;
  t : string;
begin
  t := '';
  for i := 0 to tamanho do
    t := t + '-';
  Result := t;
end;

procedure TFrmPadraoImpressao.GeraRelCrystal;
//var
//  i : integer;
begin
{
  With dmPadrao.CrystalRel do
  begin
//    ReportName := DmPadrao.RetornaConfig('caminho_relCR') + relCrystal;
    ReportName := relCrystal;
//    Showmessage(ReportName);
//    exit;
    ParamFields.Clear;
    Refresh;
    for i := 0 to high(parametro) do
    begin
//      ShowMessage(RetornaValor(parametro[i]));
      ParamFields.Items[i].CurrentValue := parametro[i] ;
    end;
  end;
  try
    with dmPadrao.CrystalRel.Connect do
    begin
      DatabaseName := dmPadrao.dbConexao.Params.Values['Database'] ;//Base de dados no banco
      ServerName := dmPadrao.dbConexao.Params.Values['HostName'];  //Nome do Servidor de dados
      UserID := dmPadrao.dbConexao.Params.Values['User_Name'];     //usuário do banco
      Password := dmPadrao.dbConexao.Params.Values['Password'];    //Senha do usuario no banco
      Propagate := True;
      dmPadrao.CrystalRel.Execute;
    end;
  except
    raise Exception.Create(dmPadrao.CrystalRel.LastErrorString);;
  end;}
end;

end.
