<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>修改成绩</title>
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
<h1>修改成绩</h1>

<c:forEach items="${jibens}" var="item">
<form method="post" action="update?method=mod_score&spid=${item.spid}&cpid=${item.cpid}" onsubmit="return check()">

姓名：${item.stuname} 学号：${item.spid} 分数：<input type="text" name="score"><input type="submit" value="提交"/><br>

</form>

</c:forEach>
</body>
</html>
