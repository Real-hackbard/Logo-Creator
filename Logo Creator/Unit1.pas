unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Menus, GdipApi, GdipClass, XPMan,
  Vcl.Samples.Spin, Jpeg, PngImage, Vcl.Imaging.GIFImg, Math, Vcl.Buttons;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    PopupMenu1: TPopupMenu;
    MIRenderQuality      : TMenuItem;
    MIRenderQualityLow   : TMenuItem;
    MIRenderQualityMedium: TMenuItem;
    MIRenderQualityHigh  : TMenuItem;
    MIRenderSmooth       : TMenuItem;
    MIRenderSmoothNone   : TMenuItem;
    MIRenderSmoothAAS    : TMenuItem;
    MIRenderSmoothHigh   : TMenuItem;
    PnlBottom            : TPanel;
    LblString            : TLabel;
    Edit1: TEdit;
    GPBFontProperties    : TGroupBox;
    LblFontNames         : TLabel;
    ComboBox1: TComboBox;
    LblFontSize          : TLabel;
    Edit2: TEdit;
    UpDown1: TUpDown;
    GPBInnerColor        : TGroupBox;
    LblInnerAlpha        : TLabel;
    Edit8: TEdit;
    UpDown7: TUpDown;
    LblInnerRed          : TLabel;
    Edit9: TEdit;
    UpDown8: TUpDown;
    LblInnerGreen        : TLabel;
    Edit10: TEdit;
    UpDown9: TUpDown;
    LblInnerBlue         : TLabel;
    Edit11: TEdit;
    UpDown10: TUpDown;
    Button1: TButton;
    LblBorderSize: TLabel;
    Edit3: TEdit;
    UpDown2: TUpDown;
    Button2: TButton;
    GroupBox1: TGroupBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Meta1: TMenuItem;
    Pixel1: TMenuItem;
    Point1: TMenuItem;
    Inch1: TMenuItem;
    Document1: TMenuItem;
    Millimeter1: TMenuItem;
    GDI1: TMenuItem;
    N1: TMenuItem;
    StatusBar1: TStatusBar;
    SaveDialog1: TSaveDialog;
    CheckBox1: TCheckBox;
    Edit12: TEdit;
    CheckBox2: TCheckBox;
    Label3: TLabel;
    Edit4: TEdit;
    UpDown3: TUpDown;
    Edit5: TEdit;
    UpDown4: TUpDown;
    Edit6: TEdit;
    UpDown5: TUpDown;
    Edit7: TEdit;
    UpDown6: TUpDown;
    Label4: TLabel;
    Label5: TLabel;
    CheckBox3: TCheckBox;
    N2: TMenuItem;
    GIFExport1: TMenuItem;
    ColorReduction1: TMenuItem;
    DitherMode1: TMenuItem;
    Optimize1: TMenuItem;
    None1: TMenuItem;
    Windows201: TMenuItem;
    Windows2561: TMenuItem;
    Monochrome1: TMenuItem;
    Netscape1: TMenuItem;
    Quantize1: TMenuItem;
    QuantizeWindows1: TMenuItem;
    Palette1: TMenuItem;
    GrayScale1: TMenuItem;
    Nearest1: TMenuItem;
    FloydSteinberg1: TMenuItem;
    Stucki1: TMenuItem;
    Sierra1: TMenuItem;
    JaJuNI1: TMenuItem;
    SteveArche1: TMenuItem;
    Burkes1: TMenuItem;
    Crop1: TMenuItem;
    Merge1: TMenuItem;
    CleanUp1: TMenuItem;
    ColorMap1: TMenuItem;
    None2: TMenuItem;
    CheckBox4: TCheckBox;
    Shape1: TShape;
    Shape2: TShape;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label9: TLabel;
    ColorDialog1: TColorDialog;
    ColorDialog2: TColorDialog;
    Label11: TLabel;
    Label12: TLabel;
    Panel1: TPanel;
    ScrollBar2: TScrollBar;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    ScrollBar1: TScrollBar;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    SpinEdit1: TSpinEdit;
    Label7: TLabel;
    SpinEdit2: TSpinEdit;
    Label8: TLabel;
    ComboBox3: TComboBox;
    CheckBox5: TCheckBox;
    PixelOffset1: TMenuItem;
    Default1: TMenuItem;
    Low1: TMenuItem;
    High1: TMenuItem;
    
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CompQualityClick(Sender: TObject);
    procedure SmoothClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Pixel1Click(Sender: TObject);
    procedure Point1Click(Sender: TObject);
    procedure Inch1Click(Sender: TObject);
    procedure Document1Click(Sender: TObject);
    procedure Millimeter1Click(Sender: TObject);
    procedure GDI1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox2Click(Sender: TObject);
    procedure ComboBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ComboBox1MeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure Default1Click(Sender: TObject);
    procedure Low1Click(Sender: TObject);
    procedure High1Click(Sender: TObject);
  private

  protected
    procedure AddFontName(const FontName: string);
  public
    vDString   : string;
    vDFntName  : string;
    vDFntSize  : single;
    vDBrdSize  : single;
    vDBorderCol: TGPColor;
    vDInnerCol : TGPColor;
    vDCQ       : CompositingQuality;
    vDSM       : SmoothingMode;
    vMFU       : MetafileFrameUnit;
    vPOF       : PixelOffsetMode;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  Button1.Click;
