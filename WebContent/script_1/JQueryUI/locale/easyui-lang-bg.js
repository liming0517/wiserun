if ($.fn.pagination){
	$.fn.pagination.defaults.beforePageText = '�����ѧߧڧ��';
	$.fn.pagination.defaults.afterPageText = '��� {pages}';
	$.fn.pagination.defaults.displayMsg = '����ܧѧ٧ѧߧ� {from} �٧� {to} ��� {total} ����է�ܧ��';
}
if ($.fn.datagrid){
	$.fn.datagrid.defaults.loadMsg = '���ҧ�ѧҧ��ܧ�, �ާ�ݧ� �ڧ٧�ѧܧѧۧ�� ...';
}
if ($.messager){
	$.messager.defaults.ok = '����ҧ��';
	$.messager.defaults.cancel = '���ѧէ�ѧ�ܧӧѧ�';
}
if ($.fn.validatebox){
	$.fn.validatebox.defaults.missingMessage = '����ӧ� ���ݧ� �� �٧ѧէ�ݧاڧ�֧ݧߧ�.';
	$.fn.validatebox.defaults.rules.email.message = '����ݧ�, �ӧ�ӧ֧է֧�� �ӧѧݧڧէ֧� �ڧާ֧ۧ� �ѧէ�֧�.';
	$.fn.validatebox.defaults.rules.url.message = '����ݧ� �ӧ�ӧ֧է֧�� �ӧѧݧڧէ֧� URL.';
	$.fn.validatebox.defaults.rules.length.message = '����ݧ�, �ӧ�ӧ֧է֧�� ����ۧߧ��� �ާ֧اէ� {0} �� {1}.';
}
if ($.fn.numberbox){
	$.fn.numberbox.defaults.missingMessage = '����ӧ� ���ݧ� �� �٧ѧէ�ݧاڧ�֧ݧߧ�.';
}
if ($.fn.combobox){
	$.fn.combobox.defaults.missingMessage = '����ӧ� ���ݧ� �� �٧ѧէ�ݧاڧ�֧ݧߧ�.';
}
if ($.fn.combotree){
	$.fn.combotree.defaults.missingMessage = '����ӧ� ���ݧ� �� �٧ѧէ�ݧاڧ�֧ݧߧ�.';
}
if ($.fn.calendar){
	$.fn.calendar.defaults.weeks = ['S','M','T','W','T','F','S'];
	$.fn.calendar.defaults.months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
}
if ($.fn.datebox){
	$.fn.datebox.defaults.currentText = '���ߧ֧�';
	$.fn.datebox.defaults.closeText = '���ݧڧ٧�';
	$.fn.datebox.defaults.okText = '����ҧ��';
	$.fn.datebox.defaults.missingMessage = '����ӧ� ���ݧ� �� �٧ѧէ�ݧاڧ�֧ݧߧ�.';
}
if ($.fn.datetimebox && $.fn.datebox){
	$.extend($.fn.datetimebox.defaults,{
		currentText: $.fn.datebox.defaults.currentText,
		closeText: $.fn.datebox.defaults.closeText,
		okText: $.fn.datebox.defaults.okText,
		missingMessage: $.fn.datebox.defaults.missingMessage
	});
}
