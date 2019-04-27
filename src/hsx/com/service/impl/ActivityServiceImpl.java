package hsx.com.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hsx.com.dao.ActivityDao;
import hsx.com.entity.Activity;
import hsx.com.service.ActivityService;

@Service("activityService")
public class ActivityServiceImpl implements ActivityService{

	@Resource
	private ActivityDao activityDao;
	
	@Override
	public int activityset(Activity activity) {
		return activityDao.activitysetup(activity);
	}

	@Override
	public ArrayList<Activity> selectActivityList(Integer infoId) {
		// TODO Auto-generated method stub
		return activityDao.selectActivity(infoId);
	}

	@Override
	public ArrayList<Activity> unionActivityList() {
		// TODO Auto-generated method stub
		return activityDao.unionActivity();
	}	
}
