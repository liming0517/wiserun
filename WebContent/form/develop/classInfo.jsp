<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/9/11
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程信息设置</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/icon.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/script/JQueryUI/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/script/common/clientScript.js"></script>
    <script type="application/javascript">
        //定义属性
        var rows = "";//勾选行对应的记录
        var iKeyCode = "";//勾选行的主键
        var saveType = "";//提交的hidden值
        var classId_query = "";//要查询的课程代码
        var className_query = "";//要查询的课程名称
        var classType_query="";//要查询的课程类型
        var speciality_query = "";//要查询的所属专业
        var department_query = "";//要查询的所属系部

        //加载页面完成
        $(function () {
            console.log("页面加载完成");
            //加载设置弹出窗
            initDialog();
            //加载初始化数据
            initData();
            //设置form表单
            $("#class_info_form").form({
                url: <%=request.getContextPath()%>+"/Svl_ClassInfo",
                onSubmit: function (data) {
                    $(this).form('validate');
                },
                success:function (data) {
                   var msg=data[0].msg;
                   if(msg == "保存成功"){
                       showMsg(data[0].msg);
                       loadData();
                       $("#class_info_popup").dialog('close');
                   }else{
                       alertMsg(data[0].msg);
                   }
                }
            });
        });

        //点击新建/编辑/删除 按钮触发
        function doToolbar(id) {
            if(id == "query"){
                console.log("点击了查询按钮");

            }
            if (id == "new") {
                console.log("点击了添加按钮");
                saveType = "new";
                $("#class_info_popup").dialog({
                    title: '新建'
                })
                $("#class_info_popup").dialog('open');
            }

            if (id == "edit") {
                console.log("点击了修改按钮");
                //判断是否已勾选要修改的记录
                if (iKeyCode == "") {
                    alertMsg('请选择一条记录');
                    return;
                }

                //打开编辑窗口
                $("#class_info_popup").dialog({
                    title: '编辑'
                });
                saveType = "edit";
                $("#class_info_popup").dialog('open');
            }

            if (id == "del") {
                if (iKeyCode == "") {
                    alertMsg("请选择一条记录")
                }
            }

            if (id == 'save') {
                console.log("执行save操作");
                var classId = $("#classId_pop").val();//获取课程名称
                var className = $("#className_pop").val();//获取课程名字
                var classType = $("#classType_pop").combobox('getValue');//获取课程类型
                var speciality = $("#speciality_pop").combobox('getValue');//获取所属专业
                var department = $("#department_pop").combobox('getValue');//获取所属系部
                console.log("classsid=" + classId + " classname=" + className + " classtype=" + classType + " speciality=" + speciality + " depart=" + department);
                if (classId == "") {
                    alertMsg('请输入课程代码');
                    return;
                }

                if (className == "") {
                    alertMsg('请输入课程名称');
                    return;
                }

                if (speciality == "") {
                    alertMsg('请选择所属专业');
                    return;
                }

                if (department == "all") {
                    alertMsg('请选择所属系部');
                    return;
                }
                //提交请求
                $("#active").val(saveType);
                $("#class_info_form").submit();
            }
        }

        //加载数据
        function loadData() {
            $.ajax({
                url:<%=request.getContextPath()%>+"/Svl_ClassInfo",
                data:"active=query&classId="+classId_query+"className="+className_query+"classType="+classType_query+"speciality="+speciality_query+"department="+department_query,
                type:"POST",
                dataType:"json",
                success:function (data) {
                    loadGrid(data[0].listData);
                }
            });
        }

        //加载数据表格
        function loadGrid(listData) {
            $("#class_info_table").datagrid({
                columns: [[
                    {field: 'id', title: '', width: 30,},
                    {field: 'classId', title: '课程代码', width: 300, align: 'center'},
                    {field: 'className', title: '课程名称', width: 300, align: 'center'},
                    {field: 'classType', title: '课程类型', width: 300, align: 'center'},
                    {field: 'speciality', title: '所属专业', width: 300, align: 'center'},
                    {field: 'department', title: '所属系部', width: 500, align: 'center'}
                ]],
                fit: true,
                data:listData,
                onSelect: function (rowIndex, rowData) {
                    rows = rowData;
                    iKeyCode = rowData.classid;
                }
            });
        }

        //加载对话框
        function initDialog() {
            $("#class_info_popup").dialog({
                width: 350,
                height: 250,
                closed: true,
                draggable: false,
                modal: true,
                toolbar: [{
                    text: '保存',
                    iconCls: 'icon-save',
                    handler: function () {
                        console.log("点击了保存工具");
                        doToolbar('save');
                    }
                }]
            });
        }

        //加载初始化数据
        function initData() {
            console.log("执行初始化方法");
            $.ajax({
                type:"POST",
                url:'<%=request.getContextPath()%>/Svl_ClassInfo',
                data:"active=initData",
                dataType:"json",
                success:function (json) {
                    alert("发送成功");
                    loadGrid(json[0].listData);
                }
            });
        }
    </script>
