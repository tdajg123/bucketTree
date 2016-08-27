package kr.ac.BucketTree.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.BucketTree.service.FriendService;
import kr.ac.BucketTree.service.UserService;
import kr.ac.BucketTree.util.Pagination;
import kr.ac.BucketTree.vo.FriendVO;
import kr.ac.BucketTree.vo.UserVO;

@Controller
public class BucketListController {
	@Autowired
	FriendService fs;
	@Autowired
	UserService us;

	@RequestMapping(value = "/bucketList/list", method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		//유저 정보가져오기
		UserVO user =us.getCurrentUser();
		//<!--메세지=>새로운 메세지를 보낸 친구목록 -->
		List<FriendVO> flist1=fs.FriendByNewMessagener(user.getIdx());
		//메세지=>새로운 메세지를 보낸 친구목록 객체에 담기
		model.addAttribute("flist1", flist1);
		
		//메신저에서 쓸 친구 목록(새로운메세지 보낸 친구 제외) 
		List<FriendVO> flist2=fs.FriendByMessagener(user.getIdx(), new Pagination());
		//메신저에서 쓸 친구 목록(새로운메세지 보낸 친구 제외)객체 담기 
		model.addAttribute("flist2", flist2);
		return "bucketList/list";
	}

}