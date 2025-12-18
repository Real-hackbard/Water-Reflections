unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.Buttons, jpeg, ExtDlgs, Vcl.Samples.Spin, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button3: TButton;
    Panel2: TPanel;
    PaintBox1: TPaintBox;
    Timer1: TTimer;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    Label5: TLabel;
    UpDown2: TUpDown;
    OpenPictureDialog1: TOpenPictureDialog;
    Image1: TImage;
    SaveDialog1: TSaveDialog;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    ComboBox1: TComboBox;
    Label6: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    SpinEdit1: TSpinEdit;
    CheckBox5: TCheckBox;
    SpinEdit2: TSpinEdit;
    CheckBox6: TCheckBox;
    SpinEdit3: TSpinEdit;
    CheckBox7: TCheckBox;
    Shape1: TShape;
    ColorDialog1: TColorDialog;
    PopupMenu1: TPopupMenu;
    Picture1: TMenuItem;
    ComboBox2: TComboBox;
    Button4: TButton;
    Label7: TLabel;
    Timer2: TTimer;
    Heightofreflection1: TMenuItem;
    N331: TMenuItem;
    N501: TMenuItem;
    N661: TMenuItem;
    N801: TMenuItem;
    Stop1: TMenuItem;
    N1: TMenuItem;
    Negativ1: TMenuItem;
    Gray1: TMenuItem;
    Blur1: TMenuItem;
    Sepia1: TMenuItem;
    N2: TMenuItem;
    AntiAliasing1: TMenuItem;
    HighlightColor1: TMenuItem;
    Flow1: TMenuItem;
    N3: TMenuItem;
    PixelBit1: TMenuItem;
    x81: TMenuItem;
    x241: TMenuItem;
    x321: TMenuItem;
    N4: TMenuItem;
    ExportBitmap1: TMenuItem;
    CreateFrames1: TMenuItem;
    N5: TMenuItem;
    Panel4: TMenuItem;
    Button5: TButton;
    CheckBox8: TCheckBox;
    Watermark1: TMenuItem;
    Label8: TLabel;
    N1001: TMenuItem;
    Clear1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormResize(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure Button2Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Picture1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N331Click(Sender: TObject);
    procedure N501Click(Sender: TObject);
    procedure N661Click(Sender: TObject);
    procedure N801Click(Sender: TObject);
    procedure Stop1Click(Sender: TObject);
    procedure Gray1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Negativ1Click(Sender: TObject);
    procedure Blur1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Sepia1Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure AntiAliasing1Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure HighlightColor1Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure Flow1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure x81Click(Sender: TObject);
    procedure x241Click(Sender: TObject);
    procedure x321Click(Sender: TObject);
    procedure ExportBitmap1Click(Sender: TObject);
    procedure CreateFrames1Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure N1001Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Initmirror;
    procedure mirror(ph : integer);
    procedure GetAvailableFiles(pComboBox: TComboBox);
    procedure Overload;
    procedure PaintOn;
    procedure PaintOff;
  public
    { Public declarations }
  end;

type
  TRGBArray = ARRAY[0..0] OF TRGBTriple;
  pRGBArray = ^TRGBArray;

type
  PixArray = Array [0..2] of Byte;

var
  Form1: TForm1;
  limitebmp2 : integer;
  savebmp2H  : integer;
  bmp1 : Tbitmap;
  bmp2 : Tbitmap;
  bmp3 : Tbitmap;
  bmp4 : Tbitmap;
  Tscan3 : array[0..1024] of pRGBArray;
  Tscan4 : array[0..1024] of PRGBArray;
  Frames : integer;
  Phase  : integer;
  stop : boolean;
  zsin : array[0..360] of single;
  pic : integer;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.PaintOn;
begin
  RadioGroup1.Enabled := true;
  Button1.Enabled := true;
  Button2.Enabled := true;
  Button4.Enabled := true;
  CheckBox1.Enabled := true;
  CheckBox2.Enabled := true;
  CheckBox3.Enabled := true;
  CheckBox4.Enabled := true;
  CheckBox5.Enabled := true;
  CheckBox6.Enabled := true;
  CheckBox7.Enabled := true;
  Negativ1.Enabled := true;
  Gray1.Enabled := true;
  Blur1.Enabled := true;
  Sepia1.Enabled := true;
  AntiAliasing1.Enabled := true;
  HighlightColor1.Enabled := true;
  Label6.Enabled := false;
  ComboBox1.Enabled := false;
  Heightofreflection1.Enabled := true;
  Clear1.Enabled := true;
  Stop1.Enabled := true;
  Flow1.Enabled := true;
  ExportBitmap1.Enabled := true;
  CreateFrames1.Enabled := true;
end;

procedure TForm1.PaintOff;
begin
  RadioGroup1.Enabled := false;
  Button1.Enabled := false;
  Button2.Enabled := false;
  Button4.Enabled := false;
  CheckBox1.Enabled := false;
  CheckBox2.Enabled := false;
  CheckBox3.Enabled := false;
  CheckBox4.Enabled := false;
  CheckBox5.Enabled := false;
  CheckBox6.Enabled := false;
  CheckBox7.Enabled := false;
  Negativ1.Enabled := false;
  Gray1.Enabled := false;
  Blur1.Enabled := false;
  Sepia1.Enabled := false;
  AntiAliasing1.Enabled := false;
  HighlightColor1.Enabled := false;
  Label6.Enabled := true;
  ComboBox1.Enabled := true;
  Heightofreflection1.Enabled := false;
  Clear1.Enabled := false;
  Stop1.Enabled := false;
  Flow1.Enabled := false;
  ExportBitmap1.Enabled := false;
  CreateFrames1.Enabled := false;
end;


procedure Highlight(aSource, ATarget: TBitmap; AColor: TColor);
// alters ASource to ATarget by making it appear as if
// looked through
// colored glass as given by AColor
// ASource, ATarget must have been created.
// Isn't as slow as it looks.
// Physics courtesy of a post by K.H. Brenner
var i, j: Integer;
  s, t: pRGBTriple;
  r, g, b: byte;
  cl: TColor;
begin
  cl := ColorToRGB(AColor);
  r := GetRValue(cl);
  g := GetGValue(cl);
  b := GetBValue(cl);
  aSource.PixelFormat := pf24bit;
  ATarget.PixelFormat := pf24bit;
  ATarget.Width := aSource.Width;
  ATarget.Height := aSource.Height;
  for i := 0 to aSource.Height - 1 do
  begin
    s := ASource.Scanline[i];
    t := ATarget.Scanline[i];
    for j := 0 to aSource.Width - 1 do
    begin
      t^.rgbtBlue := (b * s^.rgbtBlue) div 255;
      t^.rgbtGreen := (g * s^.rgbtGreen) div 255;
      t^.rgbtRed := (r * s^.rgbtRed) div 255;
      inc(s);
      inc(t);
    end;
  end;
end;

procedure Antialiasing(Bitmap: TBitmap; Rect: TRect; Percent: Integer);
var
  pix, prevscan, nextscan, hpix: ^PixArray;
  l, p: Integer;
  R, G, B: Integer;
  R1, R2, G1, G2, B1, B2: Byte;
begin
  Screen.Cursor := crHourGlass;
  Bitmap.PixelFormat := pf24bit;
  with Bitmap.Canvas do
  begin
    Brush.Style := bsclear;
    for l := Rect.Top to Rect.Bottom - 1 do
    begin
      pix:= Bitmap.ScanLine[l];
      if l <> Rect.Top then prevscan := Bitmap.ScanLine[l-1]
      else prevscan := nil;
      if l <> Rect.Bottom - 1 then nextscan := Bitmap.ScanLine[l+1]
      else nextscan := nil;

      for p := Rect.Left to Rect.Right - 1 do
      begin
        R1 := pix^[2];
        G1 := pix^[1];
        B1 := pix^[0];

        if p <> Rect.Left then
        begin
          //Pixel left
          hpix := pix;
          dec(hpix);
          R2 := hpix^[2];
          G2 := hpix^[1];
          B2 := hpix^[0];

          if (R1 <> R2) or (G1 <> G2) or (B1 <> B2) then
          begin
            R := R1 + (R2 - R1) * 50 div (Percent + 50);
            G := G1 + (G2 - G1) * 50 div (Percent + 50);
            B := B1 + (B2 - B1) * 50 div (Percent + 50);
            hpix^[2] := R;
            hpix^[1] := G;
            hpix^[0] := B;
          end;
        end;

        if p <> Rect.Right - 1 then
        begin
          //Pixel right
          hpix := pix;
          inc(hpix);
          R2 := hpix^[2];
          G2 := hpix^[1];
          B2 := hpix^[0];

          if (R1 <> R2) or (G1 <> G2) or (B1 <> B2) then
          begin
            R := R1 + (R2 - R1) * 50 div (Percent + 50);
            G := G1 + (G2 - G1) * 50 div (Percent + 50);
            B := B1 + (B2 - B1) * 50 div (Percent + 50);
            hpix^[2] := R;
            hpix^[1] := G;
            hpix^[0] := B;
          end;
        end;

        if prevscan <> nil then
        begin
          //Pixel up
          R2 := prevscan^[2];
          G2 := prevscan^[1];
          B2 := prevscan^[0];

          if (R1 <> R2) or (G1 <> G2) or (B1 <> B2) then
          begin
            R := R1 + (R2 - R1) * 50 div (Percent + 50);
            G := G1 + (G2 - G1) * 50 div (Percent + 50);
            B := B1 + (B2 - B1) * 50 div (Percent + 50);
            prevscan^[2] := R;
            prevscan^[1] := G;
            prevscan^[0] := B;
          end;
          Inc(prevscan);
        end;

        if nextscan <> nil then
        begin
          //Pixel down
          R2 := nextscan^[2];
          G2 := nextscan^[1];
          B2 := nextscan^[0];

          if (R1 <> R2) or (G1 <> G2) or (B1 <> B2) then
          begin
            R := R1 + (R2 - R1) * 50 div (Percent + 50);
            G := G1 + (G2 - G1) * 50 div (Percent + 50);
            B := B1 + (B2 - B1) * 50 div (Percent + 50);
            nextscan^[2] := R;
            nextscan^[1] := G;
            nextscan^[0] := B;
          end;
          Inc(nextscan);
        end;
        Inc(pix);
      end;
    end;
  end;
  Screen.Cursor := crDefault;
end;

function bmptosepia(const bmp: TBitmap; depth: Integer): Boolean;
var
  color, color2 : longint;
  r, g, b, rr, gg : byte;
  h, w : integer;
begin
{$R-}
  (* A "bitmap sepia" effect in digital images simulates antique photos
     by converting normal colors (RGB) into warm, reddish-brown tones,
     achieved through mathematical formulas that adjust pixel values to
     mimic traditional chemical sepia toning, a process using cuttlefish
     ink pigment (sepia) to convert silver in photos to stable silver
     sulfide, adding warmth and permanence.*)
  Screen.Cursor := crHourGlass;
  for h := 0 to bmp.height do
  begin
    for w := 0 to bmp.width do
    begin
      //first convert the bitmap to greyscale
      color:=colortorgb(bmp.Canvas.pixels[w,h]);
      r:=getrvalue(color);
      g:=getgvalue(color);
      b:=getbvalue(color);
      color2:=(r+g+b) div 3;
      bmp.canvas.Pixels[w,h]:=RGB(color2,color2,color2);
      //then convert it to sepia
      color:=colortorgb(bmp.Canvas.pixels[w,h]);
      r:=getrvalue(color);
      g:=getgvalue(color);
      b:=getbvalue(color);
      rr:=r+(depth*2);
      gg:=g+depth;

      if rr <= ((depth*2)-1) then
        rr:=255;
      if gg <= (depth-1) then
        gg:=255;
      bmp.canvas.Pixels[w,h]:=RGB(rr,gg,b);
    end;
  end;
  Screen.Cursor := crDefault;
  {$R+}
end;

procedure BmpGBlur(Bmp: TBitmap; radius: Single);
Type
  TRGB = Packed Record b, g, r: Byte End;
  TRGBs = Packed Record b, g, r: Single End;
  TRGBArray = Array[0..0] of TRGB;
Var
  MatrixRadius: Byte;
  Matrix : Array[-100..100] of Single;
{$R-}
  (* bitmap blur is a general term that describes various techniques
     for applying blur to raster images.*)
  Procedure CalculateMatrix;
  Var
    x: Integer;
    Divisor: Single;
  Begin
    Screen.Cursor := crHourGlass;
    // The mean/zero point must be included in the calculation.
    radius:=radius+1;
    MatrixRadius:=Trunc(radius);

    if Frac(radius)=0 Then Dec(MatrixRadius);
    Divisor:=0;
      for x:=-MatrixRadius to MatrixRadius do
      begin
        Matrix[x]:=radius-abs(x);
        Divisor:=Divisor+Matrix[x];
      end;

    for x:=-MatrixRadius to MatrixRadius do
      Matrix[x]:=Matrix[x]/Divisor;
  End;

Var
  BmpSL : ^TRGBArray;
  BmpRGB : ^TRGB;
  BmpCopy : Array of Array of TRGBs;
  BmpCopyRGB : ^TRGBs;
  R, G, B : Single;
  BmpWidth, BmpHeight: Integer;
  x, y, mx : Integer;
Begin
  Bmp.PixelFormat:=pf24bit;

  // radius range 0 < radius < 99
  if radius<=0 then
  radius:=1
    else
      if radius>99 then
            radius:=99;

  CalculateMatrix;
  BmpWidth:=Bmp.Width;
  BmpHeight:=Bmp.Height;
  SetLength(BmpCopy,BmpHeight,BmpWidth);
  // Write all pixels to the BmpCopy array and blur horizontally at the same time
  for y:=0 to Pred(BmpHeight) do
  begin
    BmpSL:=Bmp.Scanline[y];
    BmpCopyRGB:=@BmpCopy[y,0];
    for x:=0 to Pred(BmpWidth) do
    begin
      R:=0; G:=0; B:=0;
        for Mx:=-MatrixRadius to MatrixRadius do
        begin
          if x+mx<0 then
            // first pixel
            BmpRGB:=@BmpSL^[0]
          else if x+mx>=BmpWidth Then
            // last Pixel
            BmpRGB:=@BmpSL^[Pred(BmpWidth)]
          else
            BmpRGB:=@BmpSL^[x+mx];
          B:=B+BmpRGB^.b*Matrix[mx];
          G:=G+BmpRGB^.g*Matrix[mx];
          R:=R+BmpRGB^.r*Matrix[mx];
        end;
      // Color values ​​are cached in the Single type!
      BmpCopyRGB^.b:=B;
      BmpCopyRGB^.g:=G;
      BmpCopyRGB^.r:=R;
      Inc(BmpCopyRGB);
    end;
  end;

  // Write all pixels back to the Bmp bitmap and blur vertically at the same time.
  for y:=0 To Pred(BmpHeight) do begin
    BmpRGB:=Bmp.ScanLine[y];
    for x:=0 to Pred(BmpWidth) do begin
      R:=0; G:=0; B:=0;
      for mx:=-MatrixRadius to MatrixRadius do begin
        if y+mx<=0 then
          // first Pixel
          BmpCopyRGB:=@BmpCopy[0,x]
        else if y+mx>=BmpHeight then
          // last Pixel
          BmpCopyRGB:=@BmpCopy[Pred(BmpHeight),x]
        else
          BmpCopyRGB:=@BmpCopy[y+mx,x];
        B:=B+BmpCopyRGB^.b*Matrix[mx];
        G:=G+BmpCopyRGB^.g*Matrix[mx];
        R:=R+BmpCopyRGB^.r*Matrix[mx];
      end;
      BmpRGB^.b:=Round(B);
      BmpRGB^.g:=Round(G);
      BmpRGB^.r:=Round(R);
      Inc(BmpRGB);
    end;
  end;
    Screen.Cursor := crDefault;
  {$R+}
end;

procedure ImageGrayScale(var AnImage: TImage);
var
  JPGImage: TJPEGImage;
  BMPImage: TBitmap;
  MemStream: TMemoryStream;
begin
  (* A grayscale bitmap is a digital raster image in which each pixel
     represents the intensity of light and displays a range of grayscale
     levels, from black to white.*)
  BMPImage := TBitmap.Create;
  try
    // define bitmap dimensions
    BMPImage.Width  := AnImage.Picture.Bitmap.Width;
    BMPImage.Height := AnImage.Picture.Bitmap.Height;

    JPGImage := TJPEGImage.Create;
    try
      // copy bitmap pixels to jpeg format
      JPGImage.Assign(AnImage.Picture.Bitmap);
      JPGImage.CompressionQuality := 100;
      JPGImage.Compress;
      // draw grayscvvale
      JPGImage.Grayscale := True;
      // copy grayscale pixels back to bitmap
      BMPImage.Canvas.Draw(0, 0, JPGImage);

      MemStream := TMemoryStream.Create;
      try
        BMPImage.SaveToStream(MemStream);
        //you need to reset the position of the MemoryStream to 0
        MemStream.Position := 0;

        AnImage.Picture.Bitmap.LoadFromStream(MemStream);
        AnImage.Refresh;
      finally
        MemStream.Free;
      end;
    finally
      JPGImage.Free;
    end;
  finally
    BMPImage.Free;
  end;
end;

procedure TForm1.GetAvailableFiles(pComboBox: TComboBox);
var
  lDir: String;                   // Starting directory for file search
  lSearchRecord: TSearchRec;      // to search yourself
begin
  // If I'm already looking for the available files, then I want to...
  // No duplicate entries from previous file searches
  pCombobox.Clear;

  // I'm only searching in the same directory as my EXE file.
  // Program is running
  lDir := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName) +
                                      '\Data\Pictures\'); // search path

  // Does any file in the desired format even exist?
  // (here an BMP file).
  if FindFirst(lDir + '*.bmp', faAnyFile, lSearchRecord) = 0 then
  begin
    repeat
      if (lSearchRecord.Attr <> faDirectory) then
        pComboBox.Items.Add(lSearchRecord.Name);
    until FindNext(lSearchRecord) <> 0;

    // Complete search
    FindClose(lSearchRecord);
  end;

    // (here an JPG file).
  if FindFirst(lDir + '*.jpg', faAnyFile, lSearchRecord) = 0 then
  begin
    repeat
      if (lSearchRecord.Attr <> faDirectory) then
        pComboBox.Items.Add(lSearchRecord.Name);
    until FindNext(lSearchRecord) <> 0;

    // Complete search
    FindClose(lSearchRecord);
  end;
