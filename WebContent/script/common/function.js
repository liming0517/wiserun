/**
 *    Last Modify by hadesying 2011-06-22
 *    
 *	  JavaScript����У�鳣����루0.01��
 *
 *
 *
 *	  ���ܺ���
 *
 *				������										����
 *
 *	 isTDate(year,month,day,sStr)			|		�Ƿ�����Ч������ֵ
 *	 isDateNum(year,month,day)				|		�Ƿ�����Ч������ֵ
 *	 SeleVal(objName)                       |       ����������ѡ�е�ֵ��δѡ�У�����false��
 *   SeleTxt(objName)                       |       ����������ѡ�е�Text��δѡ�У�����false��
 *	 isMailBox(objName,sStr)				|		�Ƿ�����Ч��Mail��ַ
 *	 isNumeric(objName,sStr)				|       �Ƿ�����Ч����ֵ��һ����ڲ���Ϊ��������
 *	 isNumeric2(data,sStr)					|       �Ƿ�����Ч����ֵ��һ����ڲ���Ϊ�ַ���
 *	 isNumeric3(objName,sStr)				|       �Ƿ�����Ч����ֵ��һ����ڲ���Ϊ��������
 *	 isPostID(objName,sStr)					|	    �Ƿ�����Ч�����֤����
 *	 isNull(objName,sStr)					|		�Ƿ�Ϊ�գ�һ����ڲ���Ϊ��������
 *	 isNull2(data,sStr)						|		�Ƿ�Ϊ�գ�������ڲ���Ϊ�ַ���
 *	 isSelected(objName,sStr)				|		�Ƿ�����ѡ�ѡ��(�ӵڶ�����)		��غ�����GetObjID(ObjName)
 *	 isTSelected(objName,sStr)				|		�Ƿ�����ѡ�ѡ��(ѡ���ֵ��Ϊ-1)	��غ�����GetObjID(ObjName)
 *   isLength(objName,num,sStr)				|		�����Ƿ����ָ������
 *	 maxValue(objName,min,max,sStr)			|		�������ֵ�Ƿ���ָ���ķ�Χ��
 *	 isChecked(objName,sStr)				|		�Ƿ���ѡ��ѡ��
 *	 isChecked2(objName,i,sStr)				|		�Ƿ���ѡ�����ָ����ѡ��ѡ�У����飩
 *	 isPassword(obj1,obj2)				    |		��������Ƿ���ȷ
 *�� del(url)								|		�Ƿ�Ҫɾ��������¼����ڲ���Ϊ���ӵ��ļ�����
 *	 setText(objName,sStr)------------------------------------- ����������TEXT
**/

function selectchange(str,str1){
	//��һ����������ʾ���ݸ��ı��� 2003/6/17 modify by hades
	//alert("ff");
	var obj1 = eval("document.all." + str);  // getObj(str);
	var obj2 = eval("document.all." + str1); //getObj(str1);
	var i_index = obj1.selectedIndex;

	//alert(i_index);
	//obj2.value = obj1.options[i_index].value;//Mem by Bryan 2003-5-15 
	obj2.value = obj1.options[i_index].text;//Add by Bryan 2003-5-15 
}

function trimall(data)
{
  var datastr = data;
  var leftspace = datastr.search(/\S/gi);
  if (leftspace > 0)
  {
    datastr = datastr.substr(leftspace);
  }

  leftspace = datastr.search(/\s/gi);
  var rightspace = 0;
  var endspace = 0;
  
  var leftstr = datastr;
  while (leftspace != -1) {
    rightspace = rightspace + leftspace;
    leftstr = leftstr.substr(leftspace);
    leftspace = leftstr.search(/\S/gi);
    if (leftspace != -1) {
      rightspace = rightspace + leftspace;
      leftstr = leftstr.substr(leftspace);
      leftspace = leftstr.search(/\s/gi);
      endspace = 0;
    } else {
      endspace = 1;
    }
  }

  if ((endspace != 0) && (rightspace > 0)) {
    datastr = datastr.substring(0, rightspace);
  }
  
  return datastr;
}

function setText(objName,sStr)						//����������TEXT
{

//	alert("aaa");
	//var objName=eval(objNameold);
	//alert(objName.value);
 	 //2003 /6/ 10 HADES
	 j=document.all.item(objName).length;
	ObjID=GetObjID(objName);
	for(i=0;i<j;i++)
	{
//			alert(i);
	     if (trimall(document.form1.elements[ObjID].options[i].text)==trimall(sStr) )
		{
		//	alert(sStr);
		   document.form1.elements[ObjID].options[i].selected =true ;
		}
	}
//	return false;
}

