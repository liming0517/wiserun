// WorkFlowFlowFineSetting.js
//�������趨ǰ̨JS
//HADES
//2005-4-15


//������ɫ


var TrbgColor = new Array();
TrbgColor[0]="#edd9b6";
TrbgColor[1]="#27cbd8";



function setBgColor(){
//�趨 �����ĳ�еı���ɫ
//�ж���һ���Ƿ�Ϊ�죬�����ǣ�����Ϊ�죬����Ϊ��

	//if (objTr.rowIndex<4){
	    //ͷһ��
	      //if (objTr.parentNode.rows(objTr.rowIndex-1).bgColor==TrbgColor[0]){
	//	     objTr.bgColor=TrbgColor[0];
		 // }else{
		 //    objTr.bgColor=TrbgColor[1];  
		 // }   
	   
//	}else{
            //���ò�����ɫ icTrFlowFine 
		      var obj=document.getElementsByName("icTrFlowFine");
		      var tbArrWorkFlow = document.getElementsByName("icTBWorkflow");
  			  var tbArrRelation = document.getElementsByName("icTBRelation");
  			  //alert(tbArrWorkFlow[i].rows);
  			  
  			  
			      for (var i=0;i<obj.length;i++){
			          obj[i].bgColor=TrbgColor[i%2];
			        //������صĲ���������ɫ
			        
					       try{
						         for (var j=1;j<tbArrWorkFlow[i].rows.length ;j++){
						             //�����к���
						             tbArrWorkFlow[i].rows[j].bgColor=obj[i].bgColor;
						         }
					        }catch(e) {
				       
				            }  
			        
			        //������صĽڵ��ϵ��ɫ
			       //if (tbArrRelation[i].rows!=null){
				        try{
					         for (var j=1;j<tbArrRelation[i].rows.length ;j++){
					             //�����к���
					             tbArrRelation[i].rows[j].bgColor=obj[i].bgColor;
					         }
			     		}catch(e) {
				           
				        }  
		          }
		       
		     
		
		
		  
//	}


}

function showdata(indexNo){
//��ʾ�б��е�����
	var obj;
	var sTmp;
	
	obj=eval("document.form1.arrSerialNo"+indexNo +"");
	document.form1.icSerialNo.value=obj.value;
	
	obj=eval("document.form1.arrModuleName"+indexNo +"" );
	document.form1.icModuleName.value=obj.value;
	
    obj=eval("document.form1.arrModuleCode"+indexNo +"" );
	document.form1.icModuleCode.value=obj.value;

	obj=eval("document.form1.arrIsNeed"+indexNo +"" );
	sTmp=obj.value;
	if (sTmp=="1"){
	  document.form1.icIsNeed(0).checked=1;
	}else{
	  document.form1.icIsNeed(1).checked=1;
	}
	
	obj=eval("document.form1.arrMsg"+indexNo +"" );
	document.form1.icMsg.value=obj.value;
	
	obj=eval("document.form1.arrInceptCode"+indexNo +"" );
	document.form1.icInceptCode.value=obj.value;
	
 }
 
 function showDetail(index){
 //��ʾ��ϸ���
 
	var obj = eval("document.all.icTrWorkflow"+index);
	var obj2 = eval("document.all.icTrRelation"+index);
//	var objbut = document.getElementsByName("button");
//	var objb = objbut[index];
	
	var objb =  eval("document.all.button"+index);
	//alert(obj.style.display);
	if (objb.value == " +"){
		obj.style.display = "block";
		obj2.style.display = "block";
		objb.value = " -";
	}else{
		obj.style.display = "none";
		obj2.style.display = "none";
		objb.value = " +";
	}
 }

 
