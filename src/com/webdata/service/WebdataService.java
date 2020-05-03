package com.webdata.service;

import java.util.List;

import com.webdata.pojo.Course;
import com.webdata.pojo.Student;
import com.webdata.pojo.Teacher;

public interface WebdataService {

	/**
	 * 学生操作
	 */
	// 查询所有学生信息，用于老师管理学生信息的展示
	List<Student> showAll_Stu();

	// 查询某个学生信息（id，pwd），用于登录
	Student loginStu(int id, String pwd);

	// 修改某个学生信息，用于学生用户修改个人信息
	boolean alterStu(int id, Student s);

	// 删除某个学生信息，用于老师管理学生信息时的开除功能
	boolean deleteStu(int id);

	// 增添学生信息，用于老师管理学生信息时的添加功能&自主注册功能
	boolean insertStu(Student s);

	// 修改密码（登陆后）
	boolean newPwdStu(int id, String opwd, String npwd);

	// 修改密码1（忘记密码），判断通过id，name， phone是否可以查询到信息
	boolean forgetPwdStu1(int id, String name, String phone);

	// 修改密码2（忘记密码），判断通过后重新设置密码
	boolean forgetPwdStu2(int id, String pwd);

	/**
	 * 老师操作
	 */
	// 查询某个老师信息（id， pwd）,用于登录
	Teacher loginTea(int id, String pwd);

	// 修改某个老师信息，用于修改个人信息
	boolean alterTea(int id, Teacher t);

	// 删除某个老师信息，用于注销账户
	boolean deleteTea(int id);

	// 增添老师信息，用于自主注册功能
	boolean insertTea(Teacher t);

	// 修改密码（登陆后）
	boolean newPwdTea(int id, String opwd, String npwd);

	// 修改密码1（忘记密码），判断通过id，name， phone是否可以查询到信息
	boolean forgetPwdTea1(int id, String name, String phone);

	// 修改密码2（忘记密码），判断通过后重新设置密码
	boolean forgetPwdTea2(int id, String pwd);
	
	/**
	 * 课程信息操作
	 */
	// 查询某一专业的所有课程信息
	List<Course> showAll_Cor(String major);
	// 修改某一专业某一天的课程信息，用于修改课程信息
	boolean alterCor(String major, int cnumber, Course c);
	// 查看某一专业某一节课的课程信息，用于局部展示
	Course showCourse(String major, int cnumber);
	
	
}
