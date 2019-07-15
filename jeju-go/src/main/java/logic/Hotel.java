package logic;

import java.util.List;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Hotel {
	private int no;
	@Size(min = 1, max = 10, message = "���Ҹ��� 1�� �̻� 10�� ���Ϸ� �Է��ϼ���")
	@NotEmpty(message = "����� �̸��� �ʼ� �Դϴ�.")
	private String hname;
	@NotEmpty(message = "��ġ�� �Է����ּ���")
	private String location;
	@NotEmpty(message = "���� ������ �Է����ּ���")
	private String content;
	@NotEmpty(message = "���� ��ȭ��ȣ�� �Է����ּ���")
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