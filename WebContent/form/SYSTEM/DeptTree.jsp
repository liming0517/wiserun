<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<%-- 
//��֯�ṹͼ
//HADES
//2005-5-21

 --%>
<%@ page 
language="java"
contentType="text/html; charset=GBK"
pageEncoding="GBK"
%>
<%@ taglib uri="/WEB-INF/taglib/util.tld" prefix="util" %>
<link href="<%=request.getContextPath()%>/css/wiserunoa.css" rel="stylesheet" type="text/css">


<%@ page import="java.util.Vector"%>
<%@ page import="com.pantech.base.common.tools.*"%>
<%@ page import="com.pantech.base.common.tools.TraceLog"%>
<META http-equiv="Content-Type" content="text/html; charset=GBK">
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">

<LINK href="<%=request.getContextPath()%>/theme/Master.css" rel="stylesheet" type="text/css">

<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/script/tree/xtree.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/script/tree/js/xtree.js"></script>
<%


String type =MyTools.StrFiltr( request.getParameter("type")); //����ʽ����
String active =MyTools.StrFiltr( request.getParameter("active")); //����ʽ����


String iSelectMode =MyTools.StrFiltr( request.getParameter("selectMode")); //����ѡ��ķ�ʽ 0-��ѡ 1-��ѡ
String iIncludeUser =MyTools.StrFiltr( request.getParameter("includeUser")); //�Ƿ������Ա 0-�� 1-��
String iDeptType=MyTools.StrFiltr( request.getParameter("deptType")); //��������
String iReturnText=MyTools.StrFiltr( request.getParameter("returnText"));  //�Ƿ񷵻���ʾ���ı�
String iCanSubSelected=MyTools.StrFiltr( request.getParameter("canSubSelected"));  //�Ƿ��Զ�ѡ�� 0-�� 1-�� Ĭ�� ��
String iAction="";

TraceLog.Trace("iDeptType=============="+iDeptType);

if (type.equalsIgnoreCase("") ){
   iAction="DeptHelp";
}else if (type.equalsIgnoreCase("Config")){
   iAction="DeptList";
   
}

if (iSelectMode.length()==0){
	iSelectMode="0";
}
if (iCanSubSelected.length()==0){
	iCanSubSelected="1";
}
%>


<TITLE><%=MyTools.getProp(request,session.getAttribute("language"),"[DeptTree_01]")%></TITLE>
</HEAD>
<BODY leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="contentbg">

<script language="javascript">
var type="<%=type%>";
function getSel(){
	var str = tree.getSelectIds();
	//alert(str);
	//�����ظ�����Ϣ�Ϳ�ֵ
	var arrChar;
	var strValue="";
	var i=0;
	var j=0;
	arrChar=str.split(",");
	for (i=0;i<arrChar.length;i++){
//	   alert(strValue+"==="+arrChar[i]);
	   //ѭ�����ÿһ��ֵ��strValue��λ�ã����û���ظ�������ã���ֻ����ͷһ�ε�ֵ
	   if (strValue.indexOf(arrChar[i])<0 && arrChar[i].length>0){
	      if (strValue.length>0){
		      strValue=strValue + "," + arrChar[i];
	      }else{
	          strValue=strValue +  arrChar[i];
	      }
	   }
	}
	//alert(strValue);
	//��Ϊ���ڴ�	 hades
	window.returnValue = strValue;
	//window.close();
	window.close();
	
}

/**
 * ������ֵ���ݵ���߿����
 * @param id - ���id
 */
function SendValue(id,name){
	//�����߿�ܶ���
	var leftFrame = eval("window.parent.left.location");
	<%if(request.getParameter("active")!=null&&request.getParameter("active").equalsIgnoreCase("helpInfo")){%>
		leftFrame.href = "HelpList.jsp?id="+id+"&name="+name;
	<%}else{%>
		leftFrame.href = "DeptList.jsp?id="+id;
	<%}%>
}
//ѡ����ڵ�
function doSelectRoot(){
  if (type=="Config"){ 
  	SendValue("","");
  }
  
}
</script>

<TABLE width="100%" border="0" cellspacing="0" cellpadding="0" id="tbTree" name="tbTree"
	bgcolor="FFFFFF" align="center">
	<TBODY>
		<tr>
			<td width="1%" height="28"><img
				src="<%=request.getContextPath()%>/images/border_r1_c1.gif"
				width="16" height="28"></td>
			<td width="80%" class="tabletop" align="center">
			<p class="talbetitle"><%=MyTools.getProp(request,session.getAttribute("language"),"[DeptTree_02]")%></p>
			</td>
			<td width="2%"><img
				src="<%=request.getContextPath()%>/images/border_r1_c4.gif"
				width="16" height="28"></td>
		</tr>
		<tr>
			<td class="tableleft">&nbsp;</td>
			<td align="center">
              <!--�������-->
              <input type="hidden" onclick="getSel();" value="<%=MyTools.getProp(request,session.getAttribute("language"),"[DeptTree_03]")%>">
              <% if (!type.equalsIgnoreCase("Config")){ %>
              <input type="button" onclick="getSel();" value="<%=MyTools.getProp(request,session.getAttribute("language"),"[DeptTree_04]")%>">
              <% } %>
              
              <input type="button" onclick="tree.expandAll();" value="<%=MyTools.getProp(request,session.getAttribute("language"),"[DeptTree_05]")%>">
              <input type="button" onclick="tree.collapseAll();" value="<%=MyTools.getProp(request,session.getAttribute("language"),"[DeptTree_06]")%>">

			</td>
			<td class="tableright">&nbsp;</td>
		</tr>
		<tr>
			<td class="tableleft">&nbsp;</td>
			<td >
              

              <util:CompanyStruct  selectMode="<%=MyTools.StringToInt(iSelectMode)%>" selectAction="<%=iAction%>" includeUser="<%=iIncludeUser%>" deptType="<%=iDeptType%>" returnText="<%=iReturnText%>"  canSubSelected="<%=iCanSubSelected%>"/>
            

             
			</td>
			<td class="tableright">&nbsp;</td>
		</tr>
		
		<tr>
			<td class="tableleft">&nbsp;</td>
			<td align="center">
           
              <input type="hidden" onclick="document.all.htmlcode.value=document.all.tbTree.innerHTML;" value="<%=MyTools.getProp(request,session.getAttribute("language"),"[DeptTree_03]")%>">
              <% if (!type.equalsIgnoreCase("Config")){ %>
              <input type="button" onclick="getSel();" value="<%=MyTools.getProp(request,session.getAttribute("language"),"[DeptTree_04]")%>">
              <% } %>
              <input type="button" onclick="tree.expandAll();" value="<%=MyTools.getProp(request,session.getAttribute("language"),"[DeptTree_05]")%>">
              <input type="button" onclick="tree.collapseAll();" value="<%=MyTools.getProp(request,session.getAttribute("language"),"[DeptTree_06]")%>">
			</td>
			<td class="tableright">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top"><img src="<%=request.getContextPath()%>/images/border_r3_c1.gif"
				width="16" height="19"></td>
			<td class="tablebottom">&nbsp;</td>
			<td valign="top"><img src="<%=request.getContextPath()%>/images/border_r3_c4.gif"
				width="16" height="19"></td>
		</tr>
	</TBODY>
</TABLE>




</BODY>


</HTML>
