<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- 
	createTime:2013-11-12
	createUser:陆伟斌 V1.0
	Discrioptation:显示项目流程图 V1.0
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.pantech.base.common.tools.MyTools"%>
<%@ page import="com.pantech.base.common.tools.PublicTools"%>
<%@page import="org.apache.commons.lang.StringEscapeUtils"%>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head> 
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title></title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/JQueryUI/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/JQueryUI/themes/icon.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/script/JQueryUI/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/script/JQueryUI/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/script/JQueryUI/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/script/common/clientScript.js"></script>
	<style>
	/*
	editTime:2014-01-20
	editUser:luweibin V1.1
	decription:因要求更改导航格式样式
	*/
		/*
	editTime:2014-03-5
	editUser:luweibin 
	decription:1.录取信息中录取类型新增为10种，有些类型没有打印模板，所以不能打印，流程颜色进展功能不能进行验证
			   2.格式样式问题修改
	*/
	/*
		#left{
			position:absolute;
			left:232px;
			top:112px
		}
		#left1{
			position:absolute;
			left:420px;
			top:112px
		} 
		#left2{
			position:absolute;
			left:540px;
			top:70px
		}

		#left4{
			position:absolute;
			left:30px;
			top:112px
		}
		#xianshi{
			position:absolute;
			left:440px;
			top:50px
		}  
		#xianshi1{
			position:absolute;
			left:243px;
			top:50px
		}
		#xianshi2{
			position:absolute;
			left:45px;
			top:50px
		}
		#xianshi3{
			position:absolute;
			left:545px;
			top:50px
		}
		#wenzi{
			position:absolute;
			left:40px;
			top:70px
		}  
		#wenzi1{
			position:absolute;
			left:238px;
			top:70px
		}
		#wenzi2{
			position:absolute;
			left:425px;
			top:70px
		}
		#biaoti{
			position:absolute;
			left:325px;
			top:0px
		}
		*/
/*
图标框
*/
/*
第一组
*/
		#bg_left{
			position:absolute;
			left:0px;
			top:0px
			
		}
		#content{		
		position:absolute;
			left:51px;
			top:0px
		}
		#bg_right{		
		position:absolute;
			left:860px;
			top:0px
		}
		/*
		招生网站
		*/
		#shubiandianji_bg{		
		position:absolute;
			left:69px;
			top:1px
		}
		#content1{		
		position:absolute;
			left:69px;
			top:0px
		}
		/*
		招生计划
		*/
		#shubiandianji_bg1{		
		position:absolute;
			left:149px;
			top:1px
		}
		#content2{		
		position:absolute;
			left:149px;
			top:0px
		}
		/*
		招生方案
		*/
		#zsfa_1{		
		position:absolute;
			left:229px;
			top:1px
		}
		#zsfaContent_1{		
		position:absolute;
			left:229px;
			top:0px
		}
				/*
		招生录取---
		*/
		#new_zslu_1{		
		position:absolute;
			left:309px;
			top:1px
		}
		#new_zsluContent_1{		
		position:absolute;
			left:309px;
			top:0px
		}

		/*
		招生汇总
		*/
		#zshz_1{		
		position:absolute;
			left:389px;
			top:1px
		}
		#zshzContent_1{		
		position:absolute;
			left:389px;
			top:0px
		}
		/*
		预约报名
		*/
		#yybm_1{		
		position:absolute;
			left:469px;
			top:1px
		}
		#yybmContent_1{		
		position:absolute;
			left:469px;
			top:0px
		}

		
		
		/*
		#shubiandianji_bg2{		
		position:absolute;
			left:321px;
			top:1px
		}
		#content2{		
		position:absolute;
			left:321px;
			top:0px
		}
		
		#shubiandianji_bg3{		
		position:absolute;
			left:449px;
			top:1px
		}
		#content3{		
		position:absolute;
			left:449px;
			top:0px
		}
		
		#shubiandianji_bg4{		
		position:absolute;
			left:578px;
			top:1px
		}
		#content4{		
		position:absolute;
			left:578px;
			top:0px
		}
		*/
		/*
第二组
*/
		#bg_left_1{
			position:absolute;
			left:0px;
			top:120px
			
		}
		#content_1{		
		position:absolute;
			left:51px;
			top:120px
		}
		#bg_right_1{		
		position:absolute;
			left:860px;
			top:120px
		}
		/*
		培养协议
		*/
		#new_pyxy_1{		
		position:absolute;
			left:69px;
			top:120px
		}
		#new_pyxyContent_1{		
		position:absolute;
			left:69px;
			top:120px
		}
		/*
		培养安排
		*/
		#new_pyap_1{		
		position:absolute;
			left:149px;
			top:120px
		}
		#new_pyapContent_1{		
		position:absolute;
			left:149px;
			top:120px
		}
		/*
		上岗安排
		*/
		#sgap_1{		
		position:absolute;
			left:229px;
			top:120px
		}
		#sgapContent_1{		
		position:absolute;
			left:229px;
			top:120px
		}
/*
第三组
*/
		#bg_left_2{
			position:absolute;
			left:0px;
			top:240px
			
		}
		#content_2{		
		position:absolute;
			left:51px;
			top:240px
		}
		#bg_right_2{		
		position:absolute;
			left:860px;
			top:240px
		}
		
		/*
		*/
		#sswj_1{		
		position:absolute;
			left:69px;
			top:240px
		}
		#sswjContent_1{		
		position:absolute;
			left:69px;
			top:240px
		}
		
		
		
		#new_sxbbzr_1{		
		position:absolute;
			left:139px;
			top:240px
		}
		#new_sxbbzrContent_1{		
		position:absolute;
			left:139px;
			top:240px
		}
		
		
		#ssdj_1{		
		position:absolute;
			left:289px;
			top:240px
		}
		#ssdjContent_1{		
		position:absolute;
			left:289px;
			top:240px
		}
		
		
		
		
		#new_sxgz_1{		
		position:absolute;
			left:359px;
			top:240px
		}
		#new_sxgzContent_1{		
		position:absolute;
			left:359px;
			top:240px
		}
		
		
		
		#fxqk_1{		
		position:absolute;
			left:429px;
			top:240px
		}
		#fxqkContent_1{		
		position:absolute;
			left:429px;
			top:240px
		}
		
		#new_yrdw_1{		
		position:absolute;
			left:499px;
			top:240px
		}
		#new_yrdwContent_1{		
		position:absolute;
			left:499px;
			top:240px
		}
		
		#new_bjxs_1{		
		position:absolute;
			left:629px;
			top:240px
		}
		#new_bjxsContent_1{		
		position:absolute;
			left:629px;
			top:240px
		}




















/*
第四组
*/	
		#bg_left_3{
			position:absolute;
			left:0px;
			top:365px
			
		}
		#content_3{		
		position:absolute;
			left:51px;
			top:365px
		}
		#bg_right_3{		
		position:absolute;
			left:860px;
			top:365px
		}
		
		/*
		*/
		#bytj_1{		
		position:absolute;
			left:80px;
			top:365px
		}
		#bytjContent_1{		
		position:absolute;
			left:80px;
			top:365px
		}
		#bygz_1{		
		position:absolute;
			left:200px;
			top:365px
		}
		#bygzContent_1{		
		position:absolute;
			left:200px;
			top:365px
		}	
/*
模块名
*/
/*
第一组
*/
		#zswz{	
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;
		position:absolute;
			left:100px;
			top:0px
		}
		#zsjh{	
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;	
		position:absolute;
			left:200px;
			top:0px
		}
		#zsfa{	
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;	
		position:absolute;
			left:300px;
			top:0px
		}
		#new_zslu{
		width:100px;
		height:	32px;
		text-align:center;
		padding-top:10px;		
		position:absolute;
			left:400px;
			top:0px
		}
		#new_zslu_show{		
		position:absolute;
			left:440px;
			top:33px
		}

		#new_zslu_show1{		
		position:absolute;
			left:450px;
			top:44px
		}

		#new_zslu_show2{		
		position:absolute;
			left:410px;
			top:60px
		}
		#new_zslu_show3{		
		position:absolute;
			left:65px;
			top:60px
		}
		#new_zslu_show4{		
		position:absolute;
			left:65px;
			top:60px
		}
		#new_zslu_show5{		
		position:absolute;
			left:460px;
			top:60px
		}

		#zshz{	
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;	
		position:absolute;
			left:530px;
			top:0px
		}
		#yybm{	
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;	
		position:absolute;
			left:630px;
			top:0px
		}
		
		
/*
第二组
*/		
		#new_pyxy{
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;		
		position:absolute;
			left:100px;
			top:122px
		}
		#new_pyxy_show{		
		position:absolute;
			left:120px;
			top:153px
		}
		#new_pyxy_show1{		
		position:absolute;
			left:130px;
			top:163px
		}
		#new_pyxy_show2{		
		position:absolute;
			left:65px;
			top:180px
		}
		#new_pyxy_show3{		
		position:absolute;
			left:65px;
			top:180px
		}
		
		#new_pyap{
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;		
		position:absolute;
			left:200px;
			top:122px
		}
		#new_pyxy_show_1{		
		position:absolute;
			left:222px;
			top:153px
		}
		#new_pyxy_show1_1{		
		position:absolute;
			left:260px;
			top:175px
		}
		/*
		#new_pyxy_show2_1{		
		position:absolute;
			left:260px;
			top:75px
		}
		*/
		#new_pyxy_show3_1{		
		position:absolute;
			left:460px;
			top:175px
		}
		#new_pyxy_show4_1{		
		position:absolute;
			left:235px;
			top:175px
		}
		#new_pyxy_show5_1{		
		position:absolute;
			left:233px;
			top:165px
		}
		
		
		
		
		
		#sgap{
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;		
		position:absolute;
			left:300px;
			top:122px
		}
		#new_pyxy_show_2{		
		position:absolute;
			left:325px;
			top:153px
		}
		#new_pyxy_show1_2{		
		position:absolute;
			left:335px;
			top:163px
		}
		#new_pyxy_show2_2{		
		position:absolute;
			left:335px;
			top:180px
		}
		#new_pyxy_show3_2{		
		position:absolute;
			left:658px;
			top:180px
		}
		
/*
第三组
*/			
		#sswj{	
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;	
		position:absolute;
			left:100px;
			top:242px
		}
		
		#new_sswj_show{		
		position:absolute;
			left:270px;
			top:272px
		}
		#new_sswj_show1{		
		position:absolute;
			left:280px;
			top:283px
		}
		#new_sswj_show2{		
		position:absolute;
			left:65px;
			top:300px
		}
		#new_sswj_show3{		
		position:absolute;
			left:64px;
			top:300px
		}
		
		#new_sxbbzr{
		width:170px;
		height:	32px;
		text-align:center;
		padding-top:10px;		
		position:absolute;
			left:200px;
			top:242px
		}
		
		#ssdj{	
		width:100px;
		height:	32px;
		text-align:center;
		padding-top:10px;	
		position:absolute;
			left:400px;
			top:242px
		}
		
		
		#new_sxgz{	
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;	
		position:absolute;
			left:530px;
			top:242px
		}
		
		#new_sswj_show_1{		
		position:absolute;
			left:550px;
			top:272px
		}
		#new_sswj_show1_1{		
		position:absolute;
			left:560px;
			top:283px
		}
		/*
		#new_sswj_show2_1{		
		position:absolute;
			left:390px;
			top:300px
		}
		*/
		#new_sswj_show3_1{		
		position:absolute;
			left:460px;
			top:300px
		}
		#new_sswj_show4_1{		
		position:absolute;
			left:260px;
			top:300px
		}
		#new_sswj_show5_1{		
		position:absolute;
			left:260px;
			top:300px
		}
		
		
		#fxqk{	
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;	
		position:absolute;
			left:630px;
			top:242px
		}
		
		#new_yrdw{
		width:170px;
		height:	32px;
		text-align:center;
		padding-top:10px;		
		position:absolute;
			left:100px;
			top:242px
		}
		#new_bjxs{	
		width:170px;
		height:	32px;
		text-align:center;
		padding-top:10px;		
		position:absolute;
			left:300px;
			top:242px
		}
		#new_sswj_show_2{		
		position:absolute;
			left:370px;
			top:272px
		}
		#new_sswj_show1_2{		
		position:absolute;
			left:380px;
			top:283px
		}
		#new_sswj_show2_2{		
		position:absolute;
			left:380px;
			top:300px
		}
		#new_sswj_show3_2{		
		position:absolute;
			left:660px;
			top:300px
		}






		
/*
第四组
*/
		#bytj{
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;			
		position:absolute;
			left:100px;
			top:367px
		}
		#bygz{
		width:70px;
		height:	32px;
		text-align:center;
		padding-top:10px;			
		position:absolute;
			left:200px;
			top:367px
		}		
		
/*
流程图表
*/
		
		/*
		第一组
		*/
		#yuan_blue1{		
		position:absolute;
			left:10px;
			top:70px
		}
		#yuan_gray{		
		position:absolute;
			left:50px;
			top:72px
		}
		#yuan_gray1{		
		position:absolute;
			left:248px;
			top:72px
		}
		#yuan_gray2{		
		position:absolute;
			left:447px;
			top:72px
		}
		#yuan_green{		
		position:absolute;
			left:50px;
			top:72px
		}
		#yuan_green1{		
		position:absolute;
			left:248px;
			top:72px
		}
		#yuan_green2{		
		position:absolute;
			left:447px;
			top:72px
		}
		#yuan_byellow{		
		position:absolute;
			left:50px;
			top:72px
		}
		#yuan_byellow1{		
		position:absolute;
			left:248px;
			top:72px
		}
		#yuan_byellow2{		
		position:absolute;
			left:447px;
			top:72px
		}
		
		
		
		
		/*
		第二组
		*/
		#yuan_blue1_1{		
		position:absolute;
			left:10px;
			top:190px
		}
		#yuan_gray_1{		
		position:absolute;
			left:50px;
			top:192px
		}
		#yuan_gray1_1{		
		position:absolute;
			left:248px;
			top:192px
		}
		#yuan_gray2_1{		
		position:absolute;
			left:447px;
			top:192px
		}
		#yuan_gray3_1{		
		position:absolute;
			left:645px;
			top:192px
		}
		#yuan_green_1{		
		position:absolute;
			left:50px;
			top:192px
		}
		#yuan_green1_1{		
		position:absolute;
			left:248px;
			top:192px
		}
		#yuan_green2_1{		
		position:absolute;
			left:447px;
			top:192px
		}
		#yuan_green3_1{		
		position:absolute;
			left:645px;
			top:192px
		}
		#yuan_byellow_1{		
		position:absolute;
			left:50px;
			top:192px
		}
		#yuan_byellow1_1{		
		position:absolute;
			left:248px;
			top:192px
		}
		#yuan_byellow2_1{		
		position:absolute;
			left:447px;
			top:192px
		}
		#yuan_byellow3_1{		
		position:absolute;
			left:645px;
			top:192px
		}
		/*
		第三组
		*/
		#yuan_blue1_2{		
		position:absolute;
			left:10px;
			top:310px
		}
		#yuan_gray_2{		
		position:absolute;
			left:50px;
			top:312px
		}
		#yuan_gray1_2{		
		position:absolute;
			left:248px;
			top:312px
		}
		#yuan_gray2_2{		
		position:absolute;
			left:447px;
			top:312px
		}		
		#yuan_gray3_2{		
		position:absolute;
			left:645px;
			top:312px
		}
		#yuan_green_2{		
		position:absolute;
			left:50px;
			top:312px
		}
		#yuan_green1_2{		
		position:absolute;
			left:248px;
			top:312px
		}
		#yuan_green2_2{		
		position:absolute;
			left:447px;
			top:312px
		}		
		#yuan_green3_2{		
		position:absolute;
			left:645px;
			top:312px
		}	
		#yuan_byellow_2{		
		position:absolute;
			left:50px;
			top:312px
		}
		#yuan_byellow1_2{		
		position:absolute;
			left:248px;
			top:312px
		}
		#yuan_byellow2_2{		
		position:absolute;
			left:447px;
			top:312px
		}		
		#yuan_byellow3_2{		
		position:absolute;
			left:645px;
			top:312px
		}	
		
/*
线
*/
/*
第一组
*/
		#lin_huise{		
		position:absolute;
			left:70px;
			top:80px
		}
		#lin_huise1{		
		position:absolute;
			left:269px;
			top:80px
		}
		#lin_yellow{		
		position:absolute;
			left:70px;
			top:80px
		}
		#lin_yellow1{		
		position:absolute;
			left:269px;
			top:80px
		}
		#lin_green{		
		position:absolute;
			left:70px;
			top:80px
		}
		#lin_green1{		
		position:absolute;
			left:269px;
			top:80px
		}
/*
第二组
*/	
		#lin_huise_1{		
		position:absolute;
			left:70px;
			top:200px
		}
		#lin_huise1_1{		
		position:absolute;
			left:269px;
			top:200px
		}
		#lin_huise2_1{		
		position:absolute;
			left:467px;
			top:200px
		}	
		#lin_yellow_1{		
		position:absolute;
			left:70px;
			top:200px
		}
		#lin_yellow1_1{		
		position:absolute;
			left:269px;
			top:200px
		}
		#lin_yellow2_1{		
		position:absolute;
			left:467px;
			top:200px
		}
		#lin_green_1{		
		position:absolute;
			left:70px;
			top:200px
		}
		#lin_green1_1{		
		position:absolute;
			left:269px;
			top:200px
		}
		#lin_green2_1{		
		position:absolute;
			left:467px;
			top:200px
		}		
/*
第三组
*/	
		#lin_huise_2{		
		position:absolute;
			left:70px;
			top:320px
		}
		#lin_huise1_2{		
		position:absolute;
			left:269px;
			top:320px
		}	
		#lin_huise2_2{		
		position:absolute;
			left:467px;
			top:320px
		}
		#lin_yellow_2{		
		position:absolute;
			left:70px;
			top:320px
		}
		#lin_yellow1_2{		
		position:absolute;
			left:269px;
			top:320px
		}	
		#lin_yellow2_2{		
		position:absolute;
			left:467px;
			top:320px
		}
		#lin_green_2{		
		position:absolute;
			left:70px;
			top:320px
		}
		#lin_green1_2{		
		position:absolute;
			left:269px;
			top:320px
		}	
		#lin_green2_2{		
		position:absolute;
			left:467px;
			top:320px
		}
/*
流程图下名字
			left:50px;
			top:72px
*/
#lqxx{		
		position:absolute;
			left:30px;
			top:97px
		}
		#lqtz{		
		position:absolute;
			left:228px;
			top:97px
		}
		#yjxf{		
		position:absolute;
			left:427px;
			top:97px
		}
		
#pyxy{		
		position:absolute;
			left:30px;
			top:217px
		}
		#pyap{		
		position:absolute;
			left:228px;
			top:217px
		}
		#pyapmx{		
		position:absolute;
			left:410px;
			top:217px
		}
		#sgapmx{		
		position:absolute;
			left:608px;
			top:217px
		}
		
#sxap{		
		position:absolute;
			left:30px;
			top:337px
		}
		#sxgz{		
		position:absolute;
			left:228px;
			top:337px
		}
		#sxgzry{		
		position:absolute;
			left:388px;
			top:337px
		}		
		#sxhz{		
		position:absolute;
			left:580px;
			top:337px
		}
		
/*
查询条件显示
*/
/*
第一组
*/
		#xianshi1{
			position:absolute;
			left:173px;
			top:50px
		}
		#xianshi2{
			position:absolute;
			left:5px;
			top:50px
		}
		#xianshi3{
			position:absolute;
			left:365px;
			top:50px
		}
/*
第二组
*/		
		#xianshi1_1{
			position:absolute;
			left:9px;
			top:170px
		}
		#xianshi2_1{
			position:absolute;
			left:210px;
			top:170px
		}
		#xianshi3_1{
			position:absolute;
			left:410px;
			top:170px
		}
		#xianshi4_1{
			position:absolute;
			left:590px;
			top:170px
		}
