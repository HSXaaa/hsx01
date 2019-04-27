package hsx.com.dao;

import java.util.ArrayList;

import hsx.com.entity.Member;

public interface MemberDao{

	public int membersetup(Member member);

	public ArrayList<Member> selectMember(Integer infoId);

	public ArrayList<Member> unionMember();
}
