package hsx.com.service;

import java.util.ArrayList;

import hsx.com.entity.Basic;

public interface BasicService {

	public int basicset(Basic basic);

	public ArrayList<Basic> selectBasicList(Integer infoId);

	public ArrayList<Basic> unionBasicList();

}
