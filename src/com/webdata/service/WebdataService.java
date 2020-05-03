package com.webdata.service;

import java.util.List;

import com.webdata.pojo.Course;
import com.webdata.pojo.Student;
import com.webdata.pojo.Teacher;

public interface WebdataService {

	/**
	 * ѧ������
	 */
	// ��ѯ����ѧ����Ϣ��������ʦ����ѧ����Ϣ��չʾ
	List<Student> showAll_Stu();

	// ��ѯĳ��ѧ����Ϣ��id��pwd�������ڵ�¼
	Student loginStu(int id, String pwd);

	// �޸�ĳ��ѧ����Ϣ������ѧ���û��޸ĸ�����Ϣ
	boolean alterStu(int id, Student s);

	// ɾ��ĳ��ѧ����Ϣ��������ʦ����ѧ����Ϣʱ�Ŀ�������
	boolean deleteStu(int id);

	// ����ѧ����Ϣ��������ʦ����ѧ����Ϣʱ����ӹ���&����ע�Ṧ��
	boolean insertStu(Student s);

	// �޸����루��½��
	boolean newPwdStu(int id, String opwd, String npwd);

	// �޸�����1���������룩���ж�ͨ��id��name�� phone�Ƿ���Բ�ѯ����Ϣ
	boolean forgetPwdStu1(int id, String name, String phone);

	// �޸�����2���������룩���ж�ͨ����������������
	boolean forgetPwdStu2(int id, String pwd);

	/**
	 * ��ʦ����
	 */
	// ��ѯĳ����ʦ��Ϣ��id�� pwd��,���ڵ�¼
	Teacher loginTea(int id, String pwd);

	// �޸�ĳ����ʦ��Ϣ�������޸ĸ�����Ϣ
	boolean alterTea(int id, Teacher t);

	// ɾ��ĳ����ʦ��Ϣ������ע���˻�
	boolean deleteTea(int id);

	// ������ʦ��Ϣ����������ע�Ṧ��
	boolean insertTea(Teacher t);

	// �޸����루��½��
	boolean newPwdTea(int id, String opwd, String npwd);

	// �޸�����1���������룩���ж�ͨ��id��name�� phone�Ƿ���Բ�ѯ����Ϣ
	boolean forgetPwdTea1(int id, String name, String phone);

	// �޸�����2���������룩���ж�ͨ����������������
	boolean forgetPwdTea2(int id, String pwd);
	
	/**
	 * �γ���Ϣ����
	 */
	// ��ѯĳһרҵ�����пγ���Ϣ
	List<Course> showAll_Cor(String major);
	// �޸�ĳһרҵĳһ��Ŀγ���Ϣ�������޸Ŀγ���Ϣ
	boolean alterCor(String major, int cnumber, Course c);
	// �鿴ĳһרҵĳһ�ڿεĿγ���Ϣ�����ھֲ�չʾ
	Course showCourse(String major, int cnumber);
	
	
}
