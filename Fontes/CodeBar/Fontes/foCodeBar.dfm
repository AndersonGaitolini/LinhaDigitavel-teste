object foGeraCodeBar: TfoGeraCodeBar
  Left = 0
  Top = 0
  Caption = 'Gera C'#243'digo de Barras - by Anderson Gaitolini'
  ClientHeight = 168
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imgCodeBar: TImage
    Left = 28
    Top = 58
    Width = 406
    Height = 85
    AutoSize = True
  end
  object btnGeraCode: TButton
    Left = 359
    Top = 29
    Width = 75
    Height = 25
    Caption = 'Gera c'#243'digo'
    TabOrder = 0
    OnClick = btnGeraCodeClick
    OnKeyPress = btnGeraCodeKeyPress
  end
  object edCodeMask: TMaskEdit
    Left = 28
    Top = 31
    Width = 323
    Height = 21
    EditMask = '00000.00000 00000.000000 00000.000000 0 00000000000000;0;_'
    MaxLength = 54
    TabOrder = 1
    Text = ''
  end
end