/*
第三组
*/	
		#xianshi1_2{
			position:absolute;
			left:40px;
			top:290px
		}
		#xianshi2_2{
			position:absolute;
			left:241px;
			top:290px
		}
		#xianshi3_2{
			position:absolute;
			left:441px;
			top:290px
		}
		#xianshi4_2{
			position:absolute;
			left:621px;
			top:290px
		}
		
		
		#next_1{
		width:25px;
		height:	18px;
		background-repeat:no-repeat;
		padding-top:10px;		
		position:absolute;
			left:713px;
			top:250px
		}
		#next_2{
		width:25px;
		height:	18px;
		background-repeat:no-repeat;
		padding-top:10px;		
		position:absolute;
			left:60px;
			top:250px
		}	
	</style>
<body bgcolor="#eeeeee"  scroll="no"> 
<!-- 
	editTime:2014-01-20
	editUser:luweibin V1.1
	decription:因要求更改导航格式样式
 -->
<!-- 第一组 -->
<!-- 
	editTime:2014-03-5
	editUser:luweibin 
	decription:1.录取信息中录取类型新增为10种，有些类型没有打印模板，所以不能打印，流程颜色进展功能不能进行验证
			   2.格式样式问题修改
 -->
	<div id="bg_left" style="background-image: url('images/DaoHang/bg_left.png');width:55px;height:46px;background-repeat:no-repeat;">
	</div>
	  
	<div id="content" style="background-image: url('images/DaoHang/content.png');width:810px;height:46px;background-repeat:repeat-x;">
	</div>
	 
 
	<div id="bg_right" style="background-image: url('images/DaoHang/bg_right.png');width:380px;height:46px;background-repeat:repeat-x;">
	</div>


	<!-- 
	<div id="shubiandianji_bg" onMouseOut="chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	<div id="content1" onMouseOver="chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	 -->
 
	 <!-- 
	<div id="shubiandianji_bg1" onMouseOut="chkIn_1()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	<div id="content2" onMouseOver="chkIn1_1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	 -->
	
	
	
	<!--招生方案 
	<div id="zsfa_1" onMouseOut="zsfa_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	<div id="zsfaContent_1" onMouseOver="zsfa_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	-->
	 <!-- 招生汇总 
	<div id="zshz_1" onMouseOut="zshz_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	<div id="zshzContent_1" onMouseOver="zshz_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	-->
	
	<!-- 预约报名 
	<div id="yybm_1" onMouseOut="yybm_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	<div id="yybmContent_1" onMouseOver="yybm_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	-->

	<!-- 招生录取 
	<div id="new_zslu_1" onMouseOut="new_zslu_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	<div id="new_zsluContent_1" onMouseOver="new_zslu_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	-->
	
	<!-- 
	<div id="shubiandianji_bg2" onMouseOut="chkIn_2()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="content2" onMouseOver="chkIn1_2()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	
	<div id="shubiandianji_bg3" onMouseOut="chkIn_3()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="content3" onMouseOver="chkIn1_3()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	
	<div id="shubiandianji_bg4" onMouseOut="chkIn_3()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="content4" onMouseOver="chkIn1_3()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	 -->
	<div id="zswz" onMouseOver="chkIn1()" onMouseOut="chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;" ><font id="font1">招生网站</font></td>
			</tr>
		</table>
		 -->
		 招生网站
	</div>
	<div id="zsjh" onMouseOver="chkIn1_1()" onMouseOut="chkIn_1()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="font2">招生计划</font></td>
			</tr>
		</table>
		 -->
		 招生计划
	</div>

	<div id="zsfa" onMouseOver="zsfa_chkIn1()" onMouseOut="zsfa_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="zsfa_font">招生方案</font></td>
			</tr>
		</table>
		 -->
		 招生方案
	</div>
	<div id="new_zslu" onMouseOver="new_zslu_chkIn1()" onMouseOut="new_zslu_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="new_zslu_font">招生录取</font></td>
			</tr>
		</table>
		 -->
		 招生录取
	</div>
	<div id="zshz" onMouseOver="zshz_chkIn1()" onMouseOut="zshz_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="zshz_font">招生汇总</font></td>
			</tr>
		</table>
		 -->
		 招生汇总
	</div>
	<div id="yybm" onMouseOver="yybm_chkIn1()" onMouseOut="yybm_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="yybm_font">预约报名</font></td>
			</tr>
		</table>
		 -->
		 预约报名
	</div>
	<div id="new_zslu_show" style="background-image: url('images/DaoHang/liuzhuan_jiantou1.png');width:22px;height:10px;background-repeat:no-repeat;display: none;">
	</div>
	<div id="new_zslu_show1" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<div id="new_zslu_show2" style="background-image: url('images/DaoHang/liuzhuan_heng1.png');width:50px;height:1px;background-repeat:repeat-x;display: none;">
	</div>
	<div id="new_zslu_show3" style="background-image: url('images/DaoHang/liuzhuan_heng1.png');width:345px;height:1px;background-repeat:repeat-x;display: none;">
	</div>
	<div id="new_zslu_show4" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<div id="new_zslu_show5" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<div id="yuan_blue1" style="weight:1px;height:28px;">
		<table>
			<tr>
				<td><image id="new" src="<%=request.getContextPath()%>/images/DaoHang/yuan_blue1.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_huise" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="" src="<%=request.getContextPath()%>/images/DaoHang/lin_huise.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_gray" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="luqu" src="<%=request.getContextPath()%>/images/DaoHang/yuan_gray.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_huise1" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_huise.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_gray1" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="luqutongzhi" src="<%=request.getContextPath()%>/images/DaoHang/yuan_gray.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_gray2" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="youjixinfeng" src="<%=request.getContextPath()%>/images/DaoHang/yuan_gray.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_green" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="luqu1" src="<%=request.getContextPath()%>/images/DaoHang/yuan_green.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
		<div id="yuan_green1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="luqutongzhi1" src="<%=request.getContextPath()%>/images/DaoHang/yuan_green.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_green2" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="youjixinfeng1" src="<%=request.getContextPath()%>/images/DaoHang/yuan_green.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_yellow"  Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_yellow.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_yellow1"  Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_yellow.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	
	<div id="yuan_byellow" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="luqu2" src="<%=request.getContextPath()%>/images/DaoHang/yuan_byellow.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_byellow1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="luqutongzhi2" src="<%=request.getContextPath()%>/images/DaoHang/yuan_byellow.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_byellow2" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="youjixinfeng2" src="<%=request.getContextPath()%>/images/DaoHang/yuan_byellow.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>	
	<div id="lin_green" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_green.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_green1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_green.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="lqxx" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td style="color:#878787;">录取信息</td>
			</tr>
		</table>
	</div>
	<div id="lqtz" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td style="color:#878787;">录取通知</td>
			</tr>
		</table>
	</div>
	<div id="yjxf" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td style="color:#878787;">邮寄信封</td>
			</tr>
		</table>
	</div>
	
	
	<div id ="xianshi1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td id='year1'></td>
				<td id='lqtype1'></td>
				<td id='sytype1'></td>
			</tr>
		</table>
	</div>
	
	<div id ="xianshi2" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td id='year2'></td>
				<td id='lqtype2'></td>
				<td id='sytype2'></td>
			</tr>
		</table>
	</div>
	
	<div id ="xianshi3" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td id='year3'></td>
				<td id='lqtype3'></td>
				<td id='sytype3'></td>
			</tr>
		</table>
	</div>
	
	
	
<!--第二组  -->
	<div id="bg_left_1" style="background-image: url('images/DaoHang/bg_left.png');width:55px;height:46px;background-repeat:no-repeat;">
	</div> 
	<div id="content_1" style="background-image: url('images/DaoHang/content.png');width:810px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="bg_right_1" style="background-image: url('images/DaoHang/bg_right.png');width:380px;height:46px;background-repeat:repeat-x;">
	</div>


	
	<!-- 培养协议 
	<div id="new_pyxy_1" onMouseOut="new_pyxy_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	<div id="new_pyxyContent_1" onMouseOver="new_pyxy_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	-->
	
	<!-- 培养安排 
	<div id="new_pyap_1" onMouseOut="new_pyap_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	<div id="new_pyapContent_1" onMouseOver="new_pyap_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	-->
	

	
	
	
	<!-- 上岗安排 
	<div id="sgap_1" onMouseOut="sgap_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>
	<div id="sgapContent_1" onMouseOver="sgap_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:44px;background-repeat:repeat-x;">
	</div>	
	-->
	
	
	

	
	
	
	
	
	
	
	

	<div id="new_pyxy" onMouseOver="new_pyxy_chkIn1()" onMouseOut="new_pyxy_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="new_pyxy_font">培养协议</font></td>
			</tr>
		</table>
		 -->
		 培养协议
	</div>
	
	<div id="new_pyap" onMouseOver="new_pyap_chkIn1()" onMouseOut="new_pyap_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="new_pyap_font">培养安排</font></td>
			</tr>
		</table>
		 -->
		 培养安排
	</div>
	
	<div id="sgap" onMouseOver="sgap_chkIn1()" onMouseOut="sgap_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="sgap_font">上岗安排</font></td>
			</tr>
		</table>
		 -->
		 上岗安排
	</div>
	<div id="new_pyxy_show" style="background-image: url('images/DaoHang/liuzhuan_jiantou1.png');width:22px;height:10px;background-repeat:no-repeat;display: none;">
	</div>
	<div id="new_pyxy_show1" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<div id="new_pyxy_show2" style="background-image: url('images/DaoHang/liuzhuan_heng1.png');width:66px;height:1px;background-repeat:repeat-x;display: none;">
	</div>
	<div id="new_pyxy_show3" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<div id="new_pyxy_show_1" style="background-image: url('images/DaoHang/liuzhuan_jiantou1.png');width:22px;height:10px;background-repeat:no-repeat;display: none;">
	</div>
	<div id="new_pyxy_show1_1" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<!-- 
	<div id="new_pyxy_show2_1" style="background-image: url('images/DaoHang/liuzhuan_heng1.png');width:200px;height:1px;background-repeat:repeat-x;border:1px solid red;">
	</div>
	 -->
	<div id="new_pyxy_show3_1" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<div id="new_pyxy_show4_1" style="background-image: url('images/DaoHang/liuzhuan_heng1.png');width:225px;height:1px;background-repeat:repeat-x;display: none;">
	</div>
	<div id="new_pyxy_show5_1" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:11px;background-repeat:repeat-y;display: none;">
	</div>
	<div id="new_pyxy_show_2" style="background-image: url('images/DaoHang/liuzhuan_jiantou1.png');width:22px;height:10px;background-repeat:no-repeat;display: none;">
	</div>
	<div id="new_pyxy_show1_2" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<div id="new_pyxy_show2_2" style="background-image: url('images/DaoHang/liuzhuan_heng1.png');width:323px;height:1px;background-repeat:repeat-x;display: none;">
	</div>
	<div id="new_pyxy_show3_2" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>

	<div id="yuan_blue1_1" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="pyxy_new" src="<%=request.getContextPath()%>/images/DaoHang/yuan_blue1.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
 
	<div id="yuan_gray_1" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="pyxy_gray" src="<%=request.getContextPath()%>/images/DaoHang/yuan_gray.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>	
	
	
	
	<div id="yuan_gray1_1" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="pyap_gray" src="<%=request.getContextPath()%>/images/DaoHang/yuan_gray.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	
	<div id="yuan_gray2_1" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="pyap_mx_gray" src="<%=request.getContextPath()%>/images/DaoHang/yuan_gray.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	
	<div id="yuan_gray3_1" style="weight:1px;height:1px;">
	
		<table>
			<tr>
				<td><image id="sgap_mx_gray" src="<%=request.getContextPath()%>/images/DaoHang/yuan_gray.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	
	<div id="yuan_green_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="pyxy_gray1" src="<%=request.getContextPath()%>/images/DaoHang/yuan_green.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	

	<div id="yuan_green1_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="pyap_gray1" src="<%=request.getContextPath()%>/images/DaoHang/yuan_green.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	
	<div id="yuan_green2_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="pyap_mx_gray1" src="<%=request.getContextPath()%>/images/DaoHang/yuan_green.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	
	<div id="yuan_green3_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="sgap_mx_gray1" src="<%=request.getContextPath()%>/images/DaoHang/yuan_green.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	
	<div id="yuan_byellow_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="pyxy_gray2" src="<%=request.getContextPath()%>/images/DaoHang/yuan_byellow.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_byellow1_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="pyap_gray2" src="<%=request.getContextPath()%>/images/DaoHang/yuan_byellow.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_byellow2_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="pyap_mx_gray2" src="<%=request.getContextPath()%>/images/DaoHang/yuan_byellow.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_byellow3_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="sgap_mx_gray2" src="<%=request.getContextPath()%>/images/DaoHang/yuan_byellow.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>


	<div id="lin_huise_1" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_huise.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>

	<div id="lin_huise1_1" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_huise.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>


	<div id="lin_huise2_1" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_huise.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>




	<div id="lin_yellow_1" Style="display:none;weight:1px;height:1px;" >
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_yellow.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_yellow1_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_yellow.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_yellow2_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_yellow.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>

	<div id="lin_green_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_green.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_green1_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_green.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_green2_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_green.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	 
	<div id="pyxy" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td style="color:#878787;">培养协议</td>
			</tr>
		</table>
	</div>
	<div id="pyap" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td style="color:#878787;">培养安排</td>
			</tr>
		</table>
	</div>
	<div id="pyapmx" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td style="color:#878787;">培养安排明细</td>
			</tr>
		</table>
	</div>
	<div id="sgapmx" style="weight:1px;height:1px;">
		<table>
			<tr>
				<td style="color:#878787;">上岗安排明细</td>
			</tr>
		</table>
	</div>	
	
	<div id ="xianshi1_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td id='year1_1'></td>
				<td id='lqtype1_1'></td>
				<td id='sytype1_1'></td>
			</tr>
		</table>
	</div>
	
	<div id ="xianshi2_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td id='year2_1'></td>
				<td id='lqtype2_1'></td>
				<td id='sytype2_1'></td>
			</tr>
		</table>
	</div>
	
	<div id ="xianshi3_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td id='year3_1'></td>
				<td id='lqtype3_1'></td>
				<td id='sytype3_1'></td>
			</tr>
		</table>
	</div>
	<div id ="xianshi4_1" Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td id='year4_1'></td>
				<td id='lqtype4_1'></td>
				<td id='sytype4_1'></td>
			</tr>
		</table>
	</div>
	
	
<!-- 第三组 -->

	<div id="bg_left_2" style="background-image: url('images/DaoHang/bg_left.png');width:55px;height:46px;background-repeat:no-repeat;">
	</div> 
	<div id="content_2" style="background-image: url('images/DaoHang/content.png');width:810px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="bg_right_2" style="background-image: url('images/DaoHang/bg_right.png');width:380px;height:46px;background-repeat:repeat-x;">
	</div>
	<!-- 实习文件 
	<div id="sswj_1" onMouseOut="sswj_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="sswjContent_1" onMouseOver="sswj_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>	
	-->
	<!-- 实习登记 
	<div id="ssdj_1" onMouseOut="ssdj_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="ssdjContent_1" onMouseOver="ssdj_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>	
	-->
	<!-- 返校情况 
	<div id="fxqk_1" onMouseOut="fxqk_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="fxqkContent_1" onMouseOver="fxqk_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	-->
	
	
	<!-- 实习班班主任安排表 
	<div id="new_sxbbzr_1" onMouseOut="new_sxbbzr_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:145px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="new_sxbbzrContent_1" onMouseOver="new_sxbbzr_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:145px;height:46px;background-repeat:repeat-x;">
	</div>
	-->
	
	
	<!-- 实习跟踪 
	<div id="new_sxgz_1" onMouseOut="new_sxgz_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="new_sxgzContent_1" onMouseOver="new_sxgz_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	-->
	<!-- 班级学生去向汇总 
	<div id="new_bjxs_1" onMouseOut="new_bjxs_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:130px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="new_bjxsContent_1" onMouseOver="new_bjxs_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:130px;height:46px;background-repeat:repeat-x;">
	</div>
	-->
	<!-- 用人单位 
	<div id="new_yrdw_1" onMouseOut="new_yrdw_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:130px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="new_yrdwContent_1" onMouseOver="new_yrdw_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:130px;height:46px;background-repeat:repeat-x;">
	</div>
	-->
	
	<div id="sswj" onMouseOver="sswj_chkIn1()" onMouseOut="sswj_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td  style="color:#878787;"><font id="sswj_font">实习文件</font></td>
			</tr>
		</table>
		 -->
		 实习文件
	</div>
	
	<div id="ssdj" onMouseOver="ssdj_chkIn1()" onMouseOut="ssdj_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="ssdj_font">实习登记</font></td>
			</tr>
		</table>
		 -->
		 实习生登记表
	</div>

	<div id="fxqk" onMouseOver="fxqk_chkIn1()" onMouseOut="fxqk_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="fxqk_font">返校情况</font></td>
			</tr>
		</table>
		 -->
		 返校情况
	</div>


	<div id="new_sxbbzr" onMouseOver="new_sxbbzr_chkIn1()" onMouseOut="new_sxbbzr_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="new_sxbbzr_font">实习班班主任安排表</font></td>
			</tr>
		</table>
		 -->
		 实习班班主任安排表
	</div>
	
	<div id="new_sxgz" onMouseOver="new_sxgz_chkIn1()" onMouseOut="new_sxgz_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="new_sxgz_font">实习跟踪</font></td>
			</tr>
		</table>
		 -->
		 实习跟踪
	</div>
 
	<div id="new_bjxs" onMouseOver="new_bjxs_chkIn1()" onMouseOut="new_bjxs_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;display: none;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="new_bjxs_font">班级学生去向汇总</font></td>
			</tr>
		</table>
		 -->
		 班级学生去向汇总
	</div>

	<div id="new_yrdw" onMouseOver="new_yrdw_chkIn1()" onMouseOut="new_yrdw_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;display: none;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="new_yrdw_font">用人单位学生汇总</font></td>
			</tr>
		</table>
		 -->
		 用人单位学生汇总
	</div>
	
	<div id="new_sswj_show" style="background-image: url('images/DaoHang/liuzhuan_jiantou1.png');width:22px;height:10px;background-repeat:no-repeat;display: none;">
	</div>
	<div id="new_sswj_show1" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<div id="new_sswj_show2" style="background-image: url('images/DaoHang/liuzhuan_heng1.png');width:216px;height:1px;background-repeat:repeat-x;display: none;">
	</div>
	<div id="new_sswj_show3" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	
	<div id="new_sswj_show_1" style="background-image: url('images/DaoHang/liuzhuan_jiantou1.png');width:22px;height:10px;background-repeat:no-repeat;display: none;">
	</div>
	<div id="new_sswj_show1_1" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<!-- 
	<div id="new_sswj_show2_1" style="background-image: url('images/DaoHang/liuzhuan_heng1.png');width:70px;height:1px;background-repeat:repeat-x;border:1px solid red;">
	</div>
	 -->
	<div id="new_sswj_show3_1" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<div id="new_sswj_show4_1" style="background-image: url('images/DaoHang/liuzhuan_heng1.png');width:301px;height:1px;background-repeat:repeat-x;display: none;">
	</div>
	<div id="new_sswj_show5_1" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	
		<div id="new_sswj_show_2" style="background-image: url('images/DaoHang/liuzhuan_jiantou1.png');width:22px;height:10px;background-repeat:no-repeat;display: none;">
	</div>
	<div id="new_sswj_show1_2" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	<div id="new_sswj_show2_2" style="background-image: url('images/DaoHang/liuzhuan_heng1.png');width:280px;height:1px;background-repeat:repeat-x;display: none;">
	</div>
	<div id="new_sswj_show3_2" style="background-image: url('images/DaoHang/liuzhuan_shu1.png');width:1px;height:16px;background-repeat:repeat-y;display: none;">
	</div>
	
	<div id="next_1" onclick="next_1();" style="background-image: url('images/DaoHang/right_2.png');">
	</div>
	<div id="next_2" onclick="next_2();" style="background-image: url('images/DaoHang/left_2.png');display: none;">
	</div>







	<div id="yuan_blue1_2">
		<table>
			<tr>
				<td><image id="sxgl_new" src="<%=request.getContextPath()%>/images/DaoHang/yuan_blue1.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
