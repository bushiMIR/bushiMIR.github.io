<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style type="text/css">
        .main_right{
            background-color: #79aacb;
            width:98%;
            height:120px;
        }
    </style>
</head>
<body class="main_right">
<%
    Object message = request.getAttribute("message");
    if(message!=null && !"".equals(message)){

%>
<script type="text/javascript">
    alert("<%=request.getAttribute("message")%>");
</script>
<%} %>

<table align="center" border="0px" cellpadding="10px" cellspacing="10px">
    <tr>
        <td><a href="choose?method=liulankecheng">返回选课</a></td>
    </tr>
</table>
</body>
</html>