package com.webdata.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webdata.pojo.Student;
import com.webdata.service.WebdataService;
import com.webdata.service.impl.WebdataServiceImpl;

/**
 * Servlet implementation class Student_Regesiter
 */
@SuppressWarnings("serial")
@WebServlet("/Register_Stu")
public class Student_Register extends HttpServlet {
	
	private WebdataService webdataservice = new WebdataServiceImpl();
	private Student s = null;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		s = new Student();
		s.setId(Integer.parseInt(req.getParameter("uid")));
		s.setName(req.getParameter("uname"));
		s.setSex(req.getParameter("usex"));
		s.setMajor(req.getParameter("umajor"));
		s.setGrade(Integer.parseInt(req.getParameter("ugrade")));
		s.setAddress(req.getParameter("uaddress"));
		s.setPhone(req.getParameter("uphone"));
		s.setQq(req.getParameter("uqq"));
		s.setPwd(req.getParameter("pwd"));
		
		if (s.getSex().equals("-«Î—°‘Ò") || s.getMajor().equals("-«Î—°‘Ò")) {
			req.getRequestDispatcher("Error_Input.jsp").forward(req, resp);
		} else {
			if (webdataservice.insertStu(s)) {
				req.getRequestDispatcher("LoginPage.jsp").forward(req, resp);
			} else {
				req.getRequestDispatcher("Error.jsp").forward(req, resp);
			}
		}
		
	}

}