<div id="lin_huise_2">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_huise.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_gray_2">
		<table>
			<tr>
				<td><image id="sxgl_sxap" src="<%=request.getContextPath()%>/images/DaoHang/yuan_gray.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_huise1_2">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_huise.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_gray1_2">
		<table>
			<tr>
				<td><image id="sxgl_sxgz" src="<%=request.getContextPath()%>/images/DaoHang/yuan_gray.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_gray2_2">
		<table>
			<tr>
				<td><image id="sxgl_sxgz_mx" src="<%=request.getContextPath()%>/images/DaoHang/yuan_gray.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_huise2_2">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_huise.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_gray3_2">
	
		<table>
			<tr>
				<td><image id="sxgl_hz" src="<%=request.getContextPath()%>/images/DaoHang/yuan_gray.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
<div id="yuan_green_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="sxgl_sxap1" src="<%=request.getContextPath()%>/images/DaoHang/yuan_green.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
		<div id="yuan_green1_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="sxgl_sxgz1" src="<%=request.getContextPath()%>/images/DaoHang/yuan_green.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_green2_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="sxgl_sxgz_mx1" src="<%=request.getContextPath()%>/images/DaoHang/yuan_green.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_green3_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="sxgl_hz1" src="<%=request.getContextPath()%>/images/DaoHang/yuan_green.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_yellow_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_yellow.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_yellow1_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_yellow.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_yellow2_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_yellow.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>	
	<div id="yuan_byellow_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="sxgl_sxap2" src="<%=request.getContextPath()%>/images/DaoHang/yuan_byellow.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_byellow1_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="sxgl_sxgz2" src="<%=request.getContextPath()%>/images/DaoHang/yuan_byellow.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_byellow2_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="sxgl_sxgz_mx2" src="<%=request.getContextPath()%>/images/DaoHang/yuan_byellow.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="yuan_byellow3_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="sxgl_hz2" src="<%=request.getContextPath()%>/images/DaoHang/yuan_byellow.png" onclick="doToolbar(this.id);"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_green_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_green.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_green1_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_green.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
	<div id="lin_green2_2" Style="display:none;">
		<table>
			<tr>
				<td><image id="xf2" src="<%=request.getContextPath()%>/images/DaoHang/lin_green.png" onclick="doToolbar(this.id);" width="180" height="3"></image></td>
			</tr>
		</table>
	</div>
<div id="sxap">
		<table>
			<tr>
				<td style="color:#878787;">实习班班主任安排表</td>
			</tr>
		</table>
	</div>
	<div id="sxgz">
		<table>
			<tr>
				<td style="color:#878787;">实习跟踪</td>
			</tr>
		</table>
	</div>
	<div id="sxgzry">
		<table>
			<tr>
				<td style="color:#878787;">实习跟踪人员月评列表</td>
			</tr>
		</table>
	</div>
	<div id="sxhz">
		<table>
			<tr>
				<td style="color:#878787;">班级学生去向汇总</td>
			</tr>
		</table>
	</div>	
	
	<div id ="xianshi1_2" 
Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td id='sytype1_2'></td>
			</tr>
		</table>
	</div>
	 
	<div id ="xianshi2_2" 
Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td id='sytype2_2'></td>
			</tr>
		</table>
	</div>
	
	<div id ="xianshi3_2" 
Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td id='sytype3_2'></td>
			</tr>
		</table>
	</div>
	<div id ="xianshi4_2" 
Style="display:none;weight:1px;height:1px;">
		<table>
			<tr>
				<td id='sytype4_2'></td>
			</tr>
		</table>
	</div>
	
	
	
<!-- 第四组 -->

	<div id="bg_left_3" style="background-image: url('images/DaoHang/bg_left.png');width:55px;height:46px;background-repeat:no-repeat;">
	</div>

	<div id="content_3" style="background-image: url('images/DaoHang/content.png');width:810px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="bg_right_3" style="background-image: url('images/DaoHang/bg_right.png');width:380px;height:46px;background-repeat:repeat-x;">
	</div>

	<!-- 毕业统计 
	<div id="bytj_1" onMouseOut="bytj_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="bytjContent_1" onMouseOver="bytj_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	-->
	<!--毕业跟踪  
	<div id="bygz_1" onMouseOut="bygz_chkIn()"  style="background-image: url('images/DaoHang/shubiandianji_bg.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	<div id="bygzContent_1" onMouseOver="bygz_chkIn1()"  style="background-image: url('images/DaoHang/content.png');width:70px;height:46px;background-repeat:repeat-x;">
	</div>
	-->
	<div id="bytj" onMouseOver="bytj_chkIn1()" onMouseOut="bytj_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="bytj_font">毕业统计</font></td>
			</tr>
		</table>
		 -->
		 毕业统计
	</div>
	<div id="bygz" onMouseOver="bygz_chkIn1()" onMouseOut="bygz_chkIn()" onclick="doToolbar(this.id);" style="color:#878787;cursor:default;">
		<!-- 
		<table>
			<tr>
				<td style="color:#878787;"><font id="bygz_font">毕业跟踪</font></td>
			</tr>
		</table>
		 -->
		 毕业跟踪
	</div>
	

<!-- 	
<div id ="biaoti">
			<table>
				<tr>
					<td>系统导航</td>
				</tr>
			</table>
		</div>
	 -->
<!-- 
 <img name="zs" src="<%=request.getContextPath()%>/images/A1.jpg" width=820 height="470" border="0" id="zs" usemap="#m_zs" alt="" /><map name="m_zs" id="m_zs">
--> 
<!-- 		
<area id="22" shape="rect" coords="150,440,300,467" href="javascript:;" alt="" />
<area id="21" shape="rect" coords="5,437,145,466" href="javascript:;" alt=""  onclick="doToolbar(this.id);"/>
<area id="17" shape="rect" coords="646,364,746,407" href="javascript:;" alt=""  onclick="doToolbar(this.id);"/>
<area id="16" shape="rect" coords="440,364,540,407" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="15" shape="rect" coords="238,364,338,407" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="14" shape="rect" coords="38,364,138,407" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="20" shape="rect" coords="308,301,462,326" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="19" shape="rect" coords="154,299,302,325" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="18" shape="rect" coords="12,300,143,324" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="12" shape="rect" coords="647,224,744,270" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="13" shape="rect" coords="438,222,535,268" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="10" shape="rect" coords="238,222,335,268" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="9" shape="rect" coords="38,223,135,269" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="11" shape="rect" coords="8,157,144,184" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="3" shape="rect" coords="439,73,536,119" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="2" shape="rect" coords="240,74,337,120" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="1" shape="rect" coords="37,73,134,119" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="8" shape="rect" coords="631,14,768,40" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="7" shape="rect" coords="475,13,612,39" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="6" shape="rect" coords="318,13,455,39" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="5" shape="rect" coords="157,12,294,38" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="4" shape="rect" coords="7,12,144,38" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
-->
<!-- 
<area id="17" shape="poly" coords="648,364,743,364,743,408,648,408,648,364" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="16" shape="poly" coords="437,363,545,363,545,407,437,407,437,363" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="15" shape="poly" coords="239,364,334,364,334,408,239,408,239,364" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="14" shape="poly" coords="38,364,133,364,133,408,38,408,38,364" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="12" shape="poly" coords="648,224,743,224,743,268,648,268,648,224" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="11" shape="poly" coords="439,224,534,224,534,268,439,268,439,224" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="10" shape="poly" coords="238,224,333,224,333,268,238,268,238,224" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="9" shape="poly" coords="39,224,134,224,134,268,39,268,39,224" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="3" shape="poly" coords="438,74,533,74,533,118,438,118,438,74" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="2" shape="poly" coords="239,74,333,74,333,118,239,118,239,74" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="1" shape="poly" coords="39,74,133,74,133,118,39,118,39,74" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="568" shape="rect" coords="10,375,32,394" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="567" shape="rect" coords="10,236,32,255" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="23" title ="新任务" shape="rect" coords="10,85,32,104" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="22" shape="rect" coords="182,438,279,470" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="21" shape="rect" coords="27,436,124,468" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="20" shape="rect" coords="337,297,434,329" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="19" shape="rect" coords="182,296,279,328" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="18" shape="rect" coords="22,297,119,329" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="13" shape="rect" coords="24,157,121,189" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="8" shape="rect" coords="651,10,748,42" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="7" shape="rect" coords="499,10,596,42" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="6" shape="rect" coords="338,10,435,42" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="5" shape="rect" coords="180,10,277,42" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
<area id="4" shape="rect" coords="23,10,120,42" href="javascript:;" alt="" onclick="doToolbar(this.id);"/>
 --> 
		
<!-- 	
<div id ="left">
	<table>
		<tr>
			<td ><image src="<%=request.getContextPath()%>/images/welcome/btnjxz.png"></image></td>
		</tr>
	</table>
</div>
<div id ="left1">
	<table>
		<tr>
			<td ><image src="<%=request.getContextPath()%>/images/welcome/btnjxz.png"></image></td>
		</tr>
	</table>
</div>
<div id ="left2">
	<table>
		<tr>
			<td ><image src="<%=request.getContextPath()%>/images/welcome/btnwc.png"></image></td>
		</tr>
	</table>
</div>
<div id ="left4">
	<table>
		<tr>
			<td ><image src="<%=request.getContextPath()%>/images/welcome/btnjxz.png"></image></td>
		</tr>
	</table>
</div>
 -->
<!-- 
<div id ="left3">
	<table>
		<tr>
			<td><a id="clear" name="print" onclick="doToolbar(this.id)" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-print">刷新</a></td>
			
		</tr>
	</table>
</div>
 -->
<!-- 		
<div id ="xianshi">
	<table>
		<tr>
			<td id='year'></td>
			<td id='lqtype'></td>
			<td id='sytype'></td>
		</tr>
	</table>
</div>

<div id ="xianshi1">
	<table>
		<tr>
			<td id='year1'></td>
			<td id='lqtype1'></td>
			<td id='sytype1'></td>
		</tr>
	</table>
</div>

<div id ="xianshi2">
	<table>
		<tr>
			<td id='year2'></td>
			<td id='lqtype2'></td>
			<td id='sytype2'></td>
		</tr>
	</table>
</div>

<div id ="xianshi3">
	<table>
		<tr>
			<td id='year3'></td>
			<td id='lqtype3'></td>
			<td id='sytype3'></td>
		</tr>
	</table>
</div>


		<div id ="wenzi">
	<table>
		<tr>
			<td ><image src="<%=request.getContextPath()%>/images/welcome/Zzslq.png"></image></td>
		</tr>
	</table>
</div>

<div id ="wenzi1">
	<table>
		<tr>
			<td ><image src="<%=request.getContextPath()%>/images/welcome/Zlqtz.png"></image></td>
		</tr>
	</table>
</div>

<div id ="wenzi2">
	<table>
		<tr>
			<td ><image src="<%=request.getContextPath()%>/images/welcome/Zyjxf.png"></image></td>
		</tr>
	</table>
</div>
 -->
<div id='ZStype' style='width:295px;background:#fafafa'>
	<table class='tablestyle' style='display:none'>
	<tr>
		<a id="print" name="print" onclick="doToolbar(this.id)" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-print">确定</a>
<!-- <a id="clear" name="print" onclick="doToolbar(this.id)" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-print">清空</a> -->

			<td colspan='7'><font style="color: red">请先选择本次要操作的数据</font></td>
		</tr>			
		<tr>
			<td class='titlestyle' width='15%'>
					年度
				</td>
				<td width='20%'>
					<input style='width:100px;' class='easyui-combobox' id='icRA_YEAR1' name='icRA_YEAR1' />
				</td>      
				<td class='titlestyle' width='20%'>
					录取类型
				</td>
				<td width='20%'>
					<input style='width:100px;' class='easyui-combobox' id='icRA_LQTYPE1' name='icRA_LQTYPE1'>
				</td>                
                <td class='titlestyle' width='15%'>
                	生源地
                </td>
				<td width='10%'>
					<input style='width:100px;' class='easyui-combobox' id='icRA_SYD1' name='icRA_SYD1'>
				</td>
		</tr>
	</table>
</div>
<div id='gxjt_ZStype' style='width:295px;background:#fafafa'>
	<table class='tablestyle' style='display:none'>
	<tr>
		<a id="gxjt_print" name="gxjt_print" onclick="doToolbar(this.id)" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-print">确定</a>
<!-- <a id="clear" name="print" onclick="doToolbar(this.id)" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-print">清空</a> -->

			<td colspan='7'><font style="color: red">请先选择本次要操作的数据</font></td>
		</tr>			
		<tr>
			<td class='titlestyle' width='15%'>
					年度
				</td>
				<td width='20%'>
					<input style='width:100px;' class='easyui-combobox' id='gxjt_icRA_YEAR1' name='igxjt_cRA_YEAR1' />
				</td>      
				<td class='titlestyle' width='20%'>
					培养协议
				</td>
				<td width='20%'>
					<input style='width:100px;' class='easyui-validatebox' id='gxjt_icRA_LQTYPE1' name='gxjt_icRA_LQTYPE1'>
				</td>                
                <td class='titlestyle' width='15%'>
                	班级
                </td>
				<td width='10%'>
					<input style='width:100px;' class='easyui-combobox' id='gxjt_icRA_SYD1' name='gxjt_icRA_SYD1'>
				</td>
		</tr>
	</table>
</div>

<div id='sxgl_ZStype' style='width:295px;background:#fafafa'>
	<table class='tablestyle' style='display:none'>
	<tr>
		<a id="sxgl_print" name="gxjt_print" onclick="doToolbar(this.id)" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-print">确定</a>
			<td colspan='7'><font style="color: red">请先选择本次要操作的数据</font></td>
		</tr>			
		<tr>               
	        <td class='titlestyle' width='10%'>
	        	班级
	        </td>
			<td width='10%'>
				<input style='width:100px;' class='easyui-combobox' id='sxgl_icRA_SYD1' name='sxgl_icRA_SYD1'>
			</td>
		</tr>
	</table>
</div>

</body>
</html>
<script language="JavaScript">

/*
 * 招生录取流程
 */ 
var year='';//定义年度
var lastYear = '' ;//上一次的查询年度
var statu='1';//定义状态是否是从系统导航进入
var icRA_YEAR1="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("icLC_YEAR1"))%>"//获取父页面的年度
var icRA_LQTYPE1="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("icLC_LQTYPE1"))%>"//获取父页面的录取类型
var icRA_SYD1="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("icLC_SYD1"))%>"//获取父页面的生源地
var current="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("current"))%>";//获得父页面流程进度状态


/*
 * 
 * 培养协议流程
 */
var gxjt_st="";
var gxjt_statu='1';//定义状态是否是从系统导航进入
var gxjt_icRA_YEAR1="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("gxjt_icLC_YEAR1"))%>"//获取父页面的参数
var gxjt_icRA_LQTYPE1="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("gxjt_icLC_LQTYPE1"))%>"//获取父页面的参数
var gxjt_icRA_SYD1="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("gxjt_icLC_SYD1"))%>"//获取父页面的参数
var gxjt_current="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("gxjt_current"))%>";//获得父页面流程进度状态


var gxjt_sg_ic_keyCode="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("gxjt_sg_icLC_keyCode"))%>";//获取父页面的参数
var gxjt_ic_keyCode="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("gxjt_icLC_keyCode"))%>";//获取父页面的参数
	
var gxjt_icRA_SYD2="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("gxjt_icLC_SYD2"))%>"//获取父页面的参数
/*
editTime:2014-01-20
editUser:luweibin V1.1
decription:因要求更改导航格式样式
*/
/*
 * 下拉框中文名
 */
var icRA_LQTYPE2="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("icLC_LQTYPE2"))%>"//获取父页面的参数
var icRA_SYD2="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("icLC_SYD2"))%>"//获取父页面的参数


/*
 * 
 * 
 * 实习班班主任流程
 * 
 */ 
var sxgl_st="";
var sxgl_statu='1';//定义状态是否是从系统导航进入
var sxgl_icRA_SYD1="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("sxgl_icLC_SYD1"))%>"//获取父页面的参数
var sxgl_current="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("sxgl_current"))%>";//获得父页面流程进度状态
var sxgl_ic_keyCode="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("sxgl_icLC_keyCode"))%>";//获取父页面的参数
var sxgl_icRA_SYD2="<%=StringEscapeUtils.escapeJavaScript(request.getParameter("sxgl_icLC_SYD2"))%>"//获取父页面的参数
/*
 * 招生录取流程
 */ 
 /**
document.getElementById("yuan_green").style.display="none";//隐藏
document.getElementById("yuan_green1").style.display="none";//隐藏
document.getElementById("yuan_green2").style.display="none";//隐藏
document.getElementById("yuan_byellow").style.display="none";//隐藏
document.getElementById("yuan_byellow1").style.display="none";//隐藏
document.getElementById("yuan_byellow2").style.display="none";//隐藏
document.getElementById("lin_yellow").style.display="none";//隐藏
document.getElementById("lin_yellow1").style.display="none";//隐藏
document.getElementById("lin_green").style.display="none";//隐藏
document.getElementById("lin_green1").style.display="none";//隐藏

document.getElementById("xianshi1").style.display="none";//隐藏
document.getElementById("xianshi2").style.display="none";//隐藏
document.getElementById("xianshi3").style.display="none";//隐藏
*/


 
 
 /*
 * 培养协议流程
 */
 /**
document.getElementById("yuan_green_1").style.display="none";//隐藏
document.getElementById("yuan_green1_1").style.display="none";//隐藏
document.getElementById("yuan_green2_1").style.display="none";//隐藏
document.getElementById("yuan_green3_1").style.display="none";//隐藏
document.getElementById("yuan_byellow_1").style.display="none";//隐藏
document.getElementById("yuan_byellow1_1").style.display="none";//隐藏
document.getElementById("yuan_byellow2_1").style.display="none";//隐藏
document.getElementById("yuan_byellow3_1").style.display="none";//隐藏
document.getElementById("lin_yellow_1").style.display="none";//隐藏
document.getElementById("lin_yellow1_1").style.display="none";//隐藏
document.getElementById("lin_yellow2_1").style.display="none";//隐藏
document.getElementById("lin_green_1").style.display="none";//隐藏
document.getElementById("lin_green1_1").style.display="none";//隐藏
document.getElementById("lin_green2_1").style.display="none";//隐藏

document.getElementById("xianshi1_1").style.display="none";//隐藏
document.getElementById("xianshi2_1").style.display="none";//隐藏
document.getElementById("xianshi3_1").style.display="none";//隐藏
document.getElementById("xianshi4_1").style.display="none";//隐藏
 */
 
 /*
 * 实习班班主任流程
 */ 
 /**
document.getElementById("yuan_green_2").style.display="none";//隐藏
document.getElementById("yuan_green1_2").style.display="none";//隐藏
document.getElementById("yuan_green2_2").style.display="none";//隐藏
document.getElementById("yuan_green3_2").style.display="none";//隐藏
document.getElementById("yuan_byellow_2").style.display="none";//隐藏
document.getElementById("yuan_byellow1_2").style.display="none";//隐藏
document.getElementById("yuan_byellow2_2").style.display="none";//隐藏
document.getElementById("yuan_byellow3_2").style.display="none";//隐藏
document.getElementById("lin_yellow_2").style.display="none";//隐藏
document.getElementById("lin_yellow1_2").style.display="none";//隐藏
document.getElementById("lin_yellow2_2").style.display="none";//隐藏
document.getElementById("lin_green_2").style.display="none";//隐藏
document.getElementById("lin_green1_2").style.display="none";//隐藏
document.getElementById("lin_green2_2").style.display="none";//隐藏
document.getElementById("xianshi1_2").style.display="none";//隐藏
document.getElementById("xianshi2_2").style.display="none";//隐藏
document.getElementById("xianshi3_2").style.display="none";//隐藏
document.getElementById("xianshi4_2").style.display="none";//隐藏
*/
/**
document.getElementById("left").style.display="none";//隐藏
document.getElementById("left1").style.display="none";//隐藏
document.getElementById("left2").style.display="none";//隐藏
document.getElementById("left4").style.display="none";//隐藏
document.getElementById("xianshi").style.display="none";//隐藏
document.getElementById("xianshi1").style.display="none";//隐藏
document.getElementById("xianshi2").style.display="none";//隐藏
document.getElementById("xianshi3").style.display="none";//隐藏
document.getElementById("wenzi").style.display="none";//隐藏
document.getElementById("wenzi1").style.display="none";//隐藏
document.getElementById("wenzi2").style.display="none";//隐藏
*/

