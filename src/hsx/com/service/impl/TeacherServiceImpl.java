package hsx.com.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hsx.com.dao.TeacherDao;
import hsx.com.entity.Teacher;
import hsx.com.service.TeacherService;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService{

	@Resource
	private TeacherDao teacherDao;
	
	@Override
	public int teacherset(Teacher teacher) {
		return teacherDao.teachersetup(teacher);
	}

	@Override
	public ArrayList<Teacher> selectTeacherList(Integer infoId) {
		// TODO Auto-generated method stub
		return teacherDao.selectTeacher(infoId);
	}

	@Override
	public ArrayList<Teacher> unionTeacherList() {
		// TODO Auto-generated method stub
		return teacherDao.unionTeacher();
	}	
}
