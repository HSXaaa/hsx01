package hsx.com.entity;

public class Expenditure {

	private Integer id;
	private String income;
	private String expend;
	private String lastbudget;
	private String nextbudget;
	private Integer infoId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getIncome() {
		return income;
	}

	public void setIncome(String income) {
		this.income = income;
	}

	public String getExpend() {
		return expend;
	}

	public void setExpend(String expend) {
		this.expend = expend;
	}

	public String getLastbudget() {
		return lastbudget;
	}

	public void setLastbudget(String lastbudget) {
		this.lastbudget = lastbudget;
	}

	public String getNextbudget() {
		return nextbudget;
	}

	public void setNextbudget(String nextbudget) {
		this.nextbudget = nextbudget;
	}

	public Integer getInfoId() {
		return infoId;
	}

	public void setInfoId(Integer infoId) {
		this.infoId = infoId;
	}

	public Expenditure() {
		super();
	}

	public Expenditure(String income, String expend, String lastbudget,String nextbudget,Integer infoId) {
		super();
		this.income = income;
		this.expend = expend;
		this.lastbudget = lastbudget;
		this.nextbudget = nextbudget;
		this.infoId = infoId;
	}	
}
