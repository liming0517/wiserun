//2005/3/10 shenqh
var currFocus;
var ExistAttaInfo = new Array();
var oldDelAttas = new Array();
var attaIdx = 0;
var IsIE;


function fSetArrEmailAddress(){
	var win = window.parent.addrdata;
	gArrEmailAddress = win.addr_data;
}
function fInitMSIE(){
	if (navigator.userAgent.indexOf("MSIE") != -1){
		IsIE = true;
	}else{
		IsIE = false;
	}
}
function setFocusObj( obj ) 
{
    //don't use the element'ID directly,use getElementById method
	var sendmail = document.sendmail;

	currFocus = obj;
	sendmail.ToInd.style.visibility = "hidden";
	sendmail.CcInd.style.visibility = "hidden";
	sendmail.BccInd.style.visibility = "hidden";

	if(obj.name == "to")
		sendmail.ToInd.style.visibility = "visible";
	if(obj.name == "cc")
		sendmail.CcInd.style.visibility = "visible";
	if(obj.name == "bcc")
		sendmail.BccInd.style.visibility = "visible";		
}
function Preview(){
	if(ishtml==false){
		ViewAsHtml();
		return;
	}else{
		var frm = document.frmHtmlPreview;
		if ( document.all ){
			frm.content.value = document.all.htmlletter.html;
		}else if (document.htmlletter){
			frm.content.value = document.htmlletter.html;
		}
		frm.stationery.value = document.sendmail.stationery.value;
		frm.ishtml.value='1';
		frm.submit();
		return;
	}
	return;
}
function ViewAsHtml() {
	var frmSendmail = document.sendmail;
	if ( !frmSendmail.chkHtmlMessage_text.checked ){
		alert("��ѡ����HTML��ʽ����");
	}else{
		var frm = document.frmHtmlPreview;
		frm.content.value = document.getElementById("lettercontent").value;
		frm.ishtml.value = '1';
		frm.submit();
		return;
	}
}

function SetVals( optype ) {
	if( optype+"" == "timeset.x" )
	{
		if( document.all.year.value == "" || document.all.month.value =="" || document.all.day.value == "" || document.all.hour.value == "")
		{
			alert( "����д��ʱ���ŵ��ꡢ�¡��ա�ʱ�̵ȡ�" );
			event.returnValue = false;
			return false;
		}
	}
	if( optype+"" == "send.x" || optype+"" == "timeset.x" )
	{
		if( document.all.to.value == "" ){
			alert( "����д�ռ���Email��");
			event.returnValue = false;
			return false;
		}
	}
	if( !checkEmail( document.all.to.value ))
		return false;
	if( !checkEmail( document.all.cc.value ))
		return false;
	if( !checkEmail( document.all.bcc.value ))
		return false;
	if( document.all.subject.value == "" && optype+"" != "newsign.x")
	{
		if( confirm( "����ȷ����Ĳ���Ҫд ���� ��?") == true )
		{
			document.all.subject.value = "(������)";
		}
		else
		{
			window.event.returnValue = false;
			return false;
		}
	}
	
	if( optype + "" != "" && optype + "" != "undefined"){
		showSending(optype);
	}


	if(ishtml==false){
		var obj = document.getElementById("lettercontent");
		document.sendmail.htext.value = obj.value;
		if (document.sendmail.chkHtmlMessage_text.checked)
			document.sendmail.chkHtmlMessage.value="y";
		else
			document.sendmail.chkHtmlMessage.value="";
	}else{
		var obj = document.getElementById('htmlletter');
		document.sendmail.htext.value = obj.html;
		document.sendmail.chkHtmlMessage.value="y";
	}
	return true;
}



function dispCCorBcc( obj )
{
	if( obj.innerText == "����")
	{
		tr_cc.style.display='';
		obj.style.display='none';
		document.all.cc.focus();
	}
	if( obj.innerText == "����" )
	{
		tr_bcc.style.display='';obj.style.display='none';document.all.bcc.focus();
	}
}

function changeKeyCode() {
	var code;
	var e = window.event;

	if (e.keyCode)	{
		code = e.keyCode;
	}else if (e.which){
		code = e.which;
    }
	return;

	if (code == 13 ) {	//�س� -> Tab
		if (e.keyCode) e.keyCode=9;	//Tab
		else if (e.which) e.which=9;
	}
}