function SumFlowFine(){
  //alert("d");
  
   //���¼��� ÿһ�� ��������¼���ͽڵ���
  
  //ѭ�����в��裬
  //������������=����������������������-1��/3
   var obj = eval("document.all.icTBFlowFine");
   var j;
   j=(obj.rows.length-1)/3 ;
   var inputArrWorkFlow = document.getElementsByName("arrCountWorkFlow");
   var inputArrRelation = document.getElementsByName("arrCountRelation");
   
   var tbArrWorkFlow = document.getElementsByName("icTBWorkflow");
   var tbArrRelation = document.getElementsByName("icTBRelation");
   //������ ��һ��ͳ������أ�����˵����һ���������ͽڵ��ϵ���
  for (var i=0;i<inputArrWorkFlow.length;i++){
     // alert(tbArrRelation[i].rows.length);  
     // alert(tbArrRelation[i].rows.length);
    
		//�Զ���һ������
		if (tbArrWorkFlow[i].rows.length==1){
			addWorkFlow(i);
		}
		
		//�Զ���һ�нڵ��ϵ
		if (tbArrRelation[i].rows.length==1){
			addRelation(i);	
		}
	
      inputArrWorkFlow[i].value=tbArrWorkFlow[i].rows.length-1;
      
      
      
      inputArrRelation[i].value=tbArrRelation[i].rows.length-1;
    //  alert(inputArrWorkFlow[i].value);   
     // alert(document.all.arrCountRelation[i].value);  
      
   }
   //��ȡ����е�HTML����
   document.all.htmlcode.value= document.all.icTBFlowFine.innerHTML;
   
}  
  

