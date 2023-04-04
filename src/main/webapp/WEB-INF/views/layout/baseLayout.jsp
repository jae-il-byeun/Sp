<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html> 
<html>
    <script src="/project/resources/js/jquery.min.js"></script>
	<script src="/project/resources/js/popper.min.js"></script>  
<link rel="stylesheet" href="<c:url value='/resources/css/jquery-ui.min.css'></c:url>">
	                 	
</head>
<body>
	<tiles:insertAttribute name="header"/>
    <tiles:insertAttribute name="body" />
    <tiles:insertAttribute name="footer" />
</body>
</html>