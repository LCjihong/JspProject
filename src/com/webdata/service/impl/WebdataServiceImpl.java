package com.webdata.service.impl;

import java.util.List;

import com.webdata.dao.WebdataDao;
import com.webdata.dao.impl.WebdataDaoImpl;
import com.webdata.pojo.Course;
import com.webdata.pojo.Student;
import com.webdata.pojo.Teacher;
import com.webdata.service.WebdataService;

public class WebdataServiceImpl implements WebdataService {

	private WebdataDao dao = new WebdataDaoImpl();

	/**
	 * 学生操作
	 */
	// 查询所有学生信息，用于老师管理学生信息
	@Override
	public List<Student> showAll_Stu() {
		return dao.selAll_Stu();
	}

	@Override
	public Student loginStu(int id, String pwd) {
		return dao.selStu(id, pwd);
	}

	@Override
	public boolean alterStu(int id, Student s) {
		boolean judge = false;
		if (dao.updStu(id, s) > 0) {
			judge = !judge;
		}
		return judge;
	}

	@Override
	public boolean deleteStu(int id) {
		boolean judge = false;
		if (dao.delStu(id) > 0) {
			judge = !judge;
		}
		return judge;
	}

	@Override
	public boolean insertStu(Student s) {
		boolean judge = false;
		if (dao.insStu(s) > 0) {
			judge = !judge;
		}
		return judge;
	}

	@Override
	public boolean newPwdStu(int id, String opwd, String npwd) {
		boolean judge = false;
		if (dao.selStu(id, opwd) != null) {
			if (dao.newPwd_Stu(id, npwd) > 0) {
				judge = !judge;
			}
		}
		return judge;
	}

	@Override
	public boolean forgetPwdStu1(int id, String name, String phone) {
		return dao.judgeID_Stu(id, name, phone);
	}

	@Override
	public boolean forgetPwdStu2(int id, String pwd) {
		boolean judge = false;
		if (dao.newPwd_Stu(id, pwd) > 0) {
			judge = !judge;
		}
		return judge;
	}

	/**
	 * 老师操作
	 */
	@Override
	public Teacher loginTea(int id, String pwd) {
		return dao.selTea(id, pwd);
	}

	@Override
	public boolean alterTea(int id, Teacher t) {
		boolean judge = false;
		if (dao.updTea(id, t) > 0) {
			judge = !judge;
		}
		return judge;
	}

	@Override
	public boolean deleteTea(int id) {
		boolean judge = false;
		if (dao.delTea(id) > 0) {
			judge = !judge;
		}
		return judge;
	}

	@Override
	public boolean insertTea(Teacher t) {
		boolean judge = false;
		if (dao.insTea(t) > 0) {
			judge = !judge;
		}
		return judge;
	}

	@Override
	public boolean newPwdTea(int id, String opwd, String npwd) {
		boolean judge = false;
		if (dao.selTea(id, opwd) != null) {
			if (dao.newPwd_Tea(id, npwd) > 0) {
				judge = !judge;
			}
		}
		return judge;
	}

	@Override
	public boolean forgetPwdTea1(int id, String name, String phone) {
		return dao.judgeID_Tea(id, name, phone);
	}

	@Override
	public boolean forgetPwdTea2(int id, String pwd) {
		boolean judge = false;
		if (dao.newPwd_Tea(id, pwd) > 0) {
			judge = !judge;
		}
		return judge;
	}

	@Override
	public List<Course> showAll_Cor(String major) {
		return dao.selAll_Cor(major);
	}

	@Override
	public boolean alterCor(String major, int cnumber, Course c) {
		boolean judge = false;
		if (dao.updCor(major, cnumber, c) > 0) {
			judge = !judge;
		}
		return judge;
	}

	@Override
	public Course showCourse(String major, int cnumber) {
		return dao.selCourse(major, cnumber);
	}

}
