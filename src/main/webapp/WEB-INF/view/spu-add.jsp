<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/29 0029
  Time: 下午 3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="addSpu.do" method="post" enctype="multipart/form-data">
    <input type="hidden" name="flbh1" value="${spu.flbh1}">
    <input type="hidden" name="flbh2" value="${spu.flbh2}">
    <input type="hidden" name="ppId" value="${spu.ppId}">
    <br>
    商品名称：
    <input type="text" name="shpMch">
    <br>
    商品描述
    <input type="text" name="shpMsh">
    <br>
    <input type="file" name="imgs">
    <input type="file" name="imgs">
    <input type="file" name="imgs">
    <br>
    <input type="submit">
</form>
</body>
</html>
