package com.webdata.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webdata.pojo.Course;
import com.webdata.service.WebdataService;
import com.webdata.service.impl.WebdataServiceImpl;

/**
 * Servlet implementation class Course_Alter
 */
@SuppressWarnings("serial")
@WebServlet("/Course_Alter")
public class Course_Alter extends HttpServlet {
	private WebdataService webdataservice = new WebdataServiceImpl();
	private Course c = new Course();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		c.setNumber(Integer.parseInt(req.getParameter("cnumber")));
		c.setMonday(req.getParameter("monday"));
		c.setTuesday(req.getParameter("tuesday"));
		c.setWednesday(req.getParameter("wednesday"));
		c.setThursday(req.getParameter("thursday"));
		c.setFriday(req.getParameter("friday"));
		if(webdataservice.alterCor(req.getParameter("major"), c.getNumber(), c)) {
			req.getRequestDispatcher("teacher_managercourse.jsp").forward(req, resp);
		}else {
			resp.sendRedirect("Error.jsp");
		}
		
	}

}