var st="";//判断当前选中页面

//本页面中状态为1，就从后台获取数据
var zsgl_stat="1";
var gxjt_stat="1";
var sxgl_stat="1";
//本页面中当绑定过一次时，改其状态
var zsgl_BJ="1";
var gxjt_BJ="1";
var sxgl_BJ="1"; 

$(document).ready(function() {

	//实习班班主任流程
	sxgl();
	//培养协议
	gxjt();
	//招生录取
	zsgl();
	loadDialog();//dialog加载
	//setYearCombobox();//年度下拉框加载
	createTime();
	/*
 * 培养协议流程
 */
	setComboxValue();//录取类型加载
	setComboxValue1();//生源地加载
	
	
	/*
	 */
	gxjt_loadDialog();
	gxjt_setComboxValue();//班级加载
	
	
	 /*
 * 实习班班主任流程
 */ 
	 sxgl_loadDialog();
	 sxgl_setComboxValue();//班级加载			
});


//function show1(){
//	alert("1");
	//document.getElementById("shubiandianji_bg").style.display="";//隐藏
	//document.getElementById("content1").style.display="none";
	
//}
/*
editTime:2014-01-20
editUser:luweibin V1.1
decription:因要求更改导航格式样式
*/
function zsgl(){
	//参数不为空的情况下	
	if(icRA_YEAR1!='null'&&icRA_LQTYPE1!='null'&&icRA_SYD1!='null'){
		//alert("icRA_SYD1==="+icRA_SYD1+"icRA_SYD2===="+icRA_SYD2);
		//alert("currentcurrentcurrentcurrentcurrent============="+current);
		if(zsgl_BJ=="1"){//绑定数据
			bangjing(icRA_YEAR1,icRA_LQTYPE1,icRA_LQTYPE2,icRA_SYD1,icRA_SYD2,current);
		}		
		//alert("zsgl");
		if(gxjt_stat=="1"){//获取数据
			gxjt_huoqu();
		}
		if(sxgl_stat=="1"){//获取数据
			sxgl_huoqu();
		}
		//sxgl_huoqu();
		//参数赋值
		$('#year').html(icRA_YEAR1);
		$('#year1').html(icRA_YEAR1);
		$('#year2').html(icRA_YEAR1);
		$('#year3').html(icRA_YEAR1);
		
		$('#lqtype').html(icRA_LQTYPE2);
		$('#lqtype1').html(icRA_LQTYPE2);
		$('#lqtype2').html(icRA_LQTYPE2);
		$('#lqtype3').html(icRA_LQTYPE2);
		
		$('#sytype').html(icRA_SYD2);
		$('#sytype1').html(icRA_SYD2);
		$('#sytype2').html(icRA_SYD2);
		$('#sytype3').html(icRA_SYD2);
		zsgl_1();//根据状态，显示相应效果
	}

}
function zsgl_1(){
	//alert("current==="+current);
	if(current=='0'){//状态0表示：流程走到录取信息
		//alert("0");/
	/*
	editTime:2014-01-20
	editUser:luweibin V1.1
	decription:因要求更改导航格式样式
	*/
		document.getElementById("yuan_gray").style.display="none";//隐藏
		document.getElementById("yuan_gray1").style.display="";//隐藏
		document.getElementById("yuan_gray2").style.display="";//隐藏
		
		document.getElementById("yuan_green").style.display="none";//隐藏
		document.getElementById("yuan_green1").style.display="none";//隐藏
		document.getElementById("yuan_green2").style.display="none";//隐藏
		
		document.getElementById("yuan_byellow").style.display="";//隐藏
		document.getElementById("yuan_byellow1").style.display="none";//隐藏
		document.getElementById("yuan_byellow2").style.display="none";//隐藏
	
		document.getElementById("lin_huise").style.display="";//隐藏
		document.getElementById("lin_huise1").style.display="";//隐藏
		
		document.getElementById("lin_yellow").style.display="none";//隐藏
		document.getElementById("lin_yellow1").style.display="none";//隐藏
		
		document.getElementById("lin_green").style.display="none";//隐藏
		document.getElementById("lin_green1").style.display="none";//隐藏
		
		
		document.getElementById("xianshi1").style.display="none";//隐藏
		document.getElementById("xianshi2").style.display="";//隐藏
		document.getElementById("xianshi3").style.display="none";//隐藏
	/**
		//显示对应状态
		document.getElementById("left").style.display="none";//隐藏
		document.getElementById("left1").style.display="none";//隐藏
		document.getElementById("left2").style.display="none";//隐藏
		document.getElementById("left4").style.display="";//隐藏
		//显示对应查询条件
		document.getElementById("xianshi").style.display="none";//隐藏
		document.getElementById("xianshi1").style.display="";//隐藏
		document.getElementById("xianshi2").style.display="";//隐藏
		document.getElementById("xianshi3").style.display="";//隐藏
		//对应按钮显示黄色
		document.getElementById("wenzi").style.display="";//隐藏
		document.getElementById("wenzi1").style.display="none";//隐藏
		document.getElementById("wenzi2").style.display="none";//隐藏
		*/

	}
	else if(current=='1'){//1状态表示：流程走到录取通知
		//alert("1");
	/*
	editTime:2014-01-20
	editUser:luweibin V1.1
	decription:因要求更改导航格式样式
	*/
		document.getElementById("yuan_gray").style.display="none";//隐藏
		document.getElementById("yuan_gray1").style.display="none";//隐藏
		document.getElementById("yuan_gray2").style.display="";//隐藏
		
		document.getElementById("yuan_green").style.display="";//隐藏
		document.getElementById("yuan_green1").style.display="none";//隐藏
		document.getElementById("yuan_green2").style.display="none";//隐藏
		
		document.getElementById("yuan_byellow").style.display="none";//隐藏
		document.getElementById("yuan_byellow1").style.display="";//隐藏
		document.getElementById("yuan_byellow2").style.display="none";//隐藏
	
		document.getElementById("lin_huise").style.display="none";//隐藏
		document.getElementById("lin_huise1").style.display="";//隐藏
		
		document.getElementById("lin_yellow").style.display="";//隐藏
		document.getElementById("lin_yellow1").style.display="none";//隐藏
		
		document.getElementById("lin_green").style.display="none";//隐藏
		document.getElementById("lin_green1").style.display="none";//隐藏
		
		
		document.getElementById("xianshi1").style.display="";//隐藏
		document.getElementById("xianshi2").style.display="none";//隐藏
		document.getElementById("xianshi3").style.display="none";//隐藏
	
	
	/**
		//显示对应状态
		document.getElementById("left").style.display="";//隐藏
		document.getElementById("left1").style.display="none";//隐藏
		document.getElementById("left2").style.display="none";//隐藏
		document.getElementById("left4").style.display="none";//隐藏
		//显示对应查询条件
		document.getElementById("xianshi").style.display="none";//隐藏
		document.getElementById("xianshi1").style.display="";//隐藏
		document.getElementById("xianshi2").style.display="none";//隐藏
		document.getElementById("xianshi3").style.display="none";//隐藏
		//对应按钮显示黄色
		document.getElementById("wenzi").style.display="none";//隐藏
		document.getElementById("wenzi1").style.display="";//隐藏
		document.getElementById("wenzi2").style.display="none";//隐藏
	*/
	}else if(current=='2'){//2表示：流程走到邮寄信封
		//alert("2");
	/*
	editTime:2014-01-20
	editUser:luweibin V1.1
	decription:因要求更改导航格式样式
	*/
		document.getElementById("yuan_gray").style.display="none";//隐藏
		document.getElementById("yuan_gray1").style.display="none";//隐藏
		document.getElementById("yuan_gray2").style.display="none";//隐藏
		
		document.getElementById("yuan_green").style.display="";//隐藏
		document.getElementById("yuan_green1").style.display="";//隐藏
		document.getElementById("yuan_green2").style.display="none";//隐藏
		
		document.getElementById("yuan_byellow").style.display="none";//隐藏
		document.getElementById("yuan_byellow1").style.display="none";//隐藏
		document.getElementById("yuan_byellow2").style.display="";//隐藏
	
		document.getElementById("lin_huise").style.display="none";//隐藏
		document.getElementById("lin_huise1").style.display="none";//隐藏
		
		document.getElementById("lin_yellow").style.display="none";//隐藏
		document.getElementById("lin_yellow1").style.display="";//隐藏
		
		document.getElementById("lin_green").style.display="";//隐藏
		document.getElementById("lin_green1").style.display="none";//隐藏
		
		
		document.getElementById("xianshi1").style.display="none";//隐藏
		document.getElementById("xianshi2").style.display="none";//隐藏
		document.getElementById("xianshi3").style.display="";//隐藏
	/**
		//显示对应状态
		document.getElementById("left").style.display="none";//隐藏
		document.getElementById("left1").style.display="";//隐藏
		document.getElementById("left2").style.display="none";//隐藏
		document.getElementById("left4").style.display="none";//隐藏
		//显示对应查询条件
		document.getElementById("xianshi").style.display="";//隐藏
		document.getElementById("xianshi1").style.display="none";//隐藏
		document.getElementById("xianshi2").style.display="none";//隐藏
		document.getElementById("xianshi3").style.display="none";//隐藏
		//对应按钮显示黄色
		document.getElementById("wenzi").style.display="none";//隐藏
		document.getElementById("wenzi1").style.display="none";//隐藏
		document.getElementById("wenzi2").style.display="";//隐藏
		*/
	}
	else if(current=='3'){//3表示：流程走完
		//alert("3");
	/*
	editTime:2014-01-20
	editUser:luweibin V1.1
	decription:因要求更改导航格式样式
	*/
		document.getElementById("yuan_gray").style.display="none";//隐藏
		document.getElementById("yuan_gray1").style.display="none";//隐藏
		document.getElementById("yuan_gray2").style.display="none";//隐藏
		
		document.getElementById("yuan_green").style.display="";//隐藏
		document.getElementById("yuan_green1").style.display="";//隐藏
		document.getElementById("yuan_green2").style.display="";//隐藏
		
		document.getElementById("yuan_byellow").style.display="none";//隐藏
		document.getElementById("yuan_byellow1").style.display="none";//隐藏
		document.getElementById("yuan_byellow2").style.display="none";//隐藏
	
		document.getElementById("lin_huise").style.display="none";//隐藏
		document.getElementById("lin_huise1").style.display="none";//隐藏
		
		document.getElementById("lin_yellow").style.display="none";//隐藏
		document.getElementById("lin_yellow1").style.display="none";//隐藏
		
		document.getElementById("lin_green").style.display="";//隐藏
		document.getElementById("lin_green1").style.display="";//隐藏
		
		
		document.getElementById("xianshi1").style.display="none";//隐藏
		document.getElementById("xianshi2").style.display="none";//隐藏
		document.getElementById("xianshi3").style.display="";//隐藏
	
	

	}
}
//培养协议流程
function gxjt(){
	/*
	editTime:2014-01-20
	editUser:luweibin V1.1
	decription:因要求更改导航格式样式
	*/
	if(gxjt_icRA_YEAR1!='null'&&gxjt_icRA_LQTYPE1!='null'&&gxjt_icRA_SYD1!='null'){
		//alert("gxjt");
		if(gxjt_BJ=="1"){//绑定数据
			gxjt_bangjing(gxjt_icRA_YEAR1,gxjt_icRA_LQTYPE1,gxjt_icRA_SYD1,gxjt_icRA_SYD2,gxjt_current,gxjt_ic_keyCode,gxjt_sg_ic_keyCode);
		}
		
			
		if(zsgl_stat=="1"){//获取数据
			huoqu();
		}
		if(sxgl_stat=="1"){//获取数据
			sxgl_huoqu();
		}
		//参数赋值
		$('#year1_1').html(gxjt_icRA_YEAR1);
		$('#year2_1').html(gxjt_icRA_YEAR1);
		$('#year3_1').html(gxjt_icRA_YEAR1);
		$('#year4_1').html(gxjt_icRA_YEAR1);
		
		$('#lqtype1_1').html(gxjt_icRA_LQTYPE1);
		$('#lqtype2_1').html(gxjt_icRA_LQTYPE1);
		$('#lqtype3_1').html(gxjt_icRA_LQTYPE1);
		$('#lqtype4_1').html(gxjt_icRA_LQTYPE1);
		
		$('#sytype1_1').html(gxjt_icRA_SYD2);
		$('#sytype2_1').html(gxjt_icRA_SYD2);
		$('#sytype3_1').html(gxjt_icRA_SYD2);
		$('#sytype4_1').html(gxjt_icRA_SYD2);
		gxjt_1();//根据状态，显示相应效果
	}
}