end;

procedure GradHorizontal(Canvas:TCanvas; Rect:TRect; FromColor, ToColor:TColor) ;
 var
   X:integer;
   dr,dg,db:Extended;
   C1,C2:TColor;
   r1,r2,g1,g2,b1,b2:Byte;
   R,G,B:Byte;
   cnt:integer;
 begin
   C1 := FromColor;
   R1 := GetRValue(C1) ;
   G1 := GetGValue(C1) ;
   B1 := GetBValue(C1) ;

   C2 := ToColor;
   R2 := GetRValue(C2) ;
   G2 := GetGValue(C2) ;
   B2 := GetBValue(C2) ;

   dr := (R2-R1) / Rect.Right-Rect.Left;
   dg := (G2-G1) / Rect.Right-Rect.Left;
   db := (B2-B1) / Rect.Right-Rect.Left;

   cnt := 0;
   for X := Rect.Left to Rect.Right-1 do
   begin
     R := R1+Ceil(dr*cnt) ;
     G := G1+Ceil(dg*cnt) ;
     B := B1+Ceil(db*cnt) ;

     Canvas.Pen.Color := RGB(R,G,B) ;
     Canvas.MoveTo(X,Rect.Top) ;
     Canvas.LineTo(X,Rect.Bottom) ;
     inc(cnt) ;
   end;
 end;

 procedure GradVertical(Canvas:TCanvas; Rect:TRect; FromColor, ToColor:TColor) ;
 var
   Y:integer;
   dr,dg,db:Extended;
   C1,C2:TColor;
   r1,r2,g1,g2,b1,b2:Byte;
   R,G,B:Byte;
   cnt:Integer;
 begin
    C1 := FromColor;
    R1 := GetRValue(C1) ;
    G1 := GetGValue(C1) ;
    B1 := GetBValue(C1) ;

    C2 := ToColor;
    R2 := GetRValue(C2) ;
    G2 := GetGValue(C2) ;
    B2 := GetBValue(C2) ;

    dr := (R2-R1) / Rect.Bottom-Rect.Top;
    dg := (G2-G1) / Rect.Bottom-Rect.Top;
    db := (B2-B1) / Rect.Bottom-Rect.Top;

    cnt := 0;
    for Y := Rect.Top to Rect.Bottom-1 do
    begin
       R := R1+Ceil(dr*cnt) ;
       G := G1+Ceil(dg*cnt) ;
       B := B1+Ceil(db*cnt) ;

       Canvas.Pen.Color := RGB(R,G,B) ;
       Canvas.MoveTo(Rect.Left,Y) ;
       Canvas.LineTo(Rect.Right,Y) ;
       Inc(cnt) ;
    end;
 end;

procedure BitmapFileToPNG(const Source, Dest: String);
var
  Bitmap: TBitmap;
  PNG: TPNGObject;
begin
  Bitmap := TBitmap.Create;
  PNG := TPNGObject.Create;
  {In case something goes wrong, free booth Bitmap and PNG}
  try
    Bitmap.LoadFromFile(Source);
    PNG.Assign(Bitmap);    //Convert data into png

    if Form1.CheckBox1.Checked = true then begin
      PNG.TransparentColor := clBlack;
      PNG.Transparent := true;
    end;

    PNG.CompressionLevel := Form1.SpinEdit2.Value;
    PNG.SaveToFile(Dest);
  finally
    Bitmap.Free;
    PNG.Free;
  end
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

function StrToCardinal(const S : String) : Cardinal;
var
    I64 : UInt64;
