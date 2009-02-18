; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CBtrsetwView
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "btrsetw.h"
LastPage=0

ClassCount=18
Class1=CBtrsetwDoc
Class2=CBtrsetwApp
Class3=CAboutDlg
Class4=CBtrsetwView
Class5=Cdefass
Class6=CDefcond
Class7=CHostdlg
Class8=CJobmode
Class9=CLoginHost
Class10=CLoginOut
Class11=CMainFrame
Class12=CNewGrpDlg
Class13=CPortnums
Class14=CProcpar
Class15=Cprogopts
Class16=CQueuedef
Class17=CTimedflt
Class18=CTimelim

ResourceCount=15
Resource1=IDD_PROCPAR
Resource2=IDD_JOBMODE
Resource3=IDD_HOST
Resource4=IDD_TIMELIMS
Resource5=IDD_PORTNUMS
Resource6=IDD_LOGINHOST
Resource7=IDD_LOGINOUT
Resource8=IDD_NEWGROUP
Resource9=IDD_ABOUTBOX
Resource10=IDD_DEFTIMES
Resource11=IDD_DEFCOND
Resource12=IDD_DEFASS
Resource13=IDD_PROGOPTS
Resource14=IDD_QUEUEDEFS
Resource15=IDR_MAINFRAME

[CLS:CBtrsetwDoc]
Type=0
BaseClass=CDocument
HeaderFile=Btrsedoc.h
ImplementationFile=Btrsedoc.cpp

[CLS:CBtrsetwApp]
Type=0
BaseClass=CWinApp
HeaderFile=Btrsetw.h
ImplementationFile=Btrsetw.cpp

[CLS:CAboutDlg]
Type=0
BaseClass=CDialog
HeaderFile=Btrsetw.cpp
ImplementationFile=Btrsetw.cpp
Filter=D

[CLS:CBtrsetwView]
Type=0
BaseClass=CScrollView
HeaderFile=Btrsevw.h
ImplementationFile=Btrsevw.cpp
LastObject=ID_NETWORK_SETASSERVER

[CLS:Cdefass]
Type=0
BaseClass=CDialog
HeaderFile=Defass.h
ImplementationFile=Defass.cpp

[CLS:CDefcond]
Type=0
BaseClass=CDialog
HeaderFile=Defcond.h
ImplementationFile=Defcond.cpp

[CLS:CHostdlg]
Type=0
BaseClass=CDialog
HeaderFile=Hostdlg.h
ImplementationFile=Hostdlg.cpp

[CLS:CJobmode]
Type=0
BaseClass=CDialog
HeaderFile=Jobmode.h
ImplementationFile=Jobmode.cpp

[CLS:CLoginHost]
Type=0
BaseClass=CDialog
HeaderFile=LoginHost.h
ImplementationFile=LoginHost.cpp

[CLS:CLoginOut]
Type=0
BaseClass=CDialog
HeaderFile=LoginOut.h
ImplementationFile=LoginOut.cpp

[CLS:CMainFrame]
Type=0
BaseClass=CFrameWnd
HeaderFile=Mainfrm.h
ImplementationFile=Mainfrm.cpp

[CLS:CNewGrpDlg]
Type=0
BaseClass=CDialog
HeaderFile=NewGrpDlg.h
ImplementationFile=NewGrpDlg.cpp

[CLS:CPortnums]
Type=0
BaseClass=CDialog
HeaderFile=Portnums.h
ImplementationFile=Portnums.cpp

[CLS:CProcpar]
Type=0
BaseClass=CDialog
HeaderFile=Procpar.h
ImplementationFile=Procpar.cpp

[CLS:Cprogopts]
Type=0
BaseClass=CDialog
HeaderFile=Progopts.h
ImplementationFile=Progopts.cpp

[CLS:CQueuedef]
Type=0
BaseClass=CDialog
HeaderFile=Queuedef.h
ImplementationFile=Queuedef.cpp

[CLS:CTimedflt]
Type=0
BaseClass=CDialog
HeaderFile=Timedflt.h
ImplementationFile=Timedflt.cpp

[CLS:CTimelim]
Type=0
BaseClass=CDialog
HeaderFile=Timelim.h
ImplementationFile=Timelim.cpp
Filter=D
VirtualFilter=dWC
LastObject=CTimelim

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=5
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308353
Control3=IDC_STATIC,static,1342308353
Control4=IDOK,button,1342373889
Control5=IDC_STATIC,static,1342308353

