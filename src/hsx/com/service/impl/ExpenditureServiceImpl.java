package hsx.com.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hsx.com.dao.ExpenditureDao;
import hsx.com.entity.Expenditure;
import hsx.com.service.ExpenditureService;

@Service("expenditureService")
public class ExpenditureServiceImpl implements ExpenditureService{

	@Resource
	private ExpenditureDao expenditureDao;
	
	@Override
	public int expenditureset(Expenditure expenditure) {
		return expenditureDao.expendituresetup(expenditure);
	}

	@Override
	public ArrayList<Expenditure> selectExpenditureList(Integer infoId) {
		// TODO Auto-generated method stub
		return expenditureDao.selectExpenditure(infoId);
	}

	@Override
	public ArrayList<Expenditure> unionExpenditureList() {
		// TODO Auto-generated method stub
		return expenditureDao.unionExpenditure();
	}	
}
