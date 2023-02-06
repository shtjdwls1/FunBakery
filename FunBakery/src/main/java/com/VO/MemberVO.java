package com.VO;

public class MemberVO {
	private String email;	// id
	private String username;	// name
	private String password;	// pw
	private String joindate;	// joindate
		
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public MemberVO(String email,String password,String username) {
		this.email = email;
		this.password = password;
		this.username = username;
	}
	public MemberVO(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	public MemberVO(String email, String username, String password, String joindate) {
		super();
		this.email = email;
		this.username = username;
		this.password = password;
		this.joindate = joindate;
	}
	
	
	
	
	
	
	
	
		
}
