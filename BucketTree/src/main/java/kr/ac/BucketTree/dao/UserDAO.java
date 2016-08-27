package kr.ac.BucketTree.dao;

import kr.ac.BucketTree.vo.UserVO;

public interface UserDAO {
	//이메일로 사용자 정보 조회
	public UserVO selectByEmail(String email);
	
}
