inherited FrmRelCredencial: TFrmRelCredencial
  Caption = 'Imprime Credenciais'
  ClientHeight = 116
  ClientWidth = 290
  ExplicitWidth = 298
  ExplicitHeight = 150
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 290
    ExplicitLeft = -8
    ExplicitTop = 202
    ExplicitWidth = 514
  end
  inherited Bevel3: TBevel
    Top = 81
    Width = 290
    ExplicitLeft = 0
    ExplicitTop = 79
    ExplicitWidth = 290
  end
  inherited PanBotoes: TCPanelGradient
    Top = 85
    Width = 290
    ExplicitTop = 85
    ExplicitWidth = 290
    inherited BtnGerar: TCBitBtn
      Top = 2
      ExplicitTop = 2
    end
    inherited BtnFechar: TCBitBtn
      Left = 206
      Top = 2
      ExplicitLeft = 206
      ExplicitTop = 2
    end
  end
  object CGroupBox1: TCGroupBox [3]
    Left = 8
    Top = 10
    Width = 273
    Height = 63
    TabOrder = 1
    object CLabel1: TCLabel
      Left = 29
      Top = 19
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo de'
    end
    object CLabel2: TCLabel
      Left = 163
      Top = 19
      Width = 6
      Height = 13
      Alignment = taRightJustify
      Caption = 'a'
    end
    object CLabel3: TCLabel
      Left = 43
      Top = 41
      Width = 114
      Height = 13
      Alignment = taRightJustify
      Caption = '* Em branco para todos'
    end
    object DBEidCredencialIni: TCDBEdit
      Left = 83
      Top = 16
      Width = 74
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCredencialIni'
      DataSource = dsCampos
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmInteger
    end
    object DBEidCredencialFim: TCDBEdit
      Left = 175
      Top = 16
      Width = 74
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCredencialFim'
      DataSource = dsCampos
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmInteger
    end
  end
  inherited imgIcones: TImageList
    Left = 328
    Top = 40
  end
  inherited Acao: TActionList
    Left = 288
    Top = 40
  end
  inherited cdsCampos: TClientDataSet
    Left = 352
    Top = 8
    object cdsCamposidCredencialIni: TIntegerField
      FieldName = 'idCredencialIni'
    end
    object cdsCamposidCredencialFim: TIntegerField
      FieldName = 'idCredencialFim'
    end
  end
  inherited dsCampos: TDataSource
    Left = 384
    Top = 8
  end
  inherited dspLookUp: TDataSetProvider
    Left = 288
    Top = 8
  end
  inherited cdsLookUp: TClientDataSet
    Left = 320
    Top = 8
  end
end
