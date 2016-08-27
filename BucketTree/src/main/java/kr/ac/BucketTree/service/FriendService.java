package kr.ac.BucketTree.service;

import java.util.List;

import kr.ac.BucketTree.util.Pagination;
import kr.ac.BucketTree.vo.FriendVO;

public interface FriendService {
	//메신저에서 쓸 친구 목록(새로운메세지 보낸 친구 제외) 
	public List<FriendVO> FriendByMessagener(int idx,Pagination p);
	//<!--메세지=>새로운 메세지를 보낸 친구목록 -->
	public List<FriendVO> FriendByNewMessagener(int idx) ;
}