function addRow(){
//��ӹ���������
//ÿ�������������Ϊ3��,��һ���ǲ��豾��,�ڶ����ǲ�����������,�������ǲ���֮��Ľڵ��ϵ
//��������������������=3*������������+1 (������)

  var obj = eval("document.all.icTBFlowFine");
  var j;
  //alert(obj.rows.length);  ���ڼ�¼���ܱ�ɾ�������jӦ�ø��� button Ԫ�غ���� ���ݶ������������button��Ϊbutton10����ôj=10+1=11
  j=(obj.rows.length-1)/3 ; //�±��0��ʼ (ͷһ��Ϊ����) ����Ҫ��INSERTROWǰд

  try{
    var i;

    for(i=j+5;i>0;i--){
       //Ϊ���Ч�ʣ�ֻ��50���ڿ��ܳ��ֵĴ�����о��� ���������ٶȿ�
       var objbu =eval("document.all.button"+i);
//    alert(typeof(objbu));
       if (typeof(objbu)!="undefined"){
          //�����ť������ i> j�����j���˳�
          if (i>=j){
             j=i+1;
          }

          break;
       }
      // alert("i===="+i);
      // alert("newJ=="+j);
    }
   
      
    
  }catch (e){
    //���������ʹ��ԭ����j
     alert("error");
  }
  //alert("newJA=="+j);  



  var objTr=obj.insertRow();
  
  
  //alert(j);
  objTr.CLASS ="fieldbg";
  objTr.id="icTrFlowFine";
  objTr.name="icTrFlowFine";
  
  
  //10
  objTr.insertCell();
  objTr.insertCell();
  objTr.insertCell();
  objTr.insertCell();
  objTr.insertCell();
  objTr.insertCell();
  objTr.insertCell();
  objTr.insertCell();
  objTr.insertCell();
  objTr.insertCell();
  ////���岿��
	var sObj;
    sObj="<input type=\"button\" name=\"button"+j+"\" id=\"button"+j+"\"  value=\" +\" onclick=\"showDetail("+j+");\">";
	sObj=sObj+" <input type=\"button\" value=\"DEL\" name=\"delbutton"+j+"\" id=\"delbutton"+j+"\" onclick=\"delGroup(this.parentNode.parentNode,icTrWorkflow"+j+",icTrRelation"+j+");\" >";
    objTr.cells(0).innerHTML=sObj;
	//�������дһ��TD
	sObj="<TD><input style=\"width:100%\" type='text' name=arrSerialNo id=arrSerialNo></td>";
	objTr.cells(1).innerHTML=sObj;
	sObj="<TD><input style=\"width:100%\" type='text' name=arrTitle id=arrTitle></td>";
	objTr.cells(2).innerHTML=sObj;
	///
	  sObj=""; // "<TD><input style=\"width:100%\" type='text' name=arrIsNeed id=arrIsNeed></td>";
	  sObj=sObj+"<TD  ><SELECT id=name=\"arrIsNeed\" name=\"arrIsNeed\">";
	  sObj=sObj+"<OPTION value=\"1\" SELECTED>��</OPTION>";
	  sObj=sObj+"<OPTION value=\"0\" >��</OPTION>";
	  sObj=sObj+"</SELECT></TD>";   
	objTr.cells(3).innerHTML=sObj;
	
	sObj="<TD><input style=\"width:100%\" type='text' name=arrModuleName id=arrModuleName></td>";
	objTr.cells(4).innerHTML=sObj;
	///
	sObj="<TD><input style=\"width:100%\" type='text' name=arrModuleCode id=arrModuleCode></td>";
	objTr.cells(5).innerHTML=sObj;
	
	sObj="<TD><input style=\"width:100%\" type='text' name=arrInceptCode id=arrInceptCode></td>";
	objTr.cells(6).innerHTML=sObj;
	
	 sObj=""; // "<TD><input style=\"width:100%\" type='text' name=arrIsNeed id=arrIsNeed></td>";
	  sObj=sObj+"<TD  ><SELECT id=name=\"arrCanModify\" name=\"arrCanModify\">";
	  sObj=sObj+"<OPTION value=\"1\" SELECTED>��</OPTION>";
	  sObj=sObj+"<OPTION value=\"0\" >��</OPTION>";
 	 sObj=sObj+"</SELECT></TD>";   
	objTr.cells(7).innerHTML=sObj;
	
	
	
	sObj="<TD><input style=\"width:100%\" type='text' name=arrMsg id=arrMsg>";
	sObj=sObj+"<input type=hidden name=arrCountWorkFlow id=arrCountWorkFlow >";
	sObj=sObj+"<input type=hidden name=arrCountRelation id=arrCountRelation >"+"</td>";
	objTr.cells(8).innerHTML=sObj;//���һ�б��� �ò��� �������� �ͽڵ��ϵ��¼�� �ڴ���ǰ���¼���
	
    sObj="<TD><input style=\"width:100%\" type='text' name=arrSvlName  id=arrSvlName></td> " ;
	objTr.cells(9).innerHTML=sObj;
											      
	
	//��������
	//objTr=null;
	objTr=obj.insertRow();
	objTr.id="icTrWorkflow"+j;
	objTr.style.display = "none";
	//objTr.name="icTrWorkflow"+j;
	
	
	objTr.CLASS ="fieldbg";
	//sObj="<TR name=icTrWorkflow"+j+" id=icTrWorkflow"+j+"  style=\"display:none\" class=\"tableline\" >";
	objTr.insertCell();
	objTr.cells(0).colSpan =8;
//	sObj=sObj+"<TD colspan=7>";  
	sObj="<!--�������� ����� �� -->";
	sObj=sObj+"<TABLE name=\"icTBWorkflow\" id=\"icTBWorkflow\" class=\"tablestyle\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" >";
	sObj=sObj+"<TBODY>";
	sObj=sObj+"<TR class=\"fieldbg\">";
	sObj=sObj+"<TD>" ;
// 	sObj=sObj+"<input type=\"button\" value=\"���������\" name=\"addWorkFlowRow\" onclick=\"addWorkFlow("+j+");\" >";
  	sObj=sObj+"<input type=\"button\" value=\"���������\" name=\"addWorkFlowRow\" onclick=\"addWorkFlowByButton(this);\" >";
  	sObj=sObj+"</TD>";
	sObj=sObj+"<TD width=\"50%\" align=\"center\">�߼�����</TD>";
	sObj=sObj+"<TD width=\"10%\" align=\"center\">�߼���ϵ</TD>";
	sObj=sObj+"</TR>";
	sObj=sObj+"</TBODY>";									
	sObj=sObj+"</TABLE>";
	//sObj=sObj+"</TD>";
	//sObj=sObj+"</TR>";
	objTr.cells(0).innerHTML=sObj;
	
	//��ϵ����
	objTr=obj.insertRow();
	objTr.id="icTrRelation"+j;
	objTr.style.display = "none";
	//objTr.name="icTrRelation"+j;
	
	
	objTr.CLASS ="fieldbg";
	objTr.insertCell();
	objTr.cells(0).colSpan =8;
	sObj="<!--����ڵ��ϵ �����  ��-->";
	sObj=sObj+"<TABLE name=\"icTBRelation\" id=\"icTBRelation\" class=\"tablestyle\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" >";
	sObj=sObj+"<TBODY>";
	sObj=sObj+"<TR class=\"fieldbg\">";
	sObj=sObj+"<TD width=\"30%\">" ;
// 	sObj=sObj+"<input type=\"button\" value=\"��ӽڵ��ϵ\" name=\"addWorkFlowRow\" onclick=\"addRelation("+j+");\" >";
 	sObj=sObj+"<input type=\"button\" value=\"��ӽڵ��ϵ\" name=\"addRelationRow\" onclick=\"addRelationByButton(this);\" >";
  	sObj=sObj+"</TD>";
	sObj=sObj+"<TD width=\"20%\" align=\"center\">���ڵ�ģ����</TD>";
	sObj=sObj+"<TD width=\"40%\" align=\"center\">�߼�����</TD>";
	sObj=sObj+"<TD width=\"10%\" align=\"center\">�߼���ϵ</TD>";
	sObj=sObj+"</TR>";
	sObj=sObj+"</TBODY>";									
	sObj=sObj+"</TABLE>";							
	objTr.cells(0).innerHTML=sObj;							     
	
	
	
	//������ɫ
	setBgColor();	
	//��������ͽڵ��ϵ
	//addWorkFlow(j);
	//addRelation(j);
	 var objTmp ;
	 objTmp=document.getElementsByName("addWorkFlowRow");
     addWorkFlowByButton(objTmp[objTmp.length-1]);
	 
 	 objTmp=document.getElementsByName("addRelationRow");
     addRelationByButton(objTmp[objTmp.length-1]);
	
	//������������1��ʱ����ǰ����������һ������ +1 
	 var inputArrSerialNo  = document.getElementsByName("arrSerialNo");
	 if (inputArrSerialNo.length>1){
	    //��ǰ����������һ������ +1 
	 	inputArrSerialNo[inputArrSerialNo.length-1].value=parseInt( inputArrSerialNo[inputArrSerialNo.length-2].value) + 1;
	 }else{
	    inputArrSerialNo[inputArrSerialNo.length-1].value=1;
	 }
											
} 
////////////////////////////////////////////////////////////
/**
�����������������
*/
function addWorkFlowClass(obj){
 var j;
  j=obj.rows.length-1; //�±��0��ʼ
  var objTr=obj.insertRow();
  objTr.CLASS ="fieldbg";

 
  objTr.insertCell();
  objTr.insertCell();
  objTr.insertCell();

	var sObj;
//	alert(obj.innerHTML);
	sObj="<input type=\"button\" value=\"ɾ��\" name=\"delWorkFlowRow\" onclick=\"delRow(this.parentNode.parentNode);\" >";
    objTr.cells(0).innerHTML=sObj;
	//�������дһ��TD
	sObj="<input style=\"width:100%\" type='text' name=arrRelationVal id=arrRelationVal>";
	objTr.cells(1).innerHTML=sObj;
	
	sObj=""; //"<input style=\"width:100%\" type='text' name=arrOper id=arrOper>";
	sObj=sObj+"<TD  ><SELECT id=\"arrOper\" name=\"arrOper\">";
    sObj=sObj+"<OPTION value=\"AND\" SELECTED>AND</OPTION>";
    sObj=sObj+"<OPTION value=\"OR\" >OR</OPTION>";
    sObj=sObj+"</SELECT></TD>";     
    
	objTr.cells(2).innerHTML=sObj;
	//obj.innerHTML=sObj;
	
	//������ɫ
	setBgColor();	
}
/**
 * ���������
 */
