//---------------------------------------���ֵ�ģ����֤
function VerifierIncome(paramForm,totalrownums)
  {
    if (isNaN(paramForm.G_f_Total_Num.value)) 
	  {	
		alert("�ܼ�����������ֵ��");
		paramForm.G_f_Total_Num.select();
		return false;
      }
	if ((paramForm.TotalRow.value)=="")
		  {	
			alert("����Ҫ���һ����Ʒ");
			return false;
		  }	
    if(paramForm.G_v_Bargin_Num.value=="") 
	    {   //2003/6/7  ��ͬ�ŷǱ���    
		//	alert("����ѡ��һ����ͬ");
		//	window.open("","popupnav","top=150,left=220,width=310,height=310,resizable=0").location.href ="../common/Bargin_INFO_cx.asp"
		//	return false;
	    }
	if(paramForm.TotalRow.value=="1")
	   if(paramForm.Goods_Name1.value=="") 
	    {    
			alert("����Ҫѡ��һ����Ʒ");
			window.open("","popupnav","top=150,left=220,width=310,height=310,resizable=0").location.href ="../common/GOODS_INFO_cx.asp?rowNum=1"
			return false;
	    }
	if(isNaN(paramForm.TotalCase.value) && paramForm.TotalCase.value!="")
      {
        alert("��������������ֵ��");
        paramForm.TotalCase.select();
        return false;
      }
    
    if(isNaN(paramForm.TotalAW.value) && paramForm.TotalAW.value!="")
      {
        alert("��ë�ر�������ֵ��");
        paramForm.TotalAW.select();
        return false;
      }
    
	for(i=1;i<=totalRownums;i++)
	  {
	    //alert(document.all.item("Goods_NW" + parseInt(i)).value + "->" + i);
	    //alert(isNaN(document.all.item("Goods_NW" + parseInt(i)).value));
	    if(isNaN(parseInt(document.all.item("Goods_QTY" + parseInt(i)).value))||document.all.item("Goods_QTY" + parseInt(i)).value==""||parseInt(document.all.item("Goods_QTY" + parseInt(i)).value)==0)
	      {
	        alert("��" + i + "����Ʒ������������һ����Ϊ�������");
	        document.all.item("Goods_QTY" + parseInt(i)).select();
	        return false;
	      }
	    /*if(isNaN(parseInt(document.all.item("Goods_JH" + parseInt(i)).value))||document.all.item("Goods_JH" + parseInt(i)).value==""||parseInt(document.all.item("Goods_JH" + parseInt(i)).value)==0)
	      {
	        //alert(document.all.item("Goods_JH" + parseInt(i).value));
	        alert("��" + i + "����Ʒ�ļ��ű�����һ����Ϊ�������");
	        document.all.item("Goods_JH" + parseInt(i)).select();
	        return false;
	      }*/
	      
	      if(isNaN(document.all.item("Goods_NW" + parseInt(i)).value)||trim(document.all.item("Goods_NW" + parseInt(i)).value)=="")
	      {
	        alert("��" + i + "����Ʒ�ľ��ر�����һ����Ϊ�������");
	        document.all.item("Goods_NW" + parseInt(i)).select();
	        return false;
	      }
	      
            if(document.all.item("Goods_JH" + parseInt(i)).value=="")
	      {
	        //alert(document.all.item("Goods_JH" + parseInt(i).value));
	        alert("��" + i + "����Ʒ�ļ��Ų���Ϊ�գ�");
	        document.all.item("Goods_JH" + parseInt(i)).select();
	        return false;
	      }
    }
    SubmitData(paramForm); 
  }
//------------------------------------------------

//------------------------------------------------
function SubmitData(paramForm)
  {
    paramForm.submit();
  }
function trim(str)
{
	var reg=/ /ig;  //������ʽ
	return str.replace(reg,"");
}
