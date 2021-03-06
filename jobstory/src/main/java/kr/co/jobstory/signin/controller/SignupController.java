package kr.co.jobstory.signin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.jobstory.repository.domain.Company;
import kr.co.jobstory.repository.domain.User;
import kr.co.jobstory.signin.service.SignupService;

@Controller
@RequestMapping("/sign")
public class SignupController {
	
	@Autowired
	private ServletContext context;
	
	@Autowired
	private SignupService service; 
	
	@RequestMapping("signUpPage.do")
	public void sginUp() {}
	
	@RequestMapping("check.do")
	@ResponseBody
	public Integer check(String id) {
		return service.selectNo(id);
	}
	
	
	
	@RequestMapping("insertUser.do")
	public String signUpMember(Company company,User user ,MultipartFile attach) throws IllegalStateException, IOException {
		String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
		String newFileName = date+"_"+System.currentTimeMillis()+"."
                 +attach.getOriginalFilename().substring(attach.getOriginalFilename().lastIndexOf(".")+1);
		if(attach.getOriginalFilename() == "") {
			user.setImgSerPath("/jobstory/attach/profile/");
			user.setImgSerName("admin.jpg");

		} else {
			user.setImgOriName(attach.getOriginalFilename());
			user.setImgSerName(newFileName);
			user.setImgSerPath("/jobstory/attach/profile/");
			attach.transferTo(new File(context.getRealPath("/attach/profile"),user.getImgSerName()));
		}
		
		if(user.getAuthority()==1) {
			service.signUpMember(user);
		} else {
			service.signUpMember(user);
			int memberNo = service.selectNo(user.getId());
			company.setMemberNo(memberNo);
			System.out.println("번호:" + company.getMemberNo());
			service.signUpCompany(company);
		}
		return "redirect:signInPage.do";			
	}
	
	
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main/main.do";
	}

}
