package kr.ac.BucketTree.dao;

import java.util.HashMap;

import kr.ac.BucketTree.vo.UserVO;

public interface UserDAO {
	//이메일로 사용자 정보 조회
	public UserVO selectByEmail(String email);
	//idx로 사용자 정보조회
	public UserVO selectByIdx(int idx);

	// 임시비밀번호로 비밀번호변경
	public void changePassword(HashMap<String, Object> paramMap);
}
