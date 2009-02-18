// mainfrm.cpp : implementation of the CMainFrame class
//

#include "stdafx.h"
#include "btrw.h"
#include "mainfrm.h"
#include "xbwnetwk.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMainFrame

IMPLEMENT_DYNCREATE(CMainFrame, CFrameWnd)

BEGIN_MESSAGE_MAP(CMainFrame, CFrameWnd)
	//{{AFX_MSG_MAP(CMainFrame)
	ON_WM_CREATE()
	ON_WM_DROPFILES()
	ON_WM_TIMER()
	//}}AFX_MSG_MAP
	// Global help commands
	ON_COMMAND(ID_HELP_INDEX, CFrameWnd::OnHelpIndex)
	ON_COMMAND(ID_HELP_USING, CFrameWnd::OnHelpUsing)
	ON_COMMAND(ID_HELP, CFrameWnd::OnHelp)
	ON_COMMAND(ID_CONTEXT_HELP, CFrameWnd::OnContextHelp)
	ON_COMMAND(ID_DEFAULT_HELP, CFrameWnd::OnHelpIndex)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// arrays of IDs used to initialize control bars

static UINT BASED_CODE indicators[] =
{
	ID_SEPARATOR,           // status line indicator
	ID_INDICATOR_CAPS,
	ID_INDICATOR_NUM,
	ID_INDICATOR_SCRL,
};

/////////////////////////////////////////////////////////////////////////////
// CMainFrame construction/destruction

CMainFrame::CMainFrame()
{
	// TODO: add member initialization code here
}

CMainFrame::~CMainFrame()
{
}

int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
	if (CFrameWnd::OnCreate(lpCreateStruct) == -1)
		return -1;

	if (!m_wndToolBar.Create(this) ||
		!m_wndToolBar.LoadToolBar(IDR_MAINFRAME))
	{
		TRACE("Failed to create toolbar\n");
		return -1;      // fail to create
	}

	m_wndToolBar.SetBarStyle(m_wndToolBar.GetBarStyle() |
		CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC);

	m_wndToolBar.EnableDocking(CBRS_ALIGN_ANY);
	EnableDocking(CBRS_ALIGN_ANY);
	DockControlBar(&m_wndToolBar);

	if (!m_wndStatusBar.Create(this) ||
		!m_wndStatusBar.SetIndicators(indicators,
		  sizeof(indicators)/sizeof(UINT)))
	{
		TRACE("Failed to create status bar\n");
		return -1;      // fail to create
	}

	DragAcceptFiles();
	SetTimer(WM_NETMSG_TICKLE, Locparams.servtimeout*1000, NULL);
	return 0;
}

/////////////////////////////////////////////////////////////////////////////
// CMainFrame diagnostics

#ifdef _DEBUG
void CMainFrame::AssertValid() const
{
	CFrameWnd::AssertValid();
}

void CMainFrame::Dump(CDumpContext& dc) const
{
	CFrameWnd::Dump(dc);
}

#endif //_DEBUG

extern	void	DroppedFile(const char FAR *);

void CMainFrame::OnDropFiles(HDROP hDropInfo)
{
	UINT	fnum = ::DragQueryFile(hDropInfo, UINT(-1), NULL, 0);
	for  (UINT  cnt = 0;  cnt < fnum;  cnt++)  {
		char	fpath[_MAX_PATH];
		::DragQueryFile(hDropInfo, cnt, fpath, _MAX_PATH);
		DroppedFile(fpath);
	}
	::DragFinish(hDropInfo);
}

void CMainFrame::OnTimer(UINT nIDEvent) 
{
	refreshconn();
}