function gxjt_1(){
	if(gxjt_current=='0'){
		document.getElementById("yuan_gray_1").style.display="none";//隐藏
		document.getElementById("yuan_gray1_1").style.display="";//隐藏
		document.getElementById("yuan_gray2_1").style.display="";//隐藏
		document.getElementById("yuan_gray3_1").style.display="";//隐藏
		
		document.getElementById("yuan_green_1").style.display="none";//隐藏
		document.getElementById("yuan_green1_1").style.display="none";//隐藏
		document.getElementById("yuan_green2_1").style.display="none";//隐藏
		document.getElementById("yuan_green3_1").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_1").style.display="";//隐藏
		document.getElementById("yuan_byellow1_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_1").style.display="none";//隐藏

	
		document.getElementById("lin_huise_1").style.display="";//隐藏
		document.getElementById("lin_huise1_1").style.display="";//隐藏
		document.getElementById("lin_huise2_1").style.display="";//隐藏
		
		document.getElementById("lin_yellow_1").style.display="none";//隐藏
		document.getElementById("lin_yellow1_1").style.display="none";//隐藏
		document.getElementById("lin_yellow2_1").style.display="none";//
		
		document.getElementById("lin_green_1").style.display="none";//隐藏
		document.getElementById("lin_green1_1").style.display="none";//隐藏
		document.getElementById("lin_green2_1").style.display="none";//隐藏
		
		document.getElementById("xianshi1_1").style.display="";//隐藏
		document.getElementById("xianshi2_1").style.display="none";//隐藏
		document.getElementById("xianshi3_1").style.display="none";//隐藏
		document.getElementById("xianshi4_1").style.display="none";//隐藏
	}else if(gxjt_current=='1'){
		document.getElementById("yuan_gray_1").style.display="none";//隐藏
		document.getElementById("yuan_gray1_1").style.display="none";//隐藏
		document.getElementById("yuan_gray2_1").style.display="";//隐藏
		document.getElementById("yuan_gray3_1").style.display="";//隐藏
		
		document.getElementById("yuan_green_1").style.display="";//隐藏
		document.getElementById("yuan_green1_1").style.display="none";//隐藏
		document.getElementById("yuan_green2_1").style.display="none";//隐藏
		document.getElementById("yuan_green3_1").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_1").style.display="";//隐藏
		document.getElementById("yuan_byellow2_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_1").style.display="none";//隐藏

	
		document.getElementById("lin_huise_1").style.display="none";//隐藏
		document.getElementById("lin_huise1_1").style.display="";//隐藏
		document.getElementById("lin_huise2_1").style.display="";//隐藏
		
		document.getElementById("lin_yellow_1").style.display="";//隐藏
		document.getElementById("lin_yellow1_1").style.display="none";//隐藏
		document.getElementById("lin_yellow2_1").style.display="none";//
		
		document.getElementById("lin_green_1").style.display="none";//隐藏
		document.getElementById("lin_green1_1").style.display="none";//隐藏
		document.getElementById("lin_green2_1").style.display="none";//隐藏
		
		document.getElementById("xianshi1_1").style.display="none";//隐藏
		document.getElementById("xianshi2_1").style.display="";//隐藏
		document.getElementById("xianshi3_1").style.display="none";//隐藏
		document.getElementById("xianshi4_1").style.display="none";//隐藏
	}else
	if(gxjt_current=='2'){//2表示：流程走完
		document.getElementById("yuan_gray_1").style.display="none";//隐藏
		document.getElementById("yuan_gray1_1").style.display="none";//隐藏
		document.getElementById("yuan_gray2_1").style.display="";//隐藏
		document.getElementById("yuan_gray3_1").style.display="";//隐藏
		
		document.getElementById("yuan_green_1").style.display="";//隐藏
		document.getElementById("yuan_green1_1").style.display="";//隐藏
		document.getElementById("yuan_green2_1").style.display="none";//隐藏
		document.getElementById("yuan_green3_1").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_1").style.display="none";//隐藏

	
		document.getElementById("lin_huise_1").style.display="none";//隐藏
		document.getElementById("lin_huise1_1").style.display="";//隐藏
		document.getElementById("lin_huise2_1").style.display="";//隐藏
		
		document.getElementById("lin_yellow_1").style.display="none";//隐藏
		document.getElementById("lin_yellow1_1").style.display="none";//隐藏
		document.getElementById("lin_yellow2_1").style.display="none";//
		
		document.getElementById("lin_green_1").style.display="";//隐藏
		document.getElementById("lin_green1_1").style.display="none";//隐藏
		document.getElementById("lin_green2_1").style.display="none";//隐藏
		
		document.getElementById("xianshi1_1").style.display="none";//隐藏
		document.getElementById("xianshi2_1").style.display="";//隐藏
		document.getElementById("xianshi3_1").style.display="none";//隐藏
		document.getElementById("xianshi4_1").style.display="none";//隐藏
	}else if(gxjt_current=='3'){
		document.getElementById("yuan_gray_1").style.display="none";//隐藏
		document.getElementById("yuan_gray1_1").style.display="none";//隐藏
		document.getElementById("yuan_gray2_1").style.display="none";//隐藏
		document.getElementById("yuan_gray3_1").style.display="";//隐藏
		
		document.getElementById("yuan_green_1").style.display="";//隐藏
		document.getElementById("yuan_green1_1").style.display="";//隐藏
		document.getElementById("yuan_green2_1").style.display="none";//隐藏
		document.getElementById("yuan_green3_1").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_1").style.display="";//隐藏
		document.getElementById("yuan_byellow3_1").style.display="none";//隐藏

	
		document.getElementById("lin_huise_1").style.display="none";//隐藏
		document.getElementById("lin_huise1_1").style.display="none";//隐藏
		document.getElementById("lin_huise2_1").style.display="";//隐藏
		
		document.getElementById("lin_yellow_1").style.display="none";//隐藏
		document.getElementById("lin_yellow1_1").style.display="";//隐藏
		document.getElementById("lin_yellow2_1").style.display="none";//
		
		document.getElementById("lin_green_1").style.display="";//隐藏
		document.getElementById("lin_green1_1").style.display="";//隐藏
		document.getElementById("lin_green2_1").style.display="none";//隐藏
		
		document.getElementById("xianshi1_1").style.display="none";//隐藏
		document.getElementById("xianshi2_1").style.display="none";//隐藏
		document.getElementById("xianshi3_1").style.display="";//隐藏
		document.getElementById("xianshi4_1").style.display="none";//隐藏
	}else if(gxjt_current=='4'){
		document.getElementById("yuan_gray_1").style.display="none";//隐藏
		document.getElementById("yuan_gray1_1").style.display="none";//隐藏
		document.getElementById("yuan_gray2_1").style.display="none";//隐藏
		document.getElementById("yuan_gray3_1").style.display="";//隐藏
		
		document.getElementById("yuan_green_1").style.display="";//隐藏
		document.getElementById("yuan_green1_1").style.display="";//隐藏
		document.getElementById("yuan_green2_1").style.display="";//隐藏
		document.getElementById("yuan_green3_1").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_1").style.display="none";//隐藏

	
		document.getElementById("lin_huise_1").style.display="none";//隐藏
		document.getElementById("lin_huise1_1").style.display="none";//隐藏
		document.getElementById("lin_huise2_1").style.display="";//隐藏
		
		document.getElementById("lin_yellow_1").style.display="none";//隐藏
		document.getElementById("lin_yellow1_1").style.display="none";//隐藏
		document.getElementById("lin_yellow2_1").style.display="none";//
		
		document.getElementById("lin_green_1").style.display="";//隐藏
		document.getElementById("lin_green1_1").style.display="";//隐藏
		document.getElementById("lin_green2_1").style.display="none";//隐藏
		
		document.getElementById("xianshi1_1").style.display="none";//隐藏
		document.getElementById("xianshi2_1").style.display="none";//隐藏
		document.getElementById("xianshi3_1").style.display="";//隐藏
		document.getElementById("xianshi4_1").style.display="none";//隐藏
	}else if(gxjt_current=='5'){
		document.getElementById("yuan_gray_1").style.display="none";//隐藏
		document.getElementById("yuan_gray1_1").style.display="none";//隐藏
		document.getElementById("yuan_gray2_1").style.display="none";//隐藏
		document.getElementById("yuan_gray3_1").style.display="none";//隐藏
		
		document.getElementById("yuan_green_1").style.display="";//隐藏
		document.getElementById("yuan_green1_1").style.display="";//隐藏
		document.getElementById("yuan_green2_1").style.display="";//隐藏
		document.getElementById("yuan_green3_1").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_1").style.display="";//隐藏

	
		document.getElementById("lin_huise_1").style.display="none";//隐藏
		document.getElementById("lin_huise1_1").style.display="none";//隐藏
		document.getElementById("lin_huise2_1").style.display="none";//隐藏
		
		document.getElementById("lin_yellow_1").style.display="none";//隐藏
		document.getElementById("lin_yellow1_1").style.display="none";//隐藏
		document.getElementById("lin_yellow2_1").style.display="";//
		
		document.getElementById("lin_green_1").style.display="";//隐藏
		document.getElementById("lin_green1_1").style.display="";//隐藏
		document.getElementById("lin_green2_1").style.display="none";//隐藏
		
		document.getElementById("xianshi1_1").style.display="none";//隐藏
		document.getElementById("xianshi2_1").style.display="none";//隐藏
		document.getElementById("xianshi3_1").style.display="none";//隐藏
		document.getElementById("xianshi4_1").style.display="";//隐藏
	}else if(gxjt_current=='6'){
		document.getElementById("yuan_gray_1").style.display="none";//隐藏
		document.getElementById("yuan_gray1_1").style.display="none";//隐藏
		document.getElementById("yuan_gray2_1").style.display="none";//隐藏
		document.getElementById("yuan_gray3_1").style.display="none";//隐藏
		
		document.getElementById("yuan_green_1").style.display="";//隐藏
		document.getElementById("yuan_green1_1").style.display="";//隐藏
		document.getElementById("yuan_green2_1").style.display="";//隐藏
		document.getElementById("yuan_green3_1").style.display="";//隐藏

		
		document.getElementById("yuan_byellow_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_1").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_1").style.display="none";//隐藏

	
		document.getElementById("lin_huise_1").style.display="none";//隐藏
		document.getElementById("lin_huise1_1").style.display="none";//隐藏
		document.getElementById("lin_huise2_1").style.display="none";//隐藏
		
		document.getElementById("lin_yellow_1").style.display="none";//隐藏
		document.getElementById("lin_yellow1_1").style.display="none";//隐藏
		document.getElementById("lin_yellow2_1").style.display="none";//
		
		document.getElementById("lin_green_1").style.display="";//隐藏
		document.getElementById("lin_green1_1").style.display="";//隐藏
		document.getElementById("lin_green2_1").style.display="";//隐藏
		
		document.getElementById("xianshi1_1").style.display="none";//隐藏
		document.getElementById("xianshi2_1").style.display="none";//隐藏
		document.getElementById("xianshi3_1").style.display="none";//隐藏
		document.getElementById("xianshi4_1").style.display="";//隐藏
	}
}
//实习班班主任
function sxgl(){
	if(sxgl_icRA_SYD1!='null'){
		if(sxgl_BJ=="1"){//绑定数据
			sxgl_bangjing(sxgl_icRA_SYD1,sxgl_current,sxgl_ic_keyCode,sxgl_icRA_SYD2);
		} 
		
		 if(zsgl_stat=="1"){//获取数据
			 huoqu();
		 }
		 if(gxjt_stat=="1"){//获取数据
			 gxjt_huoqu();
		 }
		 //
		$('#sytype1_2').html(sxgl_icRA_SYD2);
		$('#sytype2_2').html(sxgl_icRA_SYD2);
		$('#sytype3_2').html(sxgl_icRA_SYD2);
		$('#sytype4_2').html(sxgl_icRA_SYD2);
		sxgl_1();//根据状态显示相应效果
	 }
}
function sxgl_1(){
	if(sxgl_current=='0'){
		document.getElementById("yuan_gray_2").style.display="none";//隐藏
		document.getElementById("yuan_gray1_2").style.display="";//隐藏
		document.getElementById("yuan_gray2_2").style.display="";//隐藏
		document.getElementById("yuan_gray3_2").style.display="";//隐藏
		
		document.getElementById("yuan_green_2").style.display="none";//隐藏
		document.getElementById("yuan_green1_2").style.display="none";//隐藏
		document.getElementById("yuan_green2_2").style.display="none";//隐藏
		document.getElementById("yuan_green3_2").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_2").style.display="";//隐藏
		document.getElementById("yuan_byellow1_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_2").style.display="none";//隐藏

	
		document.getElementById("lin_huise_2").style.display="";//隐藏
		document.getElementById("lin_huise1_2").style.display="";//隐藏
		document.getElementById("lin_huise2_2").style.display="";//隐藏
		
		document.getElementById("lin_yellow_2").style.display="none";//隐藏
		document.getElementById("lin_yellow1_2").style.display="none";//隐藏
		document.getElementById("lin_yellow2_2").style.display="none";//
		
		document.getElementById("lin_green_2").style.display="none";//隐藏
		document.getElementById("lin_green1_2").style.display="none";//隐藏
		document.getElementById("lin_green2_2").style.display="none";//隐藏
		
		document.getElementById("xianshi1_2").style.display="";//隐藏
		document.getElementById("xianshi2_2").style.display="none";//隐藏
		document.getElementById("xianshi3_2").style.display="none";//隐藏
		document.getElementById("xianshi4_2").style.display="none";//隐藏
	}else if(sxgl_current=='1'){
		document.getElementById("yuan_gray_2").style.display="none";//隐藏
		document.getElementById("yuan_gray1_2").style.display="none";//隐藏
		document.getElementById("yuan_gray2_2").style.display="";//隐藏
		document.getElementById("yuan_gray3_2").style.display="";//隐藏
		
		document.getElementById("yuan_green_2").style.display="";//隐藏
		document.getElementById("yuan_green1_2").style.display="none";//隐藏
		document.getElementById("yuan_green2_2").style.display="none";//隐藏
		document.getElementById("yuan_green3_2").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_2").style.display="";//隐藏
		document.getElementById("yuan_byellow2_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_2").style.display="none";//隐藏

	
		document.getElementById("lin_huise_2").style.display="none";//隐藏
		document.getElementById("lin_huise1_2").style.display="";//隐藏
		document.getElementById("lin_huise2_2").style.display="";//隐藏
		
		document.getElementById("lin_yellow_2").style.display="";//隐藏
		document.getElementById("lin_yellow1_2").style.display="none";//隐藏
		document.getElementById("lin_yellow2_2").style.display="none";//
		
		document.getElementById("lin_green_2").style.display="none";//隐藏
		document.getElementById("lin_green1_2").style.display="none";//隐藏
		document.getElementById("lin_green2_2").style.display="none";//隐藏
		
		document.getElementById("xianshi1_2").style.display="none";//隐藏
		document.getElementById("xianshi2_2").style.display="";//隐藏
		document.getElementById("xianshi3_2").style.display="none";//隐藏
		document.getElementById("xianshi4_2").style.display="none";//隐藏
	}else
	if(sxgl_current=='2'){//2表示：流程走完
		document.getElementById("yuan_gray_2").style.display="none";//隐藏
		document.getElementById("yuan_gray1_2").style.display="none";//隐藏
		document.getElementById("yuan_gray2_2").style.display="";//隐藏
		document.getElementById("yuan_gray3_2").style.display="";//隐藏
		
		document.getElementById("yuan_green_2").style.display="";//隐藏
		document.getElementById("yuan_green1_2").style.display="";//隐藏
		document.getElementById("yuan_green2_2").style.display="none";//隐藏
		document.getElementById("yuan_green3_2").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_2").style.display="none";//隐藏

	
		document.getElementById("lin_huise_2").style.display="none";//隐藏
		document.getElementById("lin_huise1_2").style.display="";//隐藏
		document.getElementById("lin_huise2_2").style.display="";//隐藏
		
		document.getElementById("lin_yellow_2").style.display="none";//隐藏
		document.getElementById("lin_yellow1_2").style.display="none";//隐藏
		document.getElementById("lin_yellow2_2").style.display="none";//
		
		document.getElementById("lin_green_2").style.display="";//隐藏
		document.getElementById("lin_green1_2").style.display="none";//隐藏
		document.getElementById("lin_green2_2").style.display="none";//隐藏
		
		document.getElementById("xianshi1_2").style.display="none";//隐藏
		document.getElementById("xianshi2_2").style.display="";//隐藏
		document.getElementById("xianshi3_2").style.display="none";//隐藏
		document.getElementById("xianshi4_2").style.display="none";//隐藏
	}else if(sxgl_current=='3'){
		document.getElementById("yuan_gray_2").style.display="none";//隐藏
		document.getElementById("yuan_gray1_2").style.display="none";//隐藏
		document.getElementById("yuan_gray2_2").style.display="none";//隐藏
		document.getElementById("yuan_gray3_2").style.display="";//隐藏
		
		document.getElementById("yuan_green_2").style.display="";//隐藏
		document.getElementById("yuan_green1_2").style.display="";//隐藏
		document.getElementById("yuan_green2_2").style.display="none";//隐藏
		document.getElementById("yuan_green3_2").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_2").style.display="";//隐藏
		document.getElementById("yuan_byellow3_2").style.display="none";//隐藏

	
		document.getElementById("lin_huise_2").style.display="none";//隐藏
		document.getElementById("lin_huise1_2").style.display="none";//隐藏
		document.getElementById("lin_huise2_2").style.display="";//隐藏
		
		document.getElementById("lin_yellow_2").style.display="none";//隐藏
		document.getElementById("lin_yellow1_2").style.display="";//隐藏
		document.getElementById("lin_yellow2_2").style.display="none";//
		
		document.getElementById("lin_green_2").style.display="";//隐藏
		document.getElementById("lin_green1_2").style.display="";//隐藏
		document.getElementById("lin_green2_2").style.display="none";//隐藏
		
		document.getElementById("xianshi1_2").style.display="none";//隐藏
		document.getElementById("xianshi2_2").style.display="none";//隐藏
		document.getElementById("xianshi3_2").style.display="";//隐藏
		document.getElementById("xianshi4_2").style.display="none";//隐藏
	}else if(sxgl_current=='4'){
		document.getElementById("yuan_gray_2").style.display="none";//隐藏
		document.getElementById("yuan_gray1_2").style.display="none";//隐藏
		document.getElementById("yuan_gray2_2").style.display="none";//隐藏
		document.getElementById("yuan_gray3_2").style.display="";//隐藏
		
		document.getElementById("yuan_green_2").style.display="";//隐藏
		document.getElementById("yuan_green1_2").style.display="";//隐藏
		document.getElementById("yuan_green2_2").style.display="";//隐藏
		document.getElementById("yuan_green3_2").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_2").style.display="none";//隐藏

	
		document.getElementById("lin_huise_2").style.display="none";//隐藏
		document.getElementById("lin_huise1_2").style.display="none";//隐藏
		document.getElementById("lin_huise2_2").style.display="";//隐藏
		
		document.getElementById("lin_yellow_2").style.display="none";//隐藏
		document.getElementById("lin_yellow1_2").style.display="none";//隐藏
		document.getElementById("lin_yellow2_2").style.display="none";//
		
		document.getElementById("lin_green_2").style.display="";//隐藏
		document.getElementById("lin_green1_2").style.display="";//隐藏
		document.getElementById("lin_green2_2").style.display="none";//隐藏
		
		document.getElementById("xianshi1_2").style.display="none";//隐藏
		document.getElementById("xianshi2_2").style.display="none";//隐藏
		document.getElementById("xianshi3_2").style.display="";//隐藏
		document.getElementById("xianshi4_2").style.display="none";//隐藏
	}else if(sxgl_current=='5'){
		document.getElementById("yuan_gray_2").style.display="none";//隐藏
		document.getElementById("yuan_gray1_2").style.display="none";//隐藏
		document.getElementById("yuan_gray2_2").style.display="none";//隐藏
		document.getElementById("yuan_gray3_2").style.display="none";//隐藏
		
		document.getElementById("yuan_green_2").style.display="";//隐藏
		document.getElementById("yuan_green1_2").style.display="";//隐藏
		document.getElementById("yuan_green2_2").style.display="";//隐藏
		document.getElementById("yuan_green3_2").style.display="none";//隐藏

		
		document.getElementById("yuan_byellow_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_2").style.display="";//隐藏

	
		document.getElementById("lin_huise_2").style.display="none";//隐藏
		document.getElementById("lin_huise1_2").style.display="none";//隐藏
		document.getElementById("lin_huise2_2").style.display="none";//隐藏
		
		document.getElementById("lin_yellow_2").style.display="none";//隐藏
		document.getElementById("lin_yellow1_2").style.display="none";//隐藏
		document.getElementById("lin_yellow2_2").style.display="";//
		
		document.getElementById("lin_green_2").style.display="";//隐藏
		document.getElementById("lin_green1_2").style.display="";//隐藏
		document.getElementById("lin_green2_2").style.display="none";//隐藏
		
		document.getElementById("xianshi1_2").style.display="none";//隐藏
		document.getElementById("xianshi2_2").style.display="none";//隐藏
		document.getElementById("xianshi3_2").style.display="none";//隐藏
		document.getElementById("xianshi4_2").style.display="";//隐藏
	}else if(sxgl_current=='6'){
		document.getElementById("yuan_gray_2").style.display="none";//隐藏
		document.getElementById("yuan_gray1_2").style.display="none";//隐藏
		document.getElementById("yuan_gray2_2").style.display="none";//隐藏
		document.getElementById("yuan_gray3_2").style.display="none";//隐藏
		
		document.getElementById("yuan_green_2").style.display="";//隐藏
		document.getElementById("yuan_green1_2").style.display="";//隐藏
		document.getElementById("yuan_green2_2").style.display="";//隐藏
		document.getElementById("yuan_green3_2").style.display="";//隐藏

		
		document.getElementById("yuan_byellow_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow1_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow2_2").style.display="none";//隐藏
		document.getElementById("yuan_byellow3_2").style.display="none";//隐藏

	
		document.getElementById("lin_huise_2").style.display="none";//隐藏
		document.getElementById("lin_huise1_2").style.display="none";//隐藏
		document.getElementById("lin_huise2_2").style.display="none";//隐藏
		
		document.getElementById("lin_yellow_2").style.display="none";//隐藏
		document.getElementById("lin_yellow1_2").style.display="none";//隐藏
		document.getElementById("lin_yellow2_2").style.display="none";//
		
		document.getElementById("lin_green_2").style.display="";//隐藏
		document.getElementById("lin_green1_2").style.display="";//隐藏
		document.getElementById("lin_green2_2").style.display="";//隐藏
		
		document.getElementById("xianshi1_2").style.display="none";//隐藏
		document.getElementById("xianshi2_2").style.display="none";//隐藏
		document.getElementById("xianshi3_2").style.display="none";//隐藏
		document.getElementById("xianshi4_2").style.display="";//隐藏
	}
}
//加载下拉框
function gxjt_setComboxValue()
{
	$('#gxjt_icRA_SYD1').combobox({//查询条件中的"班级"下拉框
		data:<%=PublicTools.getComboboxOptions("V_班级学生信息表","班级代码","班级名称"," group by 班级名称,班级代码",request)%>,
		valueField:'comboValue',
		textField:'comboName',
		editable:false,
		panelHeight:'auto',	
		onLoadSuccess:function(data){
			if(data != ""){
				$(this).combobox('setValue',"请选择");
			}
		}
	});								
}

//招生录取数据绑定
function bangjing(icRA_YEAR1,icRA_LQTYPE1,icRA_LQTYPE2,icRA_SYD1,icRA_SYD2,current) {
	$.ajax( {
		type : 'post', //传输方式为post
		url : '<%=request.getContextPath()%>/Svl_MainFrame', //链接地址
		data : "active=bangjing&zsgl_no="+icRA_YEAR1+"&zsgl_no1="+icRA_LQTYPE1+"&zsgl_no4="+icRA_LQTYPE2+"&zsgl_no2="+icRA_SYD1+"&zsgl_no3="+icRA_SYD2+"&current="+current, //active值传给SVL
		dataType : 'json', //数据类型
		success : function(datas) {
			//gxjt_huoqu();
			//sxgl_huoqu();
			//alert("1");
			zsgl_BJ="2";
		}
	});	
}
//培养协议数据绑定
function gxjt_bangjing(gxjt_icRA_YEAR1,gxjt_icRA_LQTYPE1,gxjt_icRA_SYD1,gxjt_icRA_SYD2,gxjt_current,gxjt_ic_keyCode,gxjt_sg_ic_keyCode){
	$.ajax( {
		type : 'post', //传输方式为post
		url : '<%=request.getContextPath()%>/Svl_MainFrame', //链接地址
		data : "active=gxjt_bangjing&gxjt_no="+gxjt_icRA_YEAR1+"&gxjt_no1="+gxjt_icRA_LQTYPE1+"&gxjt_no2="+gxjt_icRA_SYD1+"&gxjt_no3="+gxjt_icRA_SYD2+"&gxjt_no4="+gxjt_current+"&gxjt_no5="+gxjt_ic_keyCode+"&gxjt_no6="+gxjt_sg_ic_keyCode, //active值传给SVL
		dataType : 'json', //数据类型
		success : function(datas) {
			//huoqu();
			//sxgl_huoqu();
			gxjt_BJ="2";
		}
	});	
}
//实习班班主任数据绑定
function sxgl_bangjing(sxgl_icRA_SYD1,sxgl_current,sxgl_ic_keyCode,sxgl_icRA_SYD2){
	//alert("sxgl_current=="+sxgl_current);
	$.ajax( {
		type : 'post', //传输方式为post
		url : '<%=request.getContextPath()%>/Svl_MainFrame', //链接地址
		data : "active=sxgl_bangjing&sxgl_no="+sxgl_icRA_SYD1+"&sxgl_no1="+sxgl_current+"&zsgl_no2="+sxgl_ic_keyCode+"&sxgl_no3="+sxgl_icRA_SYD2, //active值传给SVL
		dataType : 'json', //数据类型
		success : function(datas) {
			//huoqu();
			//gxjt_huoqu();
			sxgl_BJ="2";
		}
	});
}
//数据获取
function huoqu() {
	$.ajax( {
		type : 'post', //传输方式为post
		url : '<%=request.getContextPath()%>/Svl_MainFrame', //链接地址
		data : "active=huoqu", //active值传给SVL
		dataType : 'json', //数据类型
		success : function(datas) {
			//alert(datas[0].huoqu+"==="+datas[0].huoqu1+"==="+datas[0].huoqu2+"=="+datas[0].huoqu3+"=="+datas[0].huoqu4+"=="+datas[0].huoqu5);
			if(datas[0].huoqu!=undefined&&datas[0].huoqu1!=undefined&&datas[0].huoqu2!=undefined&&datas[0].huoqu3!=undefined&&datas[0].huoqu4!=undefined&&datas[0].huoqu5!=undefined){
				zsgl_stat="2";
				icRA_YEAR1=datas[0].huoqu;
			icRA_LQTYPE1=datas[0].huoqu1;
			icRA_SYD1=datas[0].huoqu2;
			icRA_SYD2=datas[0].huoqu3;
			current=datas[0].huoqu4;
			icRA_LQTYPE2=datas[0].huoqu5;
			zsgl();
		}
			}
	});	
}
//数据获取
function gxjt_huoqu() {
	$.ajax( {
		type : 'post', //传输方式为post
		url : '<%=request.getContextPath()%>/Svl_MainFrame', //链接地址
		data : "active=gxjt_huoqu", //active值传给SVL
		dataType : 'json', //数据类型
		success : function(datas) {
			//alert(datas[0].gxjt_huoqu!=undefined&&datas[0].gxjt_huoqu1!=undefined&&datas[0].gxjt_huoqu2!=undefined&&datas[0].gxjt_huoqu3!=undefined&&datas[0].gxjt_huoqu4!=undefined&&datas[0].gxjt_huoqu5!=undefined&&datas[0].gxjt_huoqu6!=undefined);
			if(datas[0].gxjt_huoqu!=undefined&&datas[0].gxjt_huoqu1!=undefined&&datas[0].gxjt_huoqu2!=undefined&&datas[0].gxjt_huoqu3!=undefined&&datas[0].gxjt_huoqu4!=undefined){
			//alert(datas[0].gxjt_huoqu+"+");
			gxjt_stat="2";
			gxjt_icRA_YEAR1=datas[0].gxjt_huoqu;
			gxjt_icRA_LQTYPE1=datas[0].gxjt_huoqu1;
			gxjt_icRA_SYD1=datas[0].gxjt_huoqu2;
			gxjt_icRA_SYD2=datas[0].gxjt_huoqu3;
			gxjt_current=datas[0].gxjt_huoqu4;
			if(datas[0].gxjt_huoqu5!=undefined&&datas[0].gxjt_huoqu6!=undefined){
				gxjt_ic_keyCode=datas[0].gxjt_huoqu5;
				gxjt_sg_ic_keyCode=datas[0].gxjt_huoqu6;
			}else
			if(datas[0].gxjt_huoqu5!=undefined){
				gxjt_ic_keyCode=datas[0].gxjt_huoqu5;
			}
			else if(datas[0].gxjt_huoqu6!=undefined){
				gxjt_sg_ic_keyCode=datas[0].gxjt_huoqu6;
			}else{
				gxjt_ic_keyCode='null';
				gxjt_sg_ic_keyCode='null';
			}
			
			
			gxjt();
		}
			}
	});	
}
//数据获取
function sxgl_huoqu() {
	$.ajax( {
		type : 'post', //传输方式为post
		url : '<%=request.getContextPath()%>/Svl_MainFrame', //链接地址
		data : "active=sxgl_huoqu", //active值传给SVL
		dataType : 'json', //数据类型
		success : function(datas) {
			//alert(datas[0].sxgl_huoqu3);
			//alert(datas[0].sxgl_huoqu3!=undefined);
			if(datas[0].sxgl_huoqu!=undefined&&datas[0].sxgl_huoqu1!=undefined&&datas[0].sxgl_huoqu3!=undefined){
			sxgl_stat="2";
				sxgl_icRA_SYD1=datas[0].sxgl_huoqu;
				sxgl_icRA_SYD2=datas[0].sxgl_huoqu3;
			sxgl_current=datas[0].sxgl_huoqu1;
			if(datas[0].sxgl_huoqu2!=undefined){
				sxgl_ic_keyCode=datas[0].sxgl_huoqu2;
			}else{
				sxgl_ic_keyCode='null';
			}
			sxgl();
			
		}}
	});	
}