function addWorkFlowByButton(objBut){
//Ϊ�˷�ֹ��̬ɾ�����޷�����У�����������������
    var obj;

      //Ϊһ���������ڵ�����һ���������  ��TD TR TBODY -��TABLE
  obj=objBut.parentNode.parentNode.parentNode.parentNode;
  addWorkFlowClass(obj);
} 
 
/**
 * ���������
 */
function addWorkFlow(index){
//��ӹ���������
//һ������һ��
//��������������=��������+1(����)
//index --�������ڵ�����


  //Ϊһ���������ڵ�����һ���������
  var objtb = document.getElementsByName("icTBWorkflow");
  var obj = objtb[index];
 
  addWorkFlowClass(obj);
}



////////////////////////////////////////////////////////////



/**
����½ڵ��ϵ��������
*/
function addRelationClass(obj){
//  var obj = eval("document.all.icTBRelation"+index);
  var j;
  j=obj.rows.length-1; //�±��0��ʼ
  var objTr=obj.insertRow();

 // objTr.id="icTrRelation"+index;
 // objTr.name="icTrRelation"+index;
 // objTr.STYLE =obj.rows(0).STYLE;

  
  objTr.insertCell();
  objTr.insertCell();
  objTr.insertCell();
  objTr.insertCell();
	var sObj;
	

	sObj="<input type=\"button\" value=\"ɾ��\" name=\"delRelationRow\" onclick=\"delRow(this.parentNode.parentNode);\" >";
    objTr.cells(0).innerHTML=sObj;
	sObj="<TD><input style=\"width:100%\" type='text' name=arrR_FatherModuleCode id=arrR_FatherModuleCode</td>";
    objTr.cells(1).innerHTML=sObj;
	//�������дһ��TD
	sObj="<TD><input style=\"width:100%\" type='text' name=arrR_RelationVal id=arrR_RelationVal</td>";
	objTr.cells(2).innerHTML=sObj;
	// "<TD><input style=\"width:100%\" type='text' name=arrR_Oper id=arrR_Oper</td>";
	sObj="";   
	sObj=sObj+"<TD   ><SELECT id=\"arrR_Oper\" name=\"arrR_Oper\">";
    sObj=sObj+"<OPTION value=\"AND\" SELECTED>AND</OPTION>";
    sObj=sObj+"<OPTION value=\"OR\" >OR</OPTION>";
    sObj=sObj+"</SELECT></TD>";       
	
	objTr.cells(3).innerHTML=sObj;
	//obj.innerHTML=sObj;
	
	//������ɫ
	setBgColor();	
	//������������1��ʱ����ǰ���ڵ���Ӧ������һ����ģ����
	 var inputArrModuleCode  = document.getElementsByName("arrModuleCode");
 	 var inputArrR_FatherModuleCode  = document.getElementsByName("arrR_FatherModuleCode");
 	// alert(inputArrModuleCode.length);
	 if (inputArrModuleCode.length>1){
	    //��ǰ���ڵ���Ӧ������һ����ģ����
	   // alert("Start");
	 	inputArrR_FatherModuleCode[inputArrR_FatherModuleCode.length-1].value=inputArrModuleCode[inputArrModuleCode.length-2].value;
	 
	 }
}

