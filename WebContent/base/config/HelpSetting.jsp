<!--
Author:KotLiu
CreateDate:2005.04.06
Function:在线帮助设置框架
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<%@ page 
language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
%>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
<TITLE>HelpSetting.jsp</TITLE>
</HEAD>
<jsp:useBean class="com.pantech.base.common.tags.security.PurViewTools" id="pc" scope="page" />
<%@ taglib uri="/WEB-INF/taglib/securityTag.tld" prefix="security"%>
<%
String mcode = pc.GetModuleCodeFromUrl(request);
%>
<security:securityForPage pagePermissionID="<%=mcode%>">
<frameset cols="60%,40%" frameborder="NO" border="0" framespacing="0" style="overflow:hidden">
  	<frame id="editarea" src="HelpList.jsp" name="left">
	<frame id="treearea" src="<%=request.getContextPath()%>/form/SYSTEM/TreeList.jsp?type=Config&tableName=V_Node_Module" name="right">
</frameset>
</security:securityForPage>
</HTML>
