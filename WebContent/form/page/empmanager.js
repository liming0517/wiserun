/*
* author:李明
* datetime:2019/09/03
* remark:demo-->js
* */

//页面加载完成
$(function () {

    //默认关闭窗口
    $('#windows').window('close');

    //设置layout不可修改宽度
    $("#cc").layout("panel","west").panel('panel').resizable('disable');

    //加载tree
    $('#tt').tree({
        url:'tree_data.json'
    });

})

function showImg(){
    return "<img style='width:24px;height:24px;' border='1' src='/easyui/themes/icons/ok.png'/>";

}

//定义工具条
var toolbar = [{
    text:'刷新',
    iconCls:'icon-reload',
    handler:function(){$.messager.alert('警告','刷新成功');}
},{
    text:'添加',
    iconCls:'icon-add',
    handler:function(){
        console.log("点击了添加按钮");
        //创建添加窗口
        $('#windows').window('open');
    }
},{
    text:'修改',
    iconCls:'icon-tip',
    handler:function(){$.messager.alert('警告','修改成功');}
},{
    text:'删除',
    iconCls:'icon-cancel',
    handler:function(){$.messager.alert('警告','删除成功');}
},{
    text:'移动',
    iconCls:'icon-ok',
    handler:function(){$.messager.alert('警告','移动到哪里？');}
},{
    text:'导出',
    iconCls:'icon-redo',
    handler:function(){$.messager.alert('警告','导出成功');}
}];