[DLG:IDD_DEFASS]
Type=1
Class=Cdefass
ControlCount=23
Control1=IDC_STATIC,static,1342308352
Control2=IDC_VALUE,edit,1350631552
Control3=IDC_SCR_VALUE,msctls_updown32,1342177332
Control4=IDC_STATIC,button,1342177287
Control5=IDC_ASET,button,1342373929
Control6=IDC_AADD,button,1342242857
Control7=IDC_ASUB,button,1342242857
Control8=IDC_AMULT,button,1342242857
Control9=IDC_ADIV,button,1342242857
Control10=IDC_AMOD,button,1342242857
Control11=IDC_AEXIT,button,1342242857
Control12=IDC_ASIGNAL,button,1342242857
Control13=IDC_STATIC,button,1342177287
Control14=IDC_ANOTCRIT,button,1342373897
Control15=IDC_ACRIT,button,1342242825
Control16=IDC_ASTART,button,1342242819
Control17=IDC_AREVERSE,button,1342242819
Control18=IDC_ANORMAL,button,1342242819
Control19=IDC_AERROR,button,1342242819
Control20=IDC_AABORT,button,1342242819
Control21=IDC_ACANCEL,button,1342242819
Control22=IDOK,button,1342242817
Control23=IDCANCEL,button,1342242816

[DLG:IDD_DEFCOND]
Type=1
Class=CDefcond
ControlCount=15
Control1=IDC_VALUE,edit,1350631552
Control2=IDC_SCR_VALUE,msctls_updown32,1342177332
Control3=IDC_STATIC,static,1342308352
Control4=IDC_STATIC,button,1342177287
Control5=IDC_CEQ,button,1342373929
Control6=IDC_CNE,button,1342242857
Control7=IDC_CLT,button,1342242857
Control8=IDC_CLE,button,1342242857
Control9=IDC_CGT,button,1342242857
Control10=IDC_CGE,button,1342242857
Control11=IDC_STATIC,button,1342177287
Control12=IDC_CNOTCRIT,button,1342373897
Control13=IDC_CCRIT,button,1342242825
Control14=IDOK,button,1342242817
Control15=IDCANCEL,button,1342242816

[DLG:IDD_HOST]
Type=1
Class=CHostdlg
ControlCount=10
Control1=IDC_STATIC,static,1342308352
Control2=IDC_HOSTNAME,edit,1350631552
Control3=IDC_STATIC,static,1342308352
Control4=IDC_ALIASNAME,edit,1350631552
Control5=IDC_STATIC,static,1342308352
Control6=IDC_TIMEOUT,edit,1350631552
Control7=IDC_SCR_TIMEOUT,msctls_updown32,1342177462
Control8=IDC_PROBEFIRST,button,1342242851
Control9=IDOK,button,1342242817
Control10=IDCANCEL,button,1342242816

[DLG:IDD_JOBMODE]
Type=1
Class=CJobmode
ControlCount=42
Control1=IDC_STATIC,static,1342308352
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=IDC_JUREAD,button,1342242851
Control5=IDC_JUWRITE,button,1342242851
Control6=IDC_JUREVEAL,button,1342242851
Control7=IDC_JUDISPMODE,button,1342242851
Control8=IDC_JUSETMODE,button,1342242851
Control9=IDC_JUASSOWN,button,1342242851
Control10=IDC_JUASSGOWN,button,1342242851
Control11=IDC_JUGOWN,button,1342242851
Control12=IDC_JUGGROUP,button,1342242851
Control13=IDC_JUDELETE,button,1342242851
Control14=IDC_JUKILL,button,1342242851
Control15=IDC_JGREAD,button,1342242851
Control16=IDC_JGWRITE,button,1342242851
Control17=IDC_JGREVEAL,button,1342242851
Control18=IDC_JGDISPMODE,button,1342242851
Control19=IDC_JGSETMODE,button,1342242851
Control20=IDC_JGASSOWN,button,1342242851
Control21=IDC_JGASSGOWN,button,1342242851
Control22=IDC_JGGOWN,button,1342242851
Control23=IDC_JGGGROUP,button,1342242851
Control24=IDC_JGDELETE,button,1342242851
Control25=IDC_JGKILL,button,1342242851
Control26=IDC_JOREAD,button,1342242851
Control27=IDC_JOWRITE,button,1342242851
Control28=IDC_JOREVEAL,button,1342242851
Control29=IDC_JODISPMODE,button,1342242851
Control30=IDC_JOSETMODE,button,1342242851
Control31=IDC_JOASSOWN,button,1342242851
Control32=IDC_JOASSGOWN,button,1342242851
Control33=IDC_JOGOWN,button,1342242851
Control34=IDC_JOGGROUP,button,1342242851
Control35=IDC_JODELETE,button,1342242851
Control36=IDC_JOKILL,button,1342242851
Control37=IDC_STATIC,static,1342308352
Control38=IDC_USER,combobox,1344340290
Control39=IDC_STATIC,static,1342308352
Control40=IDC_GROUP,combobox,1344340290
Control41=IDOK,button,1342242817
Control42=IDCANCEL,button,1342242816

