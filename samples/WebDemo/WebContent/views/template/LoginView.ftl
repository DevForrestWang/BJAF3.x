<html>
<head>
  <title>freemarkerģ����ͼ</title>
<link href="../views/t-1.css" rel="stylesheet" type="text/css">
</head>
<body>
<CENTER><B>#ʹ��freemarkerģ����ͼ</B></CENTER><BR>
<table width="75%" border="1" align="center">
  <tr>
    <td width="20%">��½�û�����</td>
    <td width="80%">${Login_Info.loginUser}</td>
  </tr>
  <tr>
    <td>���룺</td>
    <td>${Login_Info.password}</td>
  </tr>
  <tr>
    <td>��½ʱ�䣺</td>
    <td>${Login_Info.loginTime?string("yyyy-MM-dd HH:mm:ss zzzz")}</td>
  </tr>
</table>
<p align="center"><a href="../index.html">����</a></p>
</body>
</html>