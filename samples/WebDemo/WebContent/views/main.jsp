<%@page contentType="text/html; charset=gb2312"%>
<%@page session="false"%>
<%@page import="com.beetle.framework.web.view.ViewHelper"%>
<%@page import="com.beetle.WebDemo.common.*"%>
<%@ taglib prefix="c" uri="/WEB-INF/tlds/c.tld" %>
<%@ taglib prefix="fmt" uri="/WEB-INF/tlds/fmt.tld" %>
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
<CENTER><B>#����ViewHelper��ʽ��ȡ��ͼ����</B></CENTER><BR>
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
</table><BR><BR>
<!-- ��ʽ2 -->
<CENTER><B>#����JSTL (JavaServer Pages Standard Tag Library)��ʽ��ȡ��ͼ����</B></CENTER><BR>
<CENTER>����JSTL��ο�<A HREF="http://java.sun.com/products/jsp/jstl/ ">http://java.sun.com/products/jsp/jstl/</A></CENTER> <BR>
<table width="75%" border="1" align="center">
  <tr>
    <td width="20%">��½�û�����</td>
    <td width="80%"><c:out value="${Login_Info.loginUser}"/></td>
  </tr>
  <tr>
    <td>���룺</td>
    <td><c:out value="${Login_Info.password}"/></td>
  </tr>
  <tr>
    <td>��½ʱ�䣺</td>
    <td><c:out value="${Login_Info.loginTime}"/></td>
  </tr>
</table>
<p align="center"><a href="../index.html">����</a></p>
</body>
</html>
