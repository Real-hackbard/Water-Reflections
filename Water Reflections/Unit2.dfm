object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Watermark'
  ClientHeight = 382
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 362
    Height = 369
    Caption = ' Reload Picture '
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 40
      Width = 38
      Height = 15
      Caption = 'Name :'
    end
    object Label2: TLabel
      Left = 47
      Top = 88
      Width = 47
      Height = 15
      Caption = 'Preview :'
    end
    object Label3: TLabel
      Left = 104
      Top = 80
      Width = 92
      Height = 25
      Caption = 'Watermark'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 45
      Top = 136
      Width = 49
      Height = 15
      Caption = 'Position :'
    end
    object Label5: TLabel
      Left = 104
      Top = 136
      Width = 13
      Height = 15
      Caption = 'X :'
    end
    object Label6: TLabel
      Left = 192
      Top = 136
      Width = 13
      Height = 15
      Caption = 'Y :'
    end
    object Label7: TLabel
      Left = 59
      Top = 184
      Width = 35
      Height = 15
      Caption = 'Color :'
    end
    object Shape1: TShape
      Left = 100
      Top = 181
      Width = 29
      Height = 20
      Cursor = crHandPoint
      Brush.Color = clBlack
      OnMouseDown = Shape1MouseDown
    end
    object Label8: TLabel
      Left = 68
      Top = 224
      Width = 26
      Height = 15
      Caption = 'Size :'
    end
    object Label9: TLabel
      Left = 26
      Top = 304
      Width = 68
      Height = 15
      Caption = 'Output Text :'
    end
    object ComboBox1: TComboBox
      Left = 100
      Top = 37
      Width = 253
      Height = 23
      Style = csDropDownList
      DropDownCount = 30
      TabOrder = 0
      TabStop = False
      OnChange = ComboBox1Change
    end
    object SpinEdit1: TSpinEdit
      Left = 124
      Top = 133
      Width = 53
      Height = 24
      TabStop = False
      MaxLength = 4
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 15
      OnChange = SpinEdit1Change
    end
    object SpinEdit2: TSpinEdit
      Left = 212
      Top = 133
      Width = 53
      Height = 24
      TabStop = False
      MaxLength = 4
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 15
      OnChange = SpinEdit2Change
    end
    object SpinEdit3: TSpinEdit
      Left = 100
      Top = 221
      Width = 45
      Height = 24
      TabStop = False
      MaxLength = 3
      MaxValue = 100
      MinValue = 1
      TabOrder = 3
      Value = 24
      OnChange = SpinEdit3Change
    end
    object CheckBox1: TCheckBox
      Left = 100
      Top = 264
      Width = 97
      Height = 17
      TabStop = False
      Caption = 'Transparent'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object Button1: TButton
      Left = 278
      Top = 339
      Width = 75
      Height = 20
      Caption = 'Ok'
      TabOrder = 5
      TabStop = False
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 100
      Top = 301
      Width = 253
      Height = 23
      TabStop = False
      TabOrder = 6
      OnChange = Edit1Change
    end
    object Button2: TButton
      Left = 100
      Top = 339
      Width = 75
      Height = 20
      Caption = 'Save'
      TabOrder = 7
      TabStop = False
      OnClick = Button2Click
    end
  end
  object ColorDialog1: TColorDialog
    Left = 312
    Top = 88
  end
end
