object FUDPServerClientForm: TFUDPServerClientForm
  Left = 0
  Top = 0
  Caption = 'UDP Server & Client'
  ClientHeight = 350
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 504
    Height = 21
    Align = alTop
    Caption = 'Switch on the UDP server to listen to broadcasts on 127.0.0.1.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 640
  end
  object Label2: TLabel
    Left = 0
    Top = 21
    Width = 504
    Height = 21
    Align = alTop
    Caption = 
      'Also switch on the UDP client to start broadcasting logs to 127.' +
      '0.0.1.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 19
    ExplicitWidth = 640
  end
  object Label3: TLabel
    Left = 0
    Top = 42
    Width = 504
    Height = 21
    Align = alTop
    Caption = 'Watch server log to see received  syslog messages.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 38
    ExplicitWidth = 640
  end
  object UDPServerReceived: TMemo
    Left = 0
    Top = 176
    Width = 504
    Height = 174
    Align = alClient
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 63
    Width = 504
    Height = 113
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    ExplicitLeft = 96
    ExplicitTop = 128
    ExplicitWidth = 441
    object Label4: TLabel
      Left = 8
      Top = 6
      Width = 73
      Height = 13
      Caption = 'UDP Client Port'
    end
    object Label5: TLabel
      Left = 240
      Top = 6
      Width = 78
      Height = 13
      Caption = 'UDP Server Port'
    end
    object UDPServerControl: TRadioGroup
      Left = 367
      Top = 2
      Width = 100
      Height = 105
      Caption = 'UDP Server'
      ItemIndex = 1
      Items.Strings = (
        'On'
        'Off')
      TabOrder = 0
      OnClick = UDPServerControlClick
    end
    object UDPClientControl: TRadioGroup
      Left = 134
      Top = 2
      Width = 100
      Height = 105
      Caption = 'UDP Client'
      ItemIndex = 1
      Items.Strings = (
        'On'
        'Off')
      TabOrder = 1
      OnClick = UDPClientControlClick
    end
    object UDPClientPort: TSpinEdit
      Left = 8
      Top = 25
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 5114
    end
    object UDPServerPort: TSpinEdit
      Left = 240
      Top = 25
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 5114
    end
  end
  object IdUDPServer: TIdUDPServer
    Bindings = <
      item
        IP = '127.0.0.1'
        Port = 5114
      end>
    DefaultPort = 0
    OnUDPRead = IdUDPServerUDPRead
    Left = 448
    Top = 200
  end
  object UDPClientTimer: TTimer
    Enabled = False
    OnTimer = UDPClientTimerTimer
    Left = 448
    Top = 256
  end
end
