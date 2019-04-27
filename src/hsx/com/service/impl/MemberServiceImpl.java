package hsx.com.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hsx.com.dao.MemberDao;
import hsx.com.entity.Member;
import hsx.com.service.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Resource
	private MemberDao memberDao;
	
	@Override
	public int memberset(Member member) {
		return memberDao.membersetup(member);
	}

	@Override
	public ArrayList<Member> selectMemberList(Integer infoId) {
		// TODO Auto-generated method stub
		return memberDao.selectMember(infoId);
	}

	@Override
	public ArrayList<Member> unionMemberList() {
		// TODO Auto-generated method stub
		return memberDao.unionMember();
	}

}
