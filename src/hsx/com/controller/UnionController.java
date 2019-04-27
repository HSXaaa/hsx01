package hsx.com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import hsx.com.entity.Union;
import hsx.com.service.UnionService;

@Controller
@RequestMapping("/union")
public class UnionController {

	@Resource
	private UnionService unionService;
	
	@RequestMapping("/unionlogin")
	public String unionlogin(Union union,HttpServletRequest request){
		Union resultunion=unionService.unionlogin(union);
		if(resultunion==null){
			request.setAttribute("union", union);
			request.setAttribute("errorMsg", "用户名或密码错误！");
			System.out.println("error");
			return "redirect:/union/unionlogin.jsp?error=error2";
			
		}else{
			//获取Session对象
			HttpSession session=request.getSession();
			//将用户数据存储到Session中
			session.setAttribute("currentunion", resultunion);
			System.out.println("success");
			return "forward:/unionshow/adminshow.do";
		}
	}
}

