package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CustomerDao;
import model.Customer;

public class Login implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		HttpSession session = request.getSession();
		String cust_id = request.getParameter("cust_id");
		String password = request.getParameter("cust_pw");
		CustomerDao cd = CustomerDao.getInstance();
		Customer customer = cd.select(cust_id);
		if (customer == null)
			result = -1;
		else {
			String dbPass = customer.getCust_pw();
			if (dbPass.equals(password)) {
				session.setAttribute("cust_id", cust_id);
				result = 1;
			} else
				result = 0;
		}
		request.setAttribute("result", result);
		return "login.jsp";
	}
}