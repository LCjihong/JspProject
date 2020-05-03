package com.webdata.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webdata.pojo.Teacher;
import com.webdata.service.WebdataService;
import com.webdata.service.impl.WebdataServiceImpl;

/**
 * Servlet implementation class Teacher_Register
 */
@SuppressWarnings("serial")
@WebServlet("/Teacher_Register")
public class Teacher_Register extends HttpServlet {
	
	private WebdataService webdataservice = new WebdataServiceImpl();
	Teacher t = null;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		t = new Teacher();
		t.setId(Integer.parseInt(req.getParameter("uid")));
		t.setName(req.getParameter("uname"));
		t.setSex(req.getParameter("usex"));
		t.setPhone(req.getParameter("uphone"));
		t.setPwd(req.getParameter("pwd"));
		
		if (t.getSex().equals("-«Î—°‘Ò")) {
			req.getRequestDispatcher("Error_Input.jsp").forward(req, resp);
		} else {
			if (webdataservice.insertTea(t)) {
				req.getRequestDispatcher("LoginPage.jsp").forward(req, resp);
			} else {
				req.getRequestDispatcher("Error.jsp").forward(req, resp);
			}
		}
		
	}

}
