package kr.ac.BucketTree.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import kr.ac.BucketTree.dao.UserDAO;
import kr.ac.BucketTree.service.UserService;
import kr.ac.BucketTree.util.MyAuthenticationProvider;
import kr.ac.BucketTree.vo.UserVO;

@Service
public class UserServiceimpl implements UserService {

	@Autowired
	UserDAO dao;

	// 이메일로 사용자 정보 조회
	@Override
	public UserVO selectByEmail(String email) {
		// TODO Auto-generated method stub
		return dao.selectByEmail(email);
	}
	
	//로그인 유저 정보 꺼내오기
	@Override
	public UserVO getCurrentUser() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication instanceof MyAuthenticationProvider.MyAuthenticaion)
			return ((MyAuthenticationProvider.MyAuthenticaion) authentication).getUser();
		return null;
	}
	
	//개인정보 변경후 세션에 로그인정보 변경하기
	@Override
	public void setCurrentUser(UserVO user) {
		((MyAuthenticationProvider.MyAuthenticaion) SecurityContextHolder.getContext().getAuthentication())
				.setUser(user);

	}

}
