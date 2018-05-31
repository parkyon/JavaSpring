package kr.green.SpringTest.dto;

public class LoginDTO {
	
	private String id;
	@Override
	public String toString() {
		return "LoginDTO [id=" + id + ", pw=" + pw + ", useCookie=" + useCookie + ", getId()=" + getId() + ", getPw()="
				+ getPw() + ", getUseCookie()=" + getUseCookie() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	private String pw;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getUseCookie() {
		return useCookie;
	}
	public void setUseCookie(String useCookie) {
		this.useCookie = useCookie;
	}
	private String useCookie;

}
