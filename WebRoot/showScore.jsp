<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>查询成绩</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<body>
  <center>
    <h3>录入学生信息</h3><hr>
    <s:form acction="addScore" method="post">
      <table cellspacing="1" cellpadding="8" width="400">
        <tr>
          <td width="100">请选择学生：</td>
          <td>
            <select name="score.xh">
              <s:iterator id="xs" value="#request.studentList">
                <option value="<s:property value="#xs.xh"/>"><s:property value="#xs.xm" /></option>
              </s:iterator>
            </select>
          </td>
        </tr>
        <tr>
          <td width="100">
            <select name="score.kcch">
              <s:iterator id="kc" value="#request.courseList">
                <option value="<s:property value="#kc.kch"/>"><s:property value="#kc.kcm"/></option>
              </s:iterator>
            </select>
          </td>
        </tr>
        <tr>
          <s:textfield label="成绩" name="score.cj" value="" size="14"></s:textfield>
        </tr>
      </table>
      <input type="submit" value="录入" />
      <input type="reset" value="重置" />
    </s:form>
  </center>
</body>
</html>