function isDate(year,month,day,sStr)						//�Ƿ�����Ч������ֵ
{
	//alert(document.all.item(year).value);
	if (!isNumeric(year,sStr))								//�������������Ƿ�����ֵ���͵�		
		return false;

	if (parseInt(document.all.item(year).value)<1000)		//�������������Ƿ�����λ
	{
		if (sStr!="")										//�������ݲ�����λ��������Ƿ�Ҫ��ʾ����
		{
			alert(sStr);									//��ʾ����
			document.all.item(year).select();				//ѡ�����λ��
		}
		return false;
	}

	if (!isNumeric(month,sStr))
		return false;

	if (parseInt(document.all.item(month).value)<=0 || parseInt(document.all.item(month).value)>12) //����������·��Ƿ�Ϸ�
	{
		if (sStr!="")										//������·ݲ��Ϸ���������Ƿ�Ҫ��ʾ����
		{
			alert(sStr);									//��ʾ����
			document.all.item(month).select();				//ѡ�����λ��
		}
		return false;
	}

	if (!isNumeric(day,sStr))
		return false;

	if (parseInt(document.all.item(day).value)<=0 || parseInt(document.all.item(day).value)>31)	//��������������Ƿ�Ϸ�
	{
		if (sStr!="")										//��������ڲ��Ϸ���������Ƿ�Ҫ��ʾ����
		{
			alert(sStr);									//��ʾ����
			document.all.item(day).select();				//ѡ�����λ��
		}
		return false;
	}
	return true;
}

function isMailBox(objName,sStr)							//�Ƿ�����Ч��Mail��ַ
{
	var data;
	data=document.all.item(objName).value;				

	if (data.indexOf('@')==-1)								//�����ַ����е�'@'
	{
		if (sStr!="") 
		{
			alert(sStr);
			document.all.item(objName).select();
		}
		return false;
	}

	var i;
	i=data.indexOf('@');									//��ʾ���ַ����е�'@'��λ��

	if (data.indexOf('.',i)==-1 || data.lastIndexOf('.')==data.length-1) //���ҳ�'.'��λ����λ�ò�Ϊ���һλ
	{
		if (sStr!="") 
		{
			alert(sStr);
			document.all.item(objName).select();
		}
		return false;
	}

	return true;
}

function isNumeric(objName,sStr)						   //�Ƿ�����Ч����ֵ��һ����ڲ���Ϊ��������
{
	if (isNaN(document.all.item(objName).value) || trim(document.all.item(objName).value)=="")
	{
		if (sStr!="") 
		{
			alert(sStr);
			document.all.item(objName).select();
		}
		return false;
	}
	return true;
}

function isNumeric2(data,sStr)							//�Ƿ�����Ч����ֵ��������ڲ���Ϊ�ַ���
{
	data=trim(data);
	if (isNaN(data) || data=="")
	{
		if (sStr!="") 
			alert(sStr);
		return false;
	}
	return true;
}


function isPostID(objName,sStr)							//�Ƿ�����Ч�����֤����
{
	//if (!isNumeric(objName,sStr)) return false;
	if (document.all.item(objName).value.length==15 || document.all.item(objName).value.length==18)
		return true;
	if (sStr!="") 
		{
			alert(sStr);
			document.all.item(objName).select();
		}
	return false;
}

function isNull(objName,sStr)							//�Ƿ�Ϊ�գ�һ����ڲ���Ϊ��������
{
	if (trim(document.all.item(objName).value)=="")
	{
		if (sStr!="") 
		{
			alert(sStr);
			document.all.item(objName).select();
		}
		return false;
	}
	return true;
}

function isNull2(data,sStr)								//�Ƿ�Ϊ�գ�������ڲ���Ϊ�ַ���
{
	data=trim(data)
	if (data=="")
	{
		if (sStr!="") 
			alert(sStr);
		return false;
	}
	return true;
}


function GetObjID(ObjName)							  //�õ�������������Ӧ�������±�
{ for ( var ObjID=0; ObjID < window.form1.elements.length; ObjID++ )
      if (window.form1.elements[ObjID].name == ObjName )
      {  return(ObjID);
         break;
      }
  return(-1);
}

function isSelected(objName,sStr)					  //�Ƿ�����ѡ�ѡ��
{
	j=document.all.item(objName).length;
	ObjID=GetObjID(objName);
	for(i=1;i<j;i++)
	{
		if (document.form1.elements[ObjID].options[i].selected)
			return true;
	}
	if (sStr!="") alert(sStr);
	document.all.item(objName).focus();
	return false;
}

