package hsx.com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import hsx.com.entity.Member;
import hsx.com.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Resource
	private MemberService memberService;
	 
	@RequestMapping("/mbr")
	public String teacherinfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name=request.getParameter("name");
		String number=request.getParameter("number");
		String pay=request.getParameter("pay");			
		Integer infoId=Integer.parseInt(request.getParameter("infoId"));		
		System.out.println("会员管理："+"会员姓名："+name+","+"学工信息："+number+","+"费用缴纳情况："+pay+","+"社团编号："+infoId);
		Member member=new Member(name,number,pay,infoId);
		memberService.memberset(member);
		return "forward:/show/read.do?infoId="+infoId;
	}
	
	@RequestMapping("/read")
	public String read(Model model,HttpServletRequest request, HttpServletResponse response)throws Exception{
/*		List<MemberRead> list=memberService.selectMemberList();
		System.out.println("正确");
		model.addAttribute("member", list);*/
		try {
			Integer infoId=Integer.parseInt(request.getParameter("infoId"));
			System.out.println(infoId);
			ArrayList<Member> list=memberService.selectMemberList(infoId);
			System.out.println(list.toString());
/*			System.out.println(list.toString());
			Member member = list.get(0);
			System.out.println(member.getId());
			ArrayList res = new ArrayList();
			res.add(list.remove(0).getInfo());*/
			model.addAttribute("member", list);
			System.out.println("success");
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "read";
	}

	
}
