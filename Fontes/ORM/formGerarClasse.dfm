object frmGeraClasse: TfrmGeraClasse
  Left = 0
  Top = 0
  Caption = 'ORM-Anderson Gaitolini: Gerar Classe'
  ClientHeight = 491
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbTabelas: TListBox
    Left = 0
    Top = 25
    Width = 265
    Height = 425
    Style = lbOwnerDrawFixed
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 25
    Items.Strings = (
      'Tabela 1'
      'Tabela 2'
      'Tabela 3')
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 450
    Width = 817
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnSalvar: TButton
      Left = 76
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnSair: TButton
      Left = 741
      Top = 1
      Width = 75
      Height = 39
      Align = alRight
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btnSairClick
    end
    object btnGerar: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Gerar'
      TabOrder = 2
      OnClick = btnGerarClick
    end
  end
  object memResult: TMemo
    Left = 265
    Top = 25
    Width = 552
    Height = 425
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 25
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 265
      Top = 1
      Width = 551
      Height = 23
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Fonte.pas'
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitWidth = 473
    end
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 264
      Height = 23
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = 'Tabelas'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
  end
  object Salvar: TSaveDialog
    Filter = '*.pas|Delphi File'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Salvar a Entidade Objeto'
    Left = 703
    Top = 3
  end
end
