<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/30 0030
  Time: 下午 2:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>
    <script>
        $(function () {
            //通过 getjson异步加载json数据
            $.getJSON("json/class_1.js", function(json){
                $(json).each(function(i,data){
                    console.log(data)
                    $("#class1_select_id").append('<option value="'+data.id+'">'+data.flmch1+'</option>');
                })
            });
        })
        //异步加载class2和品牌
        function load_class2_tm(flbh1) {
            //加载class2
            $.getJSON("json/class_2_"+flbh1+".js", function(json){
                //清空 ：empty()
                $("#class2_select_id").empty();
                $("#class2_select_id").append("<option>请选择</option>")
                //dom对象如何转换为jquery对象  $()
                $(json).each(function(i,data){
                    $("#class2_select_id").append('<option value="'+data.id+'">'+data.flmch2+'</option>');
                })
            });
        }
        function toAddAttrPage() {
            var flbh2 = $("#class2_select_id").val();
            location.href="toAddAttrPage.do?flbh2="+flbh2;
        }
        function findAttrByclass2(flbh2) {
            $.post("findAttrByclass2.do",{"flbh2":flbh2},function(data){
                $("#attrListDiv").html(data);
            })
        }
    </script>
</head>
<body>
    attr
    <hr>
    一级
    <select id="class1_select_id" onchange="load_class2_tm(this.value)">
        <option>请选择</option>
    </select>
    二级
    <select id="class2_select_id" onchange="findAttrByclass2(this.value)">
        <option>请选择</option>
    </select>
    <a href="javascript:toAddAttrPage()">增加属性</a>
    <div id="attrListDiv"></div>
</body>
</html>
