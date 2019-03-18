<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>
<%
	String hostname, serverAddress;
	hostname = "error";
	serverAddress = "error";
	try {
	  InetAddress inetAddress;
	  inetAddress = InetAddress.getLocalHost();
	  hostname = inetAddress.getHostName();
	  serverAddress = inetAddress.toString();
	} catch (UnknownHostException e) {
	  e.printStackTrace();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello World</title>
</head>
<body>
<h1>Application to demo docker container</h1>
<br> Hello World  <%=new Date() %> !! </br>
<li>InetAddress: <%=serverAddress %>
<li>InetAddress.hostname: <%=hostname %>
           
</body>
</html>