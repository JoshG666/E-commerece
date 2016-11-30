package com.Spring;




import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frontendDAO.UsersDetailDao;
import com.frontendModel.UsersDetail;


@Controller
public class PageController

{
	@Autowired
	UsersDetailDao usersDetailDAO;
	
	@RequestMapping("/403")
	public String getaccessPage()
	{
		return "accessdeniedpage";
	}
	
	@RequestMapping("/")
	public String getPage()
	{
		return "index";
	}
	@RequestMapping("/about")
	public String getAboutPage()
	{
		return "ABOUT";
	}
	@RequestMapping("/contact")
	public String getContactPage()
	{
		return "contact";
	}
	/*@RequestMapping("/user/contact")
	public String getuserPage()
	{
		return "contact";
	}*/
	@RequestMapping("/index")
	public String getIndexPage()
	{
		return "index";
	}
	@RequestMapping("/loginpage")
	public String getLoginPage()
	{
		return "login";
	}
	@RequestMapping("/single")
	public String getSinglePage()
	{
		return "single";
	}
	@RequestMapping("/checkout")
	public String getCheckoutPage()
	{
		return "checkout";
	}
	@RequestMapping("/register")
	public ModelAndView getRegistertPage()
	{
		UsersDetail user = new UsersDetail();
		return new ModelAndView("register", "userdetail", user);
		
		
		
	}
	/*@RequestMapping("/register")
	public String registermodel(Model model) {
		UsersDetail user = new UsersDetail();
		model.addAttribute("usersdetail", user);
		return "register";
	}*/
	@RequestMapping("/processform")
	public ModelAndView processform(@Valid @ModelAttribute("userdetail") UsersDetail usersDetail, BindingResult result)

	{
		System.out.println(usersDetail.getUserPhone());
		System.out.println(result);
		if(result.hasErrors()){
		
			ModelAndView model1=new ModelAndView("register");
			return model1;
		}
		
		System.out.println(usersDetail);
		usersDetail.setEnabled(true);
		usersDetailDAO.addUser(usersDetail);
		
		ModelAndView model1=new ModelAndView("index");
		return model1;
		
	}
	@RequestMapping("/placed")
	public String getPlacedPage()
	{
		return "placed";
	}
	
	
	
	
}



