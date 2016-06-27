<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查询所有学生</title>
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
    	a {
    		text-decoration: none;
    		color: #353E55;
    	}
	</style>
  </head>
  
<body>
  <center>
    <h2>学生信息一览表</h2><hr>
    <table class="bordered">
      <tr>
        <td>学号</td><td>姓名</td><td>性别</td><td>专业</td>
        <td>出生时间</td><td>总学分</td><td width="200">备注</td><td>详细信息</td>
        <td colspan="2">操作</td>
      </tr>
      <s:iterator value="#request.studentList" id="xs">
        <tr>
          <td><s:property value="#xs.xh" /></td>
          <td><s:property value="#xs.xm" /></td>
          <td><s:property value="#xs.xb" /></td>
          <td><s:property value="#xs.zy" /></td>
          <td><s:date name="#xs.cssj" format="yyyy-MM-dd"/></td>
          <td><s:property value="#xs.zxf" /></td>
          <td><s:property value="#xs.bz" /></td>
          <td><a href="showOneStudent.action?student.xh=<s:property value="#xs.xh" />">详细信息</a></td>
          <td><a href="deleteStudent.action?student.xh=<s:property value="#xs.xh" />" onclick="
          	if(!confirm('确定删除该信息？'))return false;else return true;
          ">删除</a></td>
          <td><a href="updateStudent.action?student.xh=<s:property value="#xs.xh" />">修改</a></td>
        </tr>
      </s:iterator>
    </table>
    <p></p>
  </center>
</body>
</html>