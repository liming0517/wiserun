<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
    /**
     创建人：李明
     Create date: 2010.10.09
     功能说明：用于设置年级信息
     页面类型:列表及模块入口
     修订日期:
     原因:
     修订人:
     修订时间:
     **/
%>
<%@page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>年级信息列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/themes/icon.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/script/JQueryUI/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/script/JQueryUI/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/script/JQueryUI/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/script/common/clientScript.js"></script>
</head>
<style>

</style>
<body class="easyui-layout">
<div id="north" region="north" title="年级信息" style="height:91px;">
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
    <table id="ee" singleselect="true" width="100%" class="tablestyle">
        <tr>
            <td style="width:150px;" class="titlestyle">年级代码</td>
            <td>
                <input name="gradeCode" id="NJDM_CX" class="easyui-textbox" style="width:250px;"/>
            </td>
            <td style="width:150px;" class="titlestyle">年级名称</td>
            <td>
                <input name="gradeName" id="NJMC_CX" class="easyui-textbox" style="width:250px;"/>
            </td>
            <td style="width:150px;" align="center">
                <a href="#" onclick="doToolbar(this.id)" id="query" class="easyui-linkbutton" plain="true"
                   iconcls="icon-search">查询</a>
            </td>
        </tr>
    </table>
</div>
<div region="center">
    <table id="njxxList" style="width:100%; height: 500px">
    </table>
</div>
<!-- 年级信息新建编辑 -->
<div id="popup">
    <form id="form1" method='post'>
        <table style="width:100%;" class="tablestyle">
            <tr>
                <td class="titlestyle">年级代码</td>
                <td>
                    <input name="gradeCode" id="NJDM" class="easyui-textbox" style="width:200px;" required="true">
                </td>
            </tr>
            <tr>
                <td class="titlestyle">年级名称</td>
                <td>
                    <input name="gradeName" id="NJMC" class="easyui-textbox" style="width:200px;" required="true">
                </td>
            </tr>
            <tr>
                <td class="titlestyle">所属年份</td>
                <td>
                    <input name="gradeYear" id="SSNF" class="easyui-textbox" style="width:200px;" maxlength="4"
                           required="true">
                </td>
            </tr>
        </table>
        <input type="hidden" id="active" name="active"/>
    </form>
