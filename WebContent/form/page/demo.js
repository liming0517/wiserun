/*
* author:李明
* datetime:2019/09/03
* remark:demo-->js
* */

//页面加载完成
$(function () {

    //设置layout不可修改宽度
    $("body").layout("panel","west").panel('panel').resizable('disable');
/*    $("#cc").layout("panel","west").panel('panel').resizable('disable');*/

    //启用侧边栏
    console.log("页面加载完成");
    $("#sidemenu_test").sidemenu({
        data: data,
        width: 200,
        onSelect:function (item) {
            var content="<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="+item.filename+"></iframe>";
            if($("#tabs_test").tabs("getTab",item.text)==null){
                $("#tabs_test").tabs('add',{
                    title:item.text,
                    closable:true,
                    selected:true,
                    content:content
                })
            }else{
                $("#tabs_test").tabs('select',item.text);
            }
    }
    });

});

//定义侧边栏
var data= [{
    text: '权限管理',
    state: 'open',
    children: [{
        iconCls: 'icon-save',
        text: '员工管理',
        filename:'emp.jsp'
    }, {
        iconCls: 'icon-man',
        text: '用户管理',
        filename:'tree.html'
    }, {
        iconCls: 'icon-more',
        text: '角色管理',
        filename:'emp.jsp'
    }, {
        iconCls: 'icon-lock',
        text: '组织机构管理',
        filename:'treegrid.html'
    }, {
        iconCls: 'icon-tip',
        text: '模块管理',
        filename:'linkbutton.html'
    }, {
        iconCls: 'icon-sum',
        text: '操作权限管理',
        filename:'sidemenu.html'
    }, {
        iconCls: 'icon-help',
        text: '用户权限管理'
    }, {
        iconCls: 'icon-redo',
        text: '角色权限管理'
    }]
}, {
    text: '系统配置',
    children: [{
        iconCls: 'icon-man',
        text: '测试1'
    }, {
        iconCls: 'icon-man',
        text: '测试2'
    }, {
        iconCls: 'icon-man',
        text: '测试3'
    }]
}, {
    text: '测试模块',
    children: [{
        text: '测试1'
    }, {
        text: '测试2'
    }, {
        text: '测试3',
        children: [{
            text: '子测试1'
        }, {
            text: '子测试2'
        }]
    }]
}];

//tab工具条函数
var index = 0;

//刷新按钮
function refresh(){
    location.reload();
}

//关闭tab按钮
function removePanel(){
    var tab = $('#tabs_test').tabs('getSelected');
    if (tab){
        var index = $('#tabs_test').tabs('getTabIndex', tab);
        $('#tabs_test').tabs('close', index);
    }else{
        $.messager.alert('警告','没有可以关闭的菜单！');
    }
}
