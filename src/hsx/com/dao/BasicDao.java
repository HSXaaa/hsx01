package hsx.com.dao;

import java.util.ArrayList;

import hsx.com.entity.Basic;

public interface BasicDao {

	public int basicsetup(Basic basic);

	public ArrayList<Basic> selectBasic(Integer infoId);

	public ArrayList<Basic> unionBasic();
}
