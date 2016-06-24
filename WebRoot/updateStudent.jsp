<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>修改学生</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<style type="text/css">
		body{
    	    marign: 0;
    	    padding: 0;
    	    margin-top: 30px;
    	    background: #E4E6D8;
        	font-family: "微软雅黑";
        	color: #B36458;
    	}

    	/*----button样式*/
    	.btn{
    		font-family: "微软雅黑";
    		width: 60px;
    		height: 35px;
    		margin: 0px;
    		margin-top: 20px;
    		padding: 0px;
    		border: 0px;
    		border-radius: 8px;
        	color: #fff;
        	background: #353E55;
        	transition:0.5s ease;
			-o-transition:0.5s ease;
			-webkit-transition:0.5s ease;
    	}
    	.btn:hover{
    		background: #666a73;
    	}
    	
    	/*----input表样式----*/
    	input{
    		width: 180px;
    		height: 26px;
    		color: #353E55;
    		font-family: "微软雅黑";
    	}

		/*----table表样式----*/
	    table {
	        *border-collapse: collapse; /* IE7 and lower */
	        border-spacing: 0;
		}

		.bordered {
		    border: solid #ccc 1px;
		    -moz-border-radius: 6px;
		    -webkit-border-radius: 6px;
		    border-radius: 6px;
		    -webkit-box-shadow: 0 1px 1px #ccc;
		    -moz-box-shadow: 0 1px 1px #ccc;
		    box-shadow: 0 1px 1px #ccc;
		}

		.bordered td, .bordered th {
		    border-left: 1px solid #ccc;
		    border-top: 1px solid #ccc;
		    padding: 10px;
		    text-align: left;
		}

		.bordered th {
		    background-color: #dce9f9;
		    background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
		    background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
		    background-image:    -moz-linear-gradient(top, #ebf3fc, #dce9f9);
		    background-image:     -ms-linear-gradient(top, #ebf3fc, #dce9f9);
		    background-image:      -o-linear-gradient(top, #ebf3fc, #dce9f9);
		    background-image:         linear-gradient(top, #ebf3fc, #dce9f9);
		    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
		    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;
		    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
		    border-top: none;
		    text-shadow: 0 1px 0 rgba(255,255,255,.5);
		}

		.bordered td:first-child, .bordered th:first-child {
		    border-left: none;
		}

		.bordered th:first-child {
		    -moz-border-radius: 6px 0 0 0;
		    -webkit-border-radius: 6px 0 0 0;
		    border-radius: 6px 0 0 0;
		}

		.bordered th:last-child {
		    -moz-border-radius: 0 6px 0 0;
		    -webkit-border-radius: 0 6px 0 0;
		    border-radius: 0 6px 0 0;
		}

		.bordered th:only-child{
		    -moz-border-radius: 6px 6px 0 0;
		    -webkit-border-radius: 6px 6px 0 0;
		    border-radius: 6px 6px 0 0;
		}

		.bordered tr:last-child td:first-child {
		    -moz-border-radius: 0 0 0 6px;
		    -webkit-border-radius: 0 0 0 6px;
		    border-radius: 0 0 0 6px;
		}

		.bordered tr:last-child td:last-child {
		    -moz-border-radius: 0 0 6px 0;
		    -webkit-border-radius: 0 0 6px 0;
		    border-radius: 0 0 6px 0;
		}
	</style>
  </head>

<body>
  <center>
  	<s:set name="xs" value="#request.student1"></s:set>
  	<h3><s:property value="#xs.xm"/>信息</h3>
  	<s:form action="updaetSaveStudent.action" method="post" enctype="multipart/form-data">
  	  <table class="bordered">
  	  	<tr>
          <td>学号：</td>
          <td><input type="text" name="student.xh" value="<s:property value="#xs.xh"/>" readonly></td>
        </tr>
        <tr>
          <td>姓名：</td>
          <td><input type="text" name="student.xm" value="<s:property value="#xs.xm"/>"></td>
        </tr>
        <tr>
          <s:radio list="{'男','女'}" value="#xs.xb" label="性别" name="student.xb" style="width:15px;height:15px"></s:radio>
        </tr>
        <tr>
          <td>专业：</td>
          <td><input type="text" name="student.zy" value="<s:property value="#xs.zy"/>"></td>
        </tr>
        <tr>
          <td>出生时间：</td>
          <td><input type="text" name="student.cssj" value="<s:date name="#xs.cssj" format="yyyy-MM-dd"/>"></td>
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