/*
editTime:2014-03-5
editUser:luweibin 
decription:1.录取信息中录取类型新增为10种，有些类型没有打印模板，所以不能打印，流程颜色进展功能不能进行验证
		   2.格式样式问题修改
*/
function chkIn(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("2");
	//document.getElementById("shubiandianji_bg").style.display="";//隐藏content1
		//document.getElementById("shubiandianji_bg").style.display="none";//隐藏
	//document.getElementById("content1").style.display="";//
	//document.getElementById("font1").style.color="#878787";//隐藏content1
	$(zswz).css('background-color','');
	document.getElementById("zswz").style.color="#878787";//隐藏content1
	
	
}


function chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	//document.getElementById("shubiandianji_bg").style.display="";//隐藏
	//document.getElementById("content1").style.display="none";//隐藏content1
	//document.getElementById("font1").style.color="white";//隐藏content1
	$(zswz).css('background-color','#44b5df');
	document.getElementById("zswz").style.color="white";//隐藏content1
}
/*
editTime:2014-01-20
editUser:luweibin V1.1
decription:因要求更改导航格式样式
*/
function chkIn_1(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("2");
	//document.getElementById("shubiandianji_bg").style.display="";//隐藏content1
	/**
		document.getElementById("shubiandianji_bg1").style.display="none";//隐藏
	document.getElementById("content2").style.display="";//隐藏content1
	//document.getElementById("font2").style.color="#878787";//隐藏content1
	document.getElementById("zsjh").style.color="#878787";//隐藏content1
	*/
	$(zsjh).css('background-color','');
	document.getElementById("zsjh").style.color="#878787";
}

function chkIn1_1(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
	/**
	document.getElementById("shubiandianji_bg1").style.display="";//隐藏
	document.getElementById("content2").style.display="none";//隐藏content1
	//document.getElementById("font2").style.color="white";//隐藏content1
	document.getElementById("zsjh").style.color="white";//隐藏content1
	*/
	$(zsjh).css('background-color','#44b5df');
	document.getElementById("zsjh").style.color="white";
}



/*
 * 招生方案
 */
 function zsfa_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
 /**
	document.getElementById("zsfa_1").style.display="none";//隐藏
	document.getElementById("zsfaContent_1").style.display="";//隐藏content1
	//document.getElementById("zsfa_font").style.color="#878787";//隐藏content1
	document.getElementById("zsfa").style.color="#878787";//隐藏content1
	*/
		$(zsfa).css('background-color','');
		document.getElementById("zsfa").style.color="#878787";
}
function zsfa_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	/**
	document.getElementById("zsfa_1").style.display="";//隐藏
	document.getElementById("zsfaContent_1").style.display="none";//隐藏content1
	//document.getElementById("zsfa_font").style.color="white";//隐藏content1
	document.getElementById("zsfa").style.color="white";//隐藏content1
	*/
	$(zsfa).css('background-color','#44b5df');
	document.getElementById("zsfa").style.color="white";
}

/*
 * 招生录取
 */
 function new_zslu_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
 	document.getElementById("new_zslu_show").style.display="none";//隐藏
	document.getElementById("new_zslu_show1").style.display="none";//隐藏
	document.getElementById("new_zslu_show2").style.display="none";//隐藏
	document.getElementById("new_zslu_show3").style.display="none";//隐藏
	document.getElementById("new_zslu_show4").style.display="none";//隐藏
	document.getElementById("new_zslu_show5").style.display="none";//隐藏
	/**
	document.getElementById("new_zslu_1").style.display="none";//隐藏
	document.getElementById("new_zsluContent_1").style.display="";//隐藏content1
	//document.getElementById("new_zslu_font").style.color="#878787";//隐藏content1
	document.getElementById("new_zslu").style.color="#878787";//隐藏content1
	*/
	$(new_zslu).css('background-color','');
	document.getElementById("new_zslu").style.color="#878787";
}
function new_zslu_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	document.getElementById("new_zslu_show").style.display="";//隐藏
	document.getElementById("new_zslu_show1").style.display="";//隐藏
	document.getElementById("new_zslu_show2").style.display="";//隐藏
	document.getElementById("new_zslu_show3").style.display="";//隐藏
	document.getElementById("new_zslu_show4").style.display="";//隐藏
	document.getElementById("new_zslu_show5").style.display="";//隐藏
	/**
	document.getElementById("new_zslu_1").style.display="";//隐藏
	document.getElementById("new_zsluContent_1").style.display="none";//隐藏content1
	//document.getElementById("new_zslu_font").style.color="white";//隐藏content1
	document.getElementById("new_zslu").style.color="white";//隐藏content1
	*/

	$(new_zslu).css('background-color','#44b5df');
	document.getElementById("new_zslu").style.color="white";
}

/*
 * 招生汇总
 */ 
 function zshz_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
 /**
	document.getElementById("zshz_1").style.display="none";//隐藏
	document.getElementById("zshzContent_1").style.display="";//隐藏content1
	//document.getElementById("zshz_font").style.color="#878787";//隐藏content1
	document.getElementById("zshz").style.color="#878787";//隐藏content1
	*/
		$(zshz).css('background-color','');
		document.getElementById("zshz").style.color="#878787";
}
function zshz_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	/**
	document.getElementById("zshz_1").style.display="";//隐藏
	document.getElementById("zshzContent_1").style.display="none";//隐藏content1
	//document.getElementById("zshz_font").style.color="white";//隐藏content1
	document.getElementById("zshz").style.color="white";//隐藏content1
	*/
	$(zshz).css('background-color','#44b5df');
	document.getElementById("zshz").style.color="white";
}

/*
 * 预约报名
 */ 
 function yybm_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
 /**
	document.getElementById("yybm_1").style.display="none";//隐藏
	document.getElementById("yybmContent_1").style.display="";//隐藏content1
	//document.getElementById("yybm_font").style.color="#878787";//隐藏content1
	document.getElementById("yybm").style.color="#878787";//隐藏content1
	*/
		$(yybm).css('background-color','');
		document.getElementById("yybm").style.color="#878787";
}
function yybm_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	/**
	document.getElementById("yybm_1").style.display="";//隐藏
	document.getElementById("yybmContent_1").style.display="none";//隐藏content1
	//document.getElementById("yybm_font").style.color="white";//隐藏content1
	document.getElementById("yybm").style.color="white";//隐藏content1
	*/
	$(yybm).css('background-color','#44b5df');
	document.getElementById("yybm").style.color="white";
}
 
/*
 * 上岗安排
 */
function sgap_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
	document.getElementById("new_pyxy_show_2").style.display="none";//隐藏
	document.getElementById("new_pyxy_show1_2").style.display="none";//隐藏
	document.getElementById("new_pyxy_show2_2").style.display="none";//隐藏
	document.getElementById("new_pyxy_show3_2").style.display="none";//隐藏
	
	/**
	document.getElementById("sgap_1").style.display="none";//隐藏
	document.getElementById("sgapContent_1").style.display="";//隐藏content1
	document.getElementById("sgap_font").style.color="#878787";//隐藏content1
	*/
	$(sgap).css('background-color','');
	document.getElementById("sgap").style.color="#878787";
}
function sgap_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	document.getElementById("new_pyxy_show_2").style.display="";//隐藏
	document.getElementById("new_pyxy_show1_2").style.display="";//隐藏
	document.getElementById("new_pyxy_show2_2").style.display="";//隐藏
	document.getElementById("new_pyxy_show3_2").style.display="";//隐藏
	
	/**
	document.getElementById("sgap_1").style.display="";//隐藏
	document.getElementById("sgapContent_1").style.display="none";//隐藏content1
	document.getElementById("sgap_font").style.color="white";//隐藏content1
	*/
	$(sgap).css('background-color','#44b5df');
	document.getElementById("sgap").style.color="white";
}
/*
 * 培养协议
 */ 

function new_pyxy_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("chu1");
	document.getElementById("new_pyxy_show").style.display="none";//隐藏
	document.getElementById("new_pyxy_show1").style.display="none";//隐藏
	document.getElementById("new_pyxy_show2").style.display="none";//隐藏
	document.getElementById("new_pyxy_show3").style.display="none";//隐藏
	
	/**
	document.getElementById("new_pyxy_1").style.display="none";//隐藏
	document.getElementById("new_pyxyContent_1").style.display="";//隐藏content1
	//document.getElementById("new_pyxy_font").style.color="#878787";//隐藏content1
	document.getElementById("new_pyxy").style.color="#878787";//隐藏content1
	*/
	$(new_pyxy).css('background-color','');
	document.getElementById("new_pyxy").style.color="#878787";
}
function new_pyxy_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("进1");
	document.getElementById("new_pyxy_show").style.display="";//隐藏
	document.getElementById("new_pyxy_show1").style.display="";//隐藏
	document.getElementById("new_pyxy_show2").style.display="";//隐藏
	document.getElementById("new_pyxy_show3").style.display="";//隐藏
	
	/**
	document.getElementById("new_pyxy_1").style.display="";//隐藏
	document.getElementById("new_pyxyContent_1").style.display="none";//隐藏content1
	//document.getElementById("new_pyxy_font").style.color="white";//隐藏content1
	document.getElementById("new_pyxy").style.color="white";//隐藏content1
	*/
	$(new_pyxy).css('background-color','#44b5df');
	document.getElementById("new_pyxy").style.color="white";
}

/*
 * 培养安排
 */ 

function new_pyap_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("出2");
	document.getElementById("new_pyxy_show_1").style.display="none";//隐藏
	document.getElementById("new_pyxy_show1_1").style.display="none";//隐藏
	//document.getElementById("new_pyxy_show2_1").style.display="none";//隐藏
	document.getElementById("new_pyxy_show3_1").style.display="none";//隐藏
	document.getElementById("new_pyxy_show4_1").style.display="none";//隐藏
	document.getElementById("new_pyxy_show5_1").style.display="none";//隐藏
	
	/**
	document.getElementById("new_pyap_1").style.display="none";//隐藏
	document.getElementById("new_pyapContent_1").style.display="";//隐藏content1
	//document.getElementById("new_pyap_font").style.color="#878787";//隐藏content1
	document.getElementById("new_pyap").style.color="#878787";//隐藏content1
	*/
	$(new_pyap).css('background-color','');
	document.getElementById("new_pyap").style.color="#878787";
	
}
function new_pyap_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果

//alert("进2");
	document.getElementById("new_pyxy_show_1").style.display="";//隐藏
	document.getElementById("new_pyxy_show1_1").style.display="";//隐藏
	//document.getElementById("new_pyxy_show2_1").style.display="";//隐藏
	document.getElementById("new_pyxy_show3_1").style.display="";//隐藏
	document.getElementById("new_pyxy_show4_1").style.display="";//隐藏
	document.getElementById("new_pyxy_show5_1").style.display="";//隐藏
	
	/**
	document.getElementById("new_pyap_1").style.display="";//隐藏
	document.getElementById("new_pyapContent_1").style.display="none";//隐藏content1
	//document.getElementById("new_pyap_font").style.color="white";//隐藏content1
	document.getElementById("new_pyap").style.color="white";//隐藏content1
	*/
	$(new_pyap).css('background-color','#44b5df');
	document.getElementById("new_pyap").style.color="white";
}


/*
 * 实习文件
 */
function sswj_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
	/**
	document.getElementById("sswj_1").style.display="none";//隐藏
	document.getElementById("sswjContent_1").style.display="";//隐藏content1
	document.getElementById("sswj_font").style.color="#878787";//隐藏content1
	*/
	$(sswj).css('background-color','');
	document.getElementById("sswj").style.color="#878787";
}
function sswj_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	/**
	document.getElementById("sswj_1").style.display="";//隐藏
	document.getElementById("sswjContent_1").style.display="none";//隐藏content1
	document.getElementById("sswj_font").style.color="white";//隐藏content1
	*/
	$(sswj).css('background-color','#44b5df');
	document.getElementById("sswj").style.color="white";
}
//实习登记
function ssdj_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
	/**
	document.getElementById("ssdj_1").style.display="none";//隐藏
	document.getElementById("ssdjContent_1").style.display="";//隐藏content1
	document.getElementById("ssdj_font").style.color="#878787";//隐藏content1
	*/
	$(ssdj).css('background-color','');
	document.getElementById("ssdj").style.color="#878787";
}
function ssdj_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	/**
	document.getElementById("ssdj_1").style.display="";//隐藏
	document.getElementById("ssdjContent_1").style.display="none";//隐藏content1
	document.getElementById("ssdj_font").style.color="white";//隐藏content1
	*/
	$(ssdj).css('background-color','#44b5df');
	document.getElementById("ssdj").style.color="white";
}
//返校情况
function fxqk_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
	/**
	document.getElementById("fxqk_1").style.display="none";//隐藏
	document.getElementById("fxqkContent_1").style.display="";//隐藏content1
	document.getElementById("fxqk_font").style.color="#878787";//隐藏content1
	*/
	$(fxqk).css('background-color','');
	document.getElementById("fxqk").style.color="#878787";
}
function fxqk_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	/**
	document.getElementById("fxqk_1").style.display="";//隐藏
	document.getElementById("fxqkContent_1").style.display="none";//隐藏content1
	document.getElementById("fxqk_font").style.color="white";//隐藏content1
	*/
	$(fxqk).css('background-color','#44b5df');
	document.getElementById("fxqk").style.color="white";
}





/*
*/
function new_sxbbzr_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
	document.getElementById("new_sswj_show").style.display="none";//隐藏
	document.getElementById("new_sswj_show1").style.display="none";//隐藏
	document.getElementById("new_sswj_show2").style.display="none";//隐藏
	document.getElementById("new_sswj_show3").style.display="none";//隐藏

	/**
	document.getElementById("new_sxbbzr_1").style.display="none";//隐藏
	document.getElementById("new_sxbbzrContent_1").style.display="";//隐藏content1
	document.getElementById("new_sxbbzr_font").style.color="#878787";//隐藏content1
	*/
	$(new_sxbbzr).css('background-color','');
	document.getElementById("new_sxbbzr").style.color="#878787";
}
function new_sxbbzr_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	document.getElementById("new_sswj_show").style.display="";//隐藏
	document.getElementById("new_sswj_show1").style.display="";//隐藏
	document.getElementById("new_sswj_show2").style.display="";//隐藏
	document.getElementById("new_sswj_show3").style.display="";//隐藏
	
	/**
	document.getElementById("new_sxbbzr_1").style.display="";//隐藏
	document.getElementById("new_sxbbzrContent_1").style.display="none";//隐藏content1
	document.getElementById("new_sxbbzr_font").style.color="white";//隐藏content1
	*/
	$(new_sxbbzr).css('background-color','#44b5df');
	document.getElementById("new_sxbbzr").style.color="white";
}
/*
*/
function new_sxgz_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("2");
	document.getElementById("new_sswj_show_1").style.display="none";//隐藏
	document.getElementById("new_sswj_show1_1").style.display="none";//隐藏
	//document.getElementById("new_sswj_show2_1").style.display="none";//隐藏
	document.getElementById("new_sswj_show3_1").style.display="none";//隐藏
	document.getElementById("new_sswj_show4_1").style.display="none";//隐藏
	document.getElementById("new_sswj_show5_1").style.display="none";//隐藏
	
	/**
	document.getElementById("new_sxgz_1").style.display="none";//隐藏
	document.getElementById("new_sxgzContent_1").style.display="";//隐藏content1
	document.getElementById("new_sxgz_font").style.color="#878787";//隐藏content1
	*/
	$(new_sxgz).css('background-color','');
	document.getElementById("new_sxgz").style.color="#878787";
}
function new_sxgz_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("3");
document.getElementById("new_sswj_show_1").style.display="";//隐藏
	document.getElementById("new_sswj_show1_1").style.display="";//隐藏
	//document.getElementById("new_sswj_show2_1").style.display="";//隐藏
	document.getElementById("new_sswj_show3_1").style.display="";//隐藏
	document.getElementById("new_sswj_show4_1").style.display="";//隐藏
	document.getElementById("new_sswj_show5_1").style.display="";//隐藏
	/**
	document.getElementById("new_sxgz_1").style.display="";//隐藏
	document.getElementById("new_sxgzContent_1").style.display="none";//隐藏content1
	document.getElementById("new_sxgz_font").style.color="white";//隐藏content1
	*/
	$(new_sxgz).css('background-color','#44b5df');
	document.getElementById("new_sxgz").style.color="white";
}
/*
*/
function new_bjxs_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");

 	document.getElementById("new_sswj_show_2").style.display="none";//隐藏
	document.getElementById("new_sswj_show1_2").style.display="none";//隐藏
	document.getElementById("new_sswj_show2_2").style.display="none";//隐藏
	document.getElementById("new_sswj_show3_2").style.display="none";//隐藏

	/**
	document.getElementById("new_bjxs_1").style.display="none";//隐藏
	document.getElementById("new_bjxsContent_1").style.display="";//隐藏content1
	document.getElementById("new_bjxs_font").style.color="#878787";//隐藏content1
	*/
	$(new_bjxs).css('background-color','');
	document.getElementById("new_bjxs").style.color="#878787";
}
function new_bjxs_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");

 	document.getElementById("new_sswj_show_2").style.display="";//隐藏
	document.getElementById("new_sswj_show1_2").style.display="";//隐藏
	document.getElementById("new_sswj_show2_2").style.display="";//隐藏
	document.getElementById("new_sswj_show3_2").style.display="";//隐藏

	/**
	document.getElementById("new_bjxs_1").style.display="";//隐藏
	document.getElementById("new_bjxsContent_1").style.display="none";//隐藏content1
	document.getElementById("new_bjxs_font").style.color="white";//隐藏content1
	*/
	$(new_bjxs).css('background-color','#44b5df');
	document.getElementById("new_bjxs").style.color="white";
}
 

