# Microsoft Developer Studio Project File - Name="xbapi32" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=xbapi32 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "xbapi32.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "xbapi32.mak" CFG="xbapi32 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "xbapi32 - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "xbapi32 - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "xbapi32 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "../include" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:windows /dll /machine:I386

!ELSEIF  "$(CFG)" == "xbapi32 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "../include" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FR /YX /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "xbapi32 - Win32 Release"
# Name "xbapi32 - Win32 Debug"
# Begin Source File

SOURCE=.\Xb_ciadd.c
# End Source File
# Begin Source File

SOURCE=.\Xb_cidel.c
# End Source File
# Begin Source File

SOURCE=.\Xb_cirea.c
# End Source File
# Begin Source File

SOURCE=.\Xb_ciupd.c
# End Source File
# Begin Source File

SOURCE=.\Xb_gbtd.c
# End Source File
# Begin Source File

SOURCE=.\Xb_gbtu.c
# End Source File
# Begin Source File

SOURCE=.\Xb_gethe.c
# End Source File
# Begin Source File

SOURCE=.\Xb_holre.c
# End Source File
# Begin Source File

SOURCE=.\Xb_holup.c
# End Source File
# Begin Source File

SOURCE=.\Xb_jchgr.c
# End Source File
# Begin Source File

SOURCE=.\Xb_jchmo.c
# End Source File
# Begin Source File

SOURCE=.\Xb_jchow.c
# End Source File
# Begin Source File

SOURCE=.\Xb_jobad.c
# End Source File
# Begin Source File

SOURCE=.\Xb_jobda.c
# End Source File
# Begin Source File

SOURCE=.\Xb_jobde.c
# End Source File
# Begin Source File

SOURCE=.\Xb_jobli.c
# End Source File
# Begin Source File

SOURCE=.\Xb_jobop.c
# End Source File
# Begin Source File

SOURCE=.\Xb_jobre.c
# End Source File
# Begin Source File

SOURCE=.\Xb_jobsw.c
# End Source File
# Begin Source File

SOURCE=.\Xb_jobup.c
# End Source File
# Begin Source File

SOURCE=.\Xb_modep.c
# End Source File
# Begin Source File

SOURCE=.\Xb_open.c
# End Source File
# Begin Source File

SOURCE=.\Xb_pbtd.c
# End Source File
# Begin Source File

SOURCE=.\Xb_pbtu.c
# End Source File
# Begin Source File

SOURCE=.\Xb_setqu.c
# End Source File
# Begin Source File

SOURCE=.\Xb_strin.c
# End Source File
# Begin Source File

SOURCE=.\Xb_varad.c
# End Source File
# Begin Source File

SOURCE=.\Xb_varde.c
# End Source File
# Begin Source File

SOURCE=.\Xb_varli.c
# End Source File
# Begin Source File

SOURCE=.\Xb_varrd.c
# End Source File
# Begin Source File

SOURCE=.\Xb_varre.c
# End Source File
# Begin Source File

SOURCE=.\Xb_varup.c
# End Source File
# Begin Source File

SOURCE=.\Xb_vchco.c
# End Source File
# Begin Source File

SOURCE=.\Xb_vchgr.c
# End Source File
# Begin Source File

SOURCE=.\Xb_vchmo.c
# End Source File
# Begin Source File

SOURCE=.\Xb_vchow.c
# End Source File
# Begin Source File

SOURCE=.\Xbapi.h
# End Source File
# Begin Source File

SOURCE=.\xbapi32.def
# End Source File
# Begin Source File

SOURCE=.\Xbapi_in.h
# End Source File
# End Target
# End Project