function checkEmail( mails )
{
	if( mails == "")
		return true;
	mails = mails.replace( /;/g, ",");
	var mailArray = mails.split( ",");
	var unregs = "";
	for( var i=0;i < mailArray.length; i++ )
	{
		var pos = mailArray[i].lastIndexOf( "@");
		if( pos == -1)
		{	unregs = unregs + mailArray[i] + ",\n";
			continue;
		}
		if( mailArray[i].length == pos + 1)
		{	unregs = unregs + mailArray[i] + ",\n";
			continue;
		}
		if( mailArray[i].charAt( mailArray[i].length-1 ) == ">" ){
			fix = mailArray[i].substring( pos , mailArray[i].length-1 );
		}else{
			fix= mailArray[i].substr( pos );
		}
		if( !isEmailAddress(fix)){
			unregs = unregs + mailArray[i] + ",\n";
		}
	}
	if( unregs != "")
	{
		alert( "����ȷ��д����Email��ַ��\n" + unregs.substring( 0, unregs.length-2));
		event.returnValue = false;
		return false;
	}
	return true;
}
function isEmailAddress( email )
{
	var reg=/^@([\w-]+\.)+[\w-]{2,4}$$$/;
	return ( email.match( reg ) != null ) ? true:false;
}
function showAttaInfoOpName( deleted ) {
	if (deleted == 'y') {
		document.write('<U>ȡ��ɾ��</U>');
	}
	else if (deleted == 'n') {
		document.write('&nbsp;&nbsp;<U>ɾ��</U>');
	}
}
function opAttaInfo(index , filename) {
	var rowObjId = "idAttaInfoRow" + index;
	var rowObj = document.getElementById(rowObjId);
	var statusObjId = "idDeleteAtta" + index;
	var statusObj = document.getElementById(statusObjId);
	var opObjId = "idOpAttaInfo" + index;
	var opObj = document.getElementById(opObjId);
	var attanameObj = document.getElementById("attaname" + index);
	attanameObj.value = filename;
	
	if (rowObj.className == "attainfoy") {//cancel delete
		rowObj.className = "attainfon";
		statusObj.value = "";
		opObj.innerHTML = "&nbsp;&nbsp;<u>ɾ��</U>";
		oldDelAttas[index] = "";
	}
	else if (rowObj.className == "attainfon") {//delete
		rowObj.className = "attainfoy";
		statusObj.value = "y";
		opObj.innerHTML = "<table><tr><td class='attainfot'>ȡ��ɾ��</td></tr></table>";
		oldDelAttas[index] = "y";
	}
}
function showSending(optype) {
	var msg = "";
	if(optype == "send.x" )
	{
		msg = "  ���ڷ����ż�, ���Ե�...";
	}
	if( optype == "savetodraft.x" )
	{    msg = " ���ڱ����ż�, ���Ե�...";
	}
	if( optype == "timeset.x" )
	{  msg = " ���ڱ��涨ʱ���ţ����Ե�...";
	}
	sending_sub.appendChild( document.createTextNode(msg));
	if( msg != "" )
	{
		sending.style.visibility="visible";
	}
}




//��js�ļ�����compose.htmͬʱ���Ͷ��������js������֧�� IE �� NNx ϵ�С�
//���еĺ����������� IE �� NNx ϵ�У�ֱ�ӵ��þͿ���
//����������������ж���������ͣ�Ȼ�����ݲ�ͬ��bowser��������Ԫ��
//��Ҫ�����Ƕ�̬���� ���ֱ�Ԫ�� �� ɾ����Ԫ��
//Edit by shen

//    function list
//    -------------------------------------------------------------------------------------------------------------------
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

// ���Ӹ������� ()�����ӵ� idfilespan,����Ϊ attaIdx ��
function add() {

	addfile("idfilespan",attaIdx);
	attaIdx++;
	return false;
}
//��ȡ����·��
function getAppFile(){
//alert(attaIdx);
	//var obj;
	//var arr=new Array();
	var arr;
	arr="";
	for ( var i= 0 ; i < form1.elements.length ; i ++ ) {				    
		if ( form1.elements[i].type == "file" ) {
	//		alert(form1.elements[i].value);
	        if (form1.elements[i].value.length>0){    //HADES  ��Ҫȥ���յļ�¼
				arr=arr+form1.elements[i].value+",";
			}
		}
	}
	//alert(arr.substring(0,arr.length-1));
	return arr.substring(0,arr.length-1);
	
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
  // HADES �����ť����û���ã�����ȥ��
	//  adddel(spanId,index);

	   addbr(spanId,brId);
	   //document.getElementById( "attachfile"+ strIndex).click();
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