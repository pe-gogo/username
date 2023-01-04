<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>查找学生</title>
    <script type="text/javascript">
        function back(){
            window.location.href = "add.jsp";
        }
    </script>
    <style>
        body {
            background-color: #f8f8f8;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
        }
        a{
            display: block;
            text-align: center;

            margin-bottom: 10px;
        }
        input{
            border-radius: 20px;
        }
    </style>
</head>
<body>
<form>
    <div class="index_top">
        <li onclick="back()">返回</li>
        <label for="stuName">学生姓名:</label><br>
        <input type="text" id="stuName" name="stuName"><br><br>
        <input type="button" value="Search" onclick="search()">
<h1>查找学生</h1>

<!-- search form -->

<!-- search results -->
<div id="results">
    <h2>查找结果</h2>
    <table id="studentTable">
        <tr>
            <th  field ="stuNo" width="100">学号</th>
            <th  field ="stuName" width="50">姓名</th>
            <th  field ="sex" width="60">性别</th>
            <th  field ="idCode" width="100">身份证号码</th>
            <%--                <th  field ="departmentId" width="100">所在学院</th>--%>
            <th  field ="education" width="100">宿舍</th>
            <th  field ="degree" width="50">门牌号</th>
            <th  field ="major" width="50">专业</th>
            <th  field ="educationForm" width="150">教育形式</th>
            <%--                <th  field ="joinDate" width="50">入学时间</th>--%>
            <th  field ="phone" width="150">联系方式</th>
            <th  field ="email" width="150">邮件</th>
        </tr>
    </table>
</div>

<!-- JavaScript for making AJAX request and rendering search results -->
<script>
    function search() {
        var stuName = document.getElementById("stuName").value;
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                renderResults(JSON.parse(this.responseText));
            }
        };
        xhttp.open("GET", "/student/search?stuName=" + stuName, true);

        xhttp.send();
    }

    function renderResults(students) {
        var table = document.getElementById("studentTable");
        console.log(218192889)
        // clear previous search results
        table.innerHTML = "";
        // add table headers
        table.innerHTML = "<tr>" +
            "<th>学号</th>" +
            "<th>学生姓名</th>" +
            "<th>性别</th>" +
            "<th>身份证</th>" +
            "<th>教育水平</th>" +
            "<th>大学</th>" +
            "<th>科目</th>" +
            "<th>手机</th>" +
            "<th>邮箱</th>" +
            "<th>学历层次</th>" +
            "</tr>";
        // add rows for each student
            console.log(students)
            var student = students;
            var row = "<tr>" +
                "<td>" + student.stuNo + "</td>" +
                "<td>" + student.stuName + "</td>" +
                "<td>" + student.sex + "</td>" +
                "<td>" + student.idCode + "</td>" +
                "<td>" + student.education + "</td>" +
                "<td>" + student.degree + "</td>" +
                "<td>" + student.major + "</td>" +
                "<td>" + student.phone + "</td>" +
                "<td>" + student.email + "</td>" +
                "<td>" + student.educationForm + "</td>" +
                "</tr>";
            table.innerHTML += row;
    }
</script>
</body>
</html>

