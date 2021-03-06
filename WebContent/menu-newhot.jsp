<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
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
		
		<!-- Page Heading/Breadcrumbs -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					New Hot Dessert <small>이건 먹어야해 +_+</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">One Column Portfolio</li>
				</ol>
			</div>
		</div>
		<!-- /.row -->

		<!-- Project One -->
		<div class="row">
			<div class="col-md-7">
			
			<%-- <h1>${productList.prod_no}</h1> --%>
				<a href="menu-item.jsp"> <img
					class="img-responsive img-hover"
				<%-- 	src="./image/<%=request.getAttribute("productList") %>.jpg" alt=""> --%>
				src="./image/${productList[0].prod_no+1}.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5">
				<h3>Project One</h3>
				<h4>Subheading</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="portfolio-item.jsp">View
					Project</i>
				</a>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Project Two -->
		<div class="row">
			<div class="col-md-7">
				<a href="menu-item.jsp"> <img
					class="img-responsive img-hover"
					src="./image/1.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5">
				<h3>Project Two</h3>
				<h4>Subheading</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut,
					odit velit cumque vero doloremque repellendus distinctio maiores
					rem expedita a nam vitae modi quidem similique ducimus! Velit, esse
					totam tempore.</p>
				<a class="btn btn-primary" href="portfolio-item.jsp">View
					Project</i>
				</a>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Project Three -->
		<div class="row">
			<div class="col-md-7">
				<a href="menu-item.jsp"> <img
					class="img-responsive img-hover"
					src="./image/${productList[1].prod_no}.jpg" alt="">
			</div>
			<div class="col-md-5">
				<h3>Project Three</h3>
				<h4>Subheading</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Omnis, temporibus, dolores, at, praesentium ut unde repudiandae
					voluptatum sit ab debitis suscipit fugiat natus velit excepturi
					amet commodi deleniti alias possimus!</p>
				<a class="btn btn-primary" href="portfolio-item.jsp">View
					Project</i>
				</a>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Project Four -->
		<div class="row">

			<div class="col-md-7">
				<a href="menu-item.jsp"> <img
					class="img-responsive img-hover"
					src="./image/${productList[1].prod_no}.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5">
				<h3>Project Four</h3>
				<h4>Subheading</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Explicabo, quidem, consectetur, officia rem officiis illum aliquam
					perspiciatis aspernatur quod modi hic nemo qui soluta aut eius
					fugit quam in suscipit?</p>
				<a class="btn btn-primary" href="portfolio-item.jsp">View
					Project</i>
				</a>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Project Five -->
		<div class="row">
			<div class="col-md-7">
				<a href="menu-item.jsp"> <img class="img-responsive img-hover"
					src="./image/2.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5">
				<h3>Project Five</h3>
				<h4>Subheading</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Aliquid, quo, minima, inventore voluptatum saepe quos nostrum
					provident ex quisquam hic odio repellendus atque porro distinctio
					quae id laboriosam facilis dolorum.</p>
				<a class="btn btn-primary" href="#">View Project</i></a>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Pagination -->
		<div class="row text-center">
			<div class="col-lg-12">
				<ul class="pagination">
					<li><a href="#">&laquo;</a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Your D'easyert 2017</p>
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
