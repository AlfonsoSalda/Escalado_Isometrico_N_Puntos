object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 411
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 400
    Height = 400
    OnMouseDown = Image1MouseDown
  end
  object Panel1: TPanel
    Left = 432
    Top = 8
    Width = 286
    Height = 400
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 80
      Width = 12
      Height = 13
      Caption = 'Tx'
    end
    object Label2: TLabel
      Left = 40
      Top = 107
      Width = 12
      Height = 13
      Caption = 'Ty'
    end
    object Label3: TLabel
      Left = 40
      Top = 192
      Width = 12
      Height = 13
      Caption = 'Sy'
    end
    object Label4: TLabel
      Left = 40
      Top = 165
      Width = 12
      Height = 13
      Caption = 'Sx'
    end
    object Button2: TButton
      Left = 8
      Top = 15
      Width = 265
      Height = 25
      Caption = 'Dibuja Puntos'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 8
      Top = 46
      Width = 265
      Height = 25
      Caption = 'Dibuja Cambios'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 80
      Top = 77
      Width = 193
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 80
      Top = 104
      Width = 193
      Height = 21
      TabOrder = 3
    end
    object Button3: TButton
      Left = 8
      Top = 131
      Width = 265
      Height = 25
      Caption = 'Trasladar'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Edit3: TEdit
      Left = 80
      Top = 162
      Width = 193
      Height = 21
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 80
      Top = 189
      Width = 193
      Height = 21
      TabOrder = 6
    end
    object Button4: TButton
      Left = 8
      Top = 216
      Width = 265
      Height = 25
      Caption = 'Escalar'
      TabOrder = 7
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 8
      Top = 264
      Width = 265
      Height = 25
      Caption = 'Traslacion al Origen'
      TabOrder = 8
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 8
      Top = 312
      Width = 265
      Height = 25
      Caption = 'Regresar a su Posicion Original'
      TabOrder = 9
      OnClick = Button6Click
    end
  end
end
