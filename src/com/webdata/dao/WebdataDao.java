package com.webdata.dao;

import java.util.List;

import com.webdata.pojo.Course;
import com.webdata.pojo.Student;
import com.webdata.pojo.Teacher;

public interface WebdataDao {
	/**
	 * 学生信息操作
	 */
	// 查询所有学生信息
	List<Student> selAll_Stu();

	// 查询某个学生信息
	Student selStu(int id, String pwd);

	// 修改某个学生信息
	int updStu(int id, Student s);

	// 删除某个学生信息(修改leavetime为当前时间)
	int delStu(int id);

	// 增添学生信息
	int insStu(Student s);

	// 修改密码
	int newPwd_Stu(int id, String pwd);

	// 通过id,name,phone查询个人信息，用于忘记密码验证
	boolean judgeID_Stu(int id, String name, String phone);

	/**
	 * 老师信息操作
	 */
	// 查询某个老师信息
	Teacher selTea(int id, String pwd);

	// 修改某个老师信息
	int updTea(int id, Teacher t);

	// 删除某个老师信息(修改leavetime为当前时间)
	int delTea(int id);

	// 增添老师信息
	int insTea(Teacher t);

	// 修改密码
	int newPwd_Tea(int id, String pwd);

	// 通过id,name,phone查询个人信息，用于忘记密码验证
	boolean judgeID_Tea(int id, String name, String phone);

	/**
	 * 课程信息操作
	 */
	// 查询所有课程信息，用于学生查看个人信息
	List<Course> selAll_Cor(String major);

	// 修改课程信息，用于老师管理课程信息
	int updCor(String major, int cnumber, Course c);
	
	// 查询某一节课信息，用于局部展示
	Course selCourse(String major, int cnumber);
}
