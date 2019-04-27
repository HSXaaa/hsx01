package hsx.com.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import hsx.com.entity.Expenditure;
import hsx.com.service.ExpenditureService;

@Controller
@RequestMapping("/expenditure")
public class ExpenditureController {

	@Resource
	private ExpenditureService expenditureService;
	 
	@RequestMapping("/exd")
	public String teacherinfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String income=request.getParameter("income");
		String expend=request.getParameter("expend");
		String lastbudget=request.getParameter("lastbudget");
		String nextbudget=request.getParameter("nextbudget");
		Integer infoId=Integer.parseInt(request.getParameter("infoId"));		
		System.out.println("经费管理："+"经费来源:"+income+","+"经费支出："+expend+","+"上年度经费结算："+lastbudget+","+"本年度经费预算："+nextbudget+","+"社团编号："+infoId);
		Expenditure expenditure=new Expenditure(income,expend,lastbudget,nextbudget,infoId);
		expenditureService.expenditureset(expenditure);
		return "forward:/show/read.do?infoId="+infoId;
	}
	
}
