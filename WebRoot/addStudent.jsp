<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加学生</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <style type="text/css">
    	body{
    	    marign: 0;
    	    padding: 0;
    	    margin-top: 30px;
    	    background: #E4E6D8;
        	font-family: "微软雅黑";
        	color: #B36458;
    	}
    </style>
  </head>
  
<body> 
  <center>
    <h3>请填写新生资料</h3><hr>
    <s:form action="addStudent.action" method="post" enctype="multipart/form-data">
      <table class="bordered">
        <tr><s:textfield name="student.xh" label="学号"></s:textfield></tr>
        <tr><s:textfield name="student.xm" label="姓名"></s:textfield></tr>
        <tr><s:radio name="student.xb" value="男" list="{'男','女'}" label="性别" style="width:15px;height:15px"></s:radio>
        <tr><s:textfield name="student.zy" label="专业"></s:textfield></tr>
        <tr><s:textfield name="student.cssj" label="出生时间"></s:textfield></tr>
        <tr><s:textfield name="student.zxf" label="总学分"></s:textfield></tr>
        <tr><s:textarea name="student.bz" label="备注" style="width:180px;color: #353E55;font-family: '微软雅黑'"></s:textarea>
        <tr><s:file name="zpfile" label="照片" ></s:file>
      </table>
      <p>
      <input type="submit" value="添加" class="btn" />
      <input type="reset" value="重置" class="btn" />
    </s:form>
  </center>
</body>
</html>
