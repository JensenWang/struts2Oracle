<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>修改学生</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">

  </head>

<body>
  <center>
  	<s:set name="xs" value="#request.student1"></s:set>
  	<h3><s:property value="#xs.xm"/>信息</h3>
  	<s:form action="updaetSaveStudent.action" method="post" enctype="multipart/form-data">
  	  <table>
  	  	<tr>
          <td>学号：</td>
          <td><input type="text" name="student.xh" value="<s:property value="#xs.xh"/>" readonly></td>
        </tr>
        <tr>
          <td>姓名：</td>
          <td><input type="text" name="student.xm" value="<s:property value="#xs.xm"/>"></td>
        </tr>
        <tr>
          <s:radio list="{'男','女'}" value="#xs.xb" label="性别" name="student.xb"></s:radio>
        </tr>
        <tr>
          <td>专业：</td>
          <td><input type="text" name="student.zy" value="<s:property value="#xs.zy"/>"></td>
        </tr>
        <tr>
          <td>出生时间：</td>
          <td><input type="text" name="student.cssj" value="<s:date value="#xs.cssj" format="yyyy-MM-dd"/>"></td>
        </tr>
        <tr>
          <td>总学分：</td>
          <td><input type="text" name="student.zxf" value="<s:property value="#xs.zxf"/>"></td>
        </tr>
        <tr>
          <td>备注：</td>
          <td><input type="text" name="student.bz" value="<s:property value="#xs.bz"/>"></td>
        </tr>
        <tr>
          <td>照片：</td>
          <td><input type="file" name="zpfile" value="" ></td>
        </tr>
  	  </table>
      <p></p>
      <input type="submit" value="修改" class="btn" />
      <input type="button" value="返回" class="btn" onClick="javascript:history.back()">
  	</s:form>
  </center>
</body>
</html>
