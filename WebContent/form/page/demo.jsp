<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/9/3
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>页面训练</title>
    <!--导入js配置文件-->
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <!--导入EasyUi的配置文件，都在\jquery-easyui-1.5.1里-->
    <link href="/easyui/themes/bootstrap/easyui.css" rel="stylesheet" type="text/css"/>
    <link href="/easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="application/javascript" src="../js/demo.js"></script>
</head>
<body class="easyui-layout">
<div id="layout_west"  data-options="region:'west',title:'导航菜单',split:true" style="width:207px;">
    <div id="sidemenu_test" class="easyui-sidemenu" data-options="data:data"></div>
</div>
<div id="layout_center" data-options="region:'center'" style="padding:5px;background:#eee;">
    <div class="easyui-tabs" id="tabs_test" data-options="tools:'#tab-tools'" style="width:100%;height:100%">
        <div title="欢迎使用" style="padding:10px">
        <img src="/img/test.jpg" style="height: 100%;width: 100%">
        </div>
    </div>
</div>
<%--定义tab工具条--%>
<div id="tab-tools" style="display:none">
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" onclick="refresh()"></a>
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'" onclick="removePanel()"></a>
</div>
</body>
</html>