/*
*/
function new_yrdw_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
	/**
	document.getElementById("new_yrdw_1").style.display="none";//隐藏
	document.getElementById("new_yrdwContent_1").style.display="";//隐藏content1
	document.getElementById("new_yrdw_font").style.color="#878787";//隐藏content1
	*/
	$(new_yrdw).css('background-color','');
	document.getElementById("new_yrdw").style.color="#878787";
}
function new_yrdw_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	/**
	document.getElementById("new_yrdw_1").style.display="";//隐藏
	document.getElementById("new_yrdwContent_1").style.display="none";//隐藏content1
	document.getElementById("new_yrdw_font").style.color="white";//隐藏content1
	*/
	$(new_yrdw).css('background-color','#44b5df');
	document.getElementById("new_yrdw").style.color="white";
}








/*
 *
 */
function bytj_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
	/**
	document.getElementById("bytj_1").style.display="none";//隐藏
	document.getElementById("bytjContent_1").style.display="";//隐藏content1
	document.getElementById("bytj_font").style.color="#878787";//隐藏content1
	*/
	$(bytj).css('background-color','');
	document.getElementById("bytj").style.color="#878787";
}
function bytj_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	/**
	document.getElementById("bytj_1").style.display="";//隐藏
	document.getElementById("bytjContent_1").style.display="none";//隐藏content1
	document.getElementById("bytj_font").style.color="white";//隐藏content1
	*/
	$(bytj).css('background-color','#44b5df');
	document.getElementById("bytj").style.color="white";
}
function bygz_chkIn(){//当鼠标移出此区域内触发此方法并显示初始效果
	//alert("1");
	/**
	document.getElementById("bygz_1").style.display="none";//隐藏
	document.getElementById("bygzContent_1").style.display="";//隐藏content1
	document.getElementById("bygz_font").style.color="#878787";//隐藏content1
	*/
	$(bygz).css('background-color','');
	document.getElementById("bygz").style.color="#878787";
}
function bygz_chkIn1(){//当鼠标进入此区域内触发此方法并显示对应效果
	//alert("1");
	/**
	document.getElementById("bygz_1").style.display="";//隐藏
	document.getElementById("bygzContent_1").style.display="none";//隐藏content1
	document.getElementById("bygz_font").style.color="white";//隐藏content1
	*/
	$(bygz).css('background-color','#44b5df');
	document.getElementById("bygz").style.color="white";
}
 

//dialog窗口
function loadDialog() {
	$('#ZStype').dialog({
		title : '招生录取导航',
		width: 500,   
		height: 120,  
		modal : true,
		closed : true,
		//cache: false,
		onOpen : function(data) {
			$('#ZStype').find('table').css('display', 'block');
			//setYearCombobox();
			//$('#bt').css("background","black");
		},
		onLoad : function(data) {
		},
		onClose : function(data) {

		}
	});
}


//dialog窗口
function gxjt_loadDialog() {
	$('#gxjt_ZStype').dialog({
		title : '培养协议导航',
		width: 500,   
		height: 120,  
		modal : true,
		closed : true,
		//cache: false,
		onOpen : function(data) {
			$('#gxjt_ZStype').find('table').css('display', 'block');
			//setYearCombobox();
			//$('#bt').css("background","black");
		},
		onLoad : function(data) {
		},
		onClose : function(data) {

		}
	});
}

//dialog窗口
function sxgl_loadDialog() {
	$('#sxgl_ZStype').dialog({
		title : '实习安排导航',
		width: 240,   
		height: 120,  
		modal : true,
		closed : true,
		//cache: false,
		onOpen : function(data) {
			$('#sxgl_ZStype').find('table').css('display', 'block');
			//setYearCombobox();
			//$('#bt').css("background","black");
		},
		onLoad : function(data) {
		},
		onClose : function(data) {

		}
	});
}

//加载下拉框
function sxgl_setComboxValue()
{
	$('#sxgl_icRA_SYD1').combobox({//查询条件中的"班级"下拉框
		data:<%=PublicTools.getComboboxOptions("V_班级学生信息表","班级代码","班级名称"," group by 班级名称,班级代码",request)%>,
		valueField:'comboValue',
		textField:'comboName',
		editable:false,
		panelHeight:'auto',	
		onLoadSuccess:function(data){
			if(data != ""){
				$(this).combobox('setValue',"请选择");
			}
		}
	});								
}
 
//给查询条件生源地下拉框赋值
function setComboxValue1(){
//alert("2");
	$('#icRA_SYD1').combobox({
		data:<%=PublicTools.getComboboxOptions("V_信息类别_类别操作","类别代码","类别名称","where 状态='Y' and 父类别代码='zsjy_00007' ",request)%>,
		valueField:'comboValue',
		textField:'comboName',
		editable:false,
		panelHeight:'140', 
		onLoadSuccess:function(data){
			if(data != ""){
				$(this).combobox('setValue',"请选择"); //如有值，则显示"请选择"
			}
		}
	});	
}
 
//给查询条件录取类型下拉框赋值
function setComboxValue(){
//alert("1");
	$('#icRA_LQTYPE1').combobox({
		data:<%=PublicTools.getComboboxOptions("V_信息类别_类别操作","类别代码","类别名称","where 状态='Y' and 父类别代码='zsjy_00006' ",request)%>,
		valueField:'comboValue',
		textField:'comboName',
		editable:false,
		panelHeight:'140', 
		onLoadSuccess:function(data){
			if(data != ""){
				$(this).combobox('setValue',"请选择"); //如有值，则显示"请选择"
			}
		},
		onChange:function(data){}//下拉列表 值 改变事件
	});
}

//获取当前时间
function createTime(){
	$.ajax( {
		type : 'post',
		url : '<%=request.getContextPath()%>/Svl_Diagram',
		data : "active=createTime",
		dataType : 'json',
		success : function(data3) {
			year=data3[0].createTime;
			setYearCombobox();
			/*
			 * 
			 */ 
			 gxjt_setYearCombobox();
		}
	});
}
 	
//日期框的更新
function setYearCombobox() {
	$.ajax( {
		type : 'post', //传输方式为post
		url : '<%=request.getContextPath()%>/Svl_Diagram', //链接地址
		data : "active=getCombobox", //active值传给SVL
		dataType : 'json', //数据类型
		success : function(datas) { 	//成功后执行方法
			$('#icRA_YEAR1').combobox({
				data:datas,
				valueField:'comboValue',
				textField:'comboName',
				editable:false,
				panelHeight:'auto',
				onLoadSuccess:function(data){
					//var year = new Date().getYear();//获取当前年度
					var yearInsert = true;//设置判断状态为需要插入当前年度
					var setYearInsert = true;//判断当前年度需要插入到下拉框		
					if(data.length == 0){
						yearInsert = true;				
					}else{
						for(i=0;i<data.length;i++){
							if(data[i].comboValue == lastYear){
								//查询遍历新的"年度"下拉框中是否有上次查询的年度值,有的话给下拉框赋此值
								$(this).combobox('setValue',data[i].comboValue);
								setYearInsert = false;											
							}								
							if(data[i].comboValue == year ){//判断是否有当前年度值
								yearInsert = false;//已有年度则修改状态为不插入
								//break;//有当前年度的值跳出循环			
							}//end if								
						}// end for								
					}
					if(yearInsert == true){//没有当前年度值,需要给下拉框插入一个
						data.push({"comboName":year,"comboValue":year});//向数组里插入一个元素
						$(this).combobox('loadData',data);	//有值而且没有遍历结果没有当前年度时插入当前年度								
					}
					if(setYearInsert == true){//没有之前查询的值,需要显示当前年份
						$(this).combobox('setValue',year);	//将当前年度设置为默认值
					}															
				}
			});	
					//dosubmit();				
		}
	});	
}








