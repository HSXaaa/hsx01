package hsx.com.service;

import java.util.ArrayList;

import hsx.com.entity.Principal;

public interface PrincipalService {

	public int principalset(Principal principal);

	public ArrayList<Principal> selectPrincipalList(Integer infoId);

	public ArrayList<Principal> unionPrincipalList();

}
