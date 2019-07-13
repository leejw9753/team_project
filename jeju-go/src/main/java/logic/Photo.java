package logic;

public class Photo {
	private int no;
	private String type;
	private String photourl;
	private String photoname;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPhotourl() {
		return photourl;
	}

	public void setPhotourl(String photourl) {
		this.photourl = photourl;
	}

	public String getPhotoname() {
		return photoname;
	}

	public void setPhotoname(String photoname) {
		this.photoname = photoname;
	}

	@Override
	public String toString() {
		return "Photo [no=" + no + ", type=" + type + ", photourl=" + photourl + ", photoname=" + photoname + "]";
	}

}