</head>
<body class="easyui-layout">
<div data-options="region:'north',split:false,title:'课程信息',collapsible:true" style="height:116px;">
    <table>
        <tr>
            <td><a href="#" id="new" class="easyui-linkbutton" plain="true" iconcls="icon-new"
                   onClick="doToolbar(this.id);" title="">新建</a></td>
            <td><a href="#" id="edit" class="easyui-linkbutton" plain="true" iconcls="icon-edit"
                   onClick="doToolbar(this.id);" title="">编辑</a></td>
            <td><a href="#" id="del" class="easyui-linkbutton" plain="true" iconcls="icon-cancel"
                   onClick="doToolbar(this.id);" title="">删除</a></td>
        </tr>
    </table>
    <table class="tablestyle" width="100%">
        <tr>
            <td style="width: 150px" class="titlestyle"><span>课程代码</span></td>
            <td class="titlestyle"><input id="classId" name="classId" type="text" style="width:250px"></td>
            <td style="width: 150px" class="titlestyle"><span>课程名称</span></td>
            <td class="titlestyle"><input id="className" name="className" type="text" style="width:250px"></td>
            <td style="width: 150px" class="titlestyle"><span>课程类型</span></td>
            <td class="titlestyle">
                <select id="classType" class="easyui-combobox" name="classType" style="width:250px;">
                    <option value="majorClass">专业课</option>
                    <option value="selectClass">选修课</option>
                </select>
            </td>
            <td rowspan="2" class="titlestyle">
                <a href="javascript:void(0)" id="query" onclick="doToolbar(this.id)" class="easyui-linkbutton"
                   data-options="iconCls:'icon-search',plain:true">查询</a>
            </td>
        </tr>
        <tr>
            <td class="titlestyle">
                <span>所属专业</span>
            </td>
            <td class="titlestyle">
                <select id="speciality" class="easyui-combobox" name="speciality" style="width:250px;">
                    <option value="">请选择</option>
                    <option value="chemistry">化学</option>
                    <option value="physics">物理</option>
                    <option value="english">英语</option>
                </select>
            </td>
            <td class="titlestyle">
                <span>所属系部</span>
            </td>
            <td colspan="3" class="titlestyle">
                <select id="department" class="easyui-combobox" name="department" style="width:350px;">
                    <option value="all">全部</option>
                    <option value="science">理科</option>
                    <option value="arts">文科</option>
                </select>
            </td>
        </tr>
    </table>
</div>
<div data-options="region:'center'" style="padding:5px;background:#eee;">
    <table id="class_info_table">
    </table>
</div>
<div id="class_info_popup">
    <form method="post" id="class_info_form">
        <table class="tablestyle" width="100%">
            <tr>
                <td class="titlestyle" width="80">课程代码</td>
                <td class="titlestyle"><input id="classId_pop" name="classId" type="text" style="width:250px"></td>
            </tr>
            <tr>
                <td class="titlestyle" width="80">课程名称</td>
                <td class="titlestyle"><input id="className_pop" name="className" type="text" style="width:250px"></td>
            </tr>
            <tr>
                <td class="titlestyle" width="80">课程类型</td>
                <td class="titlestyle">
                    <select id="classType_pop" class="easyui-combobox" name="classType" style="width:250px;">
                        <option value="majorClass">专业课</option>
                        <option value="selectClass">选修课</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="titlestyle" width="80">所属专业</td>
                <td class="titlestyle">
                    <select id="speciality_pop" class="easyui-combobox" name="speciality" style="width:250px;">
                        <option value="">请选择</option>
                        <option value="chemistry">化学</option>
                        <option value="physics">物理</option>
                        <option value="english">英语</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="titlestyle" width="80">所属系部</td>
                <td class="titlestyle">
                    <select id="department_pop" class="easyui-combobox" name="department" style="width:250px;">
                        <option value="all">全部</option>
                        <option value="science">理科</option>
                        <option value="arts">文科</option>
                    </select>
                </td>
            </tr>
            <input type="hidden" id="active" name="active">
        </table>
    </form>
</div>
</body>
</html>
