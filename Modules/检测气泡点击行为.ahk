TrayTip, AutoHotkey, Click Me, 10
Return

; ����������ݵĵ��
TB_HIDEBUTTON(wParam, lParam, msg, hwnd) {
	static WM_USER := 0x400
	static _______ := OnMessage(WM_USER + 4, "TB_HIDEBUTTON")
	
	If (lParam = 1029) ;�����������֪ͨ
	{
		MsgBox TrayTip Click`, �������AutoHotkey will now exit
		ExitApp
	}
	If (lParam = 102/8) ;����ʱ�䵽
	{
		MsgBox TrayTip Click`, ����ʱ�䵽AutoHotkey will now exit
		ExitApp
	}
	If (lParam = 513) ;������ͼ�������
	{
		MsgBox TrayTip Click`, ���AutoHotkey will now exit
		ExitApp
	}
	If (lParam = 519) ;������ͼ�����м�
	{
		MsgBox TrayTip Click`, �м�AutoHotkey will now exit
		ExitApp
	}
}


/*
Integer WM_LBUTTONDOWN = 513 // ������ͼ�������
Integer WM_RBUTTONDOWN = 516 // ������ͼ�����Ҽ�
Integer WM_MBUTTONDOWN = 519 // ������ͼ�����м�
Integer NIN_BALLOONSHOW = 1026 //�� Balloon Tips ����
Integer NIN_BALLOONHIDE = 1027 //�� Balloon Tips ��ʧ���� SysTrayIcon ��ɾ��������ָ���� TimeOut ʱ�䵽������� Balloon Tips �����ʧ�����ʹ���Ϣ
Integer NIN_BALLOONTIMEOUT = 1028 // �� Balloon Tips �� TimeOut ʱ�䵽
Integer NIN_BALLOONUSERCLICK = 1029 //������� Balloon Tips
//ע��:��XP��ִ��ʱ Balloon Tips ���и��رհ�ť, 
//��������ڰ�ť�Ͻ����յ� NIN_BALLOONTIMEOUT ��Ϣ��
*/