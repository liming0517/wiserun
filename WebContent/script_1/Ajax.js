		
		// Ajax.js
   /**
    Ajax ��װ����
    ʹ�÷�����
    ��1���ύ���󣬱��粻ˢ��ҳ����������ҳ���ƶ�DIV����ʾ����������������ݣ�
     HTML:�ļ��ж���<div id="result"></div>
     ����������
     1var url = "http://somehost.com/do.action";
     2var object = new Ajax();
     3object.sendRequest(url,"result");
     4//Ĭ��ΪGET�����������TOMCAT5�����������������ѡ��ʹ��POST�����ύ
     5//object.sendRequest(url,"result","POST");
     
     (2) �ύ������ɾ��ĳ����Ŀ֮��ˢ��ҳ��������¶�ȡ�б�������ʾ��alert����
      1var url = "http://somehost.com/do.action?id=ID";
      2var object = new Ajax();
      3//�趨�������֮����õĺ���
      4object.setPostHook(function(){window.location.reload();});
      5object.sendRequest(url);

     ��3���Զ���Ajax��ʽ�ύ��
      �������js��װ�У���һ��submitForm()���������������Ϊ�ύ�ֶαȽϳ��ı����ر���Ƶģ������ݱ��ĸ����������Զ�����URL���Զ��ύ����.
      ����Ч����ֱ���ύ����Ч�����
      1form�����ύ��actionĿ���У�
      2��ʾ���ؽ���õ�div
      3�������֮����õĺ���
      HTML:�ļ��ж���<div id="result"></div>
      submitForm(document.forms["form1"], div, function(){window.location.reload();}, "POST")   
   
      ע����divΪ�ջ�"",�����κ���ʾ
          ����Ҫ���ݷ���ֵ��������Ӧ���Ȱѷ���ֵ�ŵ�div��
   */
    
  /**//*Author: yican@cs-air.com
  a simple ajax wrapper
  */
  function Ajax() {
      var req = null;
      var postAction = null;//a hook
      var divName = "";
      /**//*post action hook definition*/
      this.setPostHook = function(f) {
         postAction = f;
     }
     //execute the remote method and refresh the page'd div
     this.sendRequest = function(url, div, method) {
         var callback = this.report;//default alert
         if(div != null && div!==""){
             callback = this.processAjaxResponse;
             divName = div;
         }
         if(method == null) {
             //method = "POST";//default POST - no character encoding problem
             method = "GET";//default GET
         } else {
             method = method.toUpperCase();
         }
         /**//*encode URL with Chinese*/
         //url = encodeURI(url);  //��ִ�е�ʱ������
 
         //execute the remote method
         this.executeXhr(method, callback, url);
     }
     //this is call back method ������Ҫ��ҳ��ĳ��DIV��ʾ������Ϣʱʹ��
     this.processAjaxResponse = function() {
         
         
         // only if req shows "loaded"
         var div = document.getElementById(divName);
         //display the process bar
         div.innerHTML = "loading";
         
         
         if (req.readyState == 4) {
             if (req.status == 200) {
                //alert(req.responseText);
             //��ʾ���ص�����
                div.innerHTML = req.responseText;
 //               div.innerText = req.responseText;
             } else {
             alert("There was a problem retrieving the XML data:\n" +
             req.statusText);
             }
             //execute hook function
             if(postAction){
                 //alert("!!");
                 postAction();
             }
         }
     }
     //alert ����Ҫ��ʾ������Ϣ�������κ���ʾ
     this.report = function() {
         if (req.readyState == 4) {
             // only if "OK"
             if (req.status == 200) {
                //alert(req.responseText);
             } else {
                alert("There was a problem retrieving the XML data:\n" +
             req.statusText);
             }
             //execute hook function
             if(postAction){
                 postAction();
             }
         }
     }
     //execute ajax request
     this.executeXhr = function(method, callback, url) {
         // difine a XMLHttpRequest object
        /*
         if (window.XMLHttpRequest) {
             // branch for native XMLHttpRequest object
             req = new XMLHttpRequest();
         } else {
             // branch for IE/Windows ActiveX version
             req = new ActiveXObject("Microsoft.XMLHTTP");
         }
         try{
             req.setRequestHeader("Cache-Control: no-store, no-cache, must-revalidate");
             req.setRequestHeader("Connection","close");
         } catch(e){}
         */
         
         if(window.XMLHTTPRequest)
		{
			req=new XMLHTTPRequest();
			if(req.overrideMimeType)
	        {
	        	req.overrideMimeType("text/xml");
	        }
		}
        else if(window.ActiveXObject)
        {
        	try
        	{
        		req=new ActiveXObject("Msxml2.XMLHTTP");
        	}
        	catch(e)
        	{
        		try
        		{
        			req=new ActiveXObject("Microsoft.XMLHTTP");
        		}
        		catch(e){}
        	}
        }
        if(!req)
        {
        	window.alert("can not create XMLHttpRequest object��");
        	return false;
        }
         //
         req.onreadystatechange = callback;
         if(method == "POST") {
             //split the url
             var urlWithParam = url.split("?");//split the url in two parts
             var urlPrefix = urlWithParam[0];//the url
             var arg = urlWithParam[1];//the arguments //���������ҪENCDOEURL ����,��Ϊ��ǰ���ѱ����

             req.open("POST", urlPrefix, true);
//             req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
             req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
            
             req.send(arg);
             //??????????????????
               //var sBody=getRequestBody(document.forms["form1"]);
               //DEBUG-��ʾPOST������
              // document.all.showmsg.innerText =document.all.showmsg.innerText + "------"  + arg + "------" + sBody;
     		  // req.send(sBody);
         } else {
             req.open("GET", encodeURI(url), true);
            //req.send(null);
             req.send();
         }
     }
 }
 ///
 /*
 function getRequestBody(oForm)
			{  var aParams=new Array(); 
			   for(var i=0;i<oForm.elements.length;i++){  
			     var sParam=encodeURIComponent(oForm.elements[i].name); 
			     sParam+="=";
			     sParam+=encodeURIComponent(oForm.elements[i].value);
			     aParams.push(sParam); 
			   } 
			  return aParams.join("&");
			 }			
*/
 ////////////////////////////
	//POST ��ʽ �ύAJAXҳ��ʱר��
	function getUrlForPost(oForm)
	{  
	   
	         
	   var url = "";
       url += (oForm.action + "?");//url start with the form's action
	   var aParams=new Array(); 
	   for(var i=0;i<oForm.elements.length;i++){  
	     var oParam=oForm.elements[i]
	     var sParam=encodeURIComponent(oForm.elements[i].name); 
	     if(sParam != '') {//you can omit some value by set the element's name to blank
            if(oParam.type == 'checkbox' || oParam.type == 'radio') {
                //alert(e);
                //if it is a checked box
                if(oParam.checked) {
                	sParam+="=";
	           		sParam+=encodeURIComponent(oParam.value);
                }
            } else {
                sParam+="=";
	            sParam+=encodeURIComponent(oParam.value);
            }
            aParams.push(sParam);
        }
	     var sParam=encodeURIComponent(oForm.elements[i].name); 
	      
	   } 
	  return  url + aParams.join("&");
	
	 }			
	//////////////////////////
 
