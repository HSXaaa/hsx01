package hsx.com.entity;

public class Activity {

	private Integer id;
	private String name;
	private String time;
	private String place;
	private String brief;
	private String fiveyear;
	private String lastyear;
	private String nextyear;
	private String operation;
	private String periodical;
	private Integer infoId;


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getBrief() {
		return brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}

	public String getFiveyear() {
		return fiveyear;
	}

	public void setFiveyear(String fiveyear) {
		this.fiveyear = fiveyear;
	}

	public String getLastyear() {
		return lastyear;
	}

	public void setLastyear(String lastyear) {
		this.lastyear = lastyear;
	}

	public String getNextyear() {
		return nextyear;
	}

	public void setNextyear(String nextyear) {
		this.nextyear = nextyear;
	}

	public String getOperation() {
		return operation;
	}

	public void setOperation(String operation) {
		this.operation = operation;
	}

	public String getPeriodical() {
		return periodical;
	}

	public void setPeriodical(String periodical) {
		this.periodical = periodical;
	}

	public Integer getInfoId() {
		return infoId;
	}

	public void setInfoId(Integer infoId) {
		this.infoId = infoId;
	}

	public Activity() {
		super();
	}

	public Activity(String name, String time, String place, String brief, String fiveyear, String lastyear,
			String nextyear, String operation, String periodical,Integer infoId) {
		super();
		this.name = name;
		this.time = time;
		this.place = place;
		this.brief = brief;
		this.fiveyear = fiveyear;
		this.lastyear = lastyear;
		this.nextyear = nextyear;
		this.operation = operation;
		this.periodical = periodical;
		this.infoId = infoId;
	}

	
}
