package hsx.com.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import hsx.com.entity.Basic;
import hsx.com.service.BasicService;


@Controller
@RequestMapping("/basic")
public class BasicController {

	@Resource
	private BasicService basicService;
	 
	@RequestMapping("/info")
	public String basicinfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String sort=request.getParameter("sort");
		String setuptime=request.getParameter("setuptime");
		String purpose=request.getParameter("purpose");	
		String constitutior=request.getParameter("constitutior");
		String organization=request.getParameter("organization");		
		String activity=request.getParameter("activity");
		String rewandpunish=request.getParameter("rewandpunish");		
		Integer infoId=Integer.parseInt(request.getParameter("infoId"));		
		System.out.println("社团基本信息："+"社团分类："+sort+","+"成立时间："+setuptime+","+"宗旨："+purpose+","+"社团章程："+constitutior
				+","+"组织机构设置："+organization+","+"主要活动简介："+activity+","+"近五年奖惩情况："+rewandpunish+","+"社团编号："+infoId);
		Basic basic=new Basic(sort,setuptime,purpose,constitutior,organization,activity,rewandpunish,infoId);
		basicService.basicset(basic);
		return "forward:/show/read.do?infoId="+infoId;
	}
	
}
