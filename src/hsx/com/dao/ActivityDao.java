package hsx.com.dao;

import java.util.ArrayList;

import hsx.com.entity.Activity;

public interface ActivityDao {

	public int activitysetup(Activity activity);

	public ArrayList<Activity> selectActivity(Integer infoId);

	public ArrayList<Activity> unionActivity();


}
