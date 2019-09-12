// verifyForm.js
// ��̬��֤��������ֵ����Ч��
// ������ʽ�﷨�ɲ��� http://www.soulogic.com/doc/RegularExpressions/
// ��Ҫ���ı�Ԫ����Ҫ���һ���Զ�������validator����ֵΪPatternsDict������������timePat��
// newFunction
function validateForm(theForm){// ����֤ͨ���򷵻�true
	//====�ڴ˶�����Ҫ����validator����Ӧ��������ʽ=========
	var PatternsDict = new Object();
	//ƥ��������(YYYYMMDD)
	PatternsDict.ymdPat = /^[1-2]\d{3}(0[1-9]|1[0-2])(0[1-9]|[1-2]\d|3[0-1])$/;
��	//ƥ��05:04 ��22:34,����ƥ��75:83
��	PatternsDict.timePat = /^([0-1]\d|[2][0-3]):[0-5]\d$/;
	//ƥ�������ַ�
	PatternsDict.chinesePat = /^[\u4e00-\u9fa5]+$/;
	//ƥ��E-mail
	PatternsDict.emailPat = /^[a-zA-Z]+\w*[a-zA-Z0-9]*[@][a-zA-Z0-9]+[.][a-zA-Z]+$/;
	//ƥ������
	PatternsDict.numberPat = /^-?[1-9]\d*$/;
	//������
	PatternsDict.floatPat = /^-?[1-9]\d*.\d+$/;
	//����ֵ���ַ�
	PatternsDict.numPat = /^\d+$/;
	//��дӢ��
	PatternsDict.upperPat=/^[A-Z]+$/;
	//СдӢ��
	PatternsDict.lowerPat=/^[a-z]+$/;
	//Ӣ���ַ�
	PatternsDict.charPat=/^[a-zA-Z]+$/;
	//����(abc001��)
	PatternsDict.codePat=/^[a-zA-Z]+\d+$/;
	//GUID(e.g:{04DE8592-B789-41B5-BDB8-04B3F5FAFBD6})
	PatternsDict.guidPat=/^[{][0-9a-zA-Z]{8}-[0-9a-zA-Z]{4}-[0-9a-zA-Z]{4}-[0-9a-zA-Z]{4}-[0-9a-zA-Z]{12}[}]$/;
	//ƥ��IP��ַ��
	PatternsDict.ipPat = /^((([1-2]\d)|[1-9])*\d.){3}(([1-2]\d)|[1-9])*\d$/;
	//����Ϊ��
	
	//�绰����
	
	//�ֻ�����
	
	//���֤
	
	//--------------------------------------------------------
	
	//======================����===========================
	var elArr = theForm.elements; // �����е�����Ԫ�ط�������

�� 	for(var i = 0; i < elArr.length; i++){
	��  with(elArr[i]){              // ���ڱ��е�ÿһ��Ԫ��...
	��   	var v = elArr[i].validator; // ��ȡ��validator����
	��   	if(!v) continue;            // ��������Բ�����,���Ե�ǰԪ��
	
	��   	var thePat = PatternsDict[v];   // ѡ����֤�õ�������ʽ
	��   	var gotIt = thePat.exec(value); // ��������ʽ��֤elArr[i]��ֵ
	
	��   	if(!gotIt){
	��    		alert(name + ": ����ֵ��������ʽ��ƥ�䣨" + v + " ���� " + value + "��"); 
				elArr[i].focus();
				return false;
			}
	��  } 
	}
	return true;
}
//��������   2004-9-20 shenqh len��ʾ������С��λ
Number.prototype.toFixed=function(len)
{
    //alert("this"+this);
	var add = 0;
    var s,temp;
    var s1 = this + "";
    var start = s1.indexOf(".");
	if(start!=-1){
	//alert(s1.substr(start+len+1,1));
    if(this>0 && s1.substr(start+len+1,1)>=5)add=1;     //��
	if(this<0 && s1.substr(start+len+1,1)>=5)add=-1;  
    var temp = Math.pow(10,len);
    s = Math.floor(this * temp)
	//alert(s1.substr(start+len+1,1)!="");
	if(this<0 && s1.substr(start+len+1,1)!="")s=s+1;
	//alert("s="+s);
	s=s+ add;
	//if(s<0)s=s-add;

    return s/temp;
	}
	else
	{
		return this;
	}
}


function titleset(obj){
	var text = obj;
	text.title = text.value;
}

function titleset2(obj){
	var text = obj;
	text.title='������' + text.maxLength + '������\n��໹������' + (text.maxLength - text.value.length) + '���ַ�';
}

function titleset3(obj,num){
	var text = obj;
	text.title='������' + num + '������\n��໹������' + (num - text.value.length) + '���ַ�';
}