[DLG:IDD_LOGINHOST]
Type=1
Class=CLoginHost
ControlCount=10
Control1=IDC_STATIC,static,1342308352
Control2=IDC_UNIXHOST,edit,1342179456
Control3=IDC_STATIC,static,1342308352
Control4=IDC_CLIENTHOST,edit,1342179456
Control5=IDC_STATIC,static,1342308352
Control6=IDC_USERNAME,edit,1350631552
Control7=IDC_STATIC,static,1342308352
Control8=IDC_PASSWD,edit,1350631584
Control9=IDOK,button,1342242817
Control10=IDCANCEL,button,1342242816

[DLG:IDD_LOGINOUT]
Type=1
Class=CLoginOut
ControlCount=7
Control1=IDC_STATIC,static,1342308352
Control2=IDC_UNIXUSER,edit,1342244992
Control3=IDC_STATIC,static,1342308352
Control4=IDC_WINUSER,edit,1342244992
Control5=IDC_LOGIN,button,1342242816
Control6=IDC_LOGOUT,button,1342242816
Control7=IDCANCEL,button,1342242817

[DLG:IDD_NEWGROUP]
Type=1
Class=CNewGrpDlg
ControlCount=4
Control1=IDC_STATIC,static,1342308352
Control2=IDC_GROUP,combobox,1344340226
Control3=IDOK,button,1342242817
Control4=IDCANCEL,button,1342242816

[DLG:IDD_PORTNUMS]
Type=1
Class=CPortnums
ControlCount=28
Control1=IDC_STATIC,static,1342308353
Control2=IDC_SETDEFAULT,button,1342242816
Control3=IDC_STATIC,static,1342308352
Control4=IDC_INCALLBY,edit,1350631552
Control5=IDC_SCR_INCALLBY,msctls_updown32,1342177462
Control6=IDC_APPLYINC,button,1342242816
Control7=IDC_APPLYDEC,button,1342242816
Control8=IDC_STATIC,static,1342308352
Control9=IDC_CLIENTPORT,edit,1350639744
Control10=IDC_SCR_CLIENTPORT,msctls_updown32,1342177462
Control11=IDC_STATIC,static,1342308352
Control12=IDC_PROBEPORT,edit,1350631552
Control13=IDC_SCR_PROBEPORT,msctls_updown32,1342177462
Control14=IDC_STATIC,static,1342308352
Control15=IDC_CONNPORT,edit,1350631552
Control16=IDC_SCR_CONNPORT,msctls_updown32,1342177462
Control17=IDC_STATIC,static,1342308352
Control18=IDC_VIEWPORT,edit,1350631552
Control19=IDC_SCR_VIEWPORT,msctls_updown32,1342177462
Control20=IDC_STATIC,static,1342308352
Control21=IDC_APITCPPORT,edit,1350631552
Control22=IDC_SCR_APITCPPORT,msctls_updown32,1342177462
Control23=IDC_STATIC,static,1342308352
Control24=IDC_APIUDPPORT,edit,1350631552
Control25=IDC_SCR_APIUDPPORT,msctls_updown32,1342177462
Control26=IDC_SAVESETTINGS,button,1342242816
Control27=IDOK,button,1342242817
Control28=IDCANCEL,button,1342242816

