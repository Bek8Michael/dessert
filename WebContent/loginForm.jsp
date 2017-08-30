<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="head.jsp"%>
</head>

<body>
	<%@include file="topMenu.jsp"%>

	<!-- Page Content -->
	<div class="container">
		<div class="p inset">
		<form action="login.do">
			<table class="table">
				<h3>Log in</h3>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="cust_id" required="required"
						autofocus="autofocus"></td>
				</tr>
				<tr>
					<th>암호</th>
					<td><input type="password" name="cust_pw" required="required"></td>
				</tr>
				<tr></tr>
				<tr>
					<th colspan="2"><input type="submit" value="확인"></th>
				</tr>
			</table>
		</form>
		<hr class="hiden">
		<a class="btn btn-primary" href="joinForm.do">회원가입</a>
</div>
		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Your Dessert site 2017</p>
				</div>
			</div>
		</footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>