function isTSelected(objName,sStr)					//�Ƿ�����ѡ�ѡ��
{
	j=document.all.item(objName).length;
	ObjID=GetObjID(objName);
	for(i=1;i<j;i++)
	{
		if (document.form1.elements[ObjID].options[i].selected && document.form1.elements[ObjID].options[i].value!=-1)
			return true;
	}
	if (sStr!="") alert(sStr);
	document.all.item(objName).focus();
	return false;
}

function isLength(objName,num,sStr)				  //�����Ƿ����ָ������
{
	var tmpstr
	tmpstr=trim(document.all.item(objName).value)
	if (tmpstr.length!=num)
	{
		if (sStr!="") 
		{
			alert(sStr);
			document.all.item(objName).select();
		}
		return false;
	}
	return true;
}

function maxLength(objName,num,sStr)			//�����Ƿ�С�ڵ���ָ������
{
	var tmpstr
	tmpstr=trim(document.all.item(objName).value);
	if (tmpstr.length<num)
	{
		if (sStr!="") 
		{
			alert(sStr);
			document.all.item(objName).select();
		}
		return false;
	}
	return true;
}

function maxValue(objName,min,max,sStr)		  //�������ֵ�Ƿ���ָ���ķ�Χ��
{
	if (!isNumeric(objName,sStr))
		return false;
	if (parseFloat(document.all.item(objName).value)<min || parseFloat(document.all.item(objName).value)>max)
	{
		if (sStr!="") 
		{
			alert(sStr);
			document.all.item(objName).select();
		}
		return false;
	}
	return true;
}

function isChecked(objName,sStr)			//�Ƿ���ѡ��ѡ��
{
	if (document.all.item(objName).checked==false)
	{
		if (sStr!="") alert(sStr);
		return false;
	}
	return true;
}

function isChecked2(objName,i,sStr)		   //�Ƿ���ѡ�����ָ����ѡ��ѡ�У����飩
{
	var j,flag,sFlag;
	j=document.all.item(objName).length;
	if (j==null) return isChecked(objName,sStr)
	flag=false;
	sFlag=false;
	if (i==-1) sFlag=true;
	for (w=0;w<j;w++)
	{
		if (document.all.item(objName)[w].checked==true)
			flag=true;
		if (w==i && document.all.item(objName)[w].checked==true)
			sFlag=true;
	}
	if (!(flag & sFlag))
	{
		if (sStr!="") alert(sStr);
		return false;
	}

	return true;
}

function isChecked3(objName,sStr)		   //�Ƿ���ѡ�����ָ����ѡ��ѡ�У����飩
{
	var j,flag,sFlag;
	j=document.all.item(objName).length;
	for (w=0;w<j;w++)
	{
		if (document.all.item(objName)[w].checked==true)
			return true;
	}
	if (sStr!="") alert(sStr);
		return false;
	return false;
}


function ltrim(str)
{
    var flag
	flag=false;
	var i,j
	var tmpstr
	tmpstr=str;
	i=0;
	if (str.length==0) return "";
	for (i=0;i<str.length;i++)
	{
		if (str.charAt(i)!=" ")
			flag=true;
		if (!flag && str.charAt(i)==" ")
			tmpstr=str.substring(i+1,j);
	}
	return tmpstr;
}


function rtrim(str)
{
    var flag
	flag=true;
	var i,j
	var tmpstr
	tmpstr=str;
	i=0;
	if (str.length==0) return "";
	for (i=0;i<str.length;i++)
	{
		if (str.charAt(i)!=" ")
			flag=false;
		if (!flag && str.charAt(i)==" ")
			tmpstr=str.substring(0,i-1);
	}
	if (flag) tmpstr=""	
	return tmpstr;
}

function trim(str)
{
	var tmpstr
	tmpstr=ltrim(str)
	return rtrim(tmpstr);
}

function IsChinese(str,sStr)  
{
	if(escape(str).indexOf("%u")!=-1)
	  	return true;
	else
		return false;
}

function isPassword(obj1,obj2)
{
    if (!isNull(obj1,"�����Ϊ��")) return false;
	if (!isNull(obj2,"ȷ�Ͽ����Ϊ��")) return false;
	strPassword=document.all.item(obj1).value;
    for (pwIndex=0; pwIndex<strPassword.length; pwIndex++)  
    {  
        cCheck = strPassword.charAt(pwIndex);
        if ( cCheck==' ' || cCheck==':' || cCheck=='\'' || cCheck=='"' )  
        {  
            alert("�����ʹ�ÿո�͵�˫����( ,',\")");  
            document.all.item(obj1).focus();  
            return false;  
        }  
    }

	if (document.all.item(obj1).value != document.all.item(obj2).value)
		{
			alert("��������Ŀ��һ��");
			document.all.item(obj1).focus();
			return false;
		}
		return true;
}

