<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/31 0031
  Time: 上午 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>
    <script>
        $(function () {
            //加载品牌
            var flbh1=${flbh1}
            $.getJSON("json/tm_class_1_"+flbh1+".js", function(json){
                $("#tm_select_id").empty();
                $("#tm_select_id").append("<option>请选择</option>")
                $(json).each(function(i,data){
                    $("#tm_select_id").append('<option value="'+data.id+'">'+data.ppmch+'</option>');
                })
            });
        })
        function selectSpu(tmId) {
            var flbh2 = ${flbh2}
            $.post("selectSpu.do",{"flbh2":flbh2 , "ppId":tmId},function(json){
                $(json).each(function(i,spu){
                    $("#spu_select_id").append('<option value="'+spu.id+'">'+spu.shpMch+'</option>')
                })
            })
        }
    </script>
</head>
<body>
sku-add
<hr>
<form action="/saveSku.do">
    <input type="hidden" value="${flbh1}" name="flbh1">
    <input type="hidden" value="${flbh2}" name="flbh1">
    品牌：<select id="tm_select_id" onchange="selectSpu(this.value)">
            <option>请选择</option>
         </select>
    商品：<select id="spu_select_id" name="shpId">
            <option>请选择</option>
        </select>
    <table border="1" cellspacing="0">
        <c:forEach items="${attrList}" var="attr" varStatus="i">
            <tr>
                <td>
                    <input type="hidden" name="attrValues[${i.index}].shxmId" value="${attr.id}">
                    ${attr.shxmMch}
                </td>
                <c:forEach items="${attr.valueList}" var="val">
                    <td>
                        <input type="radio" name="attrValues[${i.index}].shxzhId" value="${val.id}">
                         ${val.shxzh}${val.shxzhMch}
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
</table>
    sku名称:<input type="text" name="skuMch">
    <br>
    价格:<input type="text" name="jg">
    <br>
    库存:<input type="text" name="kc">
    <br>
    库存地址:<input type="text" name="kcdz">
    <input type="submit">
</form>
<br>
</body>
</html>
