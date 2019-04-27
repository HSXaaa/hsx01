package hsx.com.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hsx.com.dao.PrincipalDao;
import hsx.com.entity.Principal;
import hsx.com.service.PrincipalService;

@Service("principalService")
public class PrincipalServiceImpl implements PrincipalService{

	@Resource
	private PrincipalDao principalDao;

	@Override
	public int principalset(Principal principal) {
		// TODO Auto-generated method stub
		return principalDao.principalsetup(principal);
	}

	@Override
	public ArrayList<Principal> selectPrincipalList(Integer infoId) {
		// TODO Auto-generated method stub
		return principalDao.selectPrincipal(infoId);
	}

	@Override
	public ArrayList<Principal> unionPrincipalList() {
		// TODO Auto-generated method stub
		return principalDao.unionPrincipal();
	}

	
}
