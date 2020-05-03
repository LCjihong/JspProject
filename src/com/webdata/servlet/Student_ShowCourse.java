package com.webdata.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webdata.pojo.Course;
import com.webdata.service.WebdataService;
import com.webdata.service.impl.WebdataServiceImpl;

/**
 * Servlet implementation class Student_ShowCourse
 */
@SuppressWarnings("serial")
@WebServlet("/ShowCor_Stu")
public class Student_ShowCourse extends HttpServlet {
    private WebdataService webdataservice = new WebdataServiceImpl();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		HttpSession hs = req.getSession();
		String major = (String) hs.getAttribute("major");
		List<Course> showAll_Cor = webdataservice.showAll_Cor(major);
		if(showAll_Cor != null) {
			req.setAttribute("course_list", showAll_Cor);
			req.getRequestDispatcher("student_showcourse.jsp").forward(req, resp);
		}else {
			resp.sendRedirect("Error.jsp");
		}
		
	}
	
}
