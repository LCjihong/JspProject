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

@SuppressWarnings("serial")
@WebServlet("/getDataStu")
public class Student_GetData extends HttpServlet {
	private WebdataService WebdataService = new WebdataServiceImpl();
	private Student s = null;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		HttpSession hs = req.getSession();
		s = WebdataService.loginStu(Integer.parseInt(req.getParameter("uid")), req.getParameter("pwd"));
		if (s != null && s.getLeavetime() == null) {
			hs.setAttribute("id", s.getId());
			hs.setAttribute("name", s.getName());
			hs.setAttribute("sex", s.getSex());
			hs.setAttribute("major", s.getMajor());
			hs.setAttribute("grade", s.getGrade());
			hs.setAttribute("address", s.getAddress());
			hs.setAttribute("phone", s.getPhone());
			hs.setAttribute("qq", s.getQq());
			hs.setAttribute("pwd", s.getPwd());
			
			//增加一个判断是否登录的值，控制不登陆直接访问主页时的登录跳转
			hs.setAttribute("login", true);

			req.getRequestDispatcher("/student_welcome.jsp").forward(req, resp);
		} else {
			req.getRequestDispatcher("/Error_Input.jsp").forward(req, resp);
		}
	}
}