</div>
</body>
<script type="text/javascript">
    var row = '';      //行数据
    var iKeyCode = ''; //定义主键
    var pageNum = 1;   //datagrid初始当前页数
    var pageSize = 20; //datagrid初始页内行数
    var NJDM_CX = '';//查询条件
    var NJMC_CX = '';
    var saveType = '';

    $(document).ready(function () {
        initDialog();//初始化对话框
        initData();//页面初始化加载数据
    });

 /*   /!**页面初始化加载数据**!/*/
    function initData() {
        console.log("开始加载页面数据表格");
        $.ajax({
            type: "POST",
            url: '<%=request.getContextPath()%>/Svl_GradeInfo',
            data: 'active=initData',
            dataType: "json",
            success: function (data) {
                loadGrid(data);
            }
        });


    }

    /**加载 dialog控件**/
    function initDialog() {
        $('#popup').dialog({
            width: 300,//宽度设置
            height: 143,//高度设置
            modal: true,
            closed: true,
            cache: false,
            draggable: false,//是否可移动dialog框设置
            toolbar: [{
                //保存编辑
                text: '保存',
                iconCls: 'icon-save',
                handler: function () {
                    //传入save值进入doToolbar方法，用于保存
                    doToolbar('save');
                }
            }],
            //打开事件
            onOpen: function (data) {
            },
            //读取事件
            onLoad: function (data) {
            },
            //关闭事件
            onClose: function (data) {
                emptyDialog();
            }
        });
    }

    /**加载 datagrid控件，读取页面信息
     @listData 列表数据
     **/
    function loadGrid(listData) {
        $('#njxxList').datagrid({
            <%--url: "<%=request.getContextPath()%>/Svl_GradeInfo?active=query",--%>
            data:listData,
            title: '',
            width: '100%',
            nowrap: false,
            fit: true, //自适应父节点宽度和高度
            showFooter: true,
            striped: true,
            pagination: true,
            pageSize: pageSize,
            singleSelect: true,
            pageNumber: pageNum,
            rownumbers: true,
            fitColumns: true,
            columns: [[
                //field为读取数据的数据名，title为显示的数据名，width宽度设置，align数字在表格中显示的位置
                {field: 'gradeCode', title: '年级代码', width: fillsize(0.3), align: 'center'},
                {field: 'gradeName', title: '年级名称', width: fillsize(0.4), align: 'center'},
                {field: 'gradeYear', title: '所属年份', width: fillsize(0.3), align: 'center'}
            ]],
            //单击某行时触发
            onClickRow: function (rowIndex, rowData) {
           /*     console.log("gradeCode="+rowData.NJDM);*/
                console.log("gradeCode="+rowData.gradeCode);
                //获取gradeCode
                iKeyCode = rowData.gradeCode;
                row = rowData;
            },
            //加载成功后触发
            onLoadSuccess: function (data) {
                iKeyCode = '';
            }
        });

/*                $("#njxxList").datagrid("getPager").pagination({
                    total:listData.total,
                    afterPageText: '页&nbsp;<a href="#" onclick="goEnterPage();">Go</a>&nbsp;&nbsp;&nbsp;共 {pages} 页',
                    onSelectPage:function (pageNo, pageSize_1) {
                        pageNum = pageNo;
                        pageSize = pageSize_1;
                        loadData();
                    }
                });*/
    };

    function goEnterPage() {
        var e = jQuery.Event("keydown");//模拟一个键盘事件
        e.keyCode = 13;//keyCode=13是回车
        $("input.pagination-num").trigger(e);//模拟页码框按下回车
    }

    /**读取datagrid数据**/
    function loadData() {
        $.ajax({
            type: "POST",
            url: '<%=request.getContextPath()%>/Svl_GradeInfo',
            data: 'active=query' +
                '&gradeCode=' + encodeURI(NJDM_CX) +
                '&gradeName=' + encodeURI(NJMC_CX),
            dataType: "json",
            success: function (data) {
       /*         console.log("list="+data[0].listData.rows[0].gradeCode);*/
                loadGrid(data[0].listData);
            }
        });
    }

    /**工具栏按钮调用方法，传入按钮的id
     @id 当前按钮点击事件
     **/
    function doToolbar(id) {
        //查询
        if (id == 'query') {
            NJDM_CX = $('#NJDM_CX').textbox('getValue');
            NJMC_CX = $('#NJMC_CX').textbox('getValue');
            console.log("年级代码="+NJDM_CX);
            console.log("年级名称="+NJMC_CX);
            loadData();
        }

        //判断获取参数为new，执行新建操作
        if (id == 'new') {
            //打开dialog
            $('#popup').dialog({
                title: '新建年级信息'
            });
            saveType = 'add';
            $('#popup').dialog('open');
        }

        //判断获取参数为edit，执行编辑操作
        if (id == 'edit') {
            if (iKeyCode == '') {
                alertMsg('请选择一行数据');
                return;
            }

            $('#NJDM').textbox('readonly', true);
            //打开dialog
            $('#popup').dialog({
                title: '编辑年级信息'
            });
            if (row != undefined && row != '') {
                $('#form1').form('load', row);
            }
            saveType = 'update';
            $('#popup').dialog('open');
        }

        if (id == 'del') {
            if (iKeyCode == '') {
                alertMsg('请选择一行数据');
                return;
            }
            ConfirmMsg('是否确定要删除当前选择的年级', 'delNj();', '');
        }

        //判断获取参数为save，执行保存操作
        if (id == 'save') {
            var njdm = $('#NJDM').textbox('getValue');
            var njmc = $('#NJMC').textbox('getValue');
            var ssnf = $('#SSNF').textbox('getValue');

            if (njdm == '') {
                alertMsg('请填写年级代码');
                return;
            }
            if (njdm.length > 4) {
                alertMsg('年级代码长度超出4位');
                return;
            }
            if (njmc == '') {
                alertMsg('请填写年级名称');
                return;
            }
            if (njmc.length > 10) {
                alertMsg('专业名称长度超出10位');
                return;
            }
            if (ssnf == '') {
                alertMsg('请填写所属年份');
                return;
            } else {
                if (!ssnf.match(/^\d{4,4}$/)) {
                    alertMsg('填写的所属年份不符合规范，请重新填写。');
                    return;
                }
            }

            $('#active').val(saveType);
            $("#form1").submit();
        }
    }

    //删除
    function delNj() {
        console.log("ikeyCode="+iKeyCode);
        $.ajax({
            type: "POST",
            url: '<%=request.getContextPath()%>/Svl_GradeInfo',
            data: 'active=del&gradeCode=' + iKeyCode,
            dataType: "json",
            success: function (data) {
                if (data[0].MSG == '删除成功') {
                    showMsg(data[0].MSG);
                    loadData();
                } else {
                    alertMsg(data[0].MSG);
                }
            }
        });
    }

    /**表单提交**/
    $('#form1').form({
        //定位到servlet位置的url
        url: '<%=request.getContextPath()%>/Svl_GradeInfo',
        //当点击事件后触发的事件
        onSubmit: function (data) {
            return $(this).form('validate');//验证
        },
        //当点击事件并成功提交后触发的事件
        success: function (data) {
            var json = eval("(" + data + ")");

            if (json[0].MSG == '保存成功') {
                showMsg(json[0].MSG);
                $("#active").val('');

                emptyDialog();//清空并关闭dialog
                loadData();
                $('#popup').dialog('close');
            } else {
                alertMsg(json[0].MSG);
            }
        }
    });

    /**清空Dialog中表单元素数据**/
    function emptyDialog() {
        saveType = '';
        $('#NJDM').textbox('readonly', false);
        $('#NJDM').textbox('setValue', '');
        $('#NJMC').textbox('setValue', '');
        $('#SSNF').textbox('setValue', '');
    }
</script>
</html>