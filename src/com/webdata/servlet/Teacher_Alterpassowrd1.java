package com.webdata.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webdata.service.WebdataService;
import com.webdata.service.impl.WebdataServiceImpl;

/**
 * Servlet implementation class Teacher_Alterpassowrd1
 */
@SuppressWarnings("serial")
@WebServlet("/AlterPwd_Tea1")
public class Teacher_Alterpassowrd1 extends HttpServlet {

	private WebdataService webdataservice = new WebdataServiceImpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		HttpSession hs = req.getSession();
		if(webdataservice.forgetPwdTea1(Integer.parseInt(req.getParameter("uid")), req.getParameter("uname"), req.getParameter("uphone"))) {
			hs.setAttribute("uid", req.getParameter("uid"));
			req.getRequestDispatcher("teacher_newpassword.jsp").forward(req, resp);
		}else {
			req.getRequestDispatcher("Error.jsp").forward(req, resp);
		}
	}

}
