object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 617
  ClientWidth = 973
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 24
  object Button1: TButton
    Left = 224
    Top = 350
    Width = 233
    Height = 41
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 224
    Top = 312
    Width = 233
    Height = 32
    ItemIndex = 0
    TabOrder = 1
    Text = 'Simples Nacional'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Simples Nacional'
      'Lucro Presumido'
      'Lucro Real')
  end
  object Memo1: TMemo
    Left = 496
    Top = 8
    Width = 321
    Height = 585
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 40
    Top = 424
    Width = 185
    Height = 32
    TabOrder = 3
    Text = '10'
  end
  object Button2: TButton
    Left = 40
    Top = 462
    Width = 185
    Height = 43
    Caption = 'Button2'
    TabOrder = 4
    OnClick = Button2Click
  end
end
