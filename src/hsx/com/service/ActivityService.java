package hsx.com.service;

import java.util.ArrayList;

import hsx.com.entity.Activity;

public interface ActivityService {

	public int activityset(Activity activity);

	public ArrayList<Activity> selectActivityList(Integer infoId);

	public ArrayList<Activity> unionActivityList();

}
