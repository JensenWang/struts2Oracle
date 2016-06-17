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
    <style type="text/css">
    	
    	body{
    	    marign: 0;
    	    padding: 0;
    	    margin-top: 30px;
    	    background: #E4E6D8;
        	font-family: "微软雅黑";
        	color: #B36458;
    	}
    	
    	/*----input表样式----*/
    	input{
    		width: 180px;
    		height: 26px;
    		color: #353E55;
    		font-family: "微软雅黑";
    	}
    	
    	/*----按钮表样式----*/
    	.btn{
    		width: 60px;
    		height: 35px;
    		margin: 5 20;
    		border: 0;
    		background: #B36458;
    		color: #E4E6D8;
    		font-size: 14px;
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

		.bordered tr:hover {
		    background: #fbf8e9;
		    -o-transition: all 0.1s ease-in-out;
		    -webkit-transition: all 0.1s ease-in-out;
		    -moz-transition: all 0.1s ease-in-out;
		    -ms-transition: all 0.1s ease-in-out;
		    transition: all 0.1s ease-in-out;     
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