[DLG:IDD_PROCPAR]
Type=1
Class=CProcpar
ControlCount=39
Control1=IDC_STATIC,static,1342308352
Control2=IDC_DIRECTORY,edit,1350631552
Control3=IDC_STATIC,static,1342308352
Control4=IDC_STATIC,static,1342308352
Control5=IDC_UR,button,1342242851
Control6=IDC_UW,button,1342242851
Control7=IDC_UX,button,1342242851
Control8=IDC_STATIC,static,1342308352
Control9=IDC_GR,button,1342242851
Control10=IDC_GW,button,1342242851
Control11=IDC_GX,button,1342242851
Control12=IDC_STATIC,static,1342308352
Control13=IDC_OR,button,1342242851
Control14=IDC_OW,button,1342242851
Control15=IDC_OX,button,1342242851
Control16=IDC_STATIC,static,1342308352
Control17=IDC_ULIMIT,edit,1350631424
Control18=IDC_SCR_ULIMIT,msctls_updown32,1342177332
Control19=IDC_STATIC,static,1342308352
Control20=IDC_NEXITL,edit,1350641664
Control21=IDC_SCR_NEXITL,msctls_updown32,1342177462
Control22=IDC_STATIC,static,1342308352
Control23=IDC_NEXITU,edit,1350641664
Control24=IDC_SCR_NEXITU,msctls_updown32,1342177462
Control25=IDC_STATIC,static,1342308352
Control26=IDC_EEXITL,edit,1350641664
Control27=IDC_SCR_EEXITL,msctls_updown32,1342177462
Control28=IDC_STATIC,static,1342308352
Control29=IDC_EEXITU,edit,1350641664
Control30=IDC_SCR_EEXITU,msctls_updown32,1342177462
Control31=IDC_STATIC,button,1342177287
Control32=IDC_LOCAL,button,1342308361
Control33=IDC_EXPORT,button,1342242825
Control34=IDC_REMRUNNABLE,button,1342242825
Control35=IDC_STATIC,button,1342177287
Control36=IDC_ADVTERR,button,1342373897
Control37=IDC_NADVTERR,button,1342242825
Control38=IDOK,button,1342242817
Control39=IDCANCEL,button,1342242816

[DLG:IDD_PROGOPTS]
Type=1
Class=Cprogopts
ControlCount=6
Control1=IDC_STATIC,static,1342308352
Control2=IDC_JOBQUEUE,edit,1350631552
Control3=IDC_VERBOSE,button,1342242819
Control4=IDC_BINMODE,button,1342242819
Control5=IDOK,button,1342242817
Control6=IDCANCEL,button,1342242816

[DLG:IDD_QUEUEDEFS]
Type=1
Class=CQueuedef
ControlCount=12
Control1=IDC_STATIC,static,1342308352
Control2=IDC_TITLE,edit,1350631552
Control3=IDC_STATIC,static,1342308352
Control4=IDC_CMDINTERP,combobox,1344340291
Control5=IDC_STATIC,static,1342308352
Control6=IDC_PRIORITY,edit,1350631424
Control7=IDC_SCR_PRIORITY,msctls_updown32,1342177462
Control8=IDC_STATIC,static,1342308352
Control9=IDC_LOADLEV,edit,1350631424
Control10=IDC_SCR_LOADLEV,msctls_updown32,1342177462
Control11=IDOK,button,1342242817
Control12=IDCANCEL,button,1342242816

[DLG:IDD_DEFTIMES]
Type=1
Class=CTimedflt
ControlCount=31
Control1=IDC_DELETE,button,1342373897
Control2=IDC_RETAIN,button,1342242825
Control3=IDC_REPMINS,button,1342242825
Control4=IDC_REPHOURS,button,1342242825
Control5=IDC_REPDAYS,button,1342242825
Control6=IDC_REPWEEKS,button,1342242825
Control7=IDC_REPMONTHSB,button,1342242825
Control8=IDC_REPMONTHSE,button,1342242825
Control9=IDC_REPYEARS,button,1342242825
Control10=IDC_MESS_REPEATEVERY,button,1342177287
Control11=IDC_REPEAT,edit,1350631552
Control12=IDC_SCR_REPEAT,msctls_updown32,1342177462
Control13=IDC_MONDAYNAME,static,1342308352
Control14=IDC_MONTHDAY,edit,1350641792
Control15=IDC_SCR_MONTHDAY,msctls_updown32,1342177462
Control16=IDC_MESS_AVOIDING,button,1342177287
Control17=IDC_AVSUN,button,1342242819
Control18=IDC_AVMON,button,1342242819
Control19=IDC_AVTUE,button,1342242819
Control20=IDC_AVWED,button,1342242819
Control21=IDC_AVTHU,button,1342242819
Control22=IDC_AVFRI,button,1342242819
Control23=IDC_AVSAT,button,1342242819
Control24=IDC_AVHOLIDAY,button,1342242819
Control25=IDC_MESS_NOTPOSS,button,1342177287
Control26=IDC_NPSKIP,button,1342373897
Control27=IDC_NPDELCURR,button,1342242825
Control28=IDC_NPDELALL,button,1342242825
Control29=IDC_NPCATCHUP,button,1342242825
Control30=IDOK,button,1342242817
Control31=IDCANCEL,button,1342242816

