package hsx.com.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import hsx.com.entity.Activity;
import hsx.com.entity.Basic;
import hsx.com.entity.Expenditure;
import hsx.com.entity.Member;
import hsx.com.entity.Principal;
import hsx.com.entity.Teacher;
import hsx.com.entity.User;
import hsx.com.service.ActivityService;
import hsx.com.service.BasicService;
import hsx.com.service.ExpenditureService;
import hsx.com.service.MemberService;
import hsx.com.service.PrincipalService;
import hsx.com.service.TeacherService;
import hsx.com.service.UserService;

@Controller
@RequestMapping("/unionshow")
public class UnionReadController {

	@Resource
	private UserService userService;
	
	@Resource
	private BasicService basicService;
	
	@Resource
	private PrincipalService principalService;
	
	@Resource
	private TeacherService teacherService;
	
	@Resource
	private ActivityService activityService;
	
	@Resource
	private MemberService memberService;
	
	@Resource
	private ExpenditureService expenditureService;
	
	@RequestMapping("/adminshow")
	public String read(Model model,HttpServletRequest request, HttpServletResponse response)throws Exception{
		try {
			ArrayList<User> Userlist=userService.unionUserList();
			model.addAttribute("user", Userlist);
			System.out.println("success");
			
		}catch (Exception e) {
			System.out.println("error");
			e.printStackTrace();
		}
		return "union/direction/main";
	}
	
	@RequestMapping("/adminshow2")
	public String read2(Model model,HttpServletRequest request, HttpServletResponse response)throws Exception{
		try {
			ArrayList<User> Userlist=userService.unionUserList();
			model.addAttribute("user", Userlist);
			System.out.println("success");
			
		}catch (Exception e) {
			System.out.println("error");
			e.printStackTrace();
		}
		return "union/direction/admin";
	}

	@RequestMapping("/read")
	public String unionread(Model model,HttpServletRequest request, HttpServletResponse response)throws Exception{
		try {
			Integer infoId=Integer.parseInt(request.getParameter("infoId"));
			System.out.println(infoId);
			
			String userName=request.getParameter("userName");
			request.setAttribute("name",userName);
			
			ArrayList<Basic> Basiclist=basicService.selectBasicList(infoId);
			model.addAttribute("basic", Basiclist);
			
			ArrayList<Principal> Principallist=principalService.selectPrincipalList(infoId);
			model.addAttribute("principal", Principallist);
			
			ArrayList<Teacher> Teacherlist=teacherService.selectTeacherList(infoId);
			model.addAttribute("teacher", Teacherlist);
			
			ArrayList<Activity> Activitylist=activityService.selectActivityList(infoId);
			model.addAttribute("activity", Activitylist);
			
			ArrayList<Member> Memberlist=memberService.selectMemberList(infoId);
			model.addAttribute("member", Memberlist);
			
			ArrayList<Expenditure> Expenditurelist=expenditureService.selectExpenditureList(infoId);
			model.addAttribute("expenditure", Expenditurelist);		
			System.out.println("success");
			
		}catch (Exception e) {
			System.out.println("error");
			e.printStackTrace();
		}
		return "union/direction/unionRead";
	}

	
}


/*ArrayList<Basic> Basiclist=basicService.unionBasicList();
model.addAttribute("basic", Basiclist);
System.out.println("success1");

ArrayList<Principal> Principallist=principalService.unionPrincipalList();
model.addAttribute("principal", Principallist);
System.out.println("success2");

ArrayList<Teacher> Teacherlist=teacherService.unionTeacherList();
model.addAttribute("teacher", Teacherlist);
System.out.println("success3");

ArrayList<Activity> Activitylist=activityService.unionActivityList();
model.addAttribute("activity", Activitylist);
System.out.println("success4");

ArrayList<Member> Memberlist=memberService.unionMemberList();
model.addAttribute("member", Memberlist);
System.out.println("success5");

ArrayList<Expenditure> Expenditurelist=expenditureService.unionExpenditureList();
model.addAttribute("expenditure", Expenditurelist);		
System.out.println("success6");*/
