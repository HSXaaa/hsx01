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
import hsx.com.service.ActivityService;
import hsx.com.service.BasicService;
import hsx.com.service.ExpenditureService;
import hsx.com.service.MemberService;
import hsx.com.service.PrincipalService;
import hsx.com.service.TeacherService;

@Controller
@RequestMapping("/show")
public class ReadController {

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
	
	@RequestMapping("/read")
	public String read(Model model,HttpServletRequest request, HttpServletResponse response)throws Exception{
		try {
			Integer infoId=Integer.parseInt(request.getParameter("infoId"));
			System.out.println(infoId);
			
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
		return "student/infoRead/read";
	}

	
}
