<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="topMenu.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="head.jsp" %>
</head>

<body>

<div class="container">
<table class = "table table-bordered"><caption>Shop 목록</caption>
	<tr><th>번호</th><th>Shop 상호</th><th>지역</th><th>주소</th><th>전화번호</th>
	<th>영업시간</th><th>메뉴</th><th>등급</th><th>등록날짜</th><th>국가</th><th>삭제여부</th></tr>
<c:forEach var="shop" items="${list }">
	<tr><td>${shop.shop_no }</td>
		<td>${shop.shop_name }</td>
		<td>${shop.shop_loc }</td>
		<td>${shop.shop_addr }</td>
		<td>${shop.shop_tel }</td>
		<td>${shop.shop_worktime }</td>
		<td>${shop.shop_menu }</td>
		<td>${shop.shop_grade }</td>
		<td>${shop.shop_uptime }</td>
		<td>${shop.shop_nation }</td>
		<td>${shop.shop_del }</td>
		</tr>
</c:forEach>

</table>
<button onclick="location.href='index.jsp'"> 처음화면</button>
</div>
</body>
</html>