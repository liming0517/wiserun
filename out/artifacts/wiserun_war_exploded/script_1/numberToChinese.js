/*
 * ������ת��Ϊ���Ĵ�д��ʽ
 * Joakim
 */
function setFormatCC(n) {  //����дת������
    if (!/^(0|[1-9]\d*)(\.\d+)?$/.test(n))
        return "���ݷǷ�";
    var unit = "ǧ��ʰ��ǧ��ʰ��ǧ��ʰԪ�Ƿ�"
    var str = "";
    n += "00";
    var p = n.indexOf('.');
    if (p >= 0)
        n = n.substring(0, p) + n.substr(p+1, 2);
    unit = unit.substr(unit.length - n.length);
    for (var i=0; i < n.length; i++)
        str += '��Ҽ��������½��ƾ�'.charAt(n.charAt(i)) + unit.charAt(i);
    var returnVal =  str.replace(/��(ǧ|��|ʰ|��)/g, "��").replace(/(��)+/g, "��").replace(/��(��|��|Ԫ)/g, "$1").replace(/(��)��|Ҽ(ʰ)/g, "$1$2").replace(/^Ԫ��?|���/g, "").replace(/Ԫ$/g, "Ԫ��");
    //alert(returnVal);
    return returnVal;
}

/**
function formatCC(p_amount){
     var rtstr = "",tmpstr = "";
     var knum;
     var tmpint;
     if(p_amount > 999999999999.99)
       return "����̫���޷�ת����";
     if(p_amount / 10000 >= 1){
       knum = p_amount % 10000;
       p_amount = (p_amount - knum)/10000;

       tmpstr = formatCC(p_amount);
       if(tmpstr != null && tmpstr.length != 0)
         rtstr += tmpstr + "��";

       rtstr += formatCC(knum);
     }else{
       tmpint = parseInt(p_amount / 1000);
       if(tmpint >= 1)
         rtstr += numToCC(tmpint)+ "Ǫ";
       else{
         if(rtstr.length == 0)
           rtstr += "��";
       }

       p_amount = p_amount - tmpint * 1000;
       tmpint = parseInt(p_amount / 100);
       if(tmpint >= 1)
         rtstr += numToCC(tmpint)+ "��";
       else{ 
         if(rtstr.length == 0 || !(rtstr.substring(rtstr.length -1 ,rtstr.length) == "��")){
           rtstr += "��";
     }
       }
       p_amount = p_amount - tmpint * 100;
       tmpint = parseInt(p_amount / 10);
       if(tmpint >= 1)
         rtstr += numToCC(tmpint)+ "ʰ";
       else{   
         if(rtstr.length == 0 || !(rtstr.substring(rtstr.length -1 ,rtstr.length) == "��"))
           rtstr += "��";
       }

       p_amount = p_amount - tmpint * 10;
       tmpint = parseInt(p_amount / 1);
       if(tmpint >= 1)
         rtstr += numToCC(tmpint);

       p_amount = p_amount - tmpint;
       if(p_amount > 0){
     if(rtstr.indexOf("��") == rtstr.length - 1)
           rtstr = rtstr.substring(0,rtstr.length - 1);
         rtstr += "Բ";
    }
       if(p_amount > 0.009){

         p_amount = p_amount * 100;
         tmpint = parseInt(p_amount / 10);
         if(tmpint >= 1)
           rtstr += numToCC(tmpint)+ "��";
         p_amount = p_amount - tmpint * 10;
         tmpint = parseInt(p_amount / 1);
         if(p_amount - tmpint > 0.5)
           tmpint++;
         if(tmpint >= 1)
           rtstr += numToCC(tmpint) + "��";
       }
     }
     return rtstr;
   }
function setFormatCC(p_amount){
     var amount=0;
     var rtstr;
     amount=parseFloat(p_amount);
     amount += 0.0001;
     rtstr = formatCC(amount);
     if(rtstr.lastIndexOf("��") != rtstr.indexOf("��")){
       rtstr = rtstr.substring(0,rtstr.indexOf("��"))+"��"+rtstr.substring(rtstr.indexOf("��")+1,rtstr.length);
     }
     if(rtstr.indexOf("��") == 0)
       rtstr = rtstr.substring(1,rtstr.length);
     rtstr += "��";
     return rtstr;
   }
function numToCC(i){
     switch(i){
       case 1 : return "Ҽ";
       case 2 : return "��";
       case 3 : return "��";
       case 4 : return "��";
       case 5 : return "��";
       case 6 : return "½";
       case 7 : return "��";
       case 8 : return "��";
       case 9 : return "��";
       case 0 : return "��";
       default: return "";
     }
} */