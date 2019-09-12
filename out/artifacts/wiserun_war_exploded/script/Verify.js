//***********************************************************************
//�������ƣ�	isDate()
//�������ܣ�	�ж��Ƿ�Ϊ����������
//����������	��ȷ���������ݷ���true,���򷵻�false,�����ռ��: /  -  .
//������ڣ�	2002.03.14
//�������ߣ�	zzk
//***********************************************************************
function isDate(Obj) {
	//if(Obj.substring(4,5) != '-' && Obj.substring(4,5) != '/' && Obj.substring(4,5) != '.') {
	//	window.alert("put error!");
	//	Object.focus();
	//	return false;
	//}
	
	if (Obj.length ==0) return true;
	if(Obj.length != 8) return false;
	if (!isInt(Obj)) return false;
	var aryNum = new Array();
	for(var i = 0 ; i < 10 ; i++) {
		aryNum[i] = i;
	}
	var intNum = 0;
	for(var i = 0 ; i < Obj.length ; i++) {
		if(i != 4 && i != 7) {
			for(var j = 0 ; j < 10 ; j++) {
				if(Obj.substring(i,i+1) == aryNum[j]) {
					intNum++;
				}
			}
		}
	}
	if(intNum != 8) {
	//	return false;
	}
	var year = parseInt(Obj.substring(0,4));
	var month;
	var day;
	if(Obj.substring(4,5) == '0') {
		month = parseInt(Obj.substring(5,6));
	}
	else {
		month = parseInt(Obj.substring(4,6));
	}
	if(Obj.substring(6,7) == '0') {
		day = parseInt(Obj.substring(7,8));
	}
	else {
		day = parseInt(Obj.substring(6,8));
	}
	
	if(month > 12 || month < 1 || day < 1) {
		return false;
	}
	if(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
		if(day > 31) {
			return false;
		}
	}
	else if(month == 4 || month == 6 || month == 9 || month == 11) {
		if(day > 30) {
			return false;
		}
	}
	else if(month == 2) {
		if(year % 4 > 0) {
			if(day > 28) {
				return false;
			}
		}
		else if(year % 100 == 0 && year % 400 > 0) {
			if(day > 28) {
				return false;
			}
		}
		else {
			if(day > 29) {
				return false;
			}
		}
	}
	return true;
}

//***********************************************************************
//�������ƣ�	isInt()
//�������ܣ�	�ж��Ƿ�Ϊ����������
//����������	��ȷ���������ݷ���true,���򷵻�false,û��λ������
//������ڣ�	2002.03.14
//�������ߣ�	zzk
//***********************************************************************
function isInt(Obj) {
	if(Obj.length == 0) {
		return false;
	}
	var aryNum = new Array();
	for(var i = 0 ; i < 10 ; i++) {
		aryNum[i] = i;
	}
	if(Obj.substring(0,1) == '0' && Obj.length > 1 && parseInt(Obj) != 0) {
		return false;
	}
	var intNum = 0;
	for(var i = 0 ; i < Obj.length ; i++) {
		for(var j = 0 ; j < 10 ; j++) {
			if(Obj.substring(i,i+1) == aryNum[j]) {
				intNum++;
			}
		}
	}
	if(intNum != Obj.length - 1 && Obj.substring(0,1) == '-') {
		return false;
	}
	else if(intNum != Obj.length && Obj.substring(0,1) != '-') {
		return false;
	}
	return true;
}

//***********************************************************************
//�������ƣ�	GetTime()
//�������ܣ�	�������������
//����������	����yyyy-mm-dd hh:mm��ʱ������
//������ڣ�	2002.03.14
//�������ߣ�	zzk
//***********************************************************************
function GetTime() {  
	var d, s, date;
	d = new Date();
	s = d.toLocaleString(); 
	date = s.substring(6,10) + "-" + s.substring(0,2) + "-" + s.substring(3,5);
	date = date + " " + s.substring(11,13) + ":" + s.substring(14,16);
	return(date);
}

