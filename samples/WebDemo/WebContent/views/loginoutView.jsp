<%@page contentType="text/html; charset=gb2312"%>
<%@page session="false"%>
<%@page import="com.beetle.framework.web.view.ViewHelper"%>
<%@page import="com.beetle.WebDemo.common.*"%>
<html> 
<head>
<title> </title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="t-1.css" rel="stylesheet" type="text/css">
</head>
<body>
<!-- ��ʽ1 -->
<%
ViewHelper helper=new ViewHelper(request);
LoginInfo loginInfo=(LoginInfo)helper.getDataValue("Login_Info");
%>
<table width="75%" border="1" align="center">
  <tr>
    <td width="20%">��½�û�����</td>
    <td width="80%"><%=loginInfo.getLoginUser() %></td>
  </tr>
  <tr>
    <td>���룺</td>
    <td><%=loginInfo.getPassword() %></td>
  </tr>
  <tr>
    <td>��½ʱ�䣺</td>
    <td><%=loginInfo.getLoginTime() %></td>
  </tr>
   <tr>
   <td>...</td>
    <td> <A HREF="LoginAndOutController.ctrl?$action=logoutAction">�˳�ϵͳ</A></td>
  </tr>
</table><BR><BR>
<p align="center"><a href="../index.html">����</a></p>
</body>
</html>