end;

procedure TForm1.Gray1Click(Sender: TObject);
begin
  if CheckBox3.Checked = true then
  begin
    CheckBox3.Checked := false;
  end else begin
    CheckBox3.Checked := true;
  end;
end;

procedure TForm1.HighlightColor1Click(Sender: TObject);
begin
  if CheckBox7.Checked = true then
  begin
    CheckBox7.Checked := false;
  end else begin
    CheckBox7.Checked := true;
  end;
end;

function InvertBitmap(MyBitmap: TBitmap): TBitmap;
var
  x, y: Integer;
  ByteArray: PByteArray;
begin
  MyBitmap.PixelFormat := pf24Bit;
  for y := 0 to MyBitmap.Height - 1 do
  begin
    ByteArray := MyBitmap.ScanLine[y];
    for x := 0 to MyBitmap.Width * 3 - 1 do
    begin
      ByteArray[x] := 255 - ByteArray[x];
    end;
  end;
  Result := MyBitmap;
end;

procedure TForm1.Flow1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    CheckBox1.Checked := false;
  end else begin
    CheckBox1.Checked := true;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i : integer;
  a : single;
begin
  Panel2.DoubleBuffered := true;
  Timer1.Enabled := false;
  phase  := 0;

  for i := 0 to 360 do
  begin
    a := (i * 180) / pi;
    zsin[i] := sin(i*180);
  end;

  bmp1 := tbitmap.create; bmp1.width  := 8;  Bmp1.height := 8;
  bmp2 := Tbitmap.create; bmp2.width  := 8;  Bmp2.height := 8;
  bmp3 := tbitmap.create; bmp3.width  := 8;  Bmp3.height := 8;
  bmp4 := Tbitmap.create; bmp4.width  := 8;  Bmp4.height := 8;

  stop := true;
  Button1.Caption := 'Start';
  Timer1.Enabled := false;
  begin
    Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
                                'Data\Pictures\Castle_1.jpg');
    bmp1.width := image1.picture.graphic.width;
    bmp1.height := image1.picture.graphic.height;
    bmp1.pixelformat := pf24bit;
    bmp1.canvas.draw(0,0,image1.picture.graphic);
    limitebmp2 := 0;
    initmirror;
    stop := false;
    Button1.Caption := 'Stop';
    Timer1.Enabled := true;
  end;

  GetAvailableFiles(ComboBox1);
  ComboBox1.ItemIndex := 1;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  bmp1.free;
  bmp2.free;
  bmp3.free;
  bmp4.free;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Bitmap: TBitmap;
  JPEGImage: TJPEGImage;
  FileHeader: TBitmapFileHeader;
  InfoHeader: TBitmapInfoHeader;
  Stream    : TFileStream;
  c : integer;
