package hsx.com.entity;

public class Principal {

	private Integer id;
	private String name;
	private String sex;
	private String number;
	private String college;
	private String grade;
	private String major;
	private String classes;
	private String nation;
	private String natives;
	private String politics;
	private String phone;
	private String performance;
	private String work;
	private String rewandpunish;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getNatives() {
		return natives;
	}
	public void setNatives(String natives) {
		this.natives = natives;
	}
	public String getPolitics() {
		return politics;
	}
	public void setPolitics(String politics) {
		this.politics = politics;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPerformance() {
		return performance;
	}
	public void setPerformance(String performance) {
		this.performance = performance;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
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

	public Principal() {
		super();
	}
	
	public Principal(String name, String sex, String number, String college, String grade, String major,String classes, 
		    String nation, String natives, String politics, String phone,String performance,String work, String rewandpunish,Integer infoId) {
		this.name = name;
		this.sex = sex;
		this.number = number;
		this.college = college;
		this.grade = grade;
		this.major = major;
		this.classes = classes;
		this.nation = nation;
		this.natives = natives;
		this.politics = politics;
		this.phone = phone;
		this.performance = performance;
		this.work = work;
		this.rewandpunish = rewandpunish;
		this.infoId = infoId;
	}

	
}
