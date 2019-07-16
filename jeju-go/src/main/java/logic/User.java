package logic;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class User {
	private String userid;
	@Size(min=3,max=12,message="비밀번호는 3자 이상 10자 이하로 입력하세요")
	private String password;
	@NotEmpty(message="사용자 이름은 필수 입니다.")	
	private String username;
	private String phone;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", password=" + password + ", username=" + username + ", phone=" + phone
				+ "]";
	}
	
}
