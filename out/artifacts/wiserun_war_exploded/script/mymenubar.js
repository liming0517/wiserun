// mymenubar.js

function MyMenuBar()
{
	Menu.prototype.cssFile = "/PUB_J2EE/skins/officexp/officexp.css";
	
	
	//--------------�ֿ���� ----------------
	
	var m_jcgl = new Menu();
	
	var m_jcgl_item1 = new MenuItem("���ֵ��Ǽ�","/PUB_J2EE/form/CKGL/JCGL/JCDJ.jsp");
	m_jcgl_item1.target = "_top";
	
	var m_jcgl_item2 = new MenuItem("���ֵ���ѯ","/PUB_J2EE/form/CKGL/JCGL/JCCX.jsp");
	m_jcgl_item2.target = "_top";
	
	
	var m_jcgl_item3 = new MenuItem("���ֵ��Ǽ�","/PUB_J2EE/form/CKGL/CCGL/CCDJ.jsp");
	m_jcgl_item2.target = "_top";
	
	var m_jcgl_item4 = new MenuItem("���ֵ���ѯ","/PUB_J2EE/form/CKGL/CCGL/CCCX.jsp");
	m_jcgl_item2.target = "_top";
	
	m_jcgl.add(m_jcgl_item1);
	m_jcgl.add(m_jcgl_item2);
	m_jcgl.add(m_jcgl_item3);
	m_jcgl.add(m_jcgl_item4);

	
	
	//--------------��Ʒ���� ----------------
	
	var m_goods = new Menu();
	

	
	//--------------�̵���� ----------------
	
	var m_pandian = new Menu();
	
	var m_pandian_item1 = new MenuItem("���ⵥ�����ѯ","/PUB_J2EE/form/PDGL/JKD-CX.jsp");
	m_pandian_item1.target = "_top";
	
	var m_pandian_item2 = new MenuItem("���ⵥ�����ѯ","/PUB_J2EE/form/PDGL/CKD-CX.jsp");
	m_pandian_item2.target = "_top";
	
	var m_pandian_item3 = new MenuItem("��ǰ��汨���ѯ","/PUB_J2EE/form/PDGL/DQK-CX.jsp");
	m_pandian_item2.target = "_top";
	
	m_pandian.add(m_pandian_item1);
	m_pandian.add(m_pandian_item2);
	m_pandian.add(m_pandian_item3);



	//��½���
	var m_login = new Menu();
	var m_login_item1 = new MenuItem("���µ�½","/PUB_J2EE/Login.jsp");
	m_login_item1.target = "_top";
	m_login.add(m_login_item1);
	
	
	//��������
	var m_set = new Menu();
	var m_set_item1 = new MenuItem("��������","/PUB_J2EE/base/config/BaseConfig.jsp");
	m_set_item1.target = "_top";
	m_set.add(m_set_item1);
	
	//����Ϣ
	var m_message = new Menu();
	var m_message_item1 = new MenuItem("�ռ���","/PUB_J2EE/form/Message/QueryMessage.jsp?Type=1");
	var m_message_item2 = new MenuItem("������Ϣ","/PUB_J2EE/form/Message/SendMessage.jsp");
	m_message_item1.target = "_top";
	m_message_item2.target = "_top";
	m_message.add(m_message_item1);
	m_message.add(m_message_item2);
	//========================================================================
	//�������˵�
	var menubar = new MenuBar();
	
	var mb_button0 = new MenuButton("�ҵ���Ϣ", m_message);
	var mb_button1 = new MenuButton("�ֿ����", m_jcgl);

	
	var mb_button2 = new MenuButton("��Ʒ����", m_goods);

	
	var mb_button3 = new MenuButton("�̵����",m_pandian);
	
	var mb_button4 = new MenuButton("��������",m_set);
	
	var mb_button5 = new MenuButton("��½���",m_login);

	menubar.add(mb_button0);		
	menubar.add(mb_button1);
	menubar.add(mb_button2);
	menubar.add(mb_button3);
	menubar.add(mb_button4);
	menubar.add(mb_button5);

	
	
	return menubar;
}