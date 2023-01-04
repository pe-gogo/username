<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        window.location.href = "login.jsp";
    }
	function goQuery(){
		window.location.href = "searchStudent.jsp";

	}
  	function goViewStudent(){
        window.location.href = "add.jsp";
    }
	function submitEmployeeEditForm(){
			// if(!$("#StudentEditForm").form('validate')){
			// 	$.messager.alert('提示','表单还未填写完成!');
			// 	return ;
			// }
			// else
				$("#StudentEditForm").submit();
		}


</script>
</head>
<body>

    <div class="index_box">
	  <div class="index_top">
            <p>课程管理系统</p>
            <ul id="menu">
                <li onclick="goSuccess()">我的课程</li>
                <li onclick="goQuery()" >查找学生</li>
                <li class="active" >添加学生</li>
                <li onclick="goViewStudent()">学生名单</li>
                <li>系统设置</li>
            </ul>
        </div>
<div class="table_box"  >
	<form id=""  action="/add" method="post">
	   <p>添加学生信息</p>
      <hr>
	    <table style="margin: auto;width:600px;"  cellpadding="5">
	    	<tr>
	            <td>学号:</td>
	            <td>
	            	<input class="easyui-textbox" type="text" name="StuNo" data-options="required:true"/>
    			</td>
	        </tr>
	        <tr>
	            <td>姓名:</td>
	            <td>
	            	<input class="easyui-textbox" type="text" name="StuName" data-options="required:true"/>
    			</td>
	        </tr>

	        <tr>
	            <td>性别:</td>
	            <td>
	            	<select id="cc" class="easyui-combobox" name="sex" panelHeight="auto"
	            		data-options="required:true, width:150, editable:false">
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
    			</td>
	        </tr>
<%--	        <tr>--%>

<%--	            <td>所在学院:</td>--%>
<%--	            <td>--%>
<%--	            	<input class="easyui-combobox" name="departmentId"--%>
<%--    					data-options="valueField:'departmentName',textField:'departmentName',--%>
<%--    						url:'college_data.json', editable:false, required:true"/>--%>

<%--    			</td>--%>
<%--	        </tr>--%>
	        <tr>
	            <td>身份证号:</td>
	            <td>
	            	<input class="easyui-textbox" type="text" name="idCode"/>
    			</td>
	        </tr>
	        <tr>
	            <td>宿舍:</td>
	            <td>
	            	<input class="easyui-textbox" type="text" name="education"/>
    			</td>
	        </tr>
	        <tr>
	            <td>门牌号:</td>
	            <td>
	            	<input class="easyui-textbox" type="text" name="degree"/>
    			</td>
	        </tr>
	        <tr>
	            <td>专业:</td>
	            <td>
	            	<input class="easyui-textbox" type="text" name="major"/>
    			</td>
	        </tr>
	        <tr>
	            <td>受教育形式:</td>
	            <td>
	            	<input class="easyui-textbox" type="text" name="educationForm"/>
    			</td>
	        </tr>
	        <tr>
	            <td>生日:</td>
	            <td><input class="easyui-datebox" name="birthday"
        			value="10/4/1999" style="width:150px"> </td>
	        </tr>
	        <tr>
	            <td>入学日期:</td>
	            <td><input class="easyui-datebox" name="joinDate"
        			value="11/4/2019" style="width:150px"> </td>
	        </tr>
	        <tr>
	            <td>联系电话:</td>
	            <td>
	            	<input class="easyui-textbox" type="text" name="phone"/>
    			</td>
	        </tr>
	        <tr>
	            <td>邮件地址:</td>
	            <td>
	            	<input name="email" class="easyui-validatebox tb" type="text" data-options="required:true,validType:'email'">
    			</td>
	        </tr>
	    </table>
		<input type="submit" value="Submit">
	</form>
<%--	<div style="padding:5px">--%>
<%--	    <a href="javascript:void(0)" class="easyui-linkbutton" >提交</a>--%>
<%--	</div>--%>
</div>

</body>

</html>
