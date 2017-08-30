<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dao.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>

<%	CustomerDao cd = CustomerDao.getInstance();
	for (int i = 10; i < 229; i++) {
		Customer cust = new Customer();

		cust.setCust_no(i);
		cust.setCust_id("d"+i);
		cust.setCust_pw("d"+i);
		cust.setCust_name("대박"+i);
		cust.setCust_nick("John"+i);
		//cust.setCust_birth();
		cust.setCust_nick("k"+i+"@k.com");
		cust.setCust_tel("123-3214-3214");
		cust.setCust_addr("강남구 강남대로 "+i+"길");
		cust.setCust_grade("begginer");
		cust.setCust_point(10);
		//cust.setCust_out("n");
		//cust.setCust_del("n");
		cd.insert(cust);
	}
%>
입력성공
</body>
</html>