//***********************************************************************
//�������ƣ�	isNum()
//�������ܣ�	�ж��Ƿ�Ϊ��ֵ������
//����������	��ȷ��ֵ�����ݷ���true,���򷵻�false
//������ڣ�	2002.03.27
//�������ߣ�	zzk
//***********************************************************************
function isNum(Obj) {
	var dotAt;
	var intLen = 0 ;
	dotAt = Obj.indexOf('.');
	if(dotAt == 0) {
		return false;
	}
	if(dotAt == -1 && Obj.substring(0,1) == "0") {
		return false;
	}
	var aryNum = new Array();
	for(var i = 0 ; i < 10 ; i++) {
		aryNum[i] = i;
	}
	if(dotAt == -1) {
		for(var i = 0 ; i < Obj.length ; i++) {
			for(var j = 0 ; j < 10 ; j++) {
				if(Obj.substring(i,i+1) == aryNum[j]) {
					intLen++;
				}
			}
		}
		if(intLen != Obj.length) {
			return false;
		}
	}
	if(dotAt > 0) {
		intLen = 0;
		for(var i = 0 ; i < Obj.length ; i++) {
			if(i != dotAt) {
				for(var j = 0 ; j < 10 ; j++) {
					if(Obj.substring(i,i+1) == aryNum[j]) {
						intLen++;
					}
				}
			}
		}
		if(intLen != Obj.length - 1) {
			return false;
		}
	}
	return true;
}

//***********************************************************************
//�������ƣ�	isIDCard()
//�������ܣ�	�ж��Ƿ�Ϊ���֤��������
//����������	��ȷ���֤�������ݷ���true,���򷵻�false
//������ڣ�	2002.03.28
//�������ߣ�	zzk
//***********************************************************************
function isIDCard(Obj) {
	var aryNum = new Array();
	var intNoLen = 0;
	for(var i = 0 ; i < 10 ; i++) {
		aryNum[i] = i;
	}
	if(Obj.length != 15 && Obj.length != 18) {
		return false;
	}
	for(var i = 0 ; i < Obj.length ; i++) {
		for(var j = 0 ; j < 10 ; j++) {
			if(Obj.substring(i,i+1) == aryNum[j]) {
				intNoLen++;
			}
		}
	}
	if(intNoLen != Obj.length) {
		return false;
	}
	/*
	if(Obj.length == 18 && Obj.substring(17,18) != 'X') {
		if(intNoLen != Obj.length) {
			return false;
		}
	}
	else if(Obj.length == 18 && Obj.substring(17,18) == 'X') {
		if(intNoLen != Obj.length - 1) {
			return false;
		}
	}
	else if(Obj.length == 15) {
		if(intNoLen != Obj.length) {
			return false;
		}
	}
	*/
	return true;
}

//***********************************************************************
//�������ƣ�	isEmail()
//�������ܣ�	�ж��Ƿ�ΪEmail������
//����������	��ȷEmail�����ݷ���true,���򷵻�false
//������ڣ�	2002.03.28
//�������ߣ�	zzk
//***********************************************************************
function isEmail(Obj) {
	var atIndex = Obj.indexOf('@');
	var dotIndex = Obj.indexOf('.',atIndex);
	var lastDotIndex = Obj.lastIndexOf('.');
	var strWWW = "com/cn/net/jp/org/cc/tv/biz/info/pro/name/uk/ca/tw/edu/gov";
	var aryWWW = strWWW.split('/');
	var blFlag = false;
	if(dotIndex == -1 || atIndex == -1) {
		return false;
	}
	theSub = Obj.substring(0,dotIndex+1);
	if(atIndex < 1 || atIndex != Obj.lastIndexOf('@') || dotIndex < atIndex+2 || Obj.length <= theSub.length) {
		return false;
	}
	for(var i = 0 ; i < aryWWW.length ; i++) {
		if(Obj.substring(lastDotIndex+1,Obj.length).toLowerCase() == aryWWW[i] ) {
			blFlag = true;
			break;
		}
	}
	if(blFlag == false) {
		return false;
	}
	return true;
}

//***********************************************************************
//�������ƣ�	isPostCode()
//�������ܣ�	�ж��Ƿ�Ϊ�ʱ�������
//����������	��ȷ�ʱ������ݷ���true,���򷵻�false
//������ڣ�	2002.03.28
//�������ߣ�	zzk
//***********************************************************************
function isPostCode(Obj) {
	var aryNum = new Array();
	var intNoLen = 0;
	for(var i = 0 ; i < 10 ; i++) {
		aryNum[i] = i;
	}
	if(Obj.length != 6) {
		return false;
	}
	for(var i = 0 ; i < 6 ; i++) {
		for(var j = 0 ; j < 10 ; j++) {
			if(Obj.substring(i,i+1) == aryNum[j]) {
				intNoLen++;
			}
		}
	}
	if(intNoLen != 6) {
		return false;
	}
	return true;			
}

