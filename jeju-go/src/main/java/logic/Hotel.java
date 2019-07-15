package logic;

import java.util.List;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Hotel {
	private int no;
	@Size(min = 1, max = 10, message = "숙소명은 1자 이상 10자 이하로 입력하세요")
	@NotEmpty(message = "사용자 이름은 필수 입니다.")
	private String hname;
	@NotEmpty(message = "위치를 입력해주세요")
	private String location;
	@NotEmpty(message = "숙소 정보를 입력해주세요")
	private String content;
	@NotEmpty(message = "숙소 전화번호를 입력해주세요")
	private String tel;
	private String photourl;
	private List<Photo> photo;

	public String getPhotourl() {
		return photourl;
	}

	public void setPhotourl(String photourl) {
		this.photourl = photourl;
	}

	public List<Photo> getPhoto() {
		return photo;
	}

	public void setPhoto(List<Photo> photo) {
		this.photo = photo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	@Override
	public String toString() {
		return "Hotel [no=" + no + ", hname=" + hname + ", location=" + location + ", content=" + content + ", tel="
				+ tel + "]";
	}

}