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
                    console.log(data)
                    $("#class2_select_id").append('<option value="'+data.id+'">'+data.flmch2+'</option>');
                })
            });
            //加载品牌
            $.getJSON("json/tm_class_1_"+flbh1+".js", function(json){
                $("#tm_select_id").empty();
                $("#tm_select_id").append("<option>请选择</option>")
                $(json).each(function(i,data){
                    $("#tm_select_id").append('<option value="'+data.id+'">'+data.ppmch+'</option>');
                })
            });
        }
        function toAddSpuPage() {
            var flbh1 = $("#class1_select_id").val();
            var flbh2 = $("#class2_select_id").val();
            var ppId = $("#tm_select_id").val();

            location.href="toAddSpuPage.do?flbh1="+flbh1+"&flbh2="+flbh2+"&ppId="+ppId;
        }
    </script>
</head>
<body>
        spu
        <hr>
        一级
        <select id="class1_select_id" onchange="load_class2_tm(this.value)">
            <option>请选择</option>
        </select>
        二级
        <select id="class2_select_id">
            <option>请选择</option>
        </select>
        品牌
        <select id="tm_select_id">
            <option>请选择</option>
        </select>
        <hr>
        <a href="javascript:toAddSpuPage()">添加</a>
</body>
</html>
