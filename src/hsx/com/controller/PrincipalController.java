package hsx.com.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import hsx.com.entity.Principal;
import hsx.com.service.PrincipalService;

@Controller
@RequestMapping("/principal")
public class PrincipalController {

	@Resource
	private PrincipalService principalService;
	 
	@RequestMapping("/prp")
	public String basicinfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String number=request.getParameter("number");
		String college=request.getParameter("college");		
		String grade=request.getParameter("grade");		
		String major=request.getParameter("major");
		String classes=request.getParameter("classes");		
		String nation=request.getParameter("nation");
		String natives=request.getParameter("natives");		
		String politics=request.getParameter("politics");		
		String phone=request.getParameter("phone");	
		String performance=request.getParameter("performance");	
		String work=request.getParameter("work");		
		String rewandpunish=request.getParameter("rewandpunish");
		Integer infoId=Integer.parseInt(request.getParameter("infoId"));
		System.out.println("社团负责人信息："+"姓名："+name+","+"性别："+sex+","+"社团编号："+infoId);
		Principal principal=new Principal(name,sex,number,college,grade,major,classes,nation,natives,politics,phone,performance,work,rewandpunish,infoId);
		principalService.principalset(principal);
		return "forward:/show/read.do?infoId="+infoId;
	}
	
}
