package hsx.com.service;

import java.util.ArrayList;

import hsx.com.entity.Member;

public interface MemberService {

	public int memberset(Member member);

	public ArrayList<Member> selectMemberList(Integer infoId);

	public ArrayList<Member> unionMemberList();

}