function isDateNum(year,month,day)						//�Ƿ�����Ч������ֵ
{
	//alert(document.all.item(year).value);
	if (!isNumeric2(year,""))								//�������������Ƿ�����ֵ���͵�		
		return -1;

	if (!isNumeric2(month,""))
		return -2;

	if (!isNumeric2(day,""))
		return -3;
	
	tmpYear=year;
    tmpMonth=month;
	tmpDay=day;

	if (tmpYear<1000 || (tmpYear%parseInt(tmpYear))!=0)		//�������������Ƿ�����λ
		return -1;

	if (tmpMonth>12 || tmpMonth<1 || (tmpMonth%parseInt(tmpMonth))!=0)	 //����������·��Ƿ�Ϸ�
		return -2;
	
	if ((parseInt(tmpMonth/8)+tmpMonth)%2==1)
	{
		if (tmpDay<1 || tmpDay>31 || (tmpDay%parseInt(tmpDay))!=0)	    //��������������Ƿ�Ϸ�
			return -3;
	}
	else
	{
		if (tmpDay<1 || tmpDay>30 || (tmpDay%parseInt(tmpDay))!=0)						//��������������Ƿ�Ϸ�
			return -3;
	}

	if (tmpMonth==2)
	{
		if ((tmpYear%4==0 && tmpYear%100!=0) || (tmpYear%400==0))
		{
			if (tmpDay<1 || tmpDay>29 || (tmpDay%parseInt(tmpDay))!=0)								
				return -3;
		}
		else
		{
			if (tmpDay<1 || tmpDay>28 || (tmpDay%parseInt(tmpDay))!=0)								
				return -3;
		}
	}
	return true;
}	

function isTDate(year,month,day,sStr)						//�Ƿ�����Ч������ֵ
{
	tmpYear=SeleVal(year);
	tmpMonth=SeleVal(month);
	tmpDay=SeleVal(day);
	tmp=isDateNum(tmpYear,tmpMonth,tmpDay);
	if (tmp==-1)
	{
		if (sStr!="") 	alert(sStr);
		document.all.item(year).focus();
		return false
	}

	if (tmp==-2)
	{
		if (sStr!="") 	alert(sStr);
		document.all.item(month).focus();
		return false
	}

	if (tmp==-3)
	{
		if (sStr!="") 	alert(sStr);
		document.all.item(day).focus();
		return false
	}
	return true;
}
function SeleVal(objName)
{
	j=document.all.item(objName).length;
	ObjID=GetObjID(objName);
	for(i=0;i<j;i++)
	{
		if (document.form1.elements[ObjID].options[i].selected)
			return document.form1.elements[ObjID].options[i].value;
	}
	return false;
}

function SeleTxt(objName)
{
	j=document.all.item(objName).length;
	ObjID=GetObjID(objName);
	for(i=0;i<j;i++)
	{
		if (document.form1.elements[ObjID].options[i].selected)
			return document.form1.elements[ObjID].options[i].text;
	}
	return false;
}

function del(url)
{
	if (confirm("�Ƿ�Ҫɾ��������¼��")==true)
	{
		form1.action=url;
		form1.submit();
	}
}


function isNumeric3(objName,sStr)
{
	if (isNull(objName,"")==false) return true;
	return isNumeric(objName,sStr);	
}/*******************************************************/
/*******************************************************/
/************         �����ӡ           ****************/
/*******************************************************/
/*******************************************************/
	function look(formname,printname,closename,memoname)
	{
	var d,s="��ѯʱ��:";
	d=new Date();
	s+=d.getYear()+"��";
	s+=(d.getMonth()+1)+"��";
	s+=d.getDate()+"��";
	printname.value=s;
	closename.value="";
	memoname.value=""
	window.print();
	printname.value="��ӡ";
	closename.value="�رմ���";
	memoname.value="�鿴��ע����"
	}
	function lookmemo(formname,printname,closename)
	{
	var d,s="��ѯʱ��:";
	d=new Date();
	s+=d.getYear()+"��";
	s+=(d.getMonth()+1)+"��";
	s+=d.getDate()+"��";
	printname.value=s;
	closename.value="";
	window.print();
	printname.value="��ӡ";
	closename.value="�رմ���";
	}

	
	

