// sysconfig_info.js

function close_window(frame)
{
	if(confirm("�Ƿ�����޸�?") == true)
	{
		//alert(frame.name);
		frame.location="./Svl_update_sysconfig_info";
	}
}

function do_confirm(tag,warning_message)
{
	var object = eval("document.all."+tag+"");
	var object_id = eval("document.all.ID");
	if(object.value == "")
	{
		alert(warning_message);
		object.focus();
		return false;
	}
	else
	{
		if(confirm("�Ƿ��ύ�����޸�?") == true)
		{
			if(object_id.value != object.value)
			{
				object_id.value = object.value;
			}
			return true;
		}
		else
		{
			return false;
		}
	}
}

function do_confirm_all(type)
{
	var list_UT = new Array(["BRANCH_ID","�ֹ�˾�����ѡ!"],["SO_ID","Ӫҵ�������ѡ!"],["COM_TIME","һ�㷢�͵��ϴ�ʱ���趨����!"]);
	
	var list_SC = new Array(["BRANCH_ID","�ֹ�˾�����ѡ!"],["SO_ID","Ӫ�ܴ������ѡ!"],["HO_PATH","�ܹ�˾·������!"],["BRANCH_PATH","�ֹ�˾·������!"],["IMAGE_PATH","Ӱ����·������!"],["IMAGE_BACK","Ӱ�񱸷�·������!"],["COM_FREQ","�ϴ�Ƶ���趨����!"]);
	
	var list_DS = new Array(["DI_ID","ҵ��֤����������!"],["DI_SPLIT_ID","�и��ĵ�֤�������!"]);

	var object;
	var list_id;

	if(type == "UT")
	{
		for(var i = 0;i < list_UT.length;i++)
		{
			object = eval("document.all."+list_UT[i][0]+"");
			if(object.value == "")
			{
				alert(list_UT[i][1]);
				object.focus();
				return false;
			}
		}
		if(confirm("�Ƿ��ύ�����޸�?") == true)
		{
			/*
			list_id = eval("document.all.ID");
			for(var i = 0;i < list_UT.length;i++)
			{
				object = eval("document.all."+list_UT[i][0]+"");
				list_id[i].value = object.value;
			}
			*/
			return true;
		}
		else
		{
			return false;
		}
	}
	else
	{
		if(type == "SC")
		{
			for(var i = 0;i < list_SC.length;i++)
			{
				object = eval("document.all."+list_SC[i][0]+"");
				if(object.value == "")
				{
					alert(list_SC[i][1]);
					object.focus();
					return false;
				}
			}
			if(confirm("�Ƿ��ύ�����޸�?") == true)
			{
				/*
				list_id = eval("document.all.ID");
				for(var i = 0;i < list_UT.length;i++)
				{
					object = eval("document.all."+list_UT[i][0]+"");
					list_id[i].value = object.value;
				}
				*/
				return true;
			}
			else
			{
				return false;
			}
		}
		else//TYPE = "DS"
		{
			for(var i = 0;i < list_DS.length;i++)
			{
				object = eval("document.all."+list_DS[i][0]+"");
				if(object.value == "")
				{
					alert(list_DS[i][1]);
					object.focus();
					return false;
				}
			}
			if(confirm("�Ƿ��ύ�����޸�?") == true)
			{
				/*
				list_id = eval("document.all.ID");
				for(var i = 0;i < list_UT.length;i++)
				{
					object = eval("document.all."+list_UT[i][0]+"");
					list_id[i].value = object.value;
				}
				*/
				return true;
			}
			else
			{
				return false;
			}
		}
	}
}