//***********************************************************************
//�������ƣ�	isWWW()
//�������ܣ�	�ж��Ƿ�Ϊ��վ������
//����������	��ȷ��վ�����ݷ���true,���򷵻�false
//������ڣ�	2002.03.28
//�������ߣ�	zzk
//***********************************************************************
function isWWW(Obj) {
	var dotNum = 0;
	var lastDotIndex = Obj.lastIndexOf('.');
	var strWWW = "com/cn/net/jp/org/cc/tv/biz/info/pro/name/uk/ca/tw/edu/gov";
	var aryWWW = strWWW.split('/');
	var blFlag = false;
	for(var i = 0 ; i < Obj.length ; i++) {
		if(Obj.substring(i,i+1) == '.') {
			dotNum++;
		}
	}
	if(dotNum < 2) {
		return false;
	}
	for(var i = 0 ; i < aryWWW.length ; i++) {
		if(Obj.substring(lastDotIndex+1,Obj.length).toLowerCase() == aryWWW[i]) {
			blFlag = true;
			break;
		}
	}
	if(blFlag == false) {
		return false;
	}
	return true;
}

//***********************************************************************
//�������ƣ�	isTelNum()
//�������ܣ�	�ж��Ƿ�Ϊ�绰����������
//����������	��ȷ�绰���������ݷ���true,���򷵻�false,������ - ���
//������ڣ�	2002.03.28
//�������ߣ�	zzk
//***********************************************************************
function isTelNum(Obj) {
	var intAt = Obj.indexOf('-');
	var aryNum = new Array();
	var intNoLen = 0;
	for(var i = 0 ; i < 10 ; i++) {
		aryNum[i] = i;
	}
	if(intAt == 0) {
		return false;
	}
	else if(intAt == -1) {
		if(Obj.length != 11 && Obj.length != 12 && Obj.length != 6 && Obj.length != 7 && Obj.length != 8) {
			return false;
		}
		else {
			for(var i = 0 ; i < Obj.length ; i++) {
				for(var j = 0 ; j < 10 ; j++) {
					if(Obj.substring(i,i+1) == aryNum[j]) {
						intNoLen++;
					}
				}
			}
			if(intNoLen != Obj.length) {
				return false;
			}
		}
		if(Obj.length == 12 && (Obj.substring(0,1) != "0" || Obj.substring(1,2) != "1") ) {
			return false;
		}
		else if(Obj.length == 11 && Obj.substring(0,1) != "1") {
			return false;
		}
		else if((Obj.length == 6 || Obj.length == 7 || Obj.length == 8) && Obj.substring(0,1) == "0") {
			return false;
		}
	}
	else if(intAt > 0 && intAt < 6) {
		intNoLen = 0;
		for(var i = 0 ; i < Obj.length ; i++) {
			if(i != intAt) {	
				for(var j = 0 ; j < 10 ; j++) {
					if(Obj.substring(i,i+1) == aryNum[j]) {
						intNoLen++;
					}
				}
			}
		}
		if(intNoLen != Obj.length - 1) {
			return false;
		}
		if(Obj.substring(0,1) != "0") {
			return false;
		}
		else {
			if(Obj.length - intAt - 1 > 8 || Obj.length - intAt - 1 < 6) {
				return false;
			}
		}
	}
	else if(intAt > 5) {
		return false;
	}
	return true;
}

//***********************************************************************
//�������ƣ�	isRegUserName()
//�������ܣ�	�ж��Ƿ�Ϊע���û���������
//����������	��ȷע���û��������ݷ���true,���򷵻�false,4-20λ,����ĸ�� _ ��ͷ
//������ڣ�	2002.03.29
//�������ߣ�	zzk
//***********************************************************************
function isRegUserName(Obj) {
	if(Obj.length < 6 || Obj.length > 20) {
		return false;
	}
	var aryName = new Array();
	for(var i = 0 ; i < Obj.length ; i++) {
		aryName[i] = Obj.charAt(i).charCodeAt(0) ;
	}
	if(!(aryName[0] == 95 || aryName[0] > 64 && aryName[0] < 90 || aryName[0] > 96 && aryName[0] < 123)) {
		return false;
	}
	for(var i = 1 ; i < aryName.length ; i++) {
		if(!(aryName[i] == 95 || aryName[i] > 64 && aryName[i] < 90 || aryName[i] > 96 && aryName[i] < 123 || aryName[i] > 47 && aryName[i] < 58)) {
			return false;
		}
	}
	return true;
}


