//2005/3/10 shenqh
var currFocus;
var ExistAttaInfo = new Array();
var oldDelAttas = new Array();
var attaIdx = 0;   //����е�������
var IsIE; 
//��js�ļ�����ͨ�õı���д �����Զ������� ע�⣬һ��ҳ��ֻ֧��һ�������Ķ�̬���
//���еĺ����������� IE �� NNx ϵ�У�ֱ�ӵ��þͿ���
//����������������ж���������ͣ�Ȼ�����ݲ�ͬ��bowser��������Ԫ��
//��Ҫ�����Ƕ�̬���� ���ֱ�Ԫ�� �� ɾ����Ԫ��

//ע�����1-�����ӱ�Ԫ��ǰ����Ҫ��һ������������ݼ����������У���Ȼ��FORMҲ���ԣ���һ���ñ��
//         2-�����ÿһ�ж�Ӧ�þ�����ͬ�Ķ������������ͣ����ȱ����Ҫ��ͬ������Ѳ�Ҫ�Ķ�������ΪHIDDEN
//Edit by shen 
//MODIFY BY HADES  2005/3/16



//    function list
//    -------------------------------------------------------------------------------------------------------------------
//	  add(sourceTableName)
//    IsIEBrowser()  ����ֵ: true(IE) false(NNx)
//    exist(fileId)  �ж�fileId�Ƿ��Ѿ�����
//    addInputFile(spanId,fileId)  ����ΪspanId ��Ԫ�������������Ϊindex��input file
//    addbr(spanId,brId)  ����ΪspanId ��Ԫ����������idΪbrId�Ļ��з�
//    adddel(spanId,index) ����ΪspanId ��Ԫ�������������Ϊindex��"ɾ��"��ť��������ɾ����Ӧ��input file �� br
//    addhidden(spanId,hiddenId,value)  ����ΪspanId ��Ԫ����������idΪhiddenId��ֵΪvalue��input type=hidden
//    -------------------------------------------------------------------------------------------------------------------


//search,ȫ�ֱ���
//-----------------------------------------------------------------------------------------------------------
function IsIEBrowser() {
	if (navigator.userAgent.indexOf("MSIE") != -1) {
		return true;
		} else {
		return false;
		}
}

// ����һ�� ()������Ϊ attaIdx ��
//sourceTableName--ҳ���ϵı���ID���µ�Ԫ�ؽ�����������
function addrow(sourceTableName) {
  
	addfile(sourceTableName,attaIdx);
	attaIdx++;
	return false;
}

//----------------------------------------fileexist()----------------------------------------------------------
//shenqh
function exist(fileId) {
      var file = document.getElementById(fileId);
	  var result = false;
	  if ( file !=null ) {
			if ( file.value != null && file.value != "") {
				result = existFile( file);
			}//if
	  }
	  if( result)
	  {
		alert("�˸�����ճ��, �����ԭ�и����б��в���ɾ������ȡ��ɾ����\n�������ճ�������б��У�����ɾ����ճ����");
		//--attaIdx;
		//document.getElementById( "idAttachOper"+ attaIdx).click();
	  }
}//end of function
//shenqh
function getfilename( attaName ) {
	var s = attaName.lastIndexOf( '\\' );
	return attaName.substr(s+1, attaName.length - s -1);
}
//shenqh
function existFile( file)
{
	var form = document.sendmail;
	for ( var i= 0 ; i < form.elements.length ; i ++ ) {				    
		if ( form.elements[i].type == "file" && form.elements[i].name != file.name ) {
			if ( file.value == form.elements[i].value ) {
				return true;
			}
		}
	}//for
	for (var i=0; i<ExistAttaInfo.length; i++) {
		var theName = ExistAttaInfo[i];
		if ( theName != null && theName != "" && theName == getfilename(file.name) ) {
			return true;
		}
	}
	return false;
}
//----------------------------------------addfile(spanId,index)----------------------------------------------
function addfile(spanId,index)
{
       var strIndex = "" + index;
	   var fileId = "attachfile"+ strIndex;
	   var brId = "idAttachBr" + strIndex;
	   addInputFile(spanId,fileId);

	   adddel(spanId,index);

	   addbr(spanId,brId);
	   
	   return;
}
//-------------------------------------------sub function----------------------------------------------------
function addInputFile(spanId,fileId)
{
	  var span = document.getElementById(spanId);
	  if ( span !=null ) {
	                if ( !IsIE ) {
						var fileObj = document.createElement("input");
						if ( fileObj != null ) {
							fileObj.type="file";
							fileObj.name = fileId;
							fileObj.id = fileId;
							fileObj.size="50";
							var clickEvent = "exist('" + fileId + "')";
							fileObj.setAttribute("onclick",clickEvent,0);  
							span.appendChild(fileObj);
						}//if fileObj
					}// !IsIE

					if ( IsIE ) {
						var fileTag = "<input type='file' id ='" + fileId + "' name='" + fileId + "' size=50 onchange=exist('" + fileId + "')>";
						var fileObj = document.createElement(fileTag); 
						span.appendChild(fileObj);
					}//IsIE if
			
	  }//if span
}

