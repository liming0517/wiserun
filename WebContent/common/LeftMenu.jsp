<%@ page 
language="java"
contentType="text/html; charset=gb2312"
pageEncoding="GBK"
%>

<%@ page import="java.io.*,java.util.*,com.pantech.base.common.purview.*"%>
<%@ page import="com.pantech.base.common.config.*"%>
<%@ taglib uri="/WEB-INF/taglib/util.tld" prefix="util" %>
<%@ page import="com.pantech.base.common.tools.MyTools"%>
<%@ page import="com.pantech.src.develop.store.user.UserProfile"%>
<%@ page import="com.pantech.src.develop.store.user.ModuleObject"%>

<%@ page import="com.pantech.base.common.db.*"%>
<%
//modify by hades 2005-7-13
//ʹ��ͨ����


String iSelectMode ="2" ; //����ѡ��ķ�ʽ  ��ѡ���
String iNodeType="B"; //�˵����� ����˵�
String iAction="OpenUrl(\"[@@URL]\")";  //20081113 modify by hades ����ʹ��JS����' ������ܳ���
//String iTableName="V_Node_Module";  //�趨Ŀ��
//ʹ�ö����Բ˵� 2007-04-26 hades
String iTableName=MyTools.getProp(request,session.getAttribute("language"),"[LeftMenu_01]");



//2006-9-14 hades ����Ȩ��ɸѡ 
//20081113 modify by hades ����ʹ��ת��������������������2K�����
String filterSql="";
filterSql="@@@GetMenuFilterSql@@@";  //MyTools.GetMenuFilterSql(request);

%>


<html>
<head>
<title>tree</title>
<link href="<%=request.getContextPath()%>/css/wiserunoa.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath()%>/script/tree/js/xtree.js"></script>
<script type="text/javascript">
/**
 * ������ֵ���ݵ���߿����
 * @param id - ���id
 */
function SendValue(id){
	//�����߿�ܶ���
	var leftFrame = eval("window.parent.left.location");
	leftFrame.href = "MenuList.jsp?id="+id;
}
//ѡ����ڵ�
function doSelectRoot(){

   

}

/**
 * ��·��
 */
function OpenUrl(url){
   //������ⲿ��ַ�������ø�Ŀ¼ 
    //  alert("request.getContextPath() ====:" + "<%=request.getContextPath()%>");
	var urlStr;
	if (url=="" || url==" "  || url=="#.#" || url=="/form/.."){
		return false;
	}
	if (url.indexOf("/")==0){
	  urlStr= '<%=request.getContextPath()%>'+url;
	 }else{
	  urlStr= url;
	 }
	window.parent.right.location=urlStr;
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">
<!--
body {
	margin-left: 10px;
	margin-top: 10px;
}
-->
</style></head>

<!--onload="tree.expandAll()"  2006 9 20 hades ��Ҫȫ��չ��-->
<body eftmargin="0">
<form name="form1" action="" method="post">
	<TABLE width="160" border="0" cellspacing="0" cellpadding="0">
		<TBODY>
			<TR>
				<TD  >
	   			<!--MenuTree.jsp-->
					<script type="text/javascript">
					   treeRootDir='<%=request.getContextPath()%>'+"/"; 
					</script>

					<util:TreeList selectMode="<%=MyTools.StringToInt(iSelectMode)%>"  nodeType="<%=iNodeType%>"   selectAction="<%=iAction%>" tableName="<%=iTableName%>" filterSql="<%=filterSql%>" treeType="" />

					 <!-- ���ܴ���ߴ��ݹ�����ֵ --> 
					<input type="hidden" name="PerCode" value="">
                </TD> 
			</TR>	
			
		</TBODY>
	</TABLE> 
</form>
</body>
</html>
	
	
