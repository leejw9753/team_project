package logic;

import java.util.List;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Hotel {
	private int no;
	@Size(min = 1, max = 10, message = "���Ҹ��� 1�� �̻� 10�� ���Ϸ� �Է��ϼ���")
	@NotEmpty(message = "����� �̸��� �ʼ� �Դϴ�.")
	private String hname;
	@NotEmpty(message = "���Ҹ��� �Է����ּ���.")
	private String address;
	@NotEmpty(message = "������ �Է����ּ���")
	private String lat;
	@NotEmpty(message = "�浵�� �Է����ּ���")
	private String lng;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	@Override
	public String toString() {
		return "Hotel [no=" + no + ", hname=" + hname + ", address=" + address + ", lat=" + lat + ", lng=" + lng
				+ ", content=" + content + ", tel=" + tel + ", photourl=" + photourl + ", photo=" + photo + "]";
	}
	
}
