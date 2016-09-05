package kr.ac.BucketTree.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.BucketTree.service.UserService;

import kr.ac.BucketTree.vo.UserVO;


@Controller
public class UserController {
	@Autowired
	UserService us;
	
	@RequestMapping(value = "/user/login", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		return "login";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/user/getUser", method = RequestMethod.POST)
	public UserVO selectByIdx(@RequestParam("idx") int idx) {
		UserVO user=us.selectByIdx(idx);
		return user;
		
	}
	

}
