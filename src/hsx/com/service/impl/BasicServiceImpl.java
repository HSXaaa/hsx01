package hsx.com.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hsx.com.dao.BasicDao;
import hsx.com.entity.Basic;
import hsx.com.service.BasicService;

@Service("basicService")
public class BasicServiceImpl implements BasicService{

	@Resource
	private BasicDao basicDao;

	@Override
	public int basicset(Basic basic) {
		return basicDao.basicsetup(basic);
		
	}

	@Override
	public ArrayList<Basic> selectBasicList(Integer infoId) {
		// TODO Auto-generated method stub
		return basicDao.selectBasic(infoId);
	}

	@Override
	public ArrayList<Basic> unionBasicList() {
		// TODO Auto-generated method stub
		return basicDao.unionBasic();
	}
	
}
