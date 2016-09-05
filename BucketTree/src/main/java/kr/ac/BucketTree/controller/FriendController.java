package kr.ac.BucketTree.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.ac.BucketTree.service.FriendService;
import kr.ac.BucketTree.service.UserService;
import kr.ac.BucketTree.util.Pagination;
import kr.ac.BucketTree.vo.FriendVO;
import kr.ac.BucketTree.vo.UserVO;

@Controller
public class FriendController {

	@Autowired
	FriendService fs;
	@Autowired
	UserService us;
	
	//메신저 친구목록 검색(새로운 메세지 제외)
	@ResponseBody
	@RequestMapping(value = "/Friend/MessengerFriendList", method = RequestMethod.POST)
	public List<FriendVO> srchTextByMessengerFriendList(Pagination p) {
		// 유저 정보가져오기
		UserVO user = us.getCurrentUser();
		// 검색에 따른 친구 목록
		List<FriendVO> list = fs.FriendByMessagener(user.getIdx(), p);
		return list;
	}
	
	//새로운 메신저 온거 갱신
	@ResponseBody
	@RequestMapping(value = "/Friend/NewMessengerFriendList", method = RequestMethod.POST)
	public List<FriendVO> NewMessengerFriendList()
	{
		// 유저 정보가져오기
		UserVO user = us.getCurrentUser();
		
		return fs.FriendByNewMessagener(user.getIdx());
	}
	
	

}
