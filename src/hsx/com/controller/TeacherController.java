package hsx.com.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import hsx.com.entity.Teacher;
import hsx.com.service.TeacherService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

	@Resource
	private TeacherService teacherService;
	 
	@RequestMapping("/zdls")
	public String teacherinfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String number=request.getParameter("number");	
		String politics=request.getParameter("politics");
		String workplace=request.getParameter("workplace");	
		String job=request.getParameter("job");	
		String phone=request.getParameter("phone");	
		Integer infoId=Integer.parseInt(request.getParameter("infoId"));
		System.out.println("指导老师："+"姓名："+name+","+"性别："+sex+","+"社团编号："+infoId);
		Teacher teacher=new Teacher(name,sex,number,politics,workplace,job,phone,infoId);
		teacherService.teacherset(teacher);
		return "forward:/show/read.do?infoId="+infoId;
	}
	
}
