<%--
  Created by Michael.
  User: dell
  Date: 2019/9/11
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta content="">
    <title>课程信息设置</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/icon.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/script/JQueryUI/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/script/common/clientScript.js"></script>
    <script type="application/javascript">
        var data = [{
            text: '规则管理',
            state: 'open',
            iconCls: 'icon-man',
            children: [
                {
                    text: '课程信息设置',
                    state: 'open',
                    iconCls: 'icon-man',
                    filename:'classInfo.jsp'
                },
                {
                    text: '特殊规则设置',
                    state: 'open',
                    iconCls: 'icon-man',
                    filename:'main.jsp'
                },
                {
                    text: '年级信息',
                    state: 'open',
                    iconCls: 'icon-man',
                    filename:'test.jsp'
                },
                {
                    text: '合班设置',
                    state: 'open',
                    iconCls: 'icon-man',
                    filename:''
                },
                {
                    text: '班级固排禁排',
                    state: 'open',
                    iconCls: 'icon-man',
                    filename:''
                },
                {
                    text: '教师固排禁排',
                    state: 'open',
                    iconCls: 'icon-man',
                    filename:''
                },
                {
                    text: '场地固排禁排',
                    state: 'open',
                    iconCls: 'icon-man',
                    filename:''
                }]
        }, {
            text: '排课管理',
            state: 'closed',
            iconCls: 'icon-man'
        }, {
            text: '调课管理',
            state: 'closed',
            iconCls: 'icon-man'
        }, {
            text: '课表查询',
            state: 'closed',
            iconCls: 'icon-man'
        }, {
            text: '查询及统计',
            state: 'closed',
            iconCls: 'icon-man'
        }];

        //页面加载完成
        $(function () {
            //初始化侧栏菜单
            $("#navigation").sidemenu({
                width: 150,
                height: 600,
                border: true,
                multiple: false,
                data: data,
                onSelect:function(item){
                    //定义iframe
                    var content=$("<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="+item.filename+"></iframe>");

                    //判断当前的tab是否已经被创建，未创建-->创建  已创建-->选中
                    if(!$("#class_info_tabs").tabs('exists',item.text)){
                        $("#class_info_tabs").tabs('add',{
                            title:item.text,
                            selected:true,
                            closable:true,
                            content:content
                        });
                    }else{
                        $("#class_info_tabs").tabs('select',item.text);
                    }
                }
            });
        });
    </script>
</head>
<body class="easyui-layout">
<div data-options="region:'north',split:false" style="height:55px;">
    <div style="width: 100%;height:30px;background-color: #1b6d85;margin-top: 10px"><span
            style="font-weight: bold;font-size: 20px;color: white">上海市现代职业技术学校</span></div>
</div>
<div data-options="region:'west',title:'导航菜单',split:false" style="width:150px;">
    <div id="navigation" style="width:300px"></div>
</div>
<div data-options="region:'center',title:'课程信息'" style="padding:5px;background:#eee;">
    <div id="class_info_tabs" class="easyui-tabs" style="width:100%;height:100%;">
        <div title="欢迎使用" style="padding:20px;display:none;">
            <span style="font-size: 24px;color: #6b9cde">欢迎使用，请点击左侧菜单栏进行操作</span>
        </div>
    </div>
</div>
</body>
</html>
