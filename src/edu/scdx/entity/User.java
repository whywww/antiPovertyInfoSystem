package edu.scdx.entity;

public class User {
   private String telNo;
   private String name;
   private String password;
   private String identification;
   private int authority;

   	public User(){}
	public User(String telNo, String name, String password, String identification, int authority) {
		this.telNo = telNo;
		this.name = name;
		this.password = password;
		this.identification = identification;
		this.authority = authority;
	}

	public String getTelNo() {
		return telNo;
	}

	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIdentification() {
		return identification;
	}

	public void setIdentification(String identification) {
		this.identification = identification;
	}

	public int getAuthority() {
		return authority;
	}

	public void setAuthority(int authority) {
		this.authority = authority;
	}
}
