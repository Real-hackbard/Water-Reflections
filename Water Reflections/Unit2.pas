unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.ExtCtrls, IniFiles;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape1: TShape;
    ColorDialog1: TColorDialog;
    Label8: TLabel;
    SpinEdit3: TSpinEdit;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Label9: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    procedure WriteOptions;
    procedure ReadOptions;
  end;

var
  Form2: TForm2;
  TIF : TIniFile;

implementation

{$R *.dfm}

function MainDir : string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

procedure TForm2.WriteOptions;    // ################### Options Write
var
  OPT : string;
begin
   OPT := 'Options';

   if not DirectoryExists(MainDir + 'Data\Options\')
   then ForceDirectories(MainDir + 'Data\Options\');

   TIF := TIniFile.Create(MainDir + 'Data\Options\Options.ini');
   with TIF do
   begin
    WriteInteger(OPT,'Name',Combobox1.ItemIndex);
    WriteInteger(OPT,'X',SpinEdit1.Value);
    WriteInteger(OPT,'Y',SpinEdit2.Value);
    WriteInteger(OPT,'Size',SpinEdit3.Value);
    WriteBool(OPT,'Trz',CheckBox1.Checked);
    WriteString(OPT,'Text',Edit1.Text);

     Free;
   end;
end;

procedure TForm2.ReadOptions;    // ################### Options Read
var
  OPT:string;
begin
  OPT := 'Options';
  if FileExists(MainDir + 'Data\Options\Options.ini') then
  begin
  TIF:=TIniFile.Create(MainDir + 'Data\Options\Options.ini');
  with TIF do
  begin
    Combobox1.ItemIndex:=ReadInteger(OPT,'Name',Combobox1.ItemIndex);
    SpinEdit1.Value:=ReadInteger(OPT,'X',SpinEdit1.Value);
    SpinEdit2.Value:=ReadInteger(OPT,'Y',SpinEdit2.Value);
    SpinEdit3.Value:=ReadInteger(OPT,'Size',SpinEdit3.Value);
    CheckBox1.Checked:=ReadBool(OPT,'Trz',CheckBox1.Checked);
    Edit1.Text:=ReadString(OPT,'Text',Edit1.Text);

    Free;
  end;
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Close();
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  WriteOptions;
  Button2.Enabled := false;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  Button2.Enabled := true;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  Label3.Font.Name := ComboBox1.Text;
  Button2.Enabled := true;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  Button2.Enabled := true;
end;

procedure TForm2.FormShow(Sender: TObject);
var
  a : integer;
begin
  ReadOptions;

  for a := 0 to Screen.Fonts.Count-1 do
  begin
    ComboBox1.Items.Add(Screen.Fonts.Strings[a]);
  end;

  ComboBox1.ItemIndex := 25;
  Label3.Font.Name := ComboBox1.Text;

  ComboBox1.OnChange(sender);
end;

procedure TForm2.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Form2.ColorDialog1.Execute then
  begin
    Form2.Shape1.Brush.Color := Form2.ColorDialog1.Color;
    Button2.Enabled := true;
  end;
end;

procedure TForm2.SpinEdit1Change(Sender: TObject);
begin
  Button2.Enabled := true;
end;

procedure TForm2.SpinEdit2Change(Sender: TObject);
begin
  Button2.Enabled := true;
end;

procedure TForm2.SpinEdit3Change(Sender: TObject);
begin
  Button2.Enabled := true;
end;

end.
