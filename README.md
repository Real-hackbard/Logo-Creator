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