begin
    I64 := StrToUInt64(S);
    if (I64 shr 32) <> 0 then
        raise EConvertError.Create('StrToCardinal invalid value');
    Result := Cardinal(I64);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 DoubleBuffered := true;
 vDCQ := CompositingQualityHighQuality;
 vDSM := SmoothingModeAntiAlias;
 vMFU  := MetafileFrameUnitPixel;
 vPOF := PixelOffsetMode(QualityModeDefault);
 ComboBox1.Items := Screen.Fonts;
 ComboBox1.ItemIndex := 70;
 ComboBox1.Font.Size := 8;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := '(X=' + IntToStr(PaintBox1.Width) + ')' + ' - ' +
                               '(Y=' + IntToStr(PaintBox1.Height) + ')';
end;

procedure TForm1.AddFontName(const FontName: string);
begin
 if Screen.Fonts.IndexOf(FontName) <> -1
 then ComboBox1.Items.Add(FontName)
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  ScrollBar1.Position := 0;
  ScrollBar2.Position := 0;
  Button1.Click;
  StatusBar1.SetFocus;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  // Paint Logo
  vDString := Edit1.Text;
  vdBrdSize := UpDown2.Position;
  vDFntName := ComboBox1.Text;
  vdFntSize := UpDown1.Position;
  vDBorderCol := ARGBMake(UpDown3.Position,
                       UpDown4.Position,
                       UpDown5.Position,
                       UpDown6.Position);
  vdInnerCol := ARGBMake(UpDown7.Position,
                       UpDown8.Position,
                       UpDown9.Position,
                       UpDown10.Position);
  PaintBox1.Repaint;
end;

procedure TForm1.CompQualityClick(Sender: TObject);
begin
 case (Sender as TMenuItem).Tag of
   1: begin
        vDCQ:=CompositingQualityHighSpeed;
        StatusBar1.Panels[3].Text := 'Low';
      end;
   2: begin
        vDCQ:=CompositingQualityAssumeLinear;
        StatusBar1.Panels[3].Text := 'Medium';
      end;
   3: begin
        vDCQ:=CompositingQualityHighQuality;
        StatusBar1.Panels[3].Text := 'High';
      end;
   else
   vDCQ:=CompositingQualityHighQuality;
 end;

 PaintBox1.Repaint;
end;

procedure TForm1.Default1Click(Sender: TObject);
begin
  vPOF := PixelOffsetMode(QualityModeDefault);
  PaintBox1.Repaint;
end;

procedure TForm1.Document1Click(Sender: TObject);
begin
  vMFU  := MetafileFrameUnitDocument;
  StatusBar1.Panels[7].Text := 'Document';
  PaintBox1.Repaint;
end;

procedure TForm1.Edit12Change(Sender: TObject);
var
  s: String;
  i: Integer;
  hist: array[byte] of Integer;
begin
  if Edit12.Text <= '' then Edit12.Text := '$';

  try
    s := Edit12.Text;
    for i := 1 to Length(s) do begin
      inc(hist[Ord(s[i])]);
    end;

    Edit12.SelStart := i;
  except
  end;
  if Edit12.Text = '$' then Exit;
  Button1.Click;
end;

