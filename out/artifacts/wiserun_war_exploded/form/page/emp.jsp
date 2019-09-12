<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/9/4
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工管理</title>
    <!--导入js配置文件-->
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <!--导入EasyUi的配置文件，都在\jquery-easyui-1.5.1里-->
    <link href="/easyui/themes/bootstrap/easyui.css" rel="stylesheet" type="text/css"/>
    <link href="/easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="application/javascript" src="../js/empmanager.js"></script>
</head>
<body>
<div title="员工管理" data-options="iconCls:'icon-man',closable:true" style="padding:10px">
    <div id="cc" class="easyui-layout" style="width:100%;height:100%;">
        <div data-options="region:'west',title:'组织机构',split:true" style="width:200px;">
            <div class="easyui-panel" style="padding:5px;height: 100%;width: 100%">
                <ul  id="tt">
                </ul>
            </div>
        </div>
        <div data-options="region:'center',title:'员工管理',iconCls:'icon-large-picture'" style="padding:5px;background:#eee;">
            <table class="easyui-datagrid" title="员工（职工）列表" style="width:100%;height:100%"
                   data-options="rownumbers:true,singleSelect:true,url:'datagrid_data.json',method:'get',toolbar:toolbar">
                <thead>
                <tr>
                    <th data-options="field:'id',width:100">编号</th>
                    <th data-options="field:'name',width:100">姓名</th>
                    <th data-options="field:'gender',width:50">性别</th>
                    <th data-options="field:'born_date',width:180">出生日期</th>
                    <th data-options="field:'tel',width:240">手机号码</th>
                    <th data-options="field:'phone',width:240,align:'center'">办公电话</th>
                    <th data-options="field:'email',width:300">邮箱地址</th>
                    <th data-options="field:'ok',width:50,formatter:showImg">有效</th>
                    <th data-options="field:'desc',width:200">描述</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
</div>
<%--弹出窗口--%>
<div id="windows" class="easyui-window" title="Window Layout" data-options="iconCls:'icon-save'" style="width:500px;height:200px;padding:5px;">
    <div class="easyui-layout" data-options="fit:true">
        <div data-options="region:'east',split:true" style="width:100px"></div>
        <div data-options="region:'center'" style="padding:10px;">
            jQuery EasyUI framework help you build your web page easily.
        </div>
        <div data-options="region:'south',border:false" style="text-align:right;padding:5px 0 0;">
            <a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" href="javascript:void(0)" onclick="javascript:alert('ok')" style="width:80px">Ok</a>
            <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="javascript:alert('cancel')" style="width:80px">Cancel</a>
        </div>
    </div>
</div>
</body>
</html>
