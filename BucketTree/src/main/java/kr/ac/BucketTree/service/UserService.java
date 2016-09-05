package kr.ac.BucketTree.service;

import kr.ac.BucketTree.vo.UserVO;

public interface UserService {
	// 이메일로 사용자 정보 조회
	public UserVO selectByEmail(String email);
	// idx로 사용자 정보조회
	public UserVO selectByIdx(int idx);
	public UserVO getCurrentUser();
	public void setCurrentUser(UserVO user);

}
