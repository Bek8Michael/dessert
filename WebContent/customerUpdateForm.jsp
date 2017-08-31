<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="head.jsp"%>

</head>

<body>
	<%@include file="topMenu.jsp"%>
	<!-- Page Content -->
	<div class="container">
		<!-- Contact Form -->
		<!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
		<div class="row">
			<div class="col-md-8">
				<h3>회원정보 수정</h3>
				<form action="customerUpdate.do" method="post">
					<div class="control-group form-group">
						<div class="controls">
						<hr>
					<c:forEach var="customer" items="${list }">
						<c:if test="${customer.cust_id eq cust_id }">
					<h2>${cust_id }</h2>
							<label>회원번호:</label> <input type="text" class="form-control"
								name="cust_no" required="required" disabled="disabled" value="${customer.cust_no }">
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>회원 아이디:</label> <input type="text" value="${customer.cust_id }" class="form-control"
								name="cust_id" required="required" disabled="disabled"
								data-validation-required-message="Please enter your id.">
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>회원 비밀번호:</label> <input type="text" class="form-control"
								name="cust_pw" required="required" value="${customer.cust_pw }"
								data-validation-required-message="Please enter your password.">
						</div>
					</div>
					<!-- <div class="control-group form-group">
						<div class="controls">
							<label>회원 비밀번호:</label> <input type="text" class="form-control"
								name="cust_pw">
						</div>
					</div> -->
					<div class="control-group form-group">
						<div class="controls">
							<label>회원 이름:</label> <input type="text" class="form-control"
								name="cust_name" required="required" value="${customer.cust_name }"
								data-validation-required-message="Please enter your Name">
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>회원 닉네임:</label> <input type="text" class="form-control"
								name="cust_nick" required="required" value="${customer.cust_nick }"
								data-validation-required-message="Please enter your Nickname">
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>회원 생일:</label> <input type="date" class="form-control"
								name="cust_birth" required="required" value="${customer.cust_birth }"
								data-validation-required-message="Please enter your birthday">
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>회원 전화번호:</label> <input type="tel" class="form-control"
								name="cust_tel" required="required" value="${customer.cust_tel }"
								data-validation-required-message="Please enter your tel">
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>회원 주소:</label> <input type="text" class="form-control"
								name="cust_addr" required="required" value="${customer.cust_addr }"
								data-validation-required-message="Please enter your address">
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>회원 등급:</label> <input type="text" class="form-control"
								name="cust_grade" disabled="disabled" value="${customer.cust_grade }">
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>회원 포인트:</label> <input type="number" class="form-control"
								name="cust_point" disabled="disabled" value="${customer.cust_point }">
						</div>
					</div></c:if></c:forEach>
					<div id="success"></div>
					<!-- For success/fail messages -->
					<button type="submit" class="btn btn-primary">수     정</button>
				</form>
			</div>

		</div>
		<!-- /.row -->

		
	</div>
	
</body>
</html>