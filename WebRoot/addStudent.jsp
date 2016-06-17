<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加学生</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<body> 
  <center>
    <h3>请填写新生资料</h3><hr>
    <s:form action="addStudent.action" method="post" enctype="multipart/form-data">
      <table border="1">
        <tr><s:textfield name="student.xh" lable="学号"></s:textfield></tr>
        <tr><s:textfield name="student.xm" lable="姓名"></s:textfield></tr>
        <tr><s:radio name="student.xb" value="男" list="{'男','女'}" label="性别"></s:radio>
        <tr><s:textfield name="student.zy" lable="专业"></s:textfield></tr>
        <tr><s:textfield name="student.cssj" lable="出生时间"></s:textfield></tr>
        <tr><s:textfield name="student.zxf" lable="总学分"></s:textfield></tr>
        <tr><s:textarea name="student.bz" label="备注"></s:textarea>
        <tr><s:file name="zpfile" label="照片"></s:file>
      </table>
      <p>
      <input type="submit" value="添加" />
      <input type="reset" value="重置">
    </s:form>
  </center>
</body>
</html>
