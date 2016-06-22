<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>查询单个学生</title>
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
  <s:set name="xs" value="request.student1"></s:set>
  <center>
    <h3><s:property value="#xs.xm" />信息</h3>
    <table class="">
      <tr>
        <td>
          <table>
            <tr>
              <td>学号：</td>
              <td width="200"><s:property value="#xs.sh" /></td>
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
          <table>
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
