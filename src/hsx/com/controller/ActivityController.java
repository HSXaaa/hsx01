package hsx.com.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import hsx.com.entity.Activity;
import hsx.com.service.ActivityService;

@Controller
@RequestMapping("/activity")
public class ActivityController {

	@Resource
	private ActivityService activityService;
	 
	@RequestMapping("/aty")
	public String teacherinfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name=request.getParameter("name");
		String time=request.getParameter("time");
		String place=request.getParameter("place");	
		String brief=request.getParameter("brief");
		String fiveyear=request.getParameter("fiveyear");	
		String lastyear=request.getParameter("lastyear");	
		String nextyear=request.getParameter("nextyear");
		String operation=request.getParameter("operation");	
		String periodical=request.getParameter("periodical");		
		Integer infoId=Integer.parseInt(request.getParameter("infoId"));		
		System.out.println("活动管理："+"活动名称："+name+","+"活动时间："+time+","+"社团编号："+infoId);
		Activity activity=new Activity(name,time,place,brief,fiveyear,lastyear,nextyear,operation,periodical,infoId);
		activityService.activityset(activity);
		return "forward:/show/read.do?infoId="+infoId;
	}
	
}