function isAge(Obj) {
	if(Obj.length != 2) {
		return false;
	}
	if(!isInt(Obj)) {
		return false;
	}
	return true;
}

//У��绰����
function isTel(s)
{
	var patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
	if(!patrn.exec(s))
		return false;
	return true;
}

function isDig(Obj) {
	if(Obj.length == 0) {
		return false;
	}
	var aryNum = new Array();
	for(var i = 0 ; i < 10 ; i++) {
		aryNum[i] = i;
	}
	var intNum = 0;
	for(var i = 0 ; i < Obj.length ; i++) {
		for(var j = 0 ; j < 10 ; j++) {
			if(Obj.substring(i,i+1) == aryNum[j]) {
				intNum++;
			}
		}
	}
	if(intNum != Obj.length) {
		return false;
	}
	return true;
}

//��Ϣ����ģ��ר�ú���
function funKeyPress(Obj) {
	if(Obj != 8 && Obj != 37 && Obj != 38 && Obj != 39 && Obj != 40) {
		var strValue = frmList.txtEndDate.value;
		if(!isDig(strValue) && strValue.length == 1) {
			frmList.txtEndDate.value= "";
		}
		else if(!isDig(strValue) && strValue.length == 2) {
			frmList.txtEndDate.value= strValue.substring(0,1);
		}
		else if(!isDig(strValue) && strValue.length == 3) {
			frmList.txtEndDate.value= strValue.substring(0,2);
		}
		else if(!isDig(strValue) && strValue.length == 4) {
			frmList.txtEndDate.value= strValue.substring(0,3);
		}
		else if(strValue.length == 4) {
			frmList.txtEndDate.value = frmList.txtEndDate.value + "-";
		}
		else if(strValue.length == 5 && strValue.substring(4,5) != "-") {
			frmList.txtEndDate.value = strValue.substring(0,4) + "-";
		}
		else if((!isDig(strValue.substring(5,6)) || !isMonth(strValue.substring(5,6))) && strValue.length == 6) {
			frmList.txtEndDate.value= strValue.substring(0,5);
		}
		else if((!isDig(strValue.substring(6,7)) || !isMonth(strValue.substring(5,7))) && strValue.length == 7) {
			frmList.txtEndDate.value= strValue.substring(0,5);
		}
		else if(strValue.length == 7) {
			frmList.txtEndDate.value = frmList.txtEndDate.value + "-";
		}
		else if(strValue.length == 8 && strValue.substring(7,8) != "-") {
			frmList.txtEndDate.value = strValue.substring(0,7) + "-";
		}
		else if((!isDig(strValue.substring(8,9)) || !isDay(strValue.substring(8,9))) && strValue.length == 9) {
			frmList.txtEndDate.value= strValue.substring(0,8);
		}
		else if((!isDig(strValue.substring(9,10)) || !isDay(strValue.substring(8,10))) && strValue.length == 10) {
			frmList.txtEndDate.value= strValue.substring(0,8);
		}
		else if(strValue.length == 10) {
			frmList.txtEndDate.value = frmList.txtEndDate.value + " ";
		}
		else if(strValue.length == 11 && strValue.substring(10,11) != " ") {
			frmList.txtEndDate.value = strValue.substring(0,10) + " ";
		}
		else if((!isDig(strValue.substring(11,12)) || !isHour(strValue.substring(11,12))) && strValue.length == 12) {
			frmList.txtEndDate.value= strValue.substring(0,11);
		}
		else if((!isDig(strValue.substring(12,13)) || !isHour(strValue.substring(11,13))) && strValue.length == 13) {
			frmList.txtEndDate.value= strValue.substring(0,11);
		}
		else if(strValue.length == 13) {
			frmList.txtEndDate.value = frmList.txtEndDate.value + ":";
		}
		else if(strValue.length == 14 && strValue.substring(13,14) != ":") {
			frmList.txtEndDate.value = strValue.substring(0,13) + ":";
		}
		else if((!isDig(strValue.substring(14,15)) || !isMinute(strValue.substring(14,15))) && strValue.length == 15) {
			frmList.txtEndDate.value= strValue.substring(0,14);
		}
		else if((!isDig(strValue.substring(15,16)) || !isMinute(strValue.substring(14,16))) && strValue.length == 16) {
			frmList.txtEndDate.value= strValue.substring(0,14);
		}
		else if(strValue.length >= 16) {
			frmList.txtEndDate.value= strValue.substring(0,16);
		}
	}
}

