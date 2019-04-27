package hsx.com.dao;

import java.util.ArrayList;

import hsx.com.entity.Teacher;

public interface TeacherDao {

	public int teachersetup(Teacher teacher);

	public ArrayList<Teacher> selectTeacher(Integer infoId);

	public ArrayList<Teacher> unionTeacher();


}
