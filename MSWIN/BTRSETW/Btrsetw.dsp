# Microsoft Developer Studio Project File - Name="Btrsetw" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=Btrsetw - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Btrsetw.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Btrsetw.mak" CFG="Btrsetw - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Btrsetw - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Btrsetw - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Btrsetw - Win32 Release"

# PROP BASE Use_MFC 1
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 1
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G3 /MT /W3 /GX /O2 /Ob2 /I "..\include" /I "..\WINLIB" /I "..\btrsetw" /I "..\btqw" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "BTRSETW" /FR /Yu"STDAFX.H" /FD /c
# ADD CPP /nologo /G3 /MT /W3 /GX /O2 /Ob2 /I "..\btrw" /I "..\include" /I "..\BTRSETW" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "BTRSETW" /FR /Yu"STDAFX.H" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 winsock.lib oldnames.lib /nologo /stack:0x2800 /subsystem:windows /machine:IX86
# ADD LINK32 wsock32.lib oldnames.lib /nologo /stack:0x2800 /subsystem:windows /machine:IX86

!ELSEIF  "$(CFG)" == "Btrsetw - Win32 Debug"

# PROP BASE Use_MFC 1
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 1
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /I "..\include" /I "..\WINLIB" /I "..\btrsetw" /I "..\btqw" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "BTRSETW" /FR /Yu"STDAFX.H" /FD /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\WINLIB" /I "..\btrsetw" /I "..\btqw" /I "..\include" /I "..\BTRSETW" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "BTRSETW" /FR /Yu"STDAFX.H" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 winsock.lib oldnames.lib /nologo /stack:0x2800 /subsystem:windows /debug /machine:IX86 /pdbtype:sept
# ADD LINK32 wsock32.lib oldnames.lib /nologo /stack:0x2800 /subsystem:windows /debug /machine:IX86 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "Btrsetw - Win32 Release"
# Name "Btrsetw - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat"
# Begin Source File

SOURCE=.\Btrsedoc.cpp
# End Source File
# Begin Source File

SOURCE=.\Btrsetw.cpp
# End Source File
# Begin Source File

SOURCE=.\Btrsetw.def
# End Source File
# Begin Source File

SOURCE=.\Btrsetw.rc
# End Source File
# Begin Source File

SOURCE=.\Btrsevw.cpp
# End Source File
# Begin Source File

SOURCE=..\Winlib\conthelp.cpp
# End Source File
# Begin Source File

SOURCE=.\Defass.cpp
# End Source File
# Begin Source File

SOURCE=.\Defcond.cpp
# End Source File
# Begin Source File

SOURCE=..\Winlib\Getregdata.cpp
# End Source File
# Begin Source File

SOURCE=.\Hostdlg.cpp
# End Source File
# Begin Source File

SOURCE=.\Jobmode.cpp
# End Source File
# Begin Source File

SOURCE=..\Winlib\LoadHost.cpp
# End Source File
# Begin Source File

SOURCE=.\LoginHost.cpp
# End Source File
# Begin Source File

SOURCE=.\LoginOut.cpp
# End Source File
# Begin Source File

SOURCE=.\Mainfrm.cpp
# End Source File
# Begin Source File

SOURCE=..\Winlib\netrouts.cpp
# End Source File
# Begin Source File

SOURCE=.\NewGrpDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\Portnums.cpp
# End Source File
# Begin Source File

SOURCE=.\Procpar.cpp
# End Source File
# Begin Source File

SOURCE=.\Progopts.cpp
# End Source File
# Begin Source File

SOURCE=.\Queuedef.cpp
# End Source File
# Begin Source File

SOURCE=.\Stdafx.cpp
# ADD BASE CPP /Yc"STDAFX.H"
# ADD CPP /Yc"STDAFX.H"
# End Source File
# Begin Source File

SOURCE=.\Timedflt.cpp
# End Source File
# Begin Source File

SOURCE=.\Timelim.cpp
# End Source File
# Begin Source File

SOURCE=.\Ulist.cpp
# End Source File
# Begin Source File

SOURCE=..\Winlib\userops.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=.\Btrsedoc.h
# End Source File
# Begin Source File

SOURCE=.\Btrsetw.h
# End Source File
# Begin Source File

SOURCE=.\Btrsetw.hpp
# End Source File
# Begin Source File

SOURCE=.\Btrsevw.h
# End Source File
# Begin Source File

SOURCE=.\Defass.h
# End Source File
# Begin Source File

SOURCE=.\Defcond.h
# End Source File
# Begin Source File

SOURCE=.\Hostdlg.h
# End Source File
# Begin Source File

SOURCE=.\Jobmode.h
# End Source File
# Begin Source File

SOURCE=.\LoginHost.h
# End Source File
# Begin Source File

SOURCE=.\LoginOut.h
# End Source File
# Begin Source File

SOURCE=.\Mainfrm.h
# End Source File
# Begin Source File

SOURCE=.\NewGrpDlg.h
# End Source File
# Begin Source File

SOURCE=.\Options.h
# End Source File
# Begin Source File

SOURCE=.\Portnums.h
# End Source File
# Begin Source File

SOURCE=.\Procpar.h
# End Source File
# Begin Source File

SOURCE=.\Progopts.h
# End Source File
# Begin Source File

SOURCE=.\Queuedef.h
# End Source File
# Begin Source File

SOURCE=.\Resource.h
# End Source File
# Begin Source File

SOURCE=.\Stdafx.h
# End Source File
# Begin Source File

SOURCE=.\Timedflt.h
# End Source File
# Begin Source File

SOURCE=.\Timelim.h
# End Source File
# Begin Source File

SOURCE=..\Include\xbwnetwk.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\RES\BTRSETW.ICO
# End Source File
# Begin Source File

SOURCE=.\res\btrsetw.rc2
# End Source File
# Begin Source File

SOURCE=.\RES\TOOLBAR.BMP
# End Source File
# End Group
# End Target
# End Project
