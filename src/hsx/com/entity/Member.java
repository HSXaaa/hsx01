package hsx.com.entity;

public class Member {

	private Integer id;
	private String name;
	private String number;
	private String pay;
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

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public Integer getInfoId() {
		return infoId;
	}

	public void setInfoId(Integer infoId) {
		this.infoId = infoId;
	}

	public Member() {
		super();
	}

	public Member(String name, String number, String pay,Integer infoId) {
		super();
		this.name = name;
		this.number = number;
		this.pay = pay;
		this.infoId = infoId;
	}	
}
