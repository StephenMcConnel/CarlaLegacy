#if !defined(AFX_DLGEDITSTAMPPROCESS_H__B140E2C2_2D32_11D2_A09E_E12649467D2F__INCLUDED_)
#define AFX_DLGEDITSTAMPPROCESS_H__B140E2C2_2D32_11D2_A09E_E12649467D2F__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// DlgEditStampProcess.h : header file
//
#include "..\resource.h" // get the IDD constants
/////////////////////////////////////////////////////////////////////////////
// CDlgEditStampProcess dialog

class CDlgEditStampProcess : public CDialog
{
// Construction
public:
	CDlgEditStampProcess(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CDlgEditStampProcess)
	enum { IDD = IDD_EditStampProcess };
	BOOL	m_bCheckMorphnames;
	BOOL	m_bCheckRootCats;
	BOOL	m_bMonitorProgress;
	BOOL	m_bAllAllomorphCombos;
	BOOL	m_bPrintTestParseTrees;
	BOOL	m_bTrace;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDlgEditStampProcess)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CDlgEditStampProcess)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DLGEDITSTAMPPROCESS_H__B140E2C2_2D32_11D2_A09E_E12649467D2F__INCLUDED_)
