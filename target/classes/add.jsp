<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>添加学生信息</title>
    <link rel="stylesheet" type="text/css" href="css/main.css" >
    <link rel="stylesheet" type="text/css" href="css/easyui.css">
    <link rel="stylesheet" type="text/css" href="css/icon.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
    <script type="text/javascript">
        function goSuccess(){
            window.location.href = "success.jsp";
        }
        function exit(){
            window.location.href = "index.jsp";
        }
        function goQuery(){
            window.location.href = "searchStudent.jsp";

        }
        function goViewStudent(){
            window.location.href = "add.jsp";
        }
        function goAddStudent(){
                window.location.href = "addStudent.jsp";
        }
        function submitEmployeeEditForm(){
            if(!$("#StudentEditForm").form('validate')){
                $.messager.alert('提示','表单还未填写完成!');
                return ;
            }
            else
                $("#StudentEditForm").submit();
        }
    </script>
</head>
<body>

<div class="index_box">
    <div class="index_top">
        <p>课程管理系统</p>
        <span class="exit" onclick="exit()"></span>
        <ul id="menu">
            <li onclick="goSuccess()">我的课程</li>
            <li onclick="goQuery()" >查找学生</li>
            <li onclick="goAddStudent()">添加学生</li>
            <li class="active">学生名单</li>
            <li>系统设置</li>
        </ul>
    </div>

    <div class="table_box">
        <p>学生名单</p>
        <hr>
        <table  class="easyui-datagrid"  fitColumns="true" pagination="true"
                width="100%" rownumbers="true"  fit="false"  url="student/getList" >
            <thead>
            <tr>
                <th  field ="stuNo" width="100">学号</th>
                <th  field ="stuName" width="50">姓名</th>
                <th  field ="sex" width="20">性别</th>
                <th  field ="idCode" width="100">身份证号码</th>
<%--                <th  field ="departmentId" width="100">所在学院</th>--%>
                <th  field ="education" width="100">宿舍</th>
                <th  field ="degree" width="50">门牌号</th>
                <th  field ="major" width="50">专业</th>
                <th  field ="educationForm" width="50">教育形式</th>
<%--                <th  field ="joinDate" width="50">入学时间</th>--%>
                <th  field ="phone" width="50">联系方式</th>
                <th  field ="email" width="50">邮件</th>

            </tr>
            </thead>
        </table>
    </div>
    <div class="index_bottom">
        <p>Copyright © 2019-2020 www.gc.com</p>
    </div>

</div>
</body>
</html>
