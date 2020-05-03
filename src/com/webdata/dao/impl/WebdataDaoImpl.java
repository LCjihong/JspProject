package com.webdata.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.jdbc.util.jdbcUtil;
import com.webdata.dao.WebdataDao;
import com.webdata.pojo.Course;
import com.webdata.pojo.Student;
import com.webdata.pojo.Teacher;

public class WebdataDaoImpl implements WebdataDao {
	private jdbcUtil j = new jdbcUtil();

	/**
	 * 学生信息操作
	 */
	@SuppressWarnings("null")
	// 查询所有学生信息
	@Override
	public List<Student> selAll_Stu() {
		List<Student> list = new ArrayList<Student>();
		String sql = "select * from student";
		Student s = null;

		Connection conn = j.getConnection();
		Statement stmt = j.getStatement(conn);
		ResultSet rs = j.runStatement_Query(stmt, sql);
		try {
			if (rs.next()) {
				do {
					s = new Student();
					s.setId(rs.getInt(1));
					s.setName(rs.getString(2));
					s.setSex(rs.getString(3));
					s.setMajor(rs.getString(4));
					s.setGrade(rs.getInt(5));
					s.setAddress(rs.getString(6));
					s.setPhone(rs.getString(7));
					s.setQq(rs.getString(8));
					s.setPwd(rs.getString(9));
					s.setLeavetime(rs.getString(10));
					list.add(s);
				} while (rs.next());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		j.closeAll(rs, stmt, null, conn);
		return list;
	}

	// 查询某个学生信息
	@Override
	public Student selStu(int id, String pwd) {
		Student s = null;
		String sql = "select * from student where uid=? and pwd=?";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		ResultSet rs = j.runPreparedStatement_Query(ps, id, pwd);
		try {
			if (rs.next()) {
				s = new Student();
				s.setId(rs.getInt("uid"));
				s.setName(rs.getString(2));
				s.setSex(rs.getString(3));
				s.setMajor(rs.getString(4));
				s.setGrade(rs.getInt(5));
				s.setAddress(rs.getString(6));
				s.setPhone(rs.getString(7));
				s.setQq(rs.getString(8));
				s.setPwd(rs.getString(9));
				s.setLeavetime(rs.getString(10));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		j.closeAll(rs, null, ps, conn);
		return s;
	}

	@Override
	// 通过id,name,phone查询个人信息，用于忘记密码验证
	public boolean judgeID_Stu(int id, String name, String phone) {
		boolean judge = false;
		String sql = "select * from student where uid=? and uname=? and uphone=?";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		ResultSet rs = j.runPreparedStatement_Query(ps, id, name, phone);
		try {
			if (rs.next()) {
				judge = !judge;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		j.closeAll(null, null, ps, conn);
		return judge;
	}

	// 修改某个学生信息
	@Override
	public int updStu(int id, Student s) {
		int result = 0;
		String sql = "update student set uname=?, usex=?, umajor=?, ugrade=?, uaddress=?, uphone=?, uqq=? where uid=?";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		result = j.runPreparedStatement_Update(ps, s.getName(), s.getSex(), s.getMajor(), s.getGrade(), s.getAddress(),
				s.getPhone(), s.getQq(), id);

		if (result > 0) {
			j.runConnection(conn);
		}
		j.closeAll(null, null, ps, conn);
		return result;
	}

	// 删除某个学生信息(修改leavetime为当前时间)
	@Override
	public int delStu(int id) {
		int result = 0;
		String sql = "update student set leavetime=CURRENT_TIMESTAMP where uid=?";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		result = j.runPreparedStatement_Update(ps, id);
		if (result > 0) {
			j.runConnection(conn);
		}
		j.closeAll(null, null, ps, conn);
		return result;
	}

	// 增添学生信息
	@Override
	public int insStu(Student s) {
		int result = 0;
		String sql = "insert into student (uid, uname, usex, umajor, ugrade, uaddress, uphone, uqq, pwd) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		result = j.runPreparedStatement_Update(ps, s.getId(), s.getName(), s.getSex(), s.getMajor(), s.getGrade(),
				s.getAddress(), s.getPhone(), s.getQq(), s.getPwd());
		if (result > 0) {
			j.runConnection(conn);
		}
		j.closeAll(null, null, ps, conn);
		return result;
	}

	// 修改密码
	@Override
	public int newPwd_Stu(int id, String pwd) {
		int result = 0;
		String sql = "update student set pwd=? where uid=?";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		result = j.runPreparedStatement_Update(ps, pwd, id);
		if (result > 0) {
			j.runConnection(conn);
		}
		j.closeAll(null, null, ps, conn);
		return result;
	}

	/**
	 * 老师信息操作
	 */
	@SuppressWarnings("null")
	// 查询某个老师信息
	@Override
	public Teacher selTea(int id, String pwd) {
		Teacher s = null;
		String sql = "select * from teacher where uid=? and pwd=?";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		ResultSet rs = j.runPreparedStatement_Query(ps, id, pwd);
		try {
			if (rs.next()) {
				s = new Teacher();
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setSex(rs.getString(3));
				s.setPhone(rs.getString(4));
				s.setPwd(rs.getString(5));
				s.setLeavetime(rs.getString(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		j.closeAll(rs, null, ps, conn);
		return s;
	}

	// 修改某个老师信息
	@Override
	public int updTea(int id, Teacher t) {
		int result = 0;
		String sql = "update teacher set uname=?, usex=?, uphone=? where uid=?";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		result = j.runPreparedStatement_Update(ps, t.getName(), t.getSex(), t.getPhone(), id);
		if (result > 0) {
			j.runConnection(conn);
		}
		j.closeAll(null, null, ps, conn);
		return result;
	}

	// 删除某个老师信息(修改leavetime为当前时间)
	@Override
	public int delTea(int id) {
		int result = 0;
		String sql = "update teacher set leavetime=CURRENT_TIMESTAMP where uid=?";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		result = j.runPreparedStatement_Update(ps, id);
		if (result > 0) {
			j.runConnection(conn);
		}
		j.closeAll(null, null, ps, conn);
		return result;
	}

	// 增添老师信息
	@Override
	public int insTea(Teacher t) {
		int result = 0;
		String sql = "insert into teacher (uid, uname, usex, uphone, pwd) values (?, ?, ?, ?, ?)";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		result = j.runPreparedStatement_Update(ps, t.getId(), t.getName(), t.getSex(), t.getPhone(), t.getPwd());
		if (result > 0) {
			j.runConnection(conn);
		}
		j.closeAll(null, null, ps, conn);
		return result;
	}

	// 修改密码
	@Override
	public int newPwd_Tea(int id, String pwd) {
		int result = 0;
		String sql = "update teacher set pwd=? where uid=?";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		result = j.runPreparedStatement_Update(ps, pwd, id);
		if (result > 0) {
			j.runConnection(conn);
		}
		j.closeAll(null, null, ps, conn);
		return result;
	}

	@Override
	// 通过id,name,phone查询个人信息，用于忘记密码验证
	public boolean judgeID_Tea(int id, String name, String phone) {
		boolean judge = false;
		String sql = "select * from student where uid=? and uname=? and uphone=?";

		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql);
		ResultSet rs = j.runPreparedStatement_Query(ps, id, name, phone);
		try {
			if (rs.next()) {
				judge = !judge;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		j.closeAll(null, null, ps, conn);
		return judge;
	}

	/**
	 * 课程信息操作
	 */
	@SuppressWarnings({ "null", "resource" })
	@Override
	public List<Course> selAll_Cor(String major) {
		List<Course> list = new ArrayList<Course>();
		ResultSet rs = null;
		Course c = null;
		jdbcUtil j = new jdbcUtil();
		String sql1 = "select msmall from major where mname=?";
		String sql2 = "select * from course_";
		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql1);

		try {
			rs = j.runPreparedStatement_Query(ps, major);
			if (rs.next()) {
				String major_s = rs.getString(1);
				ps = j.getPrepareStatement(conn, sql2 + major_s);
				rs = j.runPreparedStatement_Query(ps);
				if (rs.next()) {
					do {
						c = new Course();
						c.setNumber(rs.getInt(1));
						c.setMonday(rs.getString(2));
						c.setTuesday(rs.getString(3));
						c.setWednesday(rs.getString(4));
						c.setThursday(rs.getString(5));
						c.setFriday(rs.getString(6));
						list.add(c);
					} while (rs.next());
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			j.closeAll(rs, null, ps, conn);
		}
		return list;
	}

	@Override
	public int updCor(String major, int cnumber, Course c) {
		int result = 0;
		ResultSet rs = null;
		String sql1 = "select msmall from major where mname=?";

		jdbcUtil j = new jdbcUtil();
		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql1);
		try {
			rs = j.runPreparedStatement_Query(ps, major);
			if (rs.next()) {
				String major_s = rs.getString(1);
				String sql2 = "update course_" + major_s + " set cmonday='" + c.getMonday() + "', ctuesday='"
						+ c.getTuesday() + "', cwednesday='" + c.getWednesday() + "', cthursday='" + c.getThursday()
						+ "', cfriday='" + c.getFriday() + "' where cnumber=" + cnumber;
				ps = j.getPrepareStatement(conn, sql2);
				result = j.runPreparedStatement_Update(ps);
				if (result > 0) {
					j.runConnection(conn);
				}
			}
		} catch (SQLException e) {
			// 若发生异常就回滚操作，保护数据
			j.rollback(conn);
		} finally {
			j.closeAll(rs, null, ps, conn);
		}
		return result;
	}

	@SuppressWarnings({ "null", "resource" })
	@Override
	public Course selCourse(String major, int cnumber) {
		Course c = null;
		ResultSet rs = null;
		Statement stmt = null;
		String sql1 = "select msmall from major where mname=?";

		jdbcUtil j = new jdbcUtil();
		Connection conn = j.getConnection();
		PreparedStatement ps = j.getPrepareStatement(conn, sql1);
		try {
			rs = j.runPreparedStatement_Query(ps, major);
			if (rs.next()) {
				String major_s = rs.getString(1);
				String sql2 = "select * from course_" + major_s + " where cnumber=";
				ps = j.getPrepareStatement(conn, sql2 + cnumber);
				rs = j.runPreparedStatement_Query(ps);
				if (rs.next()) {
					c = new Course();
					c.setNumber(rs.getInt(1));
					c.setMonday(rs.getString(2));
					c.setTuesday(rs.getString(3));
					c.setWednesday(rs.getString(4));
					c.setThursday(rs.getString(5));
					c.setFriday(rs.getString(6));
				}
			}
		} catch (SQLException e) {
			// 若发生异常就回滚操作，保护数据
			j.rollback(conn);
		} finally {
			j.closeAll(rs, stmt, ps, conn);
		}
		return c;
	}
}
