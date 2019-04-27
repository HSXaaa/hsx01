package hsx.com.dao;

import java.util.ArrayList;

import hsx.com.entity.Principal;

public interface PrincipalDao {

	public int principalsetup(Principal principal);

	public ArrayList<Principal> selectPrincipal(Integer infoId);

	public ArrayList<Principal> unionPrincipal();

}