/**
 * ����½ӵ��ϵ
 */
function addRelationByButton(objBut){
//Ϊ�˷�ֹ��̬ɾ�����޷�����У�����������������
    var obj;

      //Ϊһ���������ڵ�����һ���������  ��TD TR TBODY -��TABLE
  obj=objBut.parentNode.parentNode.parentNode.parentNode;
  addRelationClass(obj);
} 

/**
 * ����½ӵ��ϵ
 */
function addRelation(index){
//��ӹ������ڵ��ϵ
//һ����ϵһ��
//����������=��ϵ����+1(����)
//index --�������ڵ�����


  //Ϊһ���������ڵ�����һ�нڵ��ϵ
  var objtb = document.getElementsByName("icTBRelation");
  var obj = objtb[index];
   addRelationClass(obj);
		     
  			      
}
////////////////////////////////////////////////////////////

function delRow(objTr){
//ɾ����
//objTr --�ж���
//alert(objTr.innerHTML);
//alert(obj1.parentNode.parentNode.innerHTML);
objTr.removeNode(true);
}

/**
 * ��ɾ��һ������ʱ���丽�����������ͽڵ��ϵ��ҲҪɾ��[��ɾ��3�У�������һ��]
 */
function delGroup(objTr,obj1,obj2){
	objTr.removeNode(true);
	obj1.removeNode(true);
	obj2.removeNode(true);
}

