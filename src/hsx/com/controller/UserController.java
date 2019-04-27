package hsx.com.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import hsx.com.entity.Member;
import hsx.com.entity.User;
import hsx.com.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	private UserService userService;
	
	@RequestMapping("/login")
	public String login(User user,Member member,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		User resultUser=userService.login(user);
		if(resultUser==null){
			request.setAttribute("user", user);
			request.setAttribute("errorMsg", "�û������������");
		   return "redirect:/student/login.jsp?error=error1";
	}else{
			//��ȡSession����
			HttpSession session=request.getSession();
			//���û����ݴ洢��Session��
			session.setAttribute("currentUser", resultUser);
			System.out.println(resultUser+":"+"��¼�ɹ�");
		    //return "redirect:/student/main.jsp";
			return "forward:/show/read.do?infoId=" + resultUser.getId(); //forward ת����������
				}			
	}

	@RequestMapping("/register")
	public String register(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		System.out.println("ע��ɹ���"+"�������ƣ�"+userName+","+"��¼���룺"+password);
		User user=new User(userName, password);
		userService.register(user);
		return "redirect:/student/login.jsp?regsuccess=regsuccessful";
	}
	
}
