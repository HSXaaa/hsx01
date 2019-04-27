package hsx.com.service;

import java.util.ArrayList;

import hsx.com.entity.Teacher;

public interface TeacherService {

	public int teacherset(Teacher teacher);

	public ArrayList<Teacher> selectTeacherList(Integer infoId);

	public ArrayList<Teacher> unionTeacherList();

}
