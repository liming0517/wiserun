// auth.js

function close_window(frame)
{
	if(confirm("�Ƿ�����޸�?") == true)
	{
		//alert(frame.name);
		frame.location="./Svl_update_info";
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

function do_confirm_user(tag,warning_message,checkbox_tag,user_state_tag)
{
	var object = eval("document.all."+tag+"");
	var object_id = eval("document.all.ID");
	var object_checkbox = eval("document.all."+checkbox_tag+"");
	var object_user_state = eval("document.all."+user_state_tag+"");
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
				//alert(object.name+"="+object.value);
				//alert(object_id.name+"="+object_id.value);
			}
			if(object_checkbox.checked == true)
			{
				object_user_state.value = "Y";
			}
			else
			{
				object_user_state.value = "N";
			}
			//alert(object_user_state.value);
			return true;
		}
		else
		{
			return false;
		}
	}
}
//���Ӫҵ������ͷֹ�˾����
/*
function do_confirm_user(tag,warning_message,checkbox_tag,user_state_tag)
{
	var object = eval("document.all."+tag+"");
	var object_id = eval("document.all.ID");
	var object_select_so_id = eval("document.all.USER_SO_ID");
	var object_select_branch_id = eval("document.all.USER_BRANCH_ID");
	var object_checkbox = eval("document.all."+checkbox_tag+"");
	var object_user_state = eval("document.all."+user_state_tag+"");
	if(object.value == "")
	{
		alert(warning_message);
		object.focus();
		return false;
	}
	else
	{
		if(object_select_so_id.value == "")
		{
			alert("��ѡ��Ӫҵ������!");
			object_select_so_id.focus();
			return false;
		}
		else
		{
			if(object_select_branch_id.value == "")
			{
				alert("��ѡ��ֹ�˾����!");
				object_select_branch_id.focus();
				return false;
			}
			else
			{
				if(confirm("�Ƿ��ύ�����޸�?") == true)
				{
					if(object_id.value != object.value)
					{
						object_id.value = object.value;
						//alert(object.name+"="+object.value);
						//alert(object_id.name+"="+object_id.value);
					}
					if(object_checkbox.checked == true)
					{
						object_user_state.value = "Y";
					}
					else
					{
						object_user_state.value = "N";
					}
					//alert(object_user_state.value);
					return true;
				}
				else
				{
					return false;
				}
			}
		}
	}
}
*/