function isHour(Obj) {
	if(Obj.length == 1) {
		if(parseInt(Obj) > 2) {
			return false;
		}
	}
	else if(Obj.length == 2) {
		if(parseInt(Obj.substring(0,1)) > 2) {
			return false;
		}
		else if(parseInt(Obj) > 23) {
			return false;
		}
	}
	return true;
}

function isMinute(Obj) {
	if(Obj.length == 1) {
		if(parseInt(Obj) > 5) {
			return false;
		}
	}
	else if(Obj.length == 2) {
		if(parseInt(Obj.substring(0,1)) > 5) {
			return false;
		}
		else if(parseInt(Obj) > 59) {
			return false;
		}
	}
	return true;
}

function isMonth(Obj) {
	if(Obj.length == 1) {
		if(parseInt(Obj) > 1) {
			return false;
		}
	}
	else if(Obj.length == 2) {
		if(parseInt(Obj.substring(0,1)) > 1) {
			return false;
		}
		else if(parseInt(Obj) > 12) {
			return false;
		}
	}
	return true;
}

function isDay(Obj) {
	if(Obj.length == 1) {
		if(parseInt(Obj) > 3) {
			return false;
		}
	}
	else if(Obj.length == 2) {
		if(parseInt(Obj.substring(0,1)) > 3) {
			return false;
		}
		else if(parseInt(Obj) > 31) {
			return false;
		}
	}
	return true;
}

//��Ϣ����ģ��ר�ú��� end

//***********************************************************************
//�������ƣ�	is_select_changed(tag,value)
//�������ܣ�	�����б�ǰѡ���Ƿ�Ϊָ��ֵ
//����������	�����б�ǰѡ���Ƿ�Ϊָ��ֵ�����򷵻�true,����false
//������ڣ�	2004.02.26
//�������ߣ�	mdx
//***********************************************************************
function is_select_changed(tag,value)
{
	var object = eval("document.all."+tag+"");
	if(object.type == "select-one")
	{
		if(object.options[object.selectedIndex].value != value)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	else
	{
		return false;
	}
}

//***********************************************************************
//�������ƣ�	do_check_and_confirm(tag_list,list_trans_chs)
//�������ܣ�	����ǩ�б��и��������״̬
//����������	�ı���Ϊ�ջ������б�ǰѡ���ǵ�һ��ʱ����������Ӧ��������ʾ
//������ڣ�	2004.02.26
//�������ߣ�	mdx
//***********************************************************************
function do_check_and_confirm(list,list_chs)
{
	var object;
	//object = eval("document.all."+list[0]+"");
	//alert(object.name);
	for(var i = 0;i < list.length;i++)
	{
		object = eval("document.all."+list[i]+"");
		if(object.type == "text")
		{
			if(object.value == "")
			{
				alert(list_chs[i]+" ����!");
				object.focus();
				return false;
			}
		}
		else//type == select-one
		{
			//alert(object.options[0].selected);
			//alert(object.type);
			if(object.options[0].selected == true)
			{
				alert(list_chs[i]+" ��ѡ!");
				object.focus();
				return false;
			}
		}
	}
	return true;
}

function check_click(obj,value,value1)
{
	if(obj.checked)
	{
		obj.value = value;
	
	}
	else
	{
		
		obj.value = value1;
	}
	//window.alert(obj.value);
	
}

	/*
	 * �ж��Ƿ�������
	 */
	function isPositiveNumber(val) {
		if (val == "") {
			return false;
		}
		if (isNaN(val)) {
			return false;
		}
		if (val < 0) {
			return false;
		}
		return true;
	}
	
	/*
	 * ǿ�Ʊ���С����λ��
	 * val �������ֵ
	 * digit ����С����λ��
	 */
	function numFormat(val,digit) {
		var fVal = parseFloat(val);
		var multiple = 1;
		var returnVal = "0";
		if (isNaN(val)) {
			fVal = 0;
		}
		if (isNaN(digit)) {
			digit = 0;
		}
		for (var i = 0; i < digit;i ++) {
			multiple = multiple * 10;
		}
		fVal = Math.round(fVal*multiple)/multiple;
		returnVal = fVal.toString();
		
		var pos_decimal = returnVal.indexOf('.');
		if (pos_decimal < 0) {
			pos_decimal = returnVal.length;
			returnVal += '.';
		}
		while (returnVal.length <= pos_decimal + digit) {
			returnVal += '0';
		}
		return returnVal;
	}


	