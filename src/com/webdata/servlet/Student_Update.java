package com.webdata.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.webdata.pojo.Student;
import com.webdata.service.WebdataService;
import com.webdata.service.impl.WebdataServiceImpl;

/**
 * Servlet implementation class Student_Update
 */
@SuppressWarnings("serial")
@WebServlet("/UpdateStu")
public class Student_Update extends HttpServlet {
	
	private WebdataService webdataservice = new WebdataServiceImpl();
	private Student s;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		HttpSession hs = req.getSession();
		s = new Student();
		s.setName(req.getParameter("uname"));
		s.setSex(req.getParameter("usex"));
		s.setMajor(req.getParameter("umajor"));
		s.setGrade(Integer.parseInt(req.getParameter("ugrade")));
		s.setAddress(req.getParameter("uaddress"));
		s.setPhone(req.getParameter("uphone"));
		s.setQq(req.getParameter("uqq"));
		
		if (s.getSex().equals("-«Î—°‘Ò") || s.getMajor().equals("-«Î—°‘Ò")) {
			req.getRequestDispatcher("Error_Input.jsp").forward(req, resp);
		} else {
			if (webdataservice.alterStu((int) hs.getAttribute("id"), s)) {
				hs.setAttribute("name", s.getName());
				hs.setAttribute("sex", s.getSex());
				hs.setAttribute("major", s.getMajor());
				hs.setAttribute("grade", s.getGrade());
				hs.setAttribute("address", s.getAddress());
				hs.setAttribute("phone", s.getPhone());
				hs.setAttribute("qq", s.getQq());
				req.getRequestDispatcher("student_welcome.jsp").forward(req, resp);
			} else {
				req.getRequestDispatcher("Error.jsp").forward(req, resp);
			}
		}
	}

}
