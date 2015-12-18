<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="ext-all.js"></script>
<script type="text/javascript" src="bootstrap.js"></script>
<link href="ext-all.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ext-lang-zh_CN.js"></script>
</head>

<body>
	<script type="text/javascript">
		Ext.application({
			name : 'HelloExt',
			launch : function() {
				Ext.create('Ext.container.Viewport', {
					layout : 'fit',
					items : [ {
						title : 'Hello Ext',
						html : 'Hello! Welcome to Ext JS.'
					} ]
				});
			}
		});
	</script>
	<div id="target"></div>
	</br>
	</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This is demo JSP page.
	<%
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
				"yyyy-MM-dd HH:m m:ss");
		java.util.Date currentTime = new java.util.Date();
		String str_date1 = formatter.format(currentTime);
		String str_date2 = currentTime.toString();
		out.println("现在时间：" + str_date2);
	%>
</body>
</html>
