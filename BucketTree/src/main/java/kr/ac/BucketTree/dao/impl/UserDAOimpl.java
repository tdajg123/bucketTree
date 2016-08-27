package kr.ac.BucketTree.dao.impl;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.ac.BucketTree.dao.UserDAO;
import kr.ac.BucketTree.vo.UserVO;

@Repository
public class UserDAOimpl implements UserDAO {
	
	//주입
	@Autowired
	SqlSession sqlSession;
	
	//userMapper namespace
	private static final String namespace = "kr.ac.BucketTree.UserMapper";
	
	//이메일로 사용자 조회
	@Override
	public UserVO selectByEmail(String email) {
		
		return sqlSession.selectOne(namespace+".selectByEmail", email);
	}

}
