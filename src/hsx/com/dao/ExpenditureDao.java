package hsx.com.dao;

import java.util.ArrayList;

import hsx.com.entity.Expenditure;

public interface ExpenditureDao {

	public int expendituresetup(Expenditure expenditure);

	public ArrayList<Expenditure> selectExpenditure(Integer infoId);

	public ArrayList<Expenditure> unionExpenditure();

}
