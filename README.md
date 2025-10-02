# Logo-Creator:

</br>

```ruby
Compiler    : Delphi10 Seattle, 10.1 Berlin, 10.2 Tokyo, 10.3 Rio, 10.4 Sydney, 11 Alexandria, 12 Athens
Components  : GdipApi.pas, GIFImg.pas, PngImage.pas
Discription : TruType Font Logo Creator
Last Update : 10/2025
License     : Freeware
```

</br>


This is an example of how to use ```GdiApi.pas``` to program a compact but effective logo creator that creates logos from the installed Windows [TrueType (TTF)](https://en.wikipedia.org/wiki/TrueType) font set.

TrueType is an [outline](https://en.wikipedia.org/wiki/Computer_font#Outline_fonts) font standard developed by Apple in the late 1980s as a competitor to Adobe's [Type 1 fonts](https://en.wikipedia.org/wiki/PostScript_fonts#Type_1) used in [PostScript](https://en.wikipedia.org/wiki/PostScript). It has become the most common format for fonts on the [classic Mac OS](https://en.wikipedia.org/wiki/Classic_Mac_OS), macOS, and Microsoft Windows operating systems.

The primary strength of TrueType was originally that it offered [font](https://en.wikipedia.org/wiki/Font) developers a high degree of control over precisely how their fonts are displayed, right down to [particular pixels](https://en.wikipedia.org/wiki/Pixel), at various font sizes. With widely varying [rendering technologies](https://en.wikipedia.org/wiki/Rendering_(computer_graphics)) in use today, pixel-level control is no longer certain in a TrueType font.

</br>

![Logo Creator TTF](https://github.com/user-attachments/assets/0876d950-015c-4c4e-a32b-20f298df906c)

</br>

A logo is a graphic symbol (signet) that represents a specific entity, which can be a company, an organization, a private individual, or a product. It can be designed as a pure figurative mark, a word mark, or a combination of word and figurative marks and is an essential component of the visual appearance (corporate design) and the bearer of the identity (corporate identity) of the rights holder.

### Features:
* Load *.ttf Files in  ```C:\Windows\Fonts\```
* Adjust Font/Border Size
* Adjust X/Y Dimension
* Define RGB Font/Border Colors
* Define Bachground HEX Color
* Define Gradient Background Colors
* Overlap Logo Fonts
* Invert Logo Picture
* Export BMP, JPG, PNG, GIF
* Define Image Compression
* Define Render Quality
* Define Smooth AntiAlias
* Define Pixel Offset
* Define Meta Information Art
* Set Individual Export GIF Methods

### Where can I get TTF files?
* https://www.fontspace.com/category/ttf
* http://www.myfont.de/fonts/alphabet/ttf-fonts-S.html
* https://fontdrop.info/#/?darkmode=true
* https://font.download/search/Ttf
* https://www.fontsquirrel.com/fonts/list/popular
* https://www.1001freefonts.com/
* https://www.dafont.com/ttf.d592
* Editors:
    * https://www.glyphrstudio.com/
    * https://fontforge.org/en-US/
    * https://www.birdfont.org/
    * https://www.calligraphr.com/de/ 

### Microsoft GDI:
Every programmer should be familiar with the term GDI ([Graphics Device Interface](https://en.wikipedia.org/wiki/Graphics_Device_Interface)). This interface is responsible for ensuring that a program is visible at all. However, the Windows "standard GDI" was beginning to show its age, so GDI+ came into being. The [GDI+ library](https://learn.microsoft.com/en-us/windows/win32/gdiplus/-gdiplus-gdi-start) has been part of the inventory since Windows XP. Since Vista, programs that still use the older GDI have been redirected directly to the Desktop Window Manager.

### New features include:
* Native JPEG and PNG rendering
* Improved path management (for vector graphics)
* Colors in ARGB (alpha, red, green, blue)
* Simple antialiasing
* Easy transformation and rotation of graphics
* Simple clipping
* Completely OOP

The GDI+ library ([gdiplus.dll](https://www.dll-files.com/gdiplus.dll.html)) has been included by default since Windows XP. However, it is also backward compatible with older versions of Windows. Therefore, it is recommended to include the DLL in the application path.
Since GDI+ was developed in C++ and is not yet integrated into Delphi (Win32), we require a translation of the GDI+ header files. A free GDI+ translation for Delphi is available for download at www.progdigy.com. Installation should not be difficult, so it will not be explained here. The package from progdigy.com is also available for download directly from our server.

### gdiplus.dll:
The original [gdiplus.dll](https://www.dll-files.com/gdiplus.dll.html) file belongs to Microsoft Windows software from Microsoft.
Microsoft Windows is an operating system; a piece of software that acts as a bridge between a computer's hardware and software. [Gdiplus.dll](https://www.dll-files.com/gdiplus.dll.html) is a resource library belonging to Windows GDI+, an advanced programming interface that interacts with device drivers on behalf of Windows applications. It is a critical Windows component that should not be disabled or removed.

### Available GDi options:
The GDiApi.pas file contains additional options that can be integrated into this program to paint advanced graphics.

```pascal
  TMetafileFrameUnit = MetafileFrameUnit;
{$ENDIF}
//--------------------------------------------------------------------------
// Coordinate space identifiers
//--------------------------------------------------------------------------

  {$EXTERNALSYM CoordinateSpace}
  CoordinateSpace = (
    CoordinateSpaceWorld,     // 0
    CoordinateSpacePage,      // 1
    CoordinateSpaceDevice     // 2
  );
  TCoordinateSpace = CoordinateSpace;

//--------------------------------------------------------------------------
// Various wrap modes for brushes
//--------------------------------------------------------------------------

  {$EXTERNALSYM WrapMode}
  WrapMode = (
    WrapModeTile,        // 0
    WrapModeTileFlipX,   // 1
    WrapModeTileFlipY,   // 2
    WrapModeTileFlipXY,  // 3
    WrapModeClamp        // 4
  );
  TWrapMode = WrapMode;

//--------------------------------------------------------------------------
// Various hatch styles
//--------------------------------------------------------------------------

  {$EXTERNALSYM HatchStyle}
  HatchStyle = (
    HatchStyleHorizontal,                  // = 0,
    HatchStyleVertical,                    // = 1,
    HatchStyleForwardDiagonal,             // = 2,
    HatchStyleBackwardDiagonal,            // = 3,
    HatchStyleCross,                       // = 4,
    HatchStyleDiagonalCross,               // = 5,
    HatchStyle05Percent,                   // = 6,
    HatchStyle10Percent,                   // = 7,
    HatchStyle20Percent,                   // = 8,
    HatchStyle25Percent,                   // = 9,
    HatchStyle30Percent,                   // = 10,
    HatchStyle40Percent,                   // = 11,
    HatchStyle50Percent,                   // = 12,
    HatchStyle60Percent,                   // = 13,
    HatchStyle70Percent,                   // = 14,
    HatchStyle75Percent,                   // = 15,
    HatchStyle80Percent,                   // = 16,
    HatchStyle90Percent,                   // = 17,
    HatchStyleLightDownwardDiagonal,       // = 18,
    HatchStyleLightUpwardDiagonal,         // = 19,
    HatchStyleDarkDownwardDiagonal,        // = 20,
    HatchStyleDarkUpwardDiagonal,          // = 21,
    HatchStyleWideDownwardDiagonal,        // = 22,
    HatchStyleWideUpwardDiagonal,          // = 23,
    HatchStyleLightVertical,               // = 24,
    HatchStyleLightHorizontal,             // = 25,
    HatchStyleNarrowVertical,              // = 26,
    HatchStyleNarrowHorizontal,            // = 27,
    HatchStyleDarkVertical,                // = 28,
    HatchStyleDarkHorizontal,              // = 29,
    HatchStyleDashedDownwardDiagonal,      // = 30,
    HatchStyleDashedUpwardDiagonal,        // = 31,
    HatchStyleDashedHorizontal,            // = 32,
    HatchStyleDashedVertical,              // = 33,
    HatchStyleSmallConfetti,               // = 34,
    HatchStyleLargeConfetti,               // = 35,
    HatchStyleZigZag,                      // = 36,
    HatchStyleWave,                        // = 37,
    HatchStyleDiagonalBrick,               // = 38,
    HatchStyleHorizontalBrick,             // = 39,
    HatchStyleWeave,                       // = 40,
    HatchStylePlaid,                       // = 41,
    HatchStyleDivot,                       // = 42,
    HatchStyleDottedGrid,                  // = 43,
    HatchStyleDottedDiamond,               // = 44,
    HatchStyleShingle,                     // = 45,
    HatchStyleTrellis,                     // = 46,
    HatchStyleSphere,                      // = 47,
    HatchStyleSmallGrid,                   // = 48,
    HatchStyleSmallCheckerBoard,           // = 49,
    HatchStyleLargeCheckerBoard,           // = 50,
    HatchStyleOutlinedDiamond,             // = 51,
    HatchStyleSolidDiamond,                // = 52,

    HatchStyleTotal                        // = 53,
  );

  const
    HatchStyleLargeGrid = HatchStyleCross; // 4
    HatchStyleMin       = HatchStyleHorizontal;
    HatchStyleMax       = HatchStyleSolidDiamond;

type
  THatchStyle = HatchStyle;

//--------------------------------------------------------------------------
// Dash style constants
//--------------------------------------------------------------------------

  {$EXTERNALSYM DashStyle}
  DashStyle = (
    DashStyleSolid,          // 0
    DashStyleDash,           // 1
    DashStyleDot,            // 2
    DashStyleDashDot,        // 3
    DashStyleDashDotDot,     // 4
    DashStyleCustom          // 5
  );
  TDashStyle = DashStyle;

//--------------------------------------------------------------------------
// Dash cap constants
//--------------------------------------------------------------------------
{$IFDEF DELPHI6_UP}
  {$EXTERNALSYM DashCap}
  DashCap = (
    DashCapFlat             = 0,
    DashCapRound            = 2,
    DashCapTriangle         = 3
  );
  TDashCap = DashCap;
{$ELSE}
  {$EXTERNALSYM DashCap}
  DashCap = Integer;
  const
    DashCapFlat             = 0;
    DashCapRound            = 2;
    DashCapTriangle         = 3;

type
  TDashCap = DashCap;
{$ENDIF}

//--------------------------------------------------------------------------
// Line cap constants (only the lowest 8 bits are used).
//--------------------------------------------------------------------------
{$IFDEF DELPHI6_UP}
  {$EXTERNALSYM LineCap}
  LineCap = (
    LineCapFlat             = 0,
    LineCapSquare           = 1,
    LineCapRound            = 2,
    LineCapTriangle         = 3,

    LineCapNoAnchor         = $10, // corresponds to flat cap
    LineCapSquareAnchor     = $11, // corresponds to square cap
    LineCapRoundAnchor      = $12, // corresponds to round cap
    LineCapDiamondAnchor    = $13, // corresponds to triangle cap
    LineCapArrowAnchor      = $14, // no correspondence

    LineCapCustom           = $ff, // custom cap

    LineCapAnchorMask       = $f0  // mask to check for anchor or not.
  );
  TLineCap = LineCap;
{$ELSE}
  {$EXTERNALSYM LineCap}
  LineCap = Integer;
  const
    LineCapFlat             = 0;
    LineCapSquare           = 1;
    LineCapRound            = 2;
    LineCapTriangle         = 3;

    LineCapNoAnchor         = $10; // corresponds to flat cap
    LineCapSquareAnchor     = $11; // corresponds to square cap
    LineCapRoundAnchor      = $12; // corresponds to round cap
    LineCapDiamondAnchor    = $13; // corresponds to triangle cap
    LineCapArrowAnchor      = $14; // no correspondence

    LineCapCustom           = $ff; // custom cap

    LineCapAnchorMask       = $f0; // mask to check for anchor or not.

type
  TLineCap = LineCap;
{$ENDIF}
```

</br>

I hope you have fun with this project.
