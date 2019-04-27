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
		System.out.println("���ѹ���"+"������Դ:"+income+","+"����֧����"+expend+","+"����Ⱦ��ѽ��㣺"+lastbudget+","+"����Ⱦ���Ԥ�㣺"+nextbudget+","+"���ű�ţ�"+infoId);
		Expenditure expenditure=new Expenditure(income,expend,lastbudget,nextbudget,infoId);
		expenditureService.expenditureset(expenditure);
		return "forward:/show/read.do?infoId="+infoId;
	}
	
}
