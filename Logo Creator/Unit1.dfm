object Form1: TForm1
  Left = 1725
  Top = 178
  Caption = 'Logo Creator'
  ClientHeight = 535
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 23
    Top = 0
    Width = 604
    Height = 243
    Align = alClient
    PopupMenu = PopupMenu1
    OnPaint = PaintBox1Paint
    ExplicitLeft = 29
    ExplicitTop = -2
    ExplicitWidth = 612
    ExplicitHeight = 246
  end
  object PnlBottom: TPanel
    Left = 0
    Top = 269
    Width = 627
    Height = 247
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 268
    ExplicitWidth = 619
    object LblString: TLabel
      Left = 14
      Top = 20
      Width = 23
      Height = 13
      Caption = 'Text:'
    end
    object GPBFontProperties: TGroupBox
      Left = 14
      Top = 46
      Width = 312
      Height = 65
      Caption = ' Font properties '
      TabOrder = 0
      object LblFontNames: TLabel
        Left = 10
        Top = 18
        Width = 166
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = 'Font name'
      end
      object LblFontSize: TLabel
        Left = 192
        Top = 18
        Width = 49
        Height = 14
        AutoSize = False
        Caption = 'Font size'
      end
      object LblBorderSize: TLabel
        Left = 247
        Top = 18
        Width = 59
        Height = 14
        AutoSize = False
        Caption = 'Border size'
      end
      object ComboBox1: TComboBox
        Left = 10
        Top = 34
        Width = 173
        Height = 21
        Style = csOwnerDrawFixed
        DropDownCount = 30
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 15
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnChange = ComboBox1Change
        OnDrawItem = ComboBox1DrawItem
        OnMeasureItem = ComboBox1MeasureItem
      end
      object Edit2: TEdit
        Left = 192
        Top = 34
        Width = 33
        Height = 21
        TabStop = False
        MaxLength = 3
        TabOrder = 1
        Text = '100'
        OnChange = Edit2Change
      end
      object UpDown1: TUpDown
        Left = 225
        Top = 34
        Width = 17
        Height = 21
        Associate = Edit2
        Min = 7
        Max = 500
        Position = 100
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 245
        Top = 34
        Width = 40
        Height = 21
        TabStop = False
        MaxLength = 3
        TabOrder = 3
        Text = '20'
        OnChange = Edit2Change
      end
      object UpDown2: TUpDown
        Left = 285
        Top = 34
        Width = 15
        Height = 21
        Associate = Edit3
        Min = 1
        Max = 50
        Position = 20
        TabOrder = 4
      end
    end
    object GPBInnerColor: TGroupBox
      Left = 332
      Top = 117
      Width = 285
      Height = 124
      Caption = ' Colors '
      TabOrder = 2
      object LblInnerAlpha: TLabel
        Left = 48
        Top = 34
        Width = 52
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Alpha'
      end
      object LblInnerRed: TLabel
        Left = 102
        Top = 34
        Width = 51
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Red'
      end
      object LblInnerGreen: TLabel
        Left = 163
        Top = 34
        Width = 51
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Green'
      end
      object LblInnerBlue: TLabel
        Left = 221
        Top = 34
        Width = 49
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Blue'
      end
      object Label4: TLabel
        Left = 23
        Top = 53
        Width = 30
        Height = 13
        Caption = 'Inner :'
      end
      object Label5: TLabel
        Left = 16
        Top = 88
        Width = 37
        Height = 13
        Caption = 'Border :'
      end
      object Edit8: TEdit
        Left = 59
        Top = 50
        Width = 34
        Height = 21
        TabStop = False
        MaxLength = 3
        TabOrder = 0
        Text = '255'
        OnChange = Edit2Change
        OnKeyPress = Edit8KeyPress
      end
      object UpDown7: TUpDown
        Left = 93
        Top = 50
        Width = 17
        Height = 21
        Associate = Edit8
        Max = 255
        Position = 255
        TabOrder = 1
      end
      object UpDown8: TUpDown
        Left = 150
        Top = 50
        Width = 17
        Height = 21
        Associate = Edit9
        Max = 255
        Position = 220
        TabOrder = 3
      end
      object Edit9: TEdit
        Left = 116
        Top = 50
        Width = 34
        Height = 21
        TabStop = False
        MaxLength = 3
        TabOrder = 2
        Text = '220'
        OnChange = Edit2Change
      end
      object UpDown9: TUpDown
        Left = 207
        Top = 50
        Width = 17
        Height = 21
        Associate = Edit10
        Max = 255
        Position = 110
        TabOrder = 5
      end
      object Edit10: TEdit
        Left = 173
        Top = 50
        Width = 34
        Height = 21
        TabStop = False
        MaxLength = 3
        TabOrder = 4
        Text = '110'
        OnChange = Edit2Change
      end
      object UpDown10: TUpDown
        Left = 265
        Top = 50
        Width = 17
        Height = 21
        Associate = Edit11
        Max = 255
        Position = 110
        TabOrder = 7
      end
      object Edit11: TEdit
        Left = 231
        Top = 50
        Width = 34
        Height = 21
        TabStop = False
        MaxLength = 3
        TabOrder = 6
        Text = '110'
        OnChange = Edit2Change
      end
      object Edit4: TEdit
        Left = 59
        Top = 85
        Width = 34
        Height = 21
        TabStop = False
        MaxLength = 3
        TabOrder = 8
        Text = '255'
        OnChange = Edit2Change
      end
      object UpDown3: TUpDown
        Left = 93
        Top = 85
        Width = 16
        Height = 21
        Associate = Edit4
        Max = 255
        Position = 255
        TabOrder = 9
      end
      object Edit5: TEdit
        Left = 116
        Top = 85
        Width = 34
        Height = 21
        TabStop = False
        MaxLength = 3
        TabOrder = 10
        Text = '25'
        OnChange = Edit2Change
      end
      object UpDown4: TUpDown
        Left = 150
        Top = 85
        Width = 16
        Height = 21
        Associate = Edit5
        Max = 255
        Position = 25
        TabOrder = 11
      end
      object Edit6: TEdit
        Left = 173
        Top = 85
        Width = 34
        Height = 21
        TabStop = False
        MaxLength = 3
        TabOrder = 12
        Text = '80'
        OnChange = Edit2Change
      end
      object UpDown5: TUpDown
        Left = 207
        Top = 85
        Width = 16
        Height = 21
        Associate = Edit6
        Max = 255
        Position = 80
        TabOrder = 13
      end
      object Edit7: TEdit
        Left = 231
        Top = 85
        Width = 34
        Height = 21
        TabStop = False
        MaxLength = 3
        TabOrder = 14
        Text = '110'
        OnChange = Edit2Change
      end
      object UpDown6: TUpDown
        Left = 265
        Top = 85
        Width = 16
        Height = 21
        Associate = Edit7
        Max = 255
        Position = 110
        TabOrder = 15
      end
    end
    object Button1: TButton
      Left = 271
      Top = 18
      Width = 54
      Height = 20
      Caption = 'Apply'
      TabOrder = 3
      TabStop = False
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 43
      Top = 17
      Width = 222
      Height = 21
      TabStop = False
      TabOrder = 1
      Text = 'hackbard'
      OnChange = Edit1Change
    end
    object Button2: TButton
      Left = 563
      Top = 18
      Width = 54
      Height = 20
      Caption = 'Image'
      TabOrder = 4
      TabStop = False
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 14
      Top = 117
      Width = 312
      Height = 124
      Caption = ' Background Color '
      TabOrder = 5
      object Label1: TLabel
        Left = 16
        Top = 21
        Width = 31
        Height = 13
        Caption = 'Color :'
      end
      object Label2: TLabel
        Left = 104
        Top = 21
        Width = 27
        Height = 13
        Caption = 'HEX :'
      end
      object Label3: TLabel
        Left = 192
        Top = 40
        Width = 27
        Height = 13
        Caption = 'HEX :'
        Enabled = False
      end
      object Shape1: TShape
        Left = 211
        Top = 94
        Width = 32
        Height = 17
        Cursor = crHandPoint
        Hint = 'Start Color'
        Brush.Color = clBlack
        OnMouseDown = Shape1MouseDown
      end
      object Shape2: TShape
        Left = 267
        Top = 94
        Width = 32
        Height = 17
        Cursor = crHandPoint
        Hint = 'End Color'
        Brush.Color = clGray
        OnMouseDown = Shape2MouseDown
      end
      object Label9: TLabel
        Left = 249
        Top = 96
        Width = 12
        Height = 14
        Caption = '<>'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 215
        Top = 79
        Width = 22
        Height = 13
        Caption = 'Col1'
      end
      object Label12: TLabel
        Left = 271
        Top = 79
        Width = 22
        Height = 13
        Caption = 'Col2'
      end
      object ComboBox2: TComboBox
        Left = 10
        Top = 37
        Width = 173
        Height = 21
        DropDownCount = 30
        ItemIndex = 0
        TabOrder = 0
        TabStop = False
        Text = '  AliceBlue            = $FFF0F8FF'
        OnChange = ComboBox2Change
        Items.Strings = (
          '  AliceBlue            = $FFF0F8FF'
          '  AntiqueWhite         = $FFFAEBD7'
          '  Aqua                 = $FF00FFFF'
          '  Aquamarine           = $FF7FFFD4'
          '  Azure                = $FFF0FFFF'
          '  Beige                = $FFF5F5DC'
          '  Bisque               = $FFFFE4C4'
          '  Black                = $FF000000'
          '  BlanchedAlmond       = $FFFFEBCD'
          '  Blue                 = $FF0000FF'
          '  BlueViolet           = $FF8A2BE2'
          '  Brown                = $FFA52A2A'
          '  BurlyWood            = $FFDEB887'
          '  CadetBlue            = $FF5F9EA0'
          '  Chartreuse           = $FF7FFF00'
          '  Chocolate            = $FFD2691E'
          '  Coral                = $FFFF7F50'
          '  CornflowerBlue       = $FF6495ED'
          '  Cornsilk             = $FFFFF8DC'
          '  Crimson              = $FFDC143C'
          '  Cyan                 = $FF00FFFF'
          '  DarkBlue             = $FF00008B'
          '  DarkCyan             = $FF008B8B'
          '  DarkGoldenrod        = $FFB8860B'
          '  DarkGray             = $FFA9A9A9'
          '  DarkGreen            = $FF006400'
          '  DarkKhaki            = $FFBDB76B'
          '  DarkMagenta          = $FF8B008B'
          '  DarkOliveGreen       = $FF556B2F'
          '  DarkOrange           = $FFFF8C00'
          '  DarkOrchid           = $FF9932CC'
          '  DarkRed              = $FF8B0000'
          '  DarkSalmon           = $FFE9967A'
          '  DarkSeaGreen         = $FF8FBC8B'
          '  DarkSlateBlue        = $FF483D8B'
          '  DarkSlateGray        = $FF2F4F4F'
          '  DarkTurquoise        = $FF00CED1'
          '  DarkViolet           = $FF9400D3'
          '  DeepPink             = $FFFF1493'
          '  DeepSkyBlue          = $FF00BFFF'
          '  DimGray              = $FF696969'
          '  DodgerBlue           = $FF1E90FF'
          '  Firebrick            = $FFB22222'
          '  FloralWhite          = $FFFFFAF0'
          '  ForestGreen          = $FF228B22'
          '  Fuchsia              = $FFFF00FF'
          '  Gainsboro            = $FFDCDCDC'
          '  GhostWhite           = $FFF8F8FF'
          '  Gold                 = $FFFFD700'
          '  Goldenrod            = $FFDAA520'
          '  Gray                 = $FF808080'
          '  Green                = $FF008000'
          '  GreenYellow          = $FFADFF2F'
          '  Honeydew             = $FFF0FFF0'
          '  HotPink              = $FFFF69B4'
          '  IndianRed            = $FFCD5C5C'
          '  Indigo               = $FF4B0082'
          '  Ivory                = $FFFFFFF0'
          '  Khaki                = $FFF0E68C'
          '  Lavender             = $FFE6E6FA'
          '  LavenderBlush        = $FFFFF0F5'
          '  LawnGreen            = $FF7CFC00'
          '  LemonChiffon         = $FFFFFACD'
          '  LightBlue            = $FFADD8E6'
          '  LightCoral           = $FFF08080'
          '  LightCyan            = $FFE0FFFF'
          '  LightGoldenrodYellow = $FFFAFAD2'
          '  LightGray            = $FFD3D3D3'
          '  LightGreen           = $FF90EE90'
          '  LightPink            = $FFFFB6C1'
          '  LightSalmon          = $FFFFA07A'
          '  LightSeaGreen        = $FF20B2AA'
          '  LightSkyBlue         = $FF87CEFA'
          '  LightSlateGray       = $FF778899'
          '  LightSteelBlue       = $FFB0C4DE'
          '  LightYellow          = $FFFFFFE0'
          '  Lime                 = $FF00FF00'
          '  LimeGreen            = $FF32CD32'
          '  Linen                = $FFFAF0E6'
          '  Magenta              = $FFFF00FF'
          '  Maroon               = $FF800000'
          '  MediumAquamarine     = $FF66CDAA'
          '  MediumBlue           = $FF0000CD'
          '  MediumOrchid         = $FFBA55D3'
          '  MediumPurple         = $FF9370DB'
          '  MediumSeaGreen       = $FF3CB371'
          '  MediumSlateBlue      = $FF7B68EE'
          '  MediumSpringGreen    = $FF00FA9A'
          '  MediumTurquoise      = $FF48D1CC'
          '  MediumVioletRed      = $FFC71585'
          '  MidnightBlue         = $FF191970'
          '  MintCream            = $FFF5FFFA'
          '  MistyRose            = $FFFFE4E1'
          '  Moccasin             = $FFFFE4B5'
          '  NavajoWhite          = $FFFFDEAD'
          '  Navy                 = $FF000080'
          '  OldLace              = $FFFDF5E6'
          '  Olive                = $FF808000'
          '  OliveDrab            = $FF6B8E23'
          '  Orange               = $FFFFA500'
          '  OrangeRed            = $FFFF4500'
          '  Orchid               = $FFDA70D6'
          '  PaleGoldenrod        = $FFEEE8AA'
          '  PaleGreen            = $FF98FB98'
          '  PaleTurquoise        = $FFAFEEEE'
          '  PaleVioletRed        = $FFDB7093'
          '  PapayaWhip           = $FFFFEFD5'
          '  PeachPuff            = $FFFFDAB9'
          '  Peru                 = $FFCD853F'
          '  Pink                 = $FFFFC0CB'
          '  Plum                 = $FFDDA0DD'
          '  PowderBlue           = $FFB0E0E6'
          '  Purple               = $FF800080'
          '  Red                  = $FFFF0000'
          '  RosyBrown            = $FFBC8F8F'
          '  RoyalBlue            = $FF4169E1'
          '  SaddleBrown          = $FF8B4513'
          '  Salmon               = $FFFA8072'
          '  SandyBrown           = $FFF4A460'
          '  SeaGreen             = $FF2E8B57'
          '  SeaShell             = $FFFFF5EE'
          '  Sienna               = $FFA0522D'
          '  Silver               = $FFC0C0C0'
          '  SkyBlue              = $FF87CEEB'
          '  SlateBlue            = $FF6A5ACD'
          '  SlateGray            = $FF708090'
          '  Snow                 = $FFFFFAFA'
          '  SpringGreen          = $FF00FF7F'
          '  SteelBlue            = $FF4682B4'
          '  Tan                  = $FFD2B48C'
          '  Teal                 = $FF008080'
          '  Thistle              = $FFD8BFD8'
          '  Tomato               = $FFFF6347'
          '  Transparent          = $00FFFFFF'
          '  Turquoise            = $FF40E0D0'
          '  Violet               = $FFEE82EE'
          '  Wheat                = $FFF5DEB3'
          '  White                = $FFFFFFFF'
          '  WhiteSmoke           = $FFF5F5F5'
          '  Yellow               = $FFFFFF00'
          '  YellowGreen          = $FF9ACD32')
      end
      object Edit12: TEdit
        Left = 227
        Top = 37
        Width = 72
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Enabled = False
        MaxLength = 9
        TabOrder = 1
        Text = '$FF9ACD32'
        OnChange = Edit12Change
        OnKeyPress = Edit12KeyPress
      end
      object CheckBox2: TCheckBox
        Left = 227
        Top = 14
        Width = 54
        Height = 17
        TabStop = False
        Caption = 'Define'
        TabOrder = 2
        OnClick = CheckBox2Click
      end
      object CheckBox4: TCheckBox
        Left = 16
        Top = 72
        Width = 66
        Height = 17
        Caption = 'Gradient'
        TabOrder = 3
        OnClick = CheckBox4Click
      end
      object RadioButton1: TRadioButton
        Left = 35
        Top = 95
        Width = 70
        Height = 17
        Caption = 'Horizontal'
        TabOrder = 4
        TabStop = True
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 119
        Top = 94
        Width = 57
        Height = 17
        Caption = 'Vertical'
        TabOrder = 5
        TabStop = True
        OnClick = RadioButton2Click
      end
    end
    object CheckBox1: TCheckBox
      Left = 419
      Top = 19
      Width = 80
      Height = 17
      TabStop = False
      Caption = 'Tranzparent'
      TabOrder = 6
      OnClick = CheckBox1Click
    end
    object CheckBox3: TCheckBox
      Left = 509
      Top = 19
      Width = 48
      Height = 17
      TabStop = False
      Caption = 'Invert'
      TabOrder = 7
    end
    object GroupBox2: TGroupBox
      Left = 332
      Top = 46
      Width = 285
      Height = 65
      Caption = ' Compressione '
      TabOrder = 8
      object Label6: TLabel
        Left = 15
        Top = 37
        Width = 26
        Height = 13
        Caption = ' Jpg :'
      end
      object Label7: TLabel
        Left = 110
        Top = 37
        Width = 25
        Height = 13
        Caption = 'Png :'
      end
      object Label8: TLabel
        Left = 198
        Top = 37
        Width = 20
        Height = 13
        Caption = 'Gif :'
      end
      object SpinEdit1: TSpinEdit
        Left = 47
        Top = 32
        Width = 41
        Height = 22
        TabStop = False
        MaxValue = 100
        MinValue = 1
        TabOrder = 0
        Value = 90
      end
      object SpinEdit2: TSpinEdit
        Left = 141
        Top = 32
        Width = 41
        Height = 22
        TabStop = False
        MaxValue = 9
        MinValue = 1
        TabOrder = 1
        Value = 1
      end
      object ComboBox3: TComboBox
        Left = 224
        Top = 34
        Width = 46
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 2
        TabStop = False
        Text = 'LZW'
        Items.Strings = (
          'LZW'
          'RLE')
      end
    end
    object CheckBox5: TCheckBox
      Left = 347
      Top = 19
      Width = 59
      Height = 17
      TabStop = False
      Caption = 'Overlap'
      TabOrder = 9
      OnClick = CheckBox5Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 516
    Width = 627
    Height = 19
    Panels = <
      item
        Text = 'Dimension :'
        Width = 70
      end
      item
        Width = 120
      end
      item
        Text = 'Render :'
        Width = 50
      end
      item
        Text = 'High'
        Width = 70
      end
      item
        Text = 'Smooth :'
        Width = 60
      end
      item
        Text = 'Antialias'
        Width = 70
      end
      item
        Text = 'Meta :'
        Width = 45
      end
      item
        Text = 'Pixel'
        Width = 50
      end>
    ExplicitTop = 515
    ExplicitWidth = 619
  end
  object Panel1: TPanel
    Left = 0
    Top = 243
    Width = 627
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    ExplicitTop = 242
    ExplicitWidth = 619
    DesignSize = (
      627
      26)
    object ScrollBar2: TScrollBar
      Left = 23
      Top = 4
      Width = 604
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Max = 1000
      Min = -1000
      PageSize = 0
      TabOrder = 0
      TabStop = False
      OnChange = ScrollBar2Change
      ExplicitWidth = 596
    end
    object BitBtn1: TBitBtn
      Left = 0
      Top = 1
      Width = 23
      Height = 25
      Hint = 'Center Logo'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFF8FCF6AFD89B57B83227A00924A50C24980A3EA3289CC68FE0EEDCFFFF
        FFFFFFFFFFFFFFD4EFCBFFFFFFFFFFFFCBE5C037A31222D0001DE40017EB0017
        E4001AE60522E30928D50B26AC069ACE8AFFFFFF81BD77199405FFFFFFD1E8C6
        1EA00017E0001AE8001CE10021E40327E7072CE50830E50536E81332EC1925C5
        0C1883081DC9162ECE1AF7FCF5248D0610D70017DF001DE20023E60530D60A3A
        C90E56DB3777F2765EF4444CEC2B45F02D31E82347FA4437CE26ACD29B12B300
        10D9001ADA012AE40747BE158AC771E7F4E1D3EEC976C75B5DCD5C7FFC7466F1
        4E62F45977FD7B46D83430901A09CC000FD4031FE30846C50DDFF2D2FFFFFFFF
        FFFFE3F4DE59C14561E5627AFB6976F86B77F87492FF9D49E0386FA8514ABE39
        1BC10424C70981CC60FFFFFFFFFFFFF7FDF455BB3B43C44397EBA38EF3969DFF
        B0A5FFB1A6FFBC47E63BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEEF9ECBDE5BD93E38F57D35B51DB5695FAAE59E850BD6E1FF3C56B
        ECB378E09B6AECC3A2F0D7BEFBF4EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFBB620BEBA917F0BD4FF7D87DF6D794F1D4A1E3B168DB
        9D53FDFAF5FFFFFFFFFFFFDD8B25F5B24BFDB149FFB751FF9331BD660FE49604
        E1970AE6A31DEEB63BEEC467DCA261F7EBE0FFFFFFFFFFFFF9EBD7EAB048FFEC
        9BFFEB99FFF2C9F3CA6CBF6812E59F0FE6A421E7A829F2C65FE4B472C6885FE8
        D3C9F4E9E2D19B76DE9636FCE088FDE28BFFECABFCE3B4F9E2AFBF6613E69A0F
        E2961DE9A930EBB23BF4CA63F7DA90EFC370E8AE4FF2C662FDE187FCE186FDE3
        94FFF7DCF2C359FFFDF8C97512D88110B85E1CD88D2BEFB941F0BF4CF1C14CF5
        CA5EF9D470F9D774FADA7DFFE8A3FFF7DCF5CD74FCEED2FFFFFFB55A0FD6A680
        FFFFFFE5BC95D98F34ECB854F7D679F9DC89FBE08FFDE8A7FDEBB8FBE4B4F2C6
        61FBECCDFFFFFFFFFFFFF1DECEFFFFFFFFFFFFFFFFFFF9EDDFEECDA2E8B566EA
        B45EF2C779F0C270F3CA79F8E1AFFFFDF8FFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 23
    Height = 243
    Align = alLeft
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    ExplicitHeight = 242
    object ScrollBar1: TScrollBar
      Left = 0
      Top = 0
      Width = 23
      Height = 243
      Align = alClient
      Kind = sbVertical
      Max = 1000
      Min = -1000
      PageSize = 0
      TabOrder = 0
      TabStop = False
      OnChange = ScrollBar1Change
      ExplicitHeight = 242
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 148
    Top = 44
    object MIRenderQuality: TMenuItem
      Caption = 'Render Quality'
      object MIRenderQualityLow: TMenuItem
        Tag = 1
        AutoCheck = True
        Caption = 'Low'
        GroupIndex = 5
        RadioItem = True
        OnClick = CompQualityClick
      end
      object MIRenderQualityMedium: TMenuItem
        Tag = 2
        AutoCheck = True
        Caption = 'Medium'
        GroupIndex = 5
        RadioItem = True
        OnClick = CompQualityClick
      end
      object MIRenderQualityHigh: TMenuItem
        Tag = 3
        AutoCheck = True
        Caption = 'High'
        Checked = True
        GroupIndex = 5
        RadioItem = True
        OnClick = CompQualityClick
      end
    end
    object MIRenderSmooth: TMenuItem
      Caption = 'Smooth'
      object MIRenderSmoothNone: TMenuItem
        Tag = 1
        AutoCheck = True
        Caption = 'None'
        GroupIndex = 10
        RadioItem = True
        OnClick = SmoothClick
      end
      object MIRenderSmoothAAS: TMenuItem
        Tag = 2
        AutoCheck = True
        Caption = 'Anti Aliasing'
        Checked = True
        GroupIndex = 10
        RadioItem = True
        OnClick = SmoothClick
      end
      object MIRenderSmoothHigh: TMenuItem
        Tag = 3
        AutoCheck = True
        Caption = 'High'
        GroupIndex = 10
        RadioItem = True
        OnClick = SmoothClick
      end
    end
    object PixelOffset1: TMenuItem
      Caption = 'Pixel Offset'
      object Default1: TMenuItem
        AutoCheck = True
        Caption = 'Default'
        Checked = True
        RadioItem = True
        OnClick = Default1Click
      end
      object Low1: TMenuItem
        AutoCheck = True
        Caption = 'Low'
        RadioItem = True
        OnClick = Low1Click
      end
      object High1: TMenuItem
        AutoCheck = True
        Caption = 'High'
        RadioItem = True
        OnClick = High1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Meta1: TMenuItem
      Caption = 'Meta'
      object Pixel1: TMenuItem
        AutoCheck = True
        Caption = 'Pixel'
        Checked = True
        RadioItem = True
        OnClick = Pixel1Click
      end
      object Point1: TMenuItem
        AutoCheck = True
        Caption = 'Point'
        RadioItem = True
        OnClick = Point1Click
      end
      object Inch1: TMenuItem
        AutoCheck = True
        Caption = 'Inch'
        RadioItem = True
        OnClick = Inch1Click
      end
      object Document1: TMenuItem
        AutoCheck = True
        Caption = 'Document'
        RadioItem = True
        OnClick = Document1Click
      end
      object Millimeter1: TMenuItem
        AutoCheck = True
        Caption = 'Millimeter'
        RadioItem = True
        OnClick = Millimeter1Click
      end
      object GDI1: TMenuItem
        AutoCheck = True
        Caption = 'GDI'
        RadioItem = True
        OnClick = GDI1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object GIFExport1: TMenuItem
      Caption = 'GIF Methods'
      object ColorReduction1: TMenuItem
        Caption = 'Color Reduction'
        object None1: TMenuItem
          AutoCheck = True
          Caption = 'None'
          RadioItem = True
        end
        object Windows201: TMenuItem
          AutoCheck = True
          Caption = 'Windows20'
          RadioItem = True
        end
        object Windows2561: TMenuItem
          AutoCheck = True
          Caption = 'Windows256 (Best Color)'
          Checked = True
          RadioItem = True
        end
        object Monochrome1: TMenuItem
          AutoCheck = True
          Caption = 'Monochrome'
          RadioItem = True
        end
        object GrayScale1: TMenuItem
          AutoCheck = True
          Caption = 'GrayScale'
          RadioItem = True
        end
        object Netscape1: TMenuItem
          AutoCheck = True
          Caption = 'Netscape'
          RadioItem = True
        end
        object Quantize1: TMenuItem
          AutoCheck = True
          Caption = 'Quantize'
          RadioItem = True
        end
        object QuantizeWindows1: TMenuItem
          AutoCheck = True
          Caption = 'Quantize Windows'
          RadioItem = True
        end
        object Palette1: TMenuItem
          AutoCheck = True
          Caption = 'Palette'
          RadioItem = True
        end
      end
      object DitherMode1: TMenuItem
        Caption = 'Dither Mode'
        object Nearest1: TMenuItem
          AutoCheck = True
          Caption = 'Nearest'
          Checked = True
          RadioItem = True
        end
        object FloydSteinberg1: TMenuItem
          AutoCheck = True
          Caption = 'Floyd Steinberg'
          RadioItem = True
        end
        object Stucki1: TMenuItem
          AutoCheck = True
          Caption = 'Stucki'
          RadioItem = True
        end
        object Sierra1: TMenuItem
          AutoCheck = True
          Caption = 'Sierra'
          RadioItem = True
        end
        object JaJuNI1: TMenuItem
          AutoCheck = True
          Caption = 'JaJuNI'
          RadioItem = True
        end
        object SteveArche1: TMenuItem
          AutoCheck = True
          Caption = 'Steve Arche'
          RadioItem = True
        end
        object Burkes1: TMenuItem
          AutoCheck = True
          Caption = 'Burkes'
          RadioItem = True
        end
      end
      object Optimize1: TMenuItem
        Caption = 'Optimize'
        object None2: TMenuItem
          Caption = 'None'
          Checked = True
        end
        object Crop1: TMenuItem
          AutoCheck = True
          Caption = 'Crop'
          RadioItem = True
        end
        object Merge1: TMenuItem
          AutoCheck = True
          Caption = 'Merge'
          RadioItem = True
        end
        object CleanUp1: TMenuItem
          AutoCheck = True
          Caption = 'CleanUp'
          RadioItem = True
        end
        object ColorMap1: TMenuItem
          AutoCheck = True
          Caption = 'Color Map'
          RadioItem = True
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Bitmap (*.BMP)|*.bmp|Jpg (*.JPG; *JPEG)|*.jpg|Portable Network G' +
      'raphic (*.PNG)|*.png|Graphics Interchange Format (*.GIF)|*.gif'
    Left = 232
    Top = 48
  end
  object ColorDialog1: TColorDialog
    Left = 320
    Top = 48
  end
  object ColorDialog2: TColorDialog
    Left = 400
    Top = 48
  end
end
