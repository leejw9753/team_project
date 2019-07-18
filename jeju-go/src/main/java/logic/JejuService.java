package logic;

import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.HotelDao;
import dao.PhotoDao;
import dao.RoomDao;
import dao.UserDao;

@Service
public class JejuService {
	@Autowired
	HotelDao hoteldao;
	@Autowired
	PhotoDao photodao;
	@Autowired
	RoomDao roomdao;
	@Autowired
	UserDao userdao;

	public int regist(HttpServletRequest request, MultipartHttpServletRequest mtfRequest) {
		Hotel h = new Hotel();
		String tel = request.getParameter("tel1") + "-" + request.getParameter("tel2") + "-"
				+ request.getParameter("tel3");
		h.setNo(hoteldao.maxno() + 1);
		h.setAddress(request.getParameter("address"));
		h.setLat(request.getParameter("lat"));
		h.setLng(request.getParameter("lng"));
		h.setHname(request.getParameter("hname"));
		h.setTel(tel);
		h.setContent(request.getParameter("contents"));
		if (hoteldao.insert(h)) {
			uploadPhoto(h.getNo(), "0", "", request, mtfRequest);
		}
		return h.getNo();
	}

	private void uploadPhoto(int hno, String roomnum, String type, HttpServletRequest request,
			MultipartHttpServletRequest mtfRequest) {
		List<MultipartFile> fileList = mtfRequest.getFiles("photoname");

		for (MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename(); // 원본 파일 명
			String path = request.getServletContext().getRealPath("/") + "img/";
			String safeFile = path + System.currentTimeMillis() + originFileName;

			Photo p = new Photo();
			p.setNo(photodao.maxno() + 1);
			p.setHno(hno);
			p.setRoomnum(roomnum);
			p.setType(type);
			p.setPhotourl(safeFile.substring(safeFile.lastIndexOf("img/")));
			p.setPhotoname(originFileName);

			File fpath = new File(path);
			if (!fpath.exists()) {
				fpath.mkdirs();
			}
			try {
				mf.transferTo(new File(safeFile));
				photodao.insert(p);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

	public List<Hotel> list() {
		List<Hotel> hotel = new ArrayList<Hotel>();
		List<Integer> no = hoteldao.nolist();

		for (Integer i : no) {
			hotel.add(selectOne(i));
		}
		return hotel;
	}

	public Hotel selectOne(Integer i) {
		Hotel h = hoteldao.selectOne(i);
		List<Photo> p = photodao.selectOne2(i, "0");
		h.setPhotourl(p.get(0).getPhotourl());
		h.setPhoto(p);
		return h;
	}

	public void regist2(Room room, HttpServletRequest request, MultipartHttpServletRequest mtfRequest) {
		if (roomdao.insert(room)) {
			uploadPhoto(room.getHno(), room.getRoomnum(), room.getName(), request, mtfRequest);
		}
	}

	public List<Room> roomList(Integer no) {
		List<Room> room = new ArrayList<Room>();
		List<Room> r = roomdao.selectList(no);

		for (Room i : r) {
			room.add(selectOne(i.getHno(), i.getName()));
		}

		return room;
	}

	public Room selectOne(Integer hno, String name) {
		Room r = roomdao.selectOne(hno, name);
		List<Photo> p = photodao.selectOne3(hno, name);
		r.setPhoto(p);
		r.setPhotourl(p.get(0).getPhotourl());
		return r;
	}

	public void userCreate(User user) {
		String password = messageDigest(user.getPassword());
		user.setPassword(password);
		// user.setEmail(encrypt(user.getEmail(),user.getPassword()));
		userdao.insert(user);
	}

	public String messageDigest(String password) {
		byte[] plain = password.getBytes();
		byte[] hash = null;
		String result = "";
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-256");
			hash = md.digest(plain);// 해쉬암호 생성
			for (byte b : hash) {
				result += String.format("%02X", b); // 핵사값으로 출력(16진수)
			}
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return result;
	}

	public User userSelect(String userId) {
		return userdao.selectOne(userId);
	}

	public List<User> userList() {
		List<User> list = userdao.list();
		return list;
	}

}
