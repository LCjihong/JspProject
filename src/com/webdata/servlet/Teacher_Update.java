package com.webdata.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webdata.pojo.Teacher;
import com.webdata.service.WebdataService;
import com.webdata.service.impl.WebdataServiceImpl;

/**
 * Servlet implementation class Teacher_Update
 */
@SuppressWarnings("serial")
@WebServlet("/UpdateTea")
public class Teacher_Update extends HttpServlet {
	
	private WebdataService webdataservice = new WebdataServiceImpl();
	private Teacher t = null;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		HttpSession hs = req.getSession();
		t = new Teacher();
		t.setName(req.getParameter("uname"));
		t.setSex(req.getParameter("usex"));
		t.setPhone(req.getParameter("uphone"));
		
		if (t.getSex().equals("-«Î—°‘Ò")) {
			req.getRequestDispatcher("Error_Input.jsp").forward(req, resp);
		} else {
			if (webdataservice.alterTea((int) hs.getAttribute("id"), t)) {
				hs.setAttribute("name", t.getName());
				hs.setAttribute("sex", t.getSex());
				hs.setAttribute("phone", t.getPhone());
				req.getRequestDispatcher("teacher_welcome.jsp").forward(req, resp);
			} else {
				req.getRequestDispatcher("Error.jsp").forward(req, resp);
			}
		}
		
	}
	
}
