object server_KP: Tserver_KP
  Left = 744
  Top = 197
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1077#1088#1074#1077#1088' '#1050#1086#1085#1090#1091#1088' '#1055'-2'
  ClientHeight = 627
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 129
    Height = 13
    Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '#1074' '#1089#1077#1090#1080':'
  end
  object Label2: TLabel
    Left = 16
    Top = 264
    Width = 118
    Height = 13
    Caption = #1095#1080#1089#1083#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081':  '
  end
  object CheckListBox1: TCheckListBox
    Left = 16
    Top = 24
    Width = 241
    Height = 241
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    Sorted = True
    TabOrder = 2
    OnDblClick = CheckListBox1DblClick
  end
  object Button1: TButton
    Left = 160
    Top = 6
    Width = 97
    Height = 17
    Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077#1093
    TabOrder = 3
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 416
    Width = 241
    Height = 25
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#1084
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 288
    Width = 241
    Height = 129
    Caption = #1044#1072#1085#1085#1099#1077' '#1076#1083#1103' '#1050#1055'2'
    TabOrder = 0
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 33
      Height = 21
      MaxLength = 3
      TabOrder = 0
      Text = '000'
    end
    object Edit2: TEdit
      Left = 56
      Top = 24
      Width = 33
      Height = 21
      MaxLength = 3
      TabOrder = 1
      Text = '000'
    end
    object Button3: TButton
      Left = 96
      Top = 25
      Width = 25
      Height = 17
      Caption = '>>'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 8
      Top = 48
      Width = 81
      Height = 25
      BiDiMode = bdLeftToRight
      Caption = #1089#1083#1091#1095#1072#1081#1085#1086
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object ListBox1: TListBox
      Left = 128
      Top = 24
      Width = 73
      Height = 89
      ItemHeight = 13
      TabOrder = 4
    end
    object Button4: TButton
      Left = 208
      Top = 25
      Width = 25
      Height = 17
      Caption = 'c'
      TabOrder = 5
      OnClick = Button4Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 456
    Width = 241
    Height = 145
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077':'
    TabOrder = 4
    Visible = False
    object Memo1: TMemo
      Left = 8
      Top = 24
      Width = 225
      Height = 113
      ReadOnly = True
      TabOrder = 0
    end
    object Memo2: TMemo
      Left = 8
      Top = 24
      Width = 225
      Height = 113
      TabOrder = 1
      Visible = False
    end
  end
  object Button5: TButton
    Left = 96
    Top = 605
    Width = 73
    Height = 20
    Caption = #1089#1082#1088#1099#1090#1100
    TabOrder = 5
    Visible = False
    OnClick = Button5Click
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 248
    Top = 608
    Width = 257
    Height = 641
    ItemHeight = 16
    TabOrder = 6
    Visible = False
  end
  object XPManifest1: TXPManifest
    Left = 224
    Top = 96
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 224
    Top = 32
  end
  object MainMenu1: TMainMenu
    Left = 224
    Top = 64
    object Af1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N5: TMenuItem
        Caption = #1042#1089#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
        OnClick = N5Click
      end
      object N3: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N3Click
      end
    end
    object N1: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
      object N4: TMenuItem
        Caption = #1042#1099#1073#1086#1088' '#1087#1091#1090#1080' '#1050#1086#1085#1090#1091#1088' '#1055
        OnClick = N4Click
      end
    end
    object N2: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N6: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N6Click
      end
    end
  end
end
