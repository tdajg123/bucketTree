package kr.ac.BucketTree.controller;

import java.util.Locale;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BucketListController {
	

	@RequestMapping(value = "/bucketList/list", method = RequestMethod.GET)
	public String list(Locale locale, Model model) {

		return "bucketList/list";
	}

}
