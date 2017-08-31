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


		<c:if test="${result > 0 }">
			<script type="text/javascript">
				alert("로그인 성공");
				location.href = "index.jsp";
			</script>
		</c:if>
		<c:if test="${result == 0 }">
			<script type="text/javascript">
				alert("암호가 다릅니다.");
				history.go(-1);
			</script>
		</c:if>
		<c:if test="${result < 0 }">
			<script type="text/javascript">
				alert("아이디 정보가 없어요.");
				history.go(-1);
			</script>
		</c:if>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>
