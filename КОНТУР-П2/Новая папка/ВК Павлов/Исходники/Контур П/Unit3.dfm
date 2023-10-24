object Form3: TForm3
  Left = 537
  Top = 192
  Width = 684
  Height = 732
  Caption = #1055#1045#1056#1045#1043#1054#1042#1054#1056#1053#1040#1071' '#1058#1040#1041#1051#1048#1062#1040' '#1052#1045#1061#1040#1053#1048#1050#1040' '#1057#1058#1040#1053#1062#1048#1048' '#1057#1055#1059#1058#1053#1048#1050#1054#1042#1054#1049' '#1057#1042#1071#1047#1048
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 668
    Height = 407
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 384
      Width = 593
      Height = 13
      Caption = 
        #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':  '#1055#1088#1080' '#1087#1077#1088#1077#1076#1072#1095#1077' '#1094#1080#1092#1088#1086#1074#1099#1093' '#1082#1086#1084#1072#1085#1076' '#1084#1077#1093#1072#1085#1080#1082#1072' '#1086#1082#1086#1085#1077#1095#1085#1086#1081' '#1072#1087#1087 +
        #1072#1088#1072#1090#1091#1088#1099' '#1074#1084#1077#1089#1090#1086' '#1085#1091#1083#1103' '#1087#1077#1088#1077#1076#1072#1074#1072#1090#1100' '#1095#1080#1089#1083#1086'"10".'
    end
    object StringGrid1: TStringGrid
      Left = 1
      Top = 1
      Width = 662
      Height = 376
      Align = alTop
      ColCount = 12
      FixedCols = 0
      RowCount = 191
      TabOrder = 0
      OnDblClick = StringGrid1DblClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 472
    Width = 668
    Height = 224
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 88
      Width = 141
      Height = 13
      Caption = #1057#1087#1080#1089#1086#1082' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1082#1086#1084#1072#1085#1076':'
    end
    object StringGrid2: TStringGrid
      Left = 1
      Top = 1
      Width = 662
      Height = 80
      Align = alTop
      ColCount = 12
      FixedCols = 0
      RowCount = 2
      TabOrder = 0
      OnDblClick = StringGrid2DblClick
    end
    object ListBox1: TListBox
      Left = 1
      Top = 104
      Width = 662
      Height = 115
      Align = alBottom
      ItemHeight = 13
      TabOrder = 1
    end
    object Button2: TButton
      Left = 584
      Top = 86
      Width = 73
      Height = 17
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 416
      Top = 86
      Width = 160
      Height = 17
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1102#1102' '#1089#1090#1088#1086#1082#1091
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 668
    Height = 65
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 35
      Height = 13
      Caption = #1055#1086#1080#1089#1082':'
    end
    object Edit1: TEdit
      Left = 32
      Top = 24
      Width = 225
      Height = 24
      TabOrder = 0
      OnChange = Edit1Change
    end
    object BitBtn1: TBitBtn
      Left = 264
      Top = 24
      Width = 89
      Height = 24
      Caption = '&'#1053#1072#1081#1090#1080
      Default = True
      ModalResult = 1
      TabOrder = 1
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
  end
end
