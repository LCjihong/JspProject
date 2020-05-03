package com.webdata.dao;

import java.util.List;

import com.webdata.pojo.Course;
import com.webdata.pojo.Student;
import com.webdata.pojo.Teacher;

public interface WebdataDao {
	/**
	 * ѧ����Ϣ����
	 */
	// ��ѯ����ѧ����Ϣ
	List<Student> selAll_Stu();

	// ��ѯĳ��ѧ����Ϣ
	Student selStu(int id, String pwd);

	// �޸�ĳ��ѧ����Ϣ
	int updStu(int id, Student s);

	// ɾ��ĳ��ѧ����Ϣ(�޸�leavetimeΪ��ǰʱ��)
	int delStu(int id);

	// ����ѧ����Ϣ
	int insStu(Student s);

	// �޸�����
	int newPwd_Stu(int id, String pwd);

	// ͨ��id,name,phone��ѯ������Ϣ����������������֤
	boolean judgeID_Stu(int id, String name, String phone);

	/**
	 * ��ʦ��Ϣ����
	 */
	// ��ѯĳ����ʦ��Ϣ
	Teacher selTea(int id, String pwd);

	// �޸�ĳ����ʦ��Ϣ
	int updTea(int id, Teacher t);

	// ɾ��ĳ����ʦ��Ϣ(�޸�leavetimeΪ��ǰʱ��)
	int delTea(int id);

	// ������ʦ��Ϣ
	int insTea(Teacher t);

	// �޸�����
	int newPwd_Tea(int id, String pwd);

	// ͨ��id,name,phone��ѯ������Ϣ����������������֤
	boolean judgeID_Tea(int id, String name, String phone);

	/**
	 * �γ���Ϣ����
	 */
	// ��ѯ���пγ���Ϣ������ѧ���鿴������Ϣ
	List<Course> selAll_Cor(String major);

	// �޸Ŀγ���Ϣ��������ʦ����γ���Ϣ
	int updCor(String major, int cnumber, Course c);
	
	// ��ѯĳһ�ڿ���Ϣ�����ھֲ�չʾ
	Course selCourse(String major, int cnumber);
}
