<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>审核</title>
  </head>
  <body>
  <%
String yuan=request.getParameter("yuan");
String id=request.getParameter("id");
String tablename=request.getParameter("tablename");
String sql="";
if(yuan.equals("是"))
{
	sql="update "+tablename+" set issh='否' where bianhao="+id;
}
else
{
	sql="update "+tablename+" set issh='是' where bianhao="+id;
}
 new CommDAO().commOper(sql); 
out.print("<script>location.href='"+request.getHeader("Referer")+"';</script>");
%>
  </body>
</html>


