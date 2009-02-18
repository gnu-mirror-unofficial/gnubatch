// procpar.cpp : implementation file
//

#include "stdafx.h"
#include "btrsetw.h"
#include "procpar.h"
#include "Btrsetw.hpp"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProcpar dialog

CProcpar::CProcpar(CWnd* pParent /*=NULL*/)
	: CDialog(CProcpar::IDD, pParent)
{
	//{{AFX_DATA_INIT(CProcpar)
	m_directory = "";
	m_local = -1;
	m_advterr = -1;
	//}}AFX_DATA_INIT
}

void CProcpar::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CProcpar)
	DDX_Text(pDX, IDC_DIRECTORY, m_directory);
	DDX_Radio(pDX, IDC_LOCAL, m_local);
	DDX_Radio(pDX, IDC_ADVTERR, m_advterr);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CProcpar, CDialog)
	//{{AFX_MSG_MAP(CProcpar)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SCR_ULIMIT, OnDeltaposScrUlimit)
	ON_WM_HELPINFO()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcpar message handlers

BOOL CProcpar::OnInitDialog()
{
	CDialog::OnInitDialog();
	
	SetDlgItemInt(IDC_NEXITL, m_exits.nlower);
	SetDlgItemInt(IDC_NEXITU, m_exits.nupper);
	SetDlgItemInt(IDC_EEXITL, m_exits.elower);
	SetDlgItemInt(IDC_EEXITU, m_exits.eupper);

	((CSpinButtonCtrl *) GetDlgItem(IDC_SCR_NEXITL))->SetRange(0, 255);
	((CSpinButtonCtrl *) GetDlgItem(IDC_SCR_NEXITU))->SetRange(0, 255);
	((CSpinButtonCtrl *) GetDlgItem(IDC_SCR_EEXITL))->SetRange(0, 255);
	((CSpinButtonCtrl *) GetDlgItem(IDC_SCR_EEXITU))->SetRange(0, 255);
		
	char	obuf[10];
	wsprintf(obuf, "0x%.6lx", m_ulimit);
	SetDlgItemText(IDC_ULIMIT, obuf);
	
	for  (unsigned  cnt = 0;  cnt < 9;  cnt++)
		((CButton *)GetDlgItem(IDC_OX - cnt))->SetCheck((m_umask & (1 << cnt))? 1: 0); 
	return TRUE;
}

void CProcpar::OnOK()
{
	m_exits.nlower = GetDlgItemInt(IDC_NEXITL);
	m_exits.nupper = GetDlgItemInt(IDC_NEXITU);
	m_exits.elower = GetDlgItemInt(IDC_EEXITL);
	m_exits.eupper = GetDlgItemInt(IDC_EEXITU);
	if  (m_exits.nlower > m_exits.nupper)  {
		if  (AfxMessageBox(IDP_NORMBADRANGE, MB_OKCANCEL|MB_ICONEXCLAMATION) == IDCANCEL)  {
			OnCancel();
			return;
		}
		CEdit	*ew = (CEdit *) GetDlgItem(IDC_NEXITU);
		ew->SetSel(0, -1);
		ew->SetFocus();
		return;
	}		
	if  (m_exits.elower > m_exits.eupper)  {
		if  (AfxMessageBox(IDP_ERRBADRANGE, MB_OKCANCEL|MB_ICONEXCLAMATION) == IDCANCEL)  {
			OnCancel();
			return;
		}
		CEdit	*ew = (CEdit *) GetDlgItem(IDC_EEXITU);
		ew->SetSel(0, -1);
		ew->SetFocus();
		return;
	}
	m_umask = 0;		
	for  (unsigned  cnt = 0;  cnt < 9;  cnt++)
		if  (((CButton *)GetDlgItem(IDC_OX - cnt))->GetCheck())
			m_umask |= 1 << cnt;
	CDialog::OnOK();
}

void CProcpar::OnDeltaposScrUlimit(NMHDR* pNMHDR, LRESULT* pResult) 
{
	NM_UPDOWN* pNMUpDown = (NM_UPDOWN*)pNMHDR;
	char	obuf[10];
	if  (pNMUpDown->iDelta < 0)  {
		if  (m_ulimit == 0)
			goto  beep;
	}
	else  if  (m_ulimit >= 0x80000)
		goto  beep;
	m_ulimit += pNMUpDown->iDelta;
	wsprintf(obuf, "0x%.6lx", m_ulimit);
	SetDlgItemText(IDC_ULIMIT, obuf);
	*pResult = 0;
	return;
beep:
	MessageBeep(MB_ICONASTERISK);
	*pResult = 0;
}

const DWORD a110HelpIDs[]=
{
	IDC_GX,	IDH_110_272,	// Process parameters: "X" (Button)
	IDC_OR,	IDH_110_272,	// Process parameters: "R" (Button)
	IDC_OW,	IDH_110_272,	// Process parameters: "W" (Button)
	IDC_OX,	IDH_110_272,	// Process parameters: "X" (Button)
	IDC_ULIMIT,	IDH_110_281,	// Process parameters: "" (Edit)
	IDC_SCR_ULIMIT,	IDH_110_281,	// Process parameters: "Spin1" (msctls_updown32)
	IDC_NEXITL,	IDH_110_283,	// Process parameters: "0" (Edit)
	IDC_SCR_NEXITL,	IDH_110_283,	// Process parameters: "Spin2" (msctls_updown32)
	IDC_NEXITU,	IDH_110_283,	// Process parameters: "0" (Edit)
	IDC_SCR_NEXITU,	IDH_110_283,	// Process parameters: "Spin3" (msctls_updown32)
	IDC_EEXITL,	IDH_110_287,	// Process parameters: "0" (Edit)
	IDC_SCR_EEXITL,	IDH_110_287,	// Process parameters: "Spin4" (msctls_updown32)
	IDC_EEXITU,	IDH_110_287,	// Process parameters: "0" (Edit)
	IDC_SCR_EEXITU,	IDH_110_287,	// Process parameters: "Spin5" (msctls_updown32)
	IDC_ADVTERR,	IDH_110_291,	// Process parameters: "Advance time" (Button)
	IDC_NADVTERR,	IDH_110_292,	// Process parameters: "Do not advance time" (Button)
	IDC_LOCAL,	IDH_110_293,	// Process parameters: "Local to server" (Button)
	IDC_EXPORT,	IDH_110_294,	// Process parameters: "Export" (Button)
	IDC_DIRECTORY,	IDH_110_271,	// Process parameters: "" (Edit)
	IDC_REMRUNNABLE,	IDH_110_295,	// Process parameters: "Remote runnable" (Button)
	IDC_UR,	IDH_110_272,	// Process parameters: "R" (Button)
	IDC_UW,	IDH_110_272,	// Process parameters: "W" (Button)
	IDC_UX,	IDH_110_272,	// Process parameters: "X" (Button)
	IDC_GR,	IDH_110_272,	// Process parameters: "R" (Button)
	IDC_GW,	IDH_110_272,	// Process parameters: "W" (Button)
	0, 0
};

BOOL CProcpar::OnHelpInfo(HELPINFO* pHelpInfo) 
{
	return  do_contexthelp(pHelpInfo->iCtrlId, a110HelpIDs) ||
			CDialog::OnHelpInfo(pHelpInfo);
}
