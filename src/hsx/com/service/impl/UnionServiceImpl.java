package hsx.com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hsx.com.dao.UnionDao;
import hsx.com.entity.Union;
import hsx.com.service.UnionService;


@Service("unionService")
public class UnionServiceImpl implements UnionService{

	@Resource
	private UnionDao unionDao;

	@Override
	public Union unionlogin(Union union) {
		
		return unionDao.unionlogin(union);
	}
	

}