function addbr(spanId,brId)
{
	  var span = document.getElementById(spanId);
	  if ( span !=null ) {
			var brObj = document.createElement("br");
			if ( brObj !=null ) {
				brObj.name = brId;
				brObj.id = brId;
				span.appendChild(brObj);
            }//if
     }//if
	 return;
}

function adddel(spanId,index)
{
      var strIndex = "" + index;
	  var delId = "idAttachOper" + strIndex;
	  var span = document.getElementById(spanId);
	  if ( span != null ) {
			var oTextNode = document.createElement("<span style='width:5px'> </span>");
			//oTextNode.style.width="5px";
			span.appendChild(oTextNode);
		    if ( IsIE ) {
	        var tag = "<input type='button' id='" + delId + "' onclick=delfile('" + spanId + "',"+strIndex+")></input>";
			var delObj = document.createElement(tag);
			if ( delObj != null ) {
				span.appendChild(delObj);
			}//if

			}// Is IE
			
	        if ( !IsIE ) {
				var delObj = document.createElement("input");
				if ( delObj != null ) {
					delObj.name = delId;
					delObj.id = delId;
					delObj.type = "button";
					var clickEvent = "return delfile('" + spanId + "',"+strIndex+");";
					delObj.setAttribute("onclick",clickEvent);  
					span.appendChild(delObj);
				}//if
			}// !IsIE if
			if( delObj != null) delObj.value = "ɾ��";
		}//main if
		return;
}


//-------------------------------------------------------------------------------------------------------------


//---------------------------------------------delete input file-----------------------------------------------
function delfile(spanId,index)
{
	   var strIndex = "" + index;
	   var fileId = "attachfile"+ strIndex;
	   var brId = "idAttachBr" + strIndex;
	   var delId = "idAttachOper" + strIndex;
	   //first,get the element
       var span = document.getElementById(spanId);
	   //alert(  "del span: " + span  );
	   if ( span == null ) return false;

	   var fileObj = document.getElementById(fileId);
	   if ( fileObj == null ) return false;

	   var brObj = document.getElementById(brId);
	   if ( brObj ==null ) return false;

	   var delObj = document.getElementById(delId );
	   //alert(  "del delId: " + delObj  );
	   if ( delObj == null ) return false;

       //second,create the replace element
	   var temp= document.createElement("<span>");
	   //third,replace it
	    span.replaceChild(temp,fileObj);
		span.replaceChild(temp,brObj);
		span.replaceChild(temp,delObj);	
		//alert( span.innerHTML );
		return false;
}



//------------------------------Sync and subit Form ---------------------------------

function compose_send(optype) {
		var bRight = SetVals(optype);
		if(!bRight){
			return false;
		}			

		var form = document.sendmail;
		form.optype.value = optype;
		var actionVars = new Array("fid", "order", "desc", "oldmid", "mid", "sid",
					"priority", "sign", 
					"stationery", "chkSendImgWithLetter", 
					"setreplyflag", "setforwardflag", 
					"chkHtmlMessage", "ifsavetosent", "return_receipt",
					"draftmid", "draftmsid", "compinfo_urlfilesmode","compinfo_minute");
	    var actionurl = "/coremail/cgi/attachfapps?";

		//���� action URL
		for ( var i = 0; i < actionVars.length; i++ ) {
			var varName = actionVars[i];
			//�õ������sendmail����ĸ���Ԫ�أ�Ȼ��������
			var srcObj = document.sendmail.elements[ varName ];
			if ( srcObj!=null && srcObj.value!=null ) {
				var type = srcObj.type;
				if (type != null && type != "" && type == "checkbox" ) {
					if ( srcObj.checked ) {
						actionurl += '&' + varName + '=' + srcObj.value;
					}
				}
				else {
					actionurl += '&' + varName + '=' + srcObj.value;
				}
			}
		}	
	//���� form �� action URL
	document.sendmail.action = actionurl + document.sendmail.action;
	
	var obj = document.getElementById('idOpType');
	obj.name = optype;
	obj.value = 1;
	
	document.sendmail.submit();
	return true;
}


