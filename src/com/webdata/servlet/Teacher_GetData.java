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
 * Servlet implementation class Teacher_GetData
 */
@SuppressWarnings("serial")
@WebServlet("/getDataTea")
public class Teacher_GetData extends HttpServlet {
	private WebdataService WebdataService = new WebdataServiceImpl();
	private Teacher t = null;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		HttpSession hs = req.getSession();
		t = WebdataService.loginTea(Integer.parseInt(req.getParameter("uid")), req.getParameter("pwd"));
		if (t != null && t.getLeavetime() == null) {
			hs.setAttribute("id", t.getId());
			hs.setAttribute("name", t.getName());
			hs.setAttribute("sex", t.getSex());
			hs.setAttribute("phone", t.getPhone());
			hs.setAttribute("pwd", t.getPwd());
			
			hs.setAttribute("login", true);

			req.getRequestDispatcher("/teacher_welcome.jsp").forward(req, resp);
		} else {
			req.getRequestDispatcher("/Error_Input.jsp").forward(req, resp);
		}
	}
}