[DLG:IDD_TIMELIMS]
Type=1
Class=CTimelim
ControlCount=30
Control1=IDC_STATIC,static,1342308352
Control2=IDC_DELTIME,edit,1350633472
Control3=IDC_SCR_DELTIME,msctls_updown32,1342177462
Control4=IDC_STATIC,static,1342308352
Control5=IDC_HOUR,edit,1350641664
Control6=IDC_SCR_HOUR,msctls_updown32,1342177332
Control7=IDC_COLON,static,1342308352
Control8=IDC_MIN,edit,1350641664
Control9=IDC_SCR_MIN,msctls_updown32,1342177332
Control10=IDC_COLON2,static,1342308352
Control11=IDC_SEC,edit,1350641664
Control12=IDC_SCR_SEC,msctls_updown32,1342177332
Control13=IDC_RTOFF,button,1342242816
Control14=IDC_STATIC,button,1342177287
Control15=IDC_KW_TERM,button,1342373897
Control16=IDC_KW_KILL,button,1342242825
Control17=IDC_KW_HUP,button,1342242825
Control18=IDC_KW_INT,button,1342242825
Control19=IDC_KW_QUIT,button,1342242825
Control20=IDC_KW_ARLM,button,1342242825
Control21=IDC_KW_BUS,button,1342242825
Control22=IDC_KW_SEGV,button,1342242825
Control23=IDC_STATIC,static,1342308352
Control24=IDC_MIN2,edit,1350633472
Control25=IDC_SCR_MIN2,msctls_updown32,1342177332
Control26=IDC_COLON3,static,1342308352
Control27=IDC_SEC2,edit,1350633472
Control28=IDC_SCR_SEC2,msctls_updown32,1342177332
Control29=IDOK,button,1342242817
Control30=IDCANCEL,button,1342242816

[MNU:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_PROGRAM_SAVE
Command2=ID_PROGRAM_LOGINORLOGOUT
Command3=ID_PROGRAM_NEWGROUP
Command4=ID_PROGRAM_PORTSETTINGS
Command5=ID_APP_EXIT
Command6=ID_NETWORK_ADDNEWHOST
Command7=ID_NETWORK_DELETEHOST
Command8=ID_NETWORK_CHANGEHOST
Command9=ID_NETWORK_SETASSERVER
Command10=ID_OPTIONS_RESTOREDEFAULTS
Command11=ID_OPTIONS_PROGRAMDEFAULTS
Command12=ID_OPTIONS_TIMEDEFAULTS
Command13=ID_OPTIONS_CONDITIONDEFAULTS
Command14=ID_OPTIONS_ASSIGNMENTDEFAULTS
Command15=ID_OPTIONS_QUEUEDEFAULTS
Command16=ID_OPTIONS_PROCESSPARAMETERS
Command17=ID_OPTIONS_TIMELIMITS
Command18=ID_OPTIONS_PERMISSIONS
Command19=ID_VIEW_TOOLBAR
Command20=ID_VIEW_STATUS_BAR
Command21=ID_HELP_INDEX
Command22=ID_HELP_USING
Command23=ID_APP_ABOUT
CommandCount=23

[ACL:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_PROGRAM_SAVE
Command2=ID_NETWORK_DELETEHOST
Command3=ID_HELP
Command4=ID_CONTEXT_HELP
Command5=ID_NEXT_PANE
Command6=ID_PREV_PANE
Command7=ID_NETWORK_SETASSERVER
Command8=ID_NETWORK_ADDNEWHOST
CommandCount=8

[TB:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_PROGRAM_SAVE
Command2=ID_NETWORK_ADDNEWHOST
Command3=ID_NETWORK_DELETEHOST
Command4=ID_NETWORK_CHANGEHOST
Command5=ID_NETWORK_SETASSERVER
Command6=ID_OPTIONS_PROGRAMDEFAULTS
Command7=ID_OPTIONS_TIMEDEFAULTS
Command8=ID_OPTIONS_CONDITIONDEFAULTS
Command9=ID_OPTIONS_ASSIGNMENTDEFAULTS
Command10=ID_OPTIONS_QUEUEDEFAULTS
Command11=ID_OPTIONS_PROCESSPARAMETERS
Command12=ID_OPTIONS_PERMISSIONS
Command13=ID_APP_ABOUT
Command14=ID_CONTEXT_HELP
CommandCount=14