procedure TForm1.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  if NOT (Key in [#08, '0'..'9', 'a'..'f'])
          then Key := #0;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if NOT (Key in [#08, '0'..'9']) then Key := #0;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.ScrollBar2Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog1.Execute then Shape1.Brush.Color := ColorDialog1.Color;
  Button1.Click;
end;

procedure TForm1.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog2.Execute then Shape2.Brush.Color := ColorDialog2.Color;
  Button1.Click;
end;

procedure TForm1.SmoothClick(Sender: TObject);
begin
 case (Sender as TMenuItem).Tag of
   1: begin
      vDSM:=SmoothingModeNone;
      StatusBar1.Panels[5].Text := 'None';
      end;
   2: begin
      vDSM:=SmoothingModeAntiAlias;
      StatusBar1.Panels[5].Text := 'Antialias';
      end;
   3: begin
      vDSM:=SmoothingModeHighQuality;
      StatusBar1.Panels[5].Text := 'High';
      end;
   else
   vDSM:=SmoothingModeAntiAlias;
 end;

 PaintBox1.Repaint;
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
var
 DPen: TGPPen;
 Layout: TGPRect;
 Drawer: TGPGraphics;
 DBrush: TGPSolidBrush;
 DFntFam: TGPFontFamily;
 DPath: TGPGraphicsPath;
 DFntFmt: TGPStringFormat;
begin
 Layout.X := ScrollBar2.Position;
 Layout.Y := ScrollBar1.Position;
 Layout.Width := (Sender as TPaintBox).Width-1;
 Layout.Height := (Sender as TPaintBox).Height-1;

 Drawer := TGPGraphics.Create((Sender as TPaintBox).Canvas.Handle);
 Drawer.SetCompositingQuality(vDCQ);
 Drawer.SetSmoothingMode(vdSM);
 Drawer.SetPixelOffsetMode(vPOF);

 DPath := TGPGraphicsPath.Create;
 DPen := TGPPen.Create(vDBorderCol, vDBrdSize);
 DBrush := TGPSolidBrush.Create(vDInnerCol);
 DFntFam := TGPFontFamily.Create(vDFntName);
 DFntFmt := TGPStringFormat.Create;
 DFntFmt.SetAlignment(StringAlignmentCenter);
 DFntFmt.SetLineAlignment(StringAlignmentCenter);


 if CheckBox2.Checked = true then begin
  Drawer.Clear(StrToCardinal(Edit12.Text));
 end else begin

 case ComboBox2.ItemIndex of
  0 : Drawer.Clear($FFF0F8FF);
  1 : Drawer.Clear($FFFAEBD7);
  2 : Drawer.Clear($FF00FFFF);
  3 : Drawer.Clear($FF7FFFD4);
  4 : Drawer.Clear($FFF0FFFF);
  5 : Drawer.Clear($FFF5F5DC);
  6 : Drawer.Clear($FFFFE4C4);
  7 : Drawer.Clear($FF000000);
  8 : Drawer.Clear($FFFFEBCD);
  9 : Drawer.Clear($FF0000FF);
  10 : Drawer.Clear($FF8A2BE2);
  11 : Drawer.Clear($FFA52A2A);
  12 : Drawer.Clear($FFDEB887);
  13 : Drawer.Clear($FF5F9EA0);
  14 : Drawer.Clear($FF7FFF00);
  15 : Drawer.Clear($FFD2691E);
  16 : Drawer.Clear($FFFF7F50);
  17 : Drawer.Clear($FF6495ED);
  18 : Drawer.Clear($FFFFF8DC);
  19 : Drawer.Clear($FFDC143C);
  20 : Drawer.Clear($FF00FFFF);
  21 : Drawer.Clear($FF00008B);
  22 : Drawer.Clear($FF008B8B);
  23 : Drawer.Clear($FFB8860B);
  24 : Drawer.Clear($FFA9A9A9);
  25 : Drawer.Clear($FF006400);
  26 : Drawer.Clear($FFBDB76B);
  27 : Drawer.Clear($FF8B008B);
  28 : Drawer.Clear($FF556B2F);
  29 : Drawer.Clear($FFFF8C00);
  30 : Drawer.Clear($FF9932CC);
  31 : Drawer.Clear($FF8B0000);
  32 : Drawer.Clear($FFE9967A);
  33 : Drawer.Clear($FF8FBC8B);
  34 : Drawer.Clear($FF483D8B);
  35 : Drawer.Clear($FF2F4F4F);
  36 : Drawer.Clear($FF00CED1);
  37 : Drawer.Clear($FF9400D3);
  38 : Drawer.Clear($FFFF1493);
  39 : Drawer.Clear($FF00BFFF);
  40 : Drawer.Clear($FF696969);
  41 : Drawer.Clear($FF1E90FF);
  42 : Drawer.Clear($FFB22222);
  43 : Drawer.Clear($FFFFFAF0);
  44 : Drawer.Clear($FF228B22);
  45 : Drawer.Clear($FFFF00FF);
  46 : Drawer.Clear($FFDCDCDC);
  47 : Drawer.Clear($FFF8F8FF);
  48 : Drawer.Clear($FFFFD700);
  49 : Drawer.Clear($FFDAA520);
  50 : Drawer.Clear($FF808080);
  51 : Drawer.Clear($FF008000);
  52 : Drawer.Clear($FFADFF2F);
  53 : Drawer.Clear($FFF0FFF0);
  54 : Drawer.Clear($FFFF69B4);
  55 : Drawer.Clear($FFCD5C5C);
  56 : Drawer.Clear($FF4B0082);
  57 : Drawer.Clear($FFFFFFF0);
  58 : Drawer.Clear($FFF0E68C);
  59 : Drawer.Clear($FFE6E6FA);
  60 : Drawer.Clear($FFFFF0F5);
  61 : Drawer.Clear($FF7CFC00);
  62 : Drawer.Clear($FFFFFACD);
  63 : Drawer.Clear($FFADD8E6);
  64 : Drawer.Clear($FFF08080);
  65 : Drawer.Clear($FFE0FFFF);
  66 : Drawer.Clear($FFFAFAD2);
  67 : Drawer.Clear($FFD3D3D3);
  68 : Drawer.Clear($FF90EE90);
  69 : Drawer.Clear($FFFFB6C1);
  70 : Drawer.Clear($FFFFA07A);
  71 : Drawer.Clear($FF20B2AA);
  72 : Drawer.Clear($FF87CEFA);
  73 : Drawer.Clear($FF778899);
  74 : Drawer.Clear($FFB0C4DE);
  75 : Drawer.Clear($FFFFFFE0);
  76 : Drawer.Clear($FF00FF00);
  77 : Drawer.Clear($FF32CD32);
  78 : Drawer.Clear($FFFAF0E6);
  79 : Drawer.Clear($FFFF00FF);
  80 : Drawer.Clear($FF800000);
  81 : Drawer.Clear($FF66CDAA);
  82 : Drawer.Clear($FF0000CD);
  83 : Drawer.Clear($FFBA55D3);
  84 : Drawer.Clear($FF9370DB);
  85 : Drawer.Clear($FF3CB371);
  86 : Drawer.Clear($FF7B68EE);
  87 : Drawer.Clear($FF00FA9A);
  88 : Drawer.Clear($FF48D1CC);
  89 : Drawer.Clear($FFC71585);
  90 : Drawer.Clear($FF191970);
  91 : Drawer.Clear($FFF5FFFA);
  92 : Drawer.Clear($FFFFE4E1);
  93 : Drawer.Clear($FFFFE4B5);
  94 : Drawer.Clear($FFFFDEAD);
  95 : Drawer.Clear($FF000080);
  96 : Drawer.Clear($FFFDF5E6);
  97 : Drawer.Clear($FF808000);
  98 : Drawer.Clear($FF6B8E23);
  99 : Drawer.Clear($FFFFA500);
  100 : Drawer.Clear($FFFF4500);
  101 : Drawer.Clear($FFDA70D6);
  102 : Drawer.Clear($FFEEE8AA);
  103 : Drawer.Clear($FF98FB98);
  104 : Drawer.Clear($FFAFEEEE);
  105 : Drawer.Clear($FFDB7093);
  106 : Drawer.Clear($FFFFEFD5);
  107 : Drawer.Clear($FFFFDAB9);
  108 : Drawer.Clear($FFCD853F);
  109 : Drawer.Clear($FFFFC0CB);
  110 : Drawer.Clear($FFDDA0DD);
  111 : Drawer.Clear($FFB0E0E6);
  112 : Drawer.Clear($FF800080);
  113 : Drawer.Clear($FFFF0000);
  114 : Drawer.Clear($FFBC8F8F);
  115 : Drawer.Clear($FF4169E1);
  116 : Drawer.Clear($FF8B4513);
  117 : Drawer.Clear($FFFA8072);
  118 : Drawer.Clear($FFF4A460);
  119 : Drawer.Clear($FF2E8B57);
  120 : Drawer.Clear($FFFFF5EE);
  121 : Drawer.Clear($FFA0522D);
  122 : Drawer.Clear($FFC0C0C0);
  123 : Drawer.Clear($FF87CEEB);
  124 : Drawer.Clear($FF6A5ACD);
  125 : Drawer.Clear($FF708090);
  126 : Drawer.Clear($FFFFFAFA);
  127 : Drawer.Clear($FF00FF7F);
  128 : Drawer.Clear($FF4682B4);
  129 : Drawer.Clear($FFD2B48C);
  130 : Drawer.Clear($FF008080);
  131 : Drawer.Clear($FFD8BFD8);
  132 : Drawer.Clear($FFFF6347);
  133 : Drawer.Clear($00FFFFFF);
  134 : Drawer.Clear($FF40E0D0);
  135 : Drawer.Clear($FFEE82EE);
  136 : Drawer.Clear($FFF5DEB3);
  137 : Drawer.Clear($FFFFFFFF);
  138 : Drawer.Clear($FFF5F5F5);
  139 : Drawer.Clear($FFFFFF00);
  140 : Drawer.Clear($FF9ACD32);
  end;
 end;

 // Draw Gradient Background
 if CheckBox4.Checked = true then begin
    // Horizontal
   if RadioButton1.Checked = true then begin
    GradHorizontal(PaintBox1.Canvas, PaintBox1.ClientRect,
                   Shape1.Brush.Color, Shape2.Brush.Color);
   end;
   if RadioButton2.Checked = true then begin
    // Vertical
    GradVertical(PaintBox1.Canvas, PaintBox1.ClientRect,
                 Shape1.Brush.Color, Shape2.Brush.Color);
   end;
 end;

 DPath.Reset;
 DPath.AddString(vDString, Length(vDString), DFntFam, FontStyleRegular,
                 vDFntSize, Layout, DFntFmt);

 if CheckBox5.Checked = true then begin
 DPath.AddString(vDString, Length(vDString), DFntFam, FontStyleBold,
                 vDFntSize, Layout, DFntFmt);
 end;

 Drawer.DrawPath(DPen, DPath);
 Drawer.FillPath(DBrush, DPath);

 DFntFmt.Free;
 DFntFam.Free;
 DBrush.Free;
 DPen.Free;
 DPath.Free;
 Drawer.Free;
end;

procedure TForm1.Pixel1Click(Sender: TObject);
begin
  vMFU  := MetafileFrameUnitPixel;
  StatusBar1.Panels[7].Text := 'Pixel';
  PaintBox1.Repaint;
end;

procedure TForm1.Point1Click(Sender: TObject);
begin
  vMFU  := MetafileFrameUnitPoint;
  StatusBar1.Panels[7].Text := 'Point';
  PaintBox1.Repaint;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then begin
    CheckBox2.Checked := false;
    Label1.Enabled := false;
    Label2.Enabled := false;
    Label3.Enabled := false;
    CheckBox2.Enabled := false;
    ComboBox2.Enabled := false;
    Edit12.Enabled := false;
    ComboBox2.ItemIndex := 7;
    ComboBox2.OnChange(sender);
  end else begin
    Label1.Enabled := true;
    Label2.Enabled := true;
    ComboBox2.Enabled := true;
    CheckBox2.Enabled := true;
    ComboBox2.ItemIndex := 0;
    ComboBox2.OnChange(sender);
  end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = true then begin
      Label1.Enabled := false;
      Label2.Enabled := false;
      Label3.Enabled := true;
      Edit12.Enabled := true;
      ComboBox2.Enabled := false;
      CheckBox4.Checked := false;
    end else begin
      Label1.Enabled := true;
      Label2.Enabled := true;
      Label3.Enabled := false;
      Edit12.Enabled := false;
      ComboBox2.Enabled := true;
    end;
    Button1.Click;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  if CheckBox4.Checked = true then begin
  RadioButton1.Checked := true;
  Button1.Click;
  end else begin
  RadioButton1.Checked := false;
  RadioButton2.Checked := false;
  Button1.Click;
  end;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
 Button1.Click;
end;

procedure TForm1.ComboBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
  with ComboBox1.Canvas do
  begin
    FillRect(Rect);
    Font.Name := ComboBox1.Items[Index];
    Font.Size := 10;    // use font's preferred size
    TextOut(Rect.Left+1, Rect.Top+1, ComboBox1.Items[Index]);
  end;
end;

procedure TForm1.ComboBox1MeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
begin
  with ComboBox1.Canvas do
  begin
    Font.Name := ComboBox1.Items[Index];
    Font.Size := 0;                 // use font's preferred size
    Height := TextHeight('Wg') + 2; // measure ascenders and descenders
  end;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.FormShow(Sender: TObject);
var a : integer;
begin
  Button1Click(nil);
end;

procedure TForm1.GDI1Click(Sender: TObject);
begin
  vMFU  := MetafileFrameUnitGDi;
  StatusBar1.Panels[7].Text := 'GDI';
  PaintBox1.Repaint;
end;

procedure TForm1.High1Click(Sender: TObject);
begin
  vPOF := PixelOffsetMode(QualityModeHigh);
  PaintBox1.Repaint;
end;

procedure TForm1.Inch1Click(Sender: TObject);
begin
  vMFU  := MetafileFrameUnitInch;
  StatusBar1.Panels[7].Text := 'Inch';
  PaintBox1.Repaint;
end;

procedure TForm1.Low1Click(Sender: TObject);
begin
  vPOF := PixelOffsetMode(QualityModeLow);
  PaintBox1.Repaint;
end;

procedure TForm1.Millimeter1Click(Sender: TObject);
begin
  vMFU  := MetafileFrameUnitMillimeter;
  StatusBar1.Panels[7].Text := 'Millimaeter';
  PaintBox1.Repaint;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  bmp : TBitmap;
  Img : TPicture;
  Jpg : TJPEGImage;
  GIF : TGIFImage;
  Ext: TGIFGraphicControlExtension;
  OptimizeOptions: TGIFOptimizeOptions;
begin
  if SaveDialog1.Execute then begin

   if SaveDialog1.FilterIndex = 1 then begin   // Export Bitmap
    bmp := TBitmap.Create;
    bmp.PixelFormat := pf24bit;
    bmp.Width := PaintBox1.Width;
    bmp.Height := PaintBox1.Height;

      if CheckBox1.Checked = true then begin
        bmp.TransparentColor := clBlack;
        bmp.Transparent := true;
      end;

    try
      // Copy PaintBox in Bitmap
      bmp.Canvas.CopyRect(Bounds(0,0,bmp.Width, bmp.Height),
      PaintBox1.Canvas, PaintBox1.ClientRect);

      // Invert Bitmap
      if CheckBox3.Checked = true then begin
        try
          Img := TPicture.Create;
          Img.Bitmap.Assign(bmp);
          Img.Bitmap.Assign(InvertBitmap(Img.Bitmap));
          Img.Bitmap.SaveToFile(SaveDialog1.FileName + '.bmp');
        finally
          Img.Free;
        end;
      end;
      // Create Bitmap Image File
      if not CheckBox3.Checked then bmp.SaveToFile(SaveDialog1.FileName + '.bmp');
    finally
      bmp.Free;
    end;
   end;

    if SaveDialog1.FilterIndex = 2 then begin   // Export Jpg/Jpeg
     bmp := TBitmap.Create;
     Jpg := TJPEGImage.Create;
     bmp.PixelFormat := pf24bit;
     bmp.Width := PaintBox1.Width;
     bmp.Height := PaintBox1.Height;

    try
      // Copy PaintBox to Bitmap
      bmp.Canvas.CopyRect(Bounds(0,0,bmp.Width, bmp.Height),
      PaintBox1.Canvas, PaintBox1.ClientRect);

      // Invert Bitmap
      if CheckBox3.Checked = true then begin
        try
          Img := TPicture.Create;
          Img.Bitmap.Assign(bmp);
          Img.Bitmap.Assign(InvertBitmap(Img.Bitmap));
          bmp.Assign(Img);
        finally
          Img.Free;
        end;
      end;

      Jpg.Assign(Bmp);

      // Set JPG Tranzaprent
      if CheckBox1.Checked = true then begin
        Jpg.Transparent := true;
      end;

      // Compress Jpg File
      Jpg.CompressionQuality := SpinEdit1.Value;
      Jpg.Compress;
      // Create Kpg Image File
      Jpg.SaveToFile(SaveDialog1.FileName + '.jpg');
    finally
      Jpg.Free;
      Bmp.Free;
    end;
  end;

    if SaveDialog1.FilterIndex = 3 then begin   // Export Png Image
      bmp := TBitmap.Create;
      bmp.PixelFormat := pf24bit;
      bmp.Width := PaintBox1.Width;
      bmp.Height := PaintBox1.Height;

      try
        // Copy PaintBox to Bitmap
        bmp.Canvas.CopyRect(Bounds(0,0,bmp.Width, bmp.Height),
        PaintBox1.Canvas, PaintBox1.ClientRect);

        // Invert Image
        if CheckBox3.Checked = true then begin
          try
            Img := TPicture.Create;
            Img.Bitmap.Assign(bmp);
            Img.Bitmap.Assign(InvertBitmap(Img.Bitmap));
            Img.Bitmap.SaveToFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_temp');
            BitmapFileToPNG(ExtractFilePath(Application.ExeName) + 'Data\temp\_temp',
                            SaveDialog1.FileName + '.png');
          finally
            Img.Free;
          end;
        end;

        if not CheckBox3.Checked then begin
        // Create Bitmap temp Image File
        Bmp.SaveToFile(ExtractFilePath(Application.ExeName) + 'Data\temp\_temp');
        // Convert Bitmap temp to Png Image File
        BitmapFileToPNG(ExtractFilePath(Application.ExeName) + 'Data\temp\_temp',
                            SaveDialog1.FileName + '.png');
        end;
      finally
        bmp.Free;
      end;
    end;

    if SaveDialog1.FilterIndex = 4 then begin   // Export Gif Image
      bmp := TBitmap.Create;
      GIF := TGIFImage.Create;
      bmp.PixelFormat := pf24bit;
      bmp.Width := PaintBox1.Width;
      bmp.Height := PaintBox1.Height;

      try
        // Draw PaintBox in Bitmap
        bmp.Canvas.CopyRect(Bounds(0,0,bmp.Width, bmp.Height),
        PaintBox1.Canvas, PaintBox1.ClientRect);

        // Bitmap Invert
        if CheckBox3.Checked = true then begin
        try
          Img := TPicture.Create;
          Img.Bitmap.Assign(bmp);
          Img.Bitmap.Assign(InvertBitmap(Img.Bitmap));
          bmp.Assign(Img);
        finally
          Img.Free;
        end;
      end;

        // Color reduction
        if None1.Checked = true then GIF.ColorReduction := rmNone;
        // Reduce to the Windows 20 color system palette
        if Windows201.Checked = true then GIF.ColorReduction := rmWindows20;
        // Reduce to the Windows 256 color halftone palette (Only works in 256 color display mode)
        if Windows2561.Checked = true then GIF.ColorReduction := rmWindows256;
        // Reduce to the Windows 4 grayscale colors
        if Monochrome1.Checked = true then GIF.ColorReduction := rmMonochrome;
        // Reduce to a uniform 256 shade grayscale palette
        if GrayScale1.Checked = true then GIF.ColorReduction := rmGrayScale;
        // Reduce to a uniform 256 shade grayscale palette
        if Netscape1.Checked = true then GIF.ColorReduction := rmNetscape;
        // Reduce to optimal 2^n color palette
        if Quantize1.Checked = true then GIF.ColorReduction := rmQuantize;
        // Reduce to optimal 256 color windows palette
        if QuantizeWindows1.Checked = true then GIF.ColorReduction := rmQuantizeWindows;
        // Reduce to custom palette
        if Palette1.Checked = true then GIF.ColorReduction := rmPalette;

        // Dither Mode Nearest color matching w/o error correction
        if Nearest1.Checked = true then GIF.DitherMode := dmNearest;
        // Floyd Steinberg Error Diffusion dithering
        if FloydSteinberg1.Checked = true then GIF.DitherMode := dmFloydSteinberg;
        // Stucki Error Diffusion dithering
        if Stucki1.Checked = true then GIF.DitherMode := dmStucki;
        // Sierra Error Diffusion dithering
        if Sierra1.Checked = true then GIF.DitherMode := dmSierra;
        // Jarvis, Judice & Ninke Error Diffusion dithering
        if JaJuNI1.Checked = true then GIF.DitherMode := dmJaJuNI;
        // Stevenson & Arche Error Diffusion dithering
        if SteveArche1.Checked = true then GIF.DitherMode := dmSteveArche;
        // Burkes Error Diffusion dithering
        if Burkes1.Checked = true then GIF.DitherMode := dmBurkes;

        // Optimization options Crop animated GIF frames
        if Crop1.Checked = true then begin
          GIF.OptimizeColorMap;
          OptimizeOptions := [];
          include(OptimizeOptions, ooCrop);
        end;
        if Merge1.Checked = true then begin
          GIF.OptimizeColorMap;
          OptimizeOptions := [];
          include(OptimizeOptions, ooMerge);
        end;
        if CleanUp1.Checked = true then begin
          GIF.OptimizeColorMap;
          OptimizeOptions := [];
          include(OptimizeOptions, ooCleanUp);
        end;
        if ColorMap1.Checked = true then begin
          GIF.OptimizeColorMap;
          OptimizeOptions := [];
          include(OptimizeOptions, ooColorMap);
        end;

        //GIF.ColorResolution;
        GIF.Assign(bmp);

        // Set GIF Image Tranzparent
        if CheckBox1.Checked = true then begin
          GIF.Transparent := true;
          // Create an extension to set the transparency flag
          Ext := TGIFGraphicControlExtension.Create(GIF.Images[0]);
          Ext.Transparent := True;
        end;

        // Create GIF File Image
        GIF.SaveToFile(SaveDialog1.FileName + '.gif')
      finally
        GIF.Free;
        bmp.Free;
      end;
    end;

  END;
end;

end.