//get all the form elements value
function getUrlForPost_OLD(form) {
    var url = "";
    url += (form.action + "?");//url start with the form's action
    var len = form.elements.length;
    for (i = 0; i < len; i++)
    {
        var e = form.elements[i];
        /**//*FIXME: can't get value of selectd options of multi select(a list)*/
        if(e.name != '') {//you can omit some value by set the element's name to blank
            if(e.type == 'checkbox' || e.type == 'radio') {
                //alert(e);
                //if it is a checked box
                if(e.checked) {
                    url += (encodeURIComponent(e.name) + "=");
                    url += (encodeURIComponent(e.value) + "&");
                }
            } else {
                url += (encodeURIComponent(e.name) + "=");
                url += (encodeURIComponent(e.value) + "&");
            }
        }
    }
    if(url.lastIndexOf('&') == (url.length - 1)) {
        //if the last char is a '&', get rid of it
        url = url.substring(0, url.length - 1);
    }
    //alert(url);//DEBUG
   return url;
}
/**//*A simple wrapper for submit a form*/
function submitForm(form, div, done, method) {
    var url = getUrlForPost(form);
    
    var object = new Ajax();
    if(done != null) {
        object.setPostHook(done);
    }
    //post is the most common method for post a form
    if(method == null){
        method = "POST";//default 'POST'
    }
   //document.all.showmsg.innerText=url; 
   //alert(method);
    object.sendRequest(url, div, method);
}
	