begin
  stop := true;
  Button1.Caption := 'Start';
  Timer1.Enabled := false;

  If OpenPictureDialog1.execute then
  begin
    if OpenPictureDialog1.FilterIndex = 1 then
    begin
      Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      begin
      Stream := TFileStream.Create(OpenPictureDialog1.FileName,
                                   fmOpenRead or fmShareDenyNone);
        try
          Stream.Read(FileHeader, SizeOf(FileHeader));
          Stream.Read(InfoHeader, SizeOf(InfoHeader));

          StatusBar1.Panels[1].Text := Format('(X-%d) x (Y-%d)',
                                       [InfoHeader.biHeight, InfoHeader.biWidth]);
          StatusBar1.Panels[3].Text := Format('%d bytes', [FileHeader.bfSize]);
          StatusBar1.Panels[5].Text := Format('%d', [InfoHeader.biBitCount]);

        finally
          Stream.Free;
        end;
      end;
    end;

    if OpenPictureDialog1.FilterIndex = 2 then
    begin
      try
        Bitmap := TBitmap.Create;
        JPEGImage:=TJPEGImage.Create;
        JPEGImage.LoadFromFile(OpenPictureDialog1.FileName);

        with Bitmap do
        begin
          PixelFormat := pf24bit;
          Height := JPEGImage.Height;
          Width := JPEGImage.Width;
          Canvas.Draw(0,0, JPEGImage);
        end;

        Image1.Picture.Bitmap.Assign(Bitmap);
      finally
        Bitmap.Free;
        JPEGImage.Free;
      end;

      Image1.Picture.Bitmap.SaveToFile(ExtractFilePath(Application.ExeName) +
                                 'Data\Backup\_res.bmp');

      begin
      Stream := TFileStream.Create(ExtractFilePath(Application.ExeName) +
                                   'Data\Backup\_res.bmp',
                                   fmOpenRead or fmShareDenyNone);
        try
          Stream.Read(FileHeader, SizeOf(FileHeader));
          Stream.Read(InfoHeader, SizeOf(InfoHeader));

          StatusBar1.Panels[1].Text := Format('(X-%d) x (Y-%d)',
                                       [InfoHeader.biHeight, InfoHeader.biWidth]);
          StatusBar1.Panels[3].Text := Format('%d bytes', [FileHeader.bfSize]);
          StatusBar1.Panels[5].Text := Format('%d', [InfoHeader.biBitCount]);

        finally
          Stream.Free;
        end;
      end;
    end;

    if CheckBox2.Checked = true then
    begin
      Image1.Picture.Bitmap := InvertBitmap(Image1.Picture.Bitmap); // invert graphic
    end;

    if CheckBox3.Checked = true then
    begin
      ImageGrayScale(Image1);  // calculate frayscale
    end;

    if CheckBox4.Checked = true then
    begin
      BmpGBlur(Image1.Picture.Bitmap, SpinEdit1.Value); // create blur effect
    end;

    if CheckBox5.Checked = true then
    begin
      bmptosepia(image1.picture.bitmap, SpinEdit2.Value);  // calculate sepia effect
    end;

    if CheckBox6.Checked = true then
    begin
      Antialiasing(Image1.Picture.Bitmap, Rect(0, // x0
                                               0, // y0
                                               Image1.Picture.Bitmap.Width,   // X~
                                               Image1.Picture.Bitmap.Height), // Y~
                                               15);  // multiplicator
    end;

    if CheckBox7.Checked = true then
    begin
      // highlight pixels in TColor
      Highlight(Image1.Picture.Bitmap, Image1.Picture.Bitmap, Shape1.Brush.Color);
    end;

    // watermark data
    if CheckBox8.Checked = true then
    begin
      with Image1.Picture.Bitmap.Canvas do
      begin
        Font.Color  := Form2.Shape1.Brush.Color;

        if Form2.CheckBox1.Checked = true then
        begin
          Brush.Style := bsClear;
        end else begin
          Brush.Style := bsSolid;
        end;

        Font.Size   := Form2.SpinEdit3.Value;
        Font.Name := Form2.ComboBox1.Text;
        TextOut(Form2.SpinEdit1.Value, Form2.SpinEdit1.Value, Form2.Edit1.Text);
      end;
    end;

    bmp1.width := Image1.Picture.Graphic.width;
    bmp1.height := Image1.Picture.Graphic.height;
    bmp1.pixelformat := pf24bit;
    bmp1.Canvas.Draw(0,0, Image1.Picture.Graphic);

    limitebmp2 := 0;
    initmirror; // draw water effect
    stop := false;
    Button1.Caption := 'Stop';  // stop animation
    StatusBar1.Panels[7].Text := ExtractFileName(OpenPictureDialog1.FileName);
    Timer1.Enabled := true;     // start animation

    PaintOn;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Timer2.Interval := StrToInt(Edit1.Text);
  pic := 0;
  Timer2.Enabled := true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  try
    form2 := TForm2.Create(self);
    form2.ShowModal;
  finally
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  Flow1.Checked := not Flow1.Checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  Negativ1.Checked := not Negativ1.Checked;
  overload;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  Gray1.Checked := not Gray1.Checked;
  overload;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  Blur1.Checked := not Blur1.Checked;
  overload;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  Sepia1.Checked := not Sepia1.Checked;
  overload;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  AntiAliasing1.Checked := not AntiAliasing1.Checked;
  overload;
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
  HighlightColor1.Checked := not HighlightColor1.Checked;
  overload;
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
  if CheckBox8.Checked = true then
  begin
    Button5.Enabled := true;
    Watermark1.Enabled := true;
  end else begin
    Button5.Enabled := false;
    Watermark1.Enabled := false;
  end;
