package hsx.com.service;

import java.util.ArrayList;

import hsx.com.entity.Expenditure;

public interface ExpenditureService {

	public int expenditureset(Expenditure expenditure);

	public ArrayList<Expenditure> selectExpenditureList(Integer infoId);

	public ArrayList<Expenditure> unionExpenditureList();

}
