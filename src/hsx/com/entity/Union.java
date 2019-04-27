package hsx.com.entity;

public class Union {

	private Integer id;
	private String userName;
	private String password;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Union() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Union(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
}
