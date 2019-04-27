package hsx.com.entity;

public class Basic {
	
     private Integer id;
     private String sort;
     private String setuptime;
     private String purpose;
     private String constitutior;
     private String organization;
     private String activity;
     private String rewandpunish;
     private Integer infoId; 
     
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getSetuptime() {
		return setuptime;
	}
	public void setSetuptime(String setuptime) {
		this.setuptime = setuptime;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getConstitutior() {
		return constitutior;
	}
	public void setConstitutior(String constitutior) {
		this.constitutior = constitutior;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public String getRewandpunish() {
		return rewandpunish;
	}
	public void setRewandpunish(String rewandpunish) {
		this.rewandpunish = rewandpunish;
	}
	public Integer getInfoId() {
		return infoId;
	}
	public void setInfoId(Integer infoId) {
		this.infoId = infoId;
	}

	public Basic() {
		super();
	}
	public Basic(String sort, String setuptime, String purpose, String constitutior,
			String organization, String activity, String rewandpunish,Integer infoId) {
		super();
		this.sort=sort;
		this.setuptime = setuptime;
		this.purpose=purpose;
		this.constitutior = constitutior;
		this.organization = organization;
		this.activity = activity;
		this.rewandpunish = rewandpunish;
		this.infoId = infoId;
	}
}