function addhidden_ie(spanId,hiddenId,value) 
{
         var span = document.getElementById(spanId);
	     if ( span == null ) return;
	     if ( IsIE ) {
	    var tag = "<input type=hidden name='" + hiddenId + "' value='" + value + "'>";
		var delObj = document.createElement(tag);
		if ( delObj != null ) {
				span.appendChild(delObj);
	    }//if
		return;
	 }
}

//-------------------------------------add hidden function-----------------------------------------------
function addhidden(spanId,hiddenId,value)
{
      if ( !IsIE ) {
		  var span = document.getElementById(spanId);
		  if ( span == null ) return;

		  var hiddenObj = document.createElement("input");
		  if ( hiddenObj == null ) return;
		  hiddenObj.type="hidden";
		  hiddenObj.name = hiddenId;
		  hiddenObj.id = hiddenId;
		  hiddenObj.value = value;
		  span.appendChild(hiddenObj);
	  }
      else {
		  addhidden_ie(spanId,hiddenId,value);
	  }
	  return ;
}


//------------------------------------------------------------------------------------------------





function onCancelButtonClick()
{
	if( confirm( "��ȷ��Ҫȡ��������������д�����ݻ�ȫ����ʧ�ġ�\n��ȷ������ȡ�����ţ�\n��ȡ����������д�š�"))
		window.location.href = "/coremail/fcg/ldapapp?funcid=foldmain&sid="+ sid;
}



//Here Beginning:2004-12-17
function changeEditorEx()
{
    if ( !IsIE ){ 
		alert("ֻ��Microsoft IE ϵ�е��������֧�ֱ����ܣ�������������֧�ֱ����ܡ�");
		return;
	}
	if ( ishtml ){	
	    conf = confirm("��������ת�ɴ��ı���ʽ����ȷ��ô��");
		if (! conf)
		return;
    	ishtml = 0;
		change2Normalor();
	}
	else
	{
		ishtml = 1 ;
		change2Htmlor();
	}
}
function change2Normalor()
{
	var obj = document.getElementById("htmlletter");
	if ( !obj ){
		alert("error");
	}else{
		con = obj.text;
	}

	editor_hideLayer("trComposeHtml");
	editor_showLayer("trComposeTxt");
	editor_hideLayer("htmlor");
	editor_showLayer("normalor");
	
	obj = document.getElementById("lettercontent");
	if ( !obj ){
		alert("error2");
	}else{
		obj.value = con;
	}
}
function change2Htmlor()
{
	var obj = document.getElementById("lettercontent");
	if ( !obj ){
		alert("error");
	}else{
		con = obj.value;
	}

	editor_showLayer("trComposeHtml");
	editor_hideLayer("trComposeTxt");	
	editor_showLayer("htmlor");
	editor_hideLayer("normalor");
	//----------------------------------
	//var s =  document.sendmail.stationery;


	//var stationeryoption = "<option value='2'> one </option> <option value='3'> two </option> ";
	//var select = "<SELECT name='stationery' id='stationery'><OPTION value='0' selected>��ʹ��</OPTION>";
	//select += stationeryoption;
	//select += "</SELECT>";
	//s.outerHTML = select;
	//---------------------------------
	obj = document.getElementById("htmlletter");
	if ( !obj ){
		alert("error2");
	}else{
		obj.text = con;	
	}
}
function editor_hideLayer(name) {
	var layer = editor_getLayer(name);
	if ( !layer ) return false;
	if ( layer ) layer.style.display = "none";
}

function editor_showLayer(name) {
	var layer = editor_getLayer(name);  
	if ( !layer ) return false;
	if ( layer ) layer.style.display = "block";
}
function editor_getLayer(name) {
	var obj = document.getElementById(name);
	if ( obj ) return obj;
	return false;
}
function adjustEditorAtStart(){
	var obj = document.getElementById("lettercontent");
	obj.value = document.sendmail.htext.value;

	var objHtml = document.getElementById("htmlletter");
	objHtml.text = document.sendmail.htext.value;	

	//if ( ishtml ) {change2Htmlor();}
}
function fBodyOnload(){	
	adjustEditorAtStart();

	var form = document.sendmail;		

	if (form.to.value == "" || form.to.value == null){
		form.to.focus();
	}
}