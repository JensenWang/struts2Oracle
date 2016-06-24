<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>查询单个学生</title>
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
    	.bordered tr:hover{
    		background: none;
    	}
	</style>
  </head>

<body>
  <s:set name="xs" value="#request.student1"></s:set>
  <center>
    <h3><s:property value="#xs.xm" />信息</h3>
    <table class="bordered">
      <tr>
        <td>
          <table class="bordered">
            <tr>
              <td>学号：</td>
              <td width="200"><s:property value="#xs.xh" /></td>
            </tr>
            <tr>
              <td>姓名：</td>
              <td width="100"><s:property value="#xs.xm" /></td>
            </tr>
            <tr>
              <td>性别：</td>
              <td width="100"><s:property value="#xs.xb" /></td>
            </tr>
            <tr>
              <td>专业：</td>
              <td width="100"><s:property value="#xs.zy" /></td>
            </tr>
            <tr>
              <td>出生时间：</td>
              <td width="100"><s:date name="#xs.cssj" format="yyyy-MM-dd" /></td>
            </tr>
            <tr>
              <td>总学分：</td>
              <td width="100"><s:property value="#xs.zxf" /></td>
            </tr>
            <tr>
              <td>备注：</td>
              <td width="100"><s:property value="#xs.bz" /></td>
            </tr>
          </table>
        </td>
        <td>
          <table class="bordered">
            <tr>
              <td align="center">照片</td>
            </tr>
            <tr>
              <td width="100"><img src="getImage.action?student.xh=<s:property value="#xs.xh"/>" width="150"></td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
	<input class="btn" type="button" value="返回" onClick="javaScript:history.back()" />
  </center>
</body>
</html>
