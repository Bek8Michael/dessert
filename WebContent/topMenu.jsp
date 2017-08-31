<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">D'<font color="red">easy</font>ert
				</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="about.jsp">About</a></li>
					<li class="dropdown"><a  class="dropdown-toggle"
						data-toggle="dropdown">Best Shop List<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="menu-newhotForm.do">NEW/HOT</a></li>
							<li><a href="menu-category.jsp">카테고리별보기</a></li>
							<li><a href="menu-item.jsp"> - 제품별</a></li>
							<li><a href="menu-country.jsp"> - 나라별</a></li>
							<li><a href="menu-theme.jsp"> - 테마별</a></li>
							<li><a href="menu-review.jsp">사용자평가순</a></li>
						</ul></li>
					<li><a href="services.jsp">Services</a></li>
					<li><a href="contact.jsp">Contact</a></li>


					<li class="dropdown"><a  class="dropdown-toggle"
						data-toggle="dropdown">Other Pages <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="full-width.jsp">Full Width Page</a></li>
							<li><a href="sidebar.jsp">Sidebar Page</a></li>
							<li><a href="faq.jsp">FAQ</a></li>
							<li><a href="404.jsp">404</a></li>
							<li><a href="pricing.jsp">Pricing Table</a></li>
						</ul></li>
					<li class="dropdown"><a  class="dropdown-toggle"
						data-toggle="dropdown">Login <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<c:if test="${empty cust_id}">
							<li><a href="loginForm.jsp">Log-in</a></li>
						</c:if>
						<c:if test="${!empty cust_id}">
							<li><a>ID : ${cust_id } 님</a></li>
							<li><a href="customerUpdateForm.do">회원정보</a></li>
						</c:if>
						<c:if test="${empty cust_id}">
							<li><a href="customerJoinForm.jsp">Join</a></li>
						</c:if>
						<li><a href="logout.do">Log-out</a></li>

					</ul></li>
					<c:if test="${cust_id eq 'admin' }">
					<li><a href="admin.jsp">Admin</a></li>
					</c:if>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
