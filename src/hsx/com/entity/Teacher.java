package hsx.com.entity;

public class Teacher {

	private Integer id;
	private String name;
	private String sex;
	private String number;
	private String politics;
	private String workplace;
	private String job;
	private String phone;
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


	public String getPolitics() {
		return politics;
	}


	public void setPolitics(String politics) {
		this.politics = politics;
	}


	public String getWorkplace() {
		return workplace;
	}


	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}


	public String getJob() {
		return job;
	}


	public void setJob(String job) {
		this.job = job;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public Integer getInfoId() {
		return infoId;
	}


	public void setInfoId(Integer infoId) {
		this.infoId = infoId;
	}


	public Teacher() {
		super();
	}


	public Teacher(String name, String sex, String number, String politics, String workplace, String job,
			String phone,Integer infoId) {
		super();
		this.name = name;
		this.sex = sex;
		this.number = number;
		this.politics = politics;
		this.workplace = workplace;
		this.job = job;
		this.phone = phone;
		this.infoId = infoId;
	}

	
}
