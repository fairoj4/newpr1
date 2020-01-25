package beans;

public class RegistrationBean{
	private String fname;
	private String lname;
	private String userName;
	private String password;
	private String age;
	private String gender;
	private String emailid;
	private String mobileNo;

	public String getFname(){
		return fname;
	}

	public String getLname(){
		return lname;
	}

	public String getUserName() {
		return userName;
	}

	public void setFname(String fname){
		this.fname=fname;
	}

	public void setLname(String lname){
		this.lname=lname;
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
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}



	}