//日期框的更新
function gxjt_setYearCombobox() {
	$.ajax( {
		type : 'post', //传输方式为post
		url : '<%=request.getContextPath()%>/Svl_Diagram', //链接地址
		data : "active=getCombobox", //active值传给SVL
		dataType : 'json', //数据类型
		success : function(datas) { 	//成功后执行方法
			$('#gxjt_icRA_YEAR1').combobox({
				data:datas,
				valueField:'comboValue',
				textField:'comboName',
				editable:false,
				panelHeight:'auto',
				onLoadSuccess:function(data){
					//var year = new Date().getYear();//获取当前年度
					var yearInsert = true;//设置判断状态为需要插入当前年度
					var setYearInsert = true;//判断当前年度需要插入到下拉框		
					if(data.length == 0){
						yearInsert = true;				
					}else{
						for(i=0;i<data.length;i++){
							if(data[i].comboValue == lastYear){
								//查询遍历新的"年度"下拉框中是否有上次查询的年度值,有的话给下拉框赋此值
								$(this).combobox('setValue',data[i].comboValue);
								setYearInsert = false;											
							}								
							if(data[i].comboValue == year ){//判断是否有当前年度值
								yearInsert = false;//已有年度则修改状态为不插入
								//break;//有当前年度的值跳出循环			
							}//end if								
						}// end for								
					}
					if(yearInsert == true){//没有当前年度值,需要给下拉框插入一个
						data.push({"comboName":year,"comboValue":year});//向数组里插入一个元素
						$(this).combobox('loadData',data);	//有值而且没有遍历结果没有当前年度时插入当前年度								
					}
					if(setYearInsert == true){//没有之前查询的值,需要显示当前年份
						$(this).combobox('setValue',year);	//将当前年度设置为默认值
					}															
				}
			});	
					//dosubmit();				
		}
	});	
}
/*
editTime:2014-01-20
editUser:luweibin V1.1
decription:因要求更改导航格式样式
*/
//点击按钮触发
function doToolbar(iToolbar){
	if(iToolbar=="print"){//确认按钮
		if($('#icRA_YEAR1').combobox('getValue')!=''&&$('#icRA_LQTYPE1').combobox('getValue')!='请选择'&&$('#icRA_SYD1').combobox('getValue')!='请选择'){//数据不为空的情况下
			statu='2';
			if(st=="1"||st=='23'){//判断状态，1代表招生录取，23代表：新计划也跳转到招生录取并参数传递，参数传递过程中包括传送下拉框值对应的中文名
				location.href('<%=request.getContextPath()%>/form/recruit/enroll/ConEnrollList.jsp?icLC_YEAR1='+$('#icRA_YEAR1').combobox('getValue')+"&icLC_LQTYPE1="+$('#icRA_LQTYPE1').combobox('getValue')+"&icLC_SYD1="+$('#icRA_SYD1').combobox('getValue')+"&statu="+statu);
			}
			if(st=="2"){//2代表：录取通知
				location.href('<%=request.getContextPath()%>/form/recruit/enroll/NotEnrollList.jsp?Not_YEAR1='+$('#icRA_YEAR1').combobox('getValue')+"&Not_LQTYPE1="+$('#icRA_LQTYPE1').combobox('getValue')+"&Not_SYD1="+$('#icRA_SYD1').combobox('getValue')+"&Not_SYD2="+$('#icRA_SYD1').combobox('getText'));
			}
			if(st=="3"){//3代表:邮寄信封
				location.href('<%=request.getContextPath()%>/form/recruit/enroll/EnvEnrollList.jsp?Not_YEAR1='+$('#icRA_YEAR1').combobox('getValue')+"&Not_LQTYPE1="+$('#icRA_LQTYPE1').combobox('getValue')+"&Not_SYD1="+$('#icRA_SYD1').combobox('getValue')+"&Not_SYD2="+$('#icRA_SYD1').combobox('getText'));
			}
			icRA_YEAR1=$('#icRA_YEAR1').combobox('getValue');

			icRA_LQTYPE1=$('#icRA_LQTYPE1').combobox('getValue');
			icRA_SYD1=$('#icRA_SYD1').combobox('getValue');
			//调用父页面方法，并把状态传过去
			window.parent.statu(statu);
			
			/*
			 * 下拉框中文名
			 */
		   icRA_LQTYPE2=$('#icRA_LQTYPE1').combobox('getText');//获取父页面的录取类型
		   icRA_SYD2=$('#icRA_SYD1').combobox('getText');//获取父页面的生源地
		   //alert(icRA_LQTYPE2+"==welcome=="+icRA_SYD2);
		}
		else{
			alertMsg("请先选择本次要操作的数据")
		}
		document.getElementById("left").style.display="none";//隐藏
		document.getElementById("left1").style.display="none";//隐藏
		document.getElementById("left2").style.display="none";//隐藏
		document.getElementById("left4").style.display="none";//隐藏
		document.getElementById("xianshi").style.display="none";//隐藏
		document.getElementById("xianshi1").style.display="none";//隐藏
		document.getElementById("xianshi2").style.display="none";//隐藏
		document.getElementById("xianshi3").style.display="none";//隐藏
		document.getElementById("wenzi").style.display="none";//隐藏
		document.getElementById("wenzi1").style.display="none";//隐藏
		document.getElementById("wenzi2").style.display="none";//隐藏
	}
	
	//if(iToolbar=="1"){//招生录取
	if(iToolbar=="luqu"||iToolbar=="luqu1"||iToolbar=="luqu2"){//招生录取	
		//alert("luqu");

		st="1";//判断dialog界面选择确定时，跳转哪个路径
		if(icRA_YEAR1!='null'&&icRA_LQTYPE1!='null'&&icRA_SYD1!='null'){//年度，录取类型，生源地不为空，说明查询条件已选，直接赋值跳转对应界面
			$('#icRA_YEAR1').combobox('setValue',icRA_YEAR1);
			$('#icRA_LQTYPE1').combobox('setValue',icRA_LQTYPE1);
			$('#icRA_SYD1').combobox('setValue',icRA_SYD1);	
			location.href('<%=request.getContextPath()%>/form/recruit/enroll/ConEnrollList.jsp?icLC_YEAR1='+$('#icRA_YEAR1').combobox('getValue')+"&icLC_LQTYPE1="+$('#icRA_LQTYPE1').combobox('getValue')+"&icLC_SYD1="+$('#icRA_SYD1').combobox('getValue')+"&Not_SYD2="+$('#icRA_SYD1').combobox('getText'));
			statu="2";
			//调用父页面方法，并把状态传过去
			window.parent.statu(statu);
		}
		else{//年度，录取类型，生源地为空，说明查询条件未选
			$('#ZStype').dialog("open");
		}
	}
	
	//if(iToolbar=="2"){//录取通知
	if(iToolbar=="luqutongzhi"||iToolbar=="luqutongzhi1"||iToolbar=="luqutongzhi2"){//录取通知
		//alert("luqutongzhi");

		//alert('2');
		st="2";//判断dialog界面选择确定时，跳转哪个路径
		if(icRA_YEAR1!='null'&&icRA_LQTYPE1!='null'&&icRA_SYD1!='null'){//年度，录取类型，生源地不为空，说明查询条件已选，直接赋值跳转对应界面
			$('#icRA_YEAR1').combobox('setValue',icRA_YEAR1);
			$('#icRA_LQTYPE1').combobox('setValue',icRA_LQTYPE1);
			$('#icRA_SYD1').combobox('setValue',icRA_SYD1);
			location.href('<%=request.getContextPath()%>/form/recruit/enroll/NotEnrollList.jsp?Not_YEAR1='+$('#icRA_YEAR1').combobox('getValue')+"&Not_LQTYPE1="+$('#icRA_LQTYPE1').combobox('getValue')+"&Not_SYD1="+$('#icRA_SYD1').combobox('getValue')+"&Not_SYD2="+icRA_SYD2);
			statu="2";
			//调用父页面方法，并把状态传过去
			window.parent.statu(statu);
		}
		else{//年度，录取类型，生源地为空，说明查询条件未选
			$('#ZStype').dialog("open");
		}	
	}
	//if(iToolbar=="3"){//邮寄信封
	if(iToolbar=="youjixinfeng"||iToolbar=="youjixinfeng1"||iToolbar=="youjixinfeng2"){//邮寄信封
		//alert("youjixinfeng");

		st="3";//判断dialog界面选择确定时，跳转哪个路径
		if(icRA_YEAR1!='null'&&icRA_LQTYPE1!='null'&&icRA_SYD1!='null'){//年度，录取类型，生源地不为空，说明查询条件已选，直接赋值跳转对应界面
			$('#icRA_YEAR1').combobox('setValue',icRA_YEAR1);
			$('#icRA_LQTYPE1').combobox('setValue',icRA_LQTYPE1);
			$('#icRA_SYD1').combobox('setValue',icRA_SYD1);	
			location.href('<%=request.getContextPath()%>/form/recruit/enroll/EnvEnrollList.jsp?Not_YEAR1='+$('#icRA_YEAR1').combobox('getValue')+"&Not_LQTYPE1="+$('#icRA_LQTYPE1').combobox('getValue')+"&Not_SYD1="+$('#icRA_SYD1').combobox('getValue')+"&Not_SYD2="+icRA_SYD2);
			statu="2";
			//调用父页面方法，并把状态传过去
			window.parent.statu(statu);
		}
		else{//年度，录取类型，生源地为空，说明查询条件未选
			$('#ZStype').dialog("open");
		}
	}
	if(iToolbar=="zswz"){//通过iToolbar判断跳转页面
		window.open('<%=request.getContextPath()%>/form/recruit/web/RecWebList.jsp');//招生网站
		///window.parent.frames.openDialog('<%=request.getContextPath()%>/form/recruit/web/RecWebList.jsp');
	}
	if(iToolbar=="zsjh"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/recruit/plan/RepPlanList.jsp');//招生计划
	}
	if(iToolbar=="zsfa"){//通过iToolbar判断跳转页面
	  	window.open('http://192.168.168.112:8080/group/control_panel/manage?p_p_id=161&p_p_lifecycle=0&p_p_state=maximized&p_p_mode=view&doAsGroupId=10179');//招生方案
	}
	if(iToolbar=="new_zslu"){
		window.open('<%=request.getContextPath()%>/form/recruit/enroll/ConEnrollList.jsp');//招生录取
	}
	if(iToolbar=="zshz"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/recruit/collect/RepCollectList.jsp');//招生汇总
	}
	if(iToolbar=="yybm"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/recruit/apply/ResApplyList.jsp');//预约报名
	}
	/*
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 第二个流程培养协议
	 * 
	 */
	 
	if(iToolbar=="gxjt_print"){//确认按钮
		if($('#gxjt_icRA_YEAR1').combobox('getValue')!=''&&$('#gxjt_icRA_LQTYPE1').val()!=''&&$('#gxjt_icRA_SYD1').combobox('getValue')!='请选择'){//数据不为空的情况下
			gxjt_statu='2';
			if(gxjt_st=="1"||gxjt_st=='23'){//判断状态，1代表培养协议，23代表：新计划也跳转到培养协议并参数传递，参数传递过程中包括传送下拉框值对应的中文名
				location.href('<%=request.getContextPath()%>/form/alternation/agreement/AgreementList.jsp?gxjt_icLC_YEAR1='+$('#gxjt_icRA_YEAR1').combobox('getValue')+"&gxjt_icLC_LQTYPE1="+$('#gxjt_icRA_LQTYPE1').val()+"&gxjt_icLC_SYD1="+$('#gxjt_icRA_SYD1').combobox('getValue')+"&gxjt_Not_SYD2="+$('#gxjt_icRA_SYD1').combobox('getText')+"&gxjt_statu="+gxjt_statu);
			}
			if(gxjt_st=="2"){//2代表：
				location.href('<%=request.getContextPath()%>/form/alternation/plan/AltPlanList.jsp?gxjt_Not_YEAR1='+$('#gxjt_icRA_YEAR1').combobox('getValue')+"&gxjt_Not_LQTYPE1="+$('#gxjt_icRA_LQTYPE1').val()+"&gxjt_Not_SYD1="+$('#gxjt_icRA_SYD1').combobox('getValue')+"&gxjt_Not_SYD2="+$('#gxjt_icRA_SYD1').combobox('getText'));
			}
			gxjt_icRA_YEAR1=$('#gxjt_icRA_YEAR1').combobox('getValue');

			gxjt_icRA_LQTYPE1=$('#gxjt_icRA_LQTYPE1').val();
			gxjt_icRA_SYD1=$('#gxjt_icRA_SYD1').combobox('getValue');
			//调用父页面方法，并把状态传过去
			window.parent.gxjt_statu(gxjt_statu);
			
			/*
			 * 下拉框中文名
			 */
		   gxjt_icRA_SYD2=$('#gxjt_icRA_SYD1').combobox('getText');//获取父页面的canshu 
		}
		else{
			alertMsg("请先选择本次要操作的数据");
		}
		document.getElementById("left").style.display="none";//隐藏
		document.getElementById("left1").style.display="none";//隐藏
		document.getElementById("left2").style.display="none";//隐藏
		document.getElementById("left4").style.display="none";//隐藏
		document.getElementById("xianshi").style.display="none";//隐藏
		document.getElementById("xianshi1").style.display="none";//隐藏
		document.getElementById("xianshi2").style.display="none";//隐藏
		document.getElementById("xianshi3").style.display="none";//隐藏
		document.getElementById("wenzi").style.display="none";//隐藏
		document.getElementById("wenzi1").style.display="none";//隐藏
		document.getElementById("wenzi2").style.display="none";//隐藏
	}
	if(iToolbar=="pyxy_gray"||iToolbar=="pyxy_gray1"||iToolbar=="pyxy_gray2"){
		//alert("luqu");

		gxjt_st="1";//判断dialog界面选择确定时，跳转哪个路径
		if(gxjt_icRA_YEAR1!='null'&&gxjt_icRA_LQTYPE1!='null'&&gxjt_icRA_SYD1!='null'){//年度，协议名称，班级，说明查询条件已选，直接赋值跳转对应界面
			$('#gxjt_icRA_YEAR1').combobox('setValue',gxjt_icRA_YEAR1);
			$('#gxjt_icRA_LQTYPE1').val(gxjt_icRA_LQTYPE1);
			$('#gxjt_icRA_SYD1').combobox('setValue',gxjt_icRA_SYD1);	
			location.href('<%=request.getContextPath()%>/form/alternation/agreement/AgreementList.jsp?gxjt_icLC_YEAR1='+$('#gxjt_icRA_YEAR1').combobox('getValue')+"&gxjt_icLC_LQTYPE1="+$('#gxjt_icRA_LQTYPE1').val()+"&gxjt_icLC_SYD1="+$('#gxjt_icRA_SYD1').combobox('getValue')+"&gxjt_Not_SYD2="+$('#gxjt_icRA_SYD1').combobox('getText'));
			gxjt_statu="2";
			//调用父页面方法，并把状态传过去
			window.parent.gxjt_statu(gxjt_statu);
		}
		else{
			$('#gxjt_ZStype').dialog("open");
		}
	}
	if(iToolbar=="pyap_gray"||iToolbar=="pyap_gray1"||iToolbar=="pyap_gray2"){//招生录取	
		gxjt_st="2";//判断dialog界面选择确定时，跳转哪个路径
		if(gxjt_icRA_YEAR1!='null'&&gxjt_icRA_LQTYPE1!='null'&&gxjt_icRA_SYD1!='null'){
			$('#gxjt_icRA_YEAR1').combobox('setValue',gxjt_icRA_YEAR1);
			$('#gxjt_icRA_LQTYPE1').val(gxjt_icRA_LQTYPE1);
			$('#gxjt_icRA_SYD1').combobox('setValue',gxjt_icRA_SYD1);	
			location.href('<%=request.getContextPath()%>/form/alternation/plan/AltPlanList.jsp?gxjt_Not_YEAR1='+$('#gxjt_icRA_YEAR1').combobox('getValue')+"&gxjt_Not_LQTYPE1="+$('#gxjt_icRA_LQTYPE1').val()+"&gxjt_Not_SYD1="+$('#gxjt_icRA_SYD1').combobox('getValue')+"&gxjt_Not_SYD2="+$('#gxjt_icRA_SYD1').combobox('getText'));
			gxjt_statu="2";
			//调用父页面方法，并把状态传过去
			window.parent.gxjt_statu(gxjt_statu);
		}
		else{
			$('#gxjt_ZStype').dialog("open");
		}
	}
	
	if(iToolbar=="new_pyxy"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/alternation/agreement/AgreementList.jsp');//培养协议
	}
	if(iToolbar=="new_pyap"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/alternation/plan/AltPlanList.jsp');//培养安排
	}
	if(iToolbar=="sgap"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/alternation/plan/AltPlanDetailedList.jsp');//培养安排
	}
	
	
	//if(iToolbar=="9"){//通过iToolbar判断跳转页面
	  	//window.open('<%=request.getContextPath()%>/form/alternation/agreement/AgreementList.jsp');//培养协议
	//}
	//if(iToolbar=="10"){//通过iToolbar判断跳转页面
	//  	window.open('<%=request.getContextPath()%>/form/alternation/plan/AltPlanList.jsp');//培养安排
	//}
	//if(iToolbar=="11"){//通过iToolbar判断跳转页面
	//  	window.open('<%=request.getContextPath()%>/form/alternation/plan/AltPlanDetailedList.jsp');//培养安排明细
	//}
	
	//if(iToolbar=="12"){//通过iToolbar判断跳转页面
	 // 	window.open('<%=request.getContextPath()%>/form/alternation/plan/AltPlanSecDeList.jsp');//
	//}

	if(iToolbar=="pyap_mx_gray"||iToolbar=="pyap_mx_gray1"||iToolbar=="pyap_mx_gray2"){//通过iToolbar判断跳转页面
		if(gxjt_ic_keyCode!='null'&&gxjt_ic_keyCode!=''){
			//alert(gxjt_ic_keyCode+"+++++++++++++"+gxjt_sg_ic_keyCode);
			gxjt_st="3";//判断dialog界面选择确定时，跳转哪个路径
			if(gxjt_icRA_YEAR1!='null'&&gxjt_icRA_LQTYPE1!='null'&&gxjt_icRA_SYD1!='null'){
				$('#gxjt_icRA_YEAR1').combobox('setValue',gxjt_icRA_YEAR1);
				$('#gxjt_icRA_LQTYPE1').val(gxjt_icRA_LQTYPE1);
				$('#gxjt_icRA_SYD1').combobox('setValue',gxjt_icRA_SYD1);	
				//alert(gxjt_ic_keyCode);
				location.href('<%=request.getContextPath()%>/form/alternation/plan/AltPlanDetailedList.jsp?gxjt_Not_keyCode='+gxjt_ic_keyCode+'&gxjt_Not_YEAR1='+$('#gxjt_icRA_YEAR1').combobox('getValue')+"&gxjt_Not_LQTYPE1="+$('#gxjt_icRA_LQTYPE1').val()+"&gxjt_Not_SYD1="+$('#gxjt_icRA_SYD1').combobox('getValue')+"&gxjt_Not_SYD2="+$('#gxjt_icRA_SYD1').combobox('getText'));
				gxjt_statu="2";
				//调用父页面方法，并把状态传过去
				window.parent.gxjt_statu(gxjt_statu);
			}
			else{
				$('#gxjt_ZStype').dialog("open");
			}
		}
		else{
			alertMsg("请在培养安排中选择一条数据");
			return;
		}
	  	//window.open('<%=request.getContextPath()%>/form/alternation/plan/AltPlanDetailedList.jsp');//
	}
	if(iToolbar=="sgap_mx_gray"||iToolbar=="sgap_mx_gray1"||iToolbar=="sgap_mx_gray2"){//通过iToolbar判断跳转页面
		if(gxjt_ic_keyCode!='null'&&gxjt_sg_ic_keyCode!='null'&&gxjt_ic_keyCode!=''&&gxjt_sg_ic_keyCode!=''){
			//alert(gxjt_ic_keyCode+"+++++++++++++"+gxjt_sg_ic_keyCode);
			gxjt_st="4";//判断dialog界面选择确定时，跳转哪个路径
			if(gxjt_icRA_YEAR1!='null'&&gxjt_icRA_LQTYPE1!='null'&&gxjt_icRA_SYD1!='null'){//年度，录取类型，生源地不为空，说明查询条件已选，直接赋值跳转对应界面
				$('#gxjt_icRA_YEAR1').combobox('setValue',gxjt_icRA_YEAR1);
				$('#gxjt_icRA_LQTYPE1').val(gxjt_icRA_LQTYPE1);
				$('#gxjt_icRA_SYD1').combobox('setValue',gxjt_icRA_SYD1);	
				//alert(gxjt_ic_keyCode);
				location.href('<%=request.getContextPath()%>/form/alternation/plan/AltPlanDetailedList.jsp?gxjt_Not_keyCode='+gxjt_ic_keyCode+'&gxjt_Not_YEAR1='+$('#gxjt_icRA_YEAR1').combobox('getValue')+"&gxjt_Not_LQTYPE1="+$('#gxjt_icRA_LQTYPE1').val()+"&gxjt_Not_SYD1="+$('#gxjt_icRA_SYD1').combobox('getValue')+"&gxjt_Not_SYD2="+$('#gxjt_icRA_SYD1').combobox('getText'));
				gxjt_statu="2";
				//调用父页面方法，并把状态传过去
				window.parent.gxjt_statu(gxjt_statu);
			}
			else{//年度，录取类型，生源地为空，说明查询条件未选
				$('#gxjt_ZStype').dialog("open");
			}
		}
		else{
			alertMsg("请在培养安排明细中选择一条数据");
			return;
		}
	}
	
	
	
	/*
	 * 第三个流程实习班班主任流程
	 * 
	 * 
	 */
	if(iToolbar=="sxgl_print"){//确认按钮
		if($('#sxgl_icRA_SYD1').combobox('getValue')!='请选择'){//数据不为空的情况下
			sxgl_statu='2';
			if(sxgl_st=="1"||sxgl_st=='23'){//判断状态，1代表实习班班主任，23代表：新计划也跳转到培养协议并参数传递，参数传递过程中包括传送下拉框值对应的中文名
				location.href('<%=request.getContextPath()%>/form/practice/plan/UsePlanList.jsp?sxgl_icLC_SYD1='+$('#sxgl_icRA_SYD1').combobox('getValue')+"&sxgl_Not_SYD2="+$('#sxgl_icRA_SYD1').combobox('getText')+"&sxgl_statu="+sxgl_statu);
			}
			if(sxgl_st=="2"){
				location.href('<%=request.getContextPath()%>/form/practice/follow/PraFollowList.jsp?sxgl_icLC_SYD1='+$('#sxgl_icRA_SYD1').combobox('getValue')+"&sxgl_Not_SYD2="+$('#sxgl_icRA_SYD1').combobox('getText'));
			}
			if(sxgl_st=="4"){
				location.href('<%=request.getContextPath()%>/form/practice/collect/PraCollectListBJXS.jsp?sxgl_icLC_SYD1='+$('#sxgl_icRA_SYD1').combobox('getValue')+"&sxgl_Not_SYD2="+$('#sxgl_icRA_SYD1').combobox('getText'));
			}
			sxgl_icRA_SYD1=$('#sxgl_icRA_SYD1').combobox('getValue');
			//调用父页面方法，并把状态传过去
			window.parent.sxgl_statu(sxgl_statu);
			
			/*
			 * 下拉框中文名
			 */
		   sxgl_icRA_SYD2=$('#sxgl_icRA_SYD1').combobox('getText');//获取父页面的生源地
		}
		else{
			alertMsg("请先选择本次要操作的数据");
		}
	}
	if(iToolbar=="sxgl_sxap"||iToolbar=="sxgl_sxap1"||iToolbar=="sxgl_sxap2"){
		//alert(icRA_YEAR1+"============"+icRA_LQTYPE1+"================="+icRA_SYD1);
		sxgl_st="1";//判断dialog界面选择确定时，跳转哪个路径
		if(sxgl_icRA_SYD1!='null'){//班级不为空，说明查询条件已选，直接赋值跳转对应界面
			$('#sxgl_icRA_SYD1').combobox('setValue',sxgl_icRA_SYD1);	
			location.href('<%=request.getContextPath()%>/form/practice/plan/UsePlanList.jsp?sxgl_icLC_SYD1='+$('#sxgl_icRA_SYD1').combobox('getValue')+"&sxgl_Not_SYD2="+$('#sxgl_icRA_SYD1').combobox('getText'));
			sxgl_statu="2";
			//调用父页面方法，并把状态传过去
			window.parent.sxgl_statu(sxgl_statu);
		}
		else{//班级为空，说明查询条件未选
			$('#sxgl_ZStype').dialog("open");
		}
	}
	if(iToolbar=="sxgl_sxgz"||iToolbar=="sxgl_sxgz1"||iToolbar=="sxgl_sxgz2"){//招生录取	
		sxgl_st="2";//判断dialog界面选择确定时，跳转哪个路径
		if(sxgl_icRA_SYD1!='null'){//班级不为空，说明查询条件已选，直接赋值跳转对应界面
			$('#sxgl_icRA_SYD1').combobox('setValue',sxgl_icRA_SYD1);	
			location.href('<%=request.getContextPath()%>/form/practice/follow/PraFollowList.jsp?sxgl_icLC_SYD1='+$('#sxgl_icRA_SYD1').combobox('getValue')+"&sxgl_Not_SYD2="+$('#sxgl_icRA_SYD1').combobox('getText'));
			sxgl_statu="2";
			//调用父页面方法，并把状态传过去
			window.parent.sxgl_statu(sxgl_statu);
		}
		else{//班级为空，说明查询条件未选
			$('#sxgl_ZStype').dialog("open");
		}
	}
	if(iToolbar=="sxgl_sxgz_mx"||iToolbar=="sxgl_sxgz_mx1"||iToolbar=="sxgl_sxgz_mx2"){//通过iToolbar判断跳转页面
		if(sxgl_ic_keyCode!='null'&&sxgl_ic_keyCode!=''){
			sxgl_st="3";//判断dialog界面选择确定时，跳转哪个路径
			if(sxgl_icRA_SYD1!='null'){//班级不为空，说明查询条件已选，直接赋值跳转对应界面
				$('#sxgl_icRA_SYD1').combobox('setValue',sxgl_icRA_SYD1);	
				location.href('<%=request.getContextPath()%>/form/practice/follow/PraFollowDetailedList.jsp?sxgl_Not_keyCode='+sxgl_ic_keyCode+"&sxgl_Not_SYD1="+$('#sxgl_icRA_SYD1').combobox('getValue')+"&sxgl_Not_SYD2="+$('#sxgl_icRA_SYD1').combobox('getText'));
				sxgl_statu="2";
			//调用父页面方法，并把状态传过去
			window.parent.sxgl_statu(sxgl_statu);
			}
			else{//班级为空，说明查询条件未选
				$('#sxgl_ZStype').dialog("open");
			}
		}
		else{
			alertMsg("请在实习跟踪中选择一条数据");
			return;
		}
	}
	if(iToolbar=="sxgl_hz"||iToolbar=="sxgl_hz1"||iToolbar=="sxgl_hz2"){//招生录取	
		sxgl_st="4";//判断dialog界面选择确定时，跳转哪个路径
		if(sxgl_icRA_SYD1!='null'){//班级不为空，说明查询条件已选，直接赋值跳转对应界面
			$('#sxgl_icRA_SYD1').combobox('setValue',sxgl_icRA_SYD1);	
			location.href('<%=request.getContextPath()%>/form/practice/collect/PraCollectListBJXS.jsp?sxgl_icLC_SYD1='+$('#sxgl_icRA_SYD1').combobox('getValue')+"&sxgl_Not_SYD2="+$('#sxgl_icRA_SYD1').combobox('getText'));
			sxgl_statu="2";
			//调用父页面方法，并把状态传过去
			window.parent.sxgl_statu(sxgl_statu);
		}
		else{//年度，录取类型，生源地为空，说明查询条件未选
			$('#sxgl_ZStype').dialog("open");
		}
	}
	 

	if(iToolbar=="new_sxbbzr"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/practice/plan/UsePlanList.jsp');//实习班班主任安排表
	}
	if(iToolbar=="new_sxgz"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/practice/follow/PraFollowList.jsp');//实习跟踪
	}
	if(iToolbar=="new_yrdw"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/practice/collect/PraCollectListYRDW.jsp');//
	}
	if(iToolbar=="new_bjxs"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/practice/collect/PraCollectListBJXS.jsp');//实习汇总
	}
	if(iToolbar=="sswj"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/practice/file/FileManageList.jsp');//实习文件
	}
	if(iToolbar=="ssdj"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/practice/register/RegisterList.jsp');//实习生登记表
	}
	if(iToolbar=="fxqk"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/practice/return/ReturnList.jsp');//返校情况
	}
	if(iToolbar=="bytj"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/graduate/collect/GraCollectList.jsp');//毕业统计
	}
	if(iToolbar=="bygz"){//通过iToolbar判断跳转页面
	  	window.open('<%=request.getContextPath()%>/form/graduate/follow/GraFollowList.jsp');//毕业跟踪
	}
		
	if(iToolbar=="new"){//新计划
		st="23";//新计划状态号：‘23’
		//年度，录取类型，生源地数据重新加载
		setYearCombobox();
		setComboxValue();
		setComboxValue1();
		//清空历史查询条件
		icRA_YEAR1='null';
		icRA_LQTYPE1='null';
		icRA_SYD1='null';
		$('#ZStype').dialog("open");//dialog打开

	}
	if(iToolbar=="pyxy_new"){//新计划
		gxjt_st="23";//新计划状态号：‘23’
		gxjt_setComboxValue();//班级加载
		createTime();
		//清空历史查询条件
		gxjt_icRA_YEAR1='null';
		gxjt_icRA_LQTYPE1='null';
		gxjt_icRA_SYD1='null';
		$('#gxjt_ZStype').dialog("open");//dialog打开
	}
	if(iToolbar=="sxgl_new"){//新计划
		sxgl_st="23";//新计划状态号：‘23’
		sxgl_setComboxValue();//班级加载
		//清空历史查询条件
		sxgl_icRA_SYD1='null';
		$('#sxgl_ZStype').dialog("open");//dialog打开
	}

}

//第三个流程中的下一步按钮图标触发方法
function next_1(){
	//alert("123");
	document.getElementById("sswj").style.display="none";//隐藏
	document.getElementById("new_sxbbzr").style.display="none";//隐藏
	document.getElementById("ssdj").style.display="none";//隐藏
	document.getElementById("new_sxgz").style.display="none";//隐藏
	document.getElementById("fxqk").style.display="none";//隐藏
	document.getElementById("next_1").style.display="none";//隐藏
	
	document.getElementById("new_yrdw").style.display="";//
	document.getElementById("new_bjxs").style.display="";//
	document.getElementById("next_2").style.display="";//

}
//第三个流程中的上一步按钮图标触发方法
function next_2(){
	//alert("123");
	document.getElementById("sswj").style.display="";//
	document.getElementById("new_sxbbzr").style.display="";//
	document.getElementById("ssdj").style.display="";//
	document.getElementById("new_sxgz").style.display="";//
	document.getElementById("fxqk").style.display="";//
	document.getElementById("next_1").style.display="";//
	
	document.getElementById("new_yrdw").style.display="none";//隐藏
	document.getElementById("new_bjxs").style.display="none";//隐藏
	document.getElementById("next_2").style.display="none";//隐藏
}
</script>