end;



procedure TForm1.Clear1Click(Sender: TObject);
begin
  Timer1.Enabled := false;
  Image1.Picture.Graphic := nil;

  with PaintBox1.Canvas do
  begin
    Brush.Style := bsClear;
    Brush.Color := clBlack;
    Repaint;
    FillRect(ClientRect);
  end;

  PaintOff;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  stop := true;
  Button1.Caption := 'Start';
  Timer1.Enabled := false;
  begin
    Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
                                'Data\Pictures\' + ComboBox1.Text);

    bmp1.width := Image1.Picture.Graphic.Width;
    bmp1.height := Image1.Picture.Graphic.Height;
    bmp1.pixelformat := pf24bit;
    bmp1.canvas.draw(0,0, Image1.Picture.Graphic);
    limitebmp2 := 0;
    initmirror;
    stop := false;
    Button1.Caption := 'Stop';
    Timer1.Enabled := true;
  end;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
  0 : x81.Checked := true;
  1 : x241.Checked := true;
  2 : x321.Checked := true;
  end;
end;

procedure TForm1.CreateFrames1Click(Sender: TObject);
begin
  Button4.Click;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then Edit1.Text := '1';
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if NOT (Key in [#08, '0'..'9']) then
    Key := #0;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  if Edit2.Text = '' then Edit2.Text := '1';
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if NOT (Key in [#08, '0'..'9']) then
    Key := #0;
end;

procedure TForm1.ExportBitmap1Click(Sender: TObject);
begin
  Button2.Click;
end;

procedure Tform1.Initmirror;
var
  i : integer;
  h : integer;            
  k1, k2 : integer;       
begin
  frames := updown2.position;

  case RadioGroup1.ItemIndex of
    0 : begin k1 := 1; k2 := 3; end;
    1 : begin k1 := 1; k2 := 2; end;
    2 : begin k1 := 2; k2 := 3; end;
    3 : begin k1 := 4; k2 := 5; end;
    4 : begin k1 := 5; k2 := 5; end;
  end;

  bmp2.free;
  bmp2 := TBitmap.create;
  h := panel2.height - 16;
  If (bmp1.height*(k1+k2)) div k2 > h then
  begin
    bmp2.height := (bmp1.height * h) div ((bmp1.height*(k1+k2)) div k2);
    bmp2.width  := (bmp1.width  * h) div ((bmp1.height*(k1+k2)) div k2);
  end
  else
  begin
    bmp2.width := bmp1.width;
    bmp2.height := bmp1.height;
  end;
  If limitebmp2 = 0 then limitebmp2 := bmp2.height  
  else
    limitebmp2 := (limitebmp2*bmp2.height) div savebmp2H;
  savebmp2H := bmp2.height;      
  bmp2.canvas.stretchdraw(rect(0,0,bmp2.width, bmp2.height), bmp1);
  bmp2.height := limitebmp2;
  bmp3.free;
  Bmp3 := Tbitmap.create;
  bmp3.width  := Bmp2.width;
  bmp3.height := (Bmp2.height *k1) div k2;
  Bmp3.pixelformat := pf24bit;       
  Bmp3.Canvas.stretchDraw(Rect(0, Bmp2.height-1,Bmp2.width,-1), bmp2);
  bmp4.free;
  Bmp4 := Tbitmap.create;
  bmp4.width  := bmp3.width;
  bmp4.height := bmp3.height;
  // for preview must be 24bit
  Bmp4.pixelformat := pf24bit;
  bmp4.canvas.draw(0,0,bmp3);
  // paint image pixels to paintbox
  paintbox1.width  := bmp3.width;
  paintbox1.height := limitebmp2+ (bmp2.height*k1) div k2;
  Paintbox1.left := (panel2.width - paintbox1.width) div 2;
  Paintbox1.top  := (panel2.height - paintbox1.height) div 2;
  Paintbox1.canvas.draw(0,0,bmp2);
  Paintbox1.canvas.draw(0, limitebmp2, bmp4);
  For i := 0 to bmp3.height-1 do
  begin
    Tscan3[i] := bmp3.scanline[i];
    Tscan4[i] := bmp4.scanline[i];
  end;
end;

procedure Tform1.mirror(ph : integer);
{$R-}
var
  h : single;          
  a : single;          
  dy : single;
  y3 : integer;
  x4, y4 : integer;
  f : single;          
  p : single;          
  k0 : single;
  k1 : single;
  k2 : single;
  za : integer;
begin
  p := ph;                  
  h := bmp4.height;         
  f := frames;              
  a := (2*pi*p) / f;
  k0 := 16;
  k1 := h/k0;
  k2 := k0*1.5;
  for y4 := 0 to bmp4.height -1 do   
  begin
    dy := y4;  
    y3 := trunc( k1*(dy+k2) * sin((h/k1*(h-dy))/(dy+1)+a)/h );
    y3 := y3+y4;
    iF Checkbox1.Checked then
    begin
      for x4 := 0 to bmp4.width-1 do
      begin
        if (y3 > 0) and (y3 < Bmp3.height) and ((x4+y4) mod 2 = 0) then
          Tscan4[y4,x4] := Tscan3[y3, x4]
        else
          Tscan4[y4,x4] := Tscan3[y4, x4];
      end;
    end
    else
    begin
      for x4 := 0 to bmp4.width-1 do
      begin
        if (y3 > 0) and (y3 < Bmp3.height) then
          Tscan4[y4,x4] := Tscan3[y3, x4]
        else
          Tscan4[y4,x4] := Tscan3[y4, x4];
      end;
    end;
  end;
  {$R+}
end;

procedure TForm1.N1001Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 4;
end;

procedure TForm1.N331Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 0;
end;

procedure TForm1.N501Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 1;
end;

procedure TForm1.N661Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 2;
end;

procedure TForm1.N801Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 3;
end;

procedure TForm1.Negativ1Click(Sender: TObject);
begin
  if CheckBox2.Checked = true then
  begin
    CheckBox2.Checked := false;
  end else begin
    CheckBox2.Checked := true;
  end;
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
  with paintbox1.canvas do
  begin
    draw(0,0,bmp2);
    draw(0, bmp2.height-1, bmp4);
  end;
end;

procedure TForm1.Panel4Click(Sender: TObject);
begin
  if Panel4.Checked = false then
  begin
    Panel1.Visible := false;
  end else begin
    Panel1.Visible := true;
  end;
  Form1.Resize;
  Application.ProcessMessages;
end;

procedure TForm1.Picture1Click(Sender: TObject);
begin
  Button3.Click;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  inc(phase);
  if phase >= frames then phase := 0;
  mirror(phase);
  Paintbox1.Canvas.Draw(0, limitebmp2, bmp4);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  r: TRect;
  Bitmap : TBitmap;
begin
  try
    Bitmap:=TBitmap.Create;
    pic := pic + 1;

    // 16 million colors, see help: Pixel Format
    case ComboBox2.ItemIndex of
      0 : Bitmap.PixelFormat := pf8bit;
      1 : Bitmap.PixelFormat := pf24bit;
    end;

    // define bitmap dimensions
    Bitmap.Width := PaintBox1.Width;
    Bitmap.Height := PaintBox1.Height;

    // Image from PaintBox1 to Bitmap
    Bitmap.Canvas.CopyRect(Bounds(0,0,bitmap.Width, Bitmap.Height),
      PaintBox1.Canvas, PaintBox1.ClientRect);
    // export frames
    Bitmap.SaveToFile(ExtractFilePath(Application.ExeName) +
                        'Data\Frames\' + IntToStr(pic) + '.bmp');
    Label8.Caption := 'Pic : ' + IntToStr(pic);
    Application.ProcessMessages;

    // stop when max frames
    if pic = StrToInt(Edit2.Text) then
    begin
      Timer2.Enabled := false;
      Screen.Cursor := crDefault;
      Beep;
      // done
      ShowMessage('Frames build finish');
    end;
  finally
    bitmap.Free;
  end;
end;


procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  Timer1.Interval := Updown1.Position;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  // Determine the image size when the form is enlarged or reduced.
  Timer1.Enabled := false;
  limitebmp2 := 0;
  initmirror;
  StatusBar1.Panels[1].Text := '(X-'+ IntToStr(PaintBox1.Height) + ') x (Y-' +
                                      IntToStr(PaintBox1.Width) + ')';
  iF not stop then Timer1.enabled := true;
end;

procedure TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // Change the water reflections on the image
  if (GetAsyncKeyState(VK_LBUTTON) < 0)  then
  begin
    Timer1.enabled := false;
    if y > savebmp2h then
      limitebmp2 := 0
    else
      limitebmp2 := y;
      initmirror;

    iF not stop then
    Timer1.Enabled := true;
  end;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  Timer1.Enabled := false;
  initmirror;

  // The height of the reflections is specified here.
  case RadioGroup1.ItemIndex of
    0 : N331.Checked := true;
    1 : N501.Checked := true;
    2 : N661.Checked := true;
    3 : N801.Checked := true;
    4 : N1001.Checked := true;
  end;

  iF not stop then Timer1.Enabled := true;
end;

procedure TForm1.Sepia1Click(Sender: TObject);
begin
  if CheckBox5.Checked = true then
  begin
    CheckBox5.Checked := false;
  end else begin
    CheckBox5.Checked := true;
  end;
end;

procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog1.Execute then Shape1.Brush.Color := ColorDialog1.Color;
end;

procedure TForm1.Stop1Click(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.AntiAliasing1Click(Sender: TObject);
begin
  if CheckBox6.Checked = true then
  begin
    CheckBox6.Checked := false;
  end else begin
    CheckBox6.Checked := true;
  end;
end;

procedure TForm1.Blur1Click(Sender: TObject);
begin
  if CheckBox4.Checked = true then
  begin
    CheckBox4.Checked := false;
  end else begin
    CheckBox4.Checked := true;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  If Stop then
  begin
    stop := false;
    Button1.Caption := 'Stop';
    Stop1.Caption := 'Stop';
    Timer1.Enabled := true;
  end
  else
  begin
    stop := true;
    Button1.Caption := 'Start';
    Stop1.Caption := 'Start';
    Timer1.Enabled := false;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  r: TRect;
  Bitmap : TBitmap;
begin
  try
    Bitmap:=TBitmap.Create;

    // 16 million colors, see help: Pixel Format
    case ComboBox2.ItemIndex of
      0 : Bitmap.PixelFormat := pf8bit;
      1 : Bitmap.PixelFormat := pf24bit;
    end;

    Bitmap.Width := PaintBox1.Width;
    Bitmap.Height := PaintBox1.Height;

    // Image from PaintBox1 to Bitmap
    Bitmap.Canvas.CopyRect(Bounds(0,0,bitmap.Width, Bitmap.Height),
      PaintBox1.Canvas, PaintBox1.ClientRect);

    if SaveDialog1.Execute then Bitmap.SaveToFile(SaveDialog1.FileName + '.bmp');
  finally
    bitmap.Free;
  end;
end;

procedure TForm1.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
  Timer1.Enabled := false;
  initmirror;
  IF not stop then timer1.enabled := true;
end;
procedure TForm1.x241Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 1;
  x241.Checked := true;
end;

procedure TForm1.x321Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 2;
  x321.Checked := true;
end;

procedure TForm1.x81Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 0;
  x81.Checked := true;
end;

procedure TForm1.Overload;
var
  Bitmap: TBitmap;
  JPEGImage: TJPEGImage;
  FileHeader: TBitmapFileHeader;
  InfoHeader: TBitmapInfoHeader;
  Stream    : TFileStream;
  c : integer;
begin
  stop := true;
  Button1.Caption := 'Start';
  Timer1.Enabled := false;

    if OpenPictureDialog1.FilterIndex = 1 then
    begin
      Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      begin
        Stream := TFileStream.Create(OpenPictureDialog1.FileName,
                                   fmOpenRead or fmShareDenyNone);
        try
          Stream.Read(FileHeader, SizeOf(FileHeader));
          Stream.Read(InfoHeader, SizeOf(InfoHeader));

          StatusBar1.Panels[1].Text := Format('(X-%d) x (Y-%d)',
                                       [InfoHeader.biHeight, InfoHeader.biWidth]);
          StatusBar1.Panels[3].Text := Format('%d bytes', [FileHeader.bfSize]);
          StatusBar1.Panels[5].Text := Format('%d', [InfoHeader.biBitCount]);

        finally
          Stream.Free;
        end;
      end;
    end;

    if OpenPictureDialog1.FilterIndex = 2 then
    begin
      try
        Bitmap := TBitmap.Create;
        JPEGImage:=TJPEGImage.Create;
        JPEGImage.LoadFromFile(OpenPictureDialog1.FileName);

        with Bitmap do
        begin
          PixelFormat := pf24bit;
          Height := JPEGImage.Height;
          Width := JPEGImage.Width;
          Canvas.Draw(0,0, JPEGImage);
        end;

        Image1.Picture.Bitmap.Assign(Bitmap);
      finally
        Bitmap.Free;
        JPEGImage.Free;
      end;

      Image1.Picture.Bitmap.SaveToFile(ExtractFilePath(Application.ExeName) +
                                 'Data\Backup\_res.bmp');

      begin
      Stream := TFileStream.Create(ExtractFilePath(Application.ExeName) +
                                   'Data\Backup\_res.bmp',
                                   fmOpenRead or fmShareDenyNone);
        try
          Stream.Read(FileHeader, SizeOf(FileHeader));
          Stream.Read(InfoHeader, SizeOf(InfoHeader));

          StatusBar1.Panels[1].Text := Format('(X-%d) x (Y-%d)',
                                       [InfoHeader.biHeight, InfoHeader.biWidth]);
          StatusBar1.Panels[3].Text := Format('%d bytes', [FileHeader.bfSize]);
          StatusBar1.Panels[5].Text := Format('%d', [InfoHeader.biBitCount]);

        finally
          Stream.Free;
        end;
      end;
    end;

    if CheckBox2.Checked = true then
    begin
      Image1.Picture.Bitmap := InvertBitmap(Image1.Picture.Bitmap); // invert graphic
    end;

    if CheckBox3.Checked = true then
    begin
      ImageGrayScale(Image1);  // calculate frayscale
    end;

    if CheckBox4.Checked = true then
    begin
      BmpGBlur(Image1.Picture.Bitmap, SpinEdit1.Value); // create blur effect
    end;

    if CheckBox5.Checked = true then
    begin
      bmptosepia(image1.picture.bitmap, SpinEdit2.Value);  // calculate sepia effect
    end;

    if CheckBox6.Checked = true then
    begin
      Antialiasing(Image1.Picture.Bitmap, Rect(0, // x0
                                               0, // y0
                                               Image1.Picture.Bitmap.Width,   // X~
                                               Image1.Picture.Bitmap.Height), // Y~
                                               15);  // multiplicator
    end;

    if CheckBox7.Checked = true then
    begin
      // highlight pixels in TColor
      Highlight(Image1.Picture.Bitmap, Image1.Picture.Bitmap, Shape1.Brush.Color);
    end;

    // watermark data
    if CheckBox8.Checked = true then
    begin
      with Image1.Picture.Bitmap.Canvas do
      begin
        Font.Color  := Form2.Shape1.Brush.Color;

        if Form2.CheckBox1.Checked = true then
        begin
          Brush.Style := bsClear;
        end else begin
          Brush.Style := bsSolid;
        end;

        Font.Size   := Form2.SpinEdit3.Value;
        Font.Name := Form2.ComboBox1.Text;
        TextOut(Form2.SpinEdit1.Value, Form2.SpinEdit1.Value, Form2.Edit1.Text);
      end;
    end;

    bmp1.width := Image1.Picture.Graphic.width;
    bmp1.height := Image1.Picture.Graphic.height;
    bmp1.pixelformat := pf24bit;
    bmp1.Canvas.Draw(0,0, Image1.Picture.Graphic);

    limitebmp2 := 0;
    initmirror; // draw water effect
    stop := false;
    Button1.Caption := 'Stop';  // stop animation
    StatusBar1.Panels[7].Text := ExtractFileName(OpenPictureDialog1.FileName);
    Timer1.Enabled := true;     // start animation

    CheckBox2.Enabled := true;  CheckBox3.Enabled := true;
    CheckBox4.Enabled := true;  CheckBox5.Enabled := true;
    CheckBox6.Enabled := true;  CheckBox7.Enabled := true;
    Negativ1.Enabled := true; Gray1.Enabled := true;
    Blur1.Enabled := true;  Sepia1.Enabled := true;
    AntiAliasing1.Enabled := true;  HighlightColor1.Enabled := true;
  //end;
end;


end.

