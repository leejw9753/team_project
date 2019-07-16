package logic;

import java.io.File;
import java.io.IOException;
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

@Service
public class JejuService {
	@Autowired
	HotelDao hoteldao;
	@Autowired
	PhotoDao photodao;
	@Autowired
	RoomDao roomdao;

	public void regist(HttpServletRequest request, MultipartHttpServletRequest mtfRequest) {
		Hotel h = new Hotel();
		String tel = request.getParameter("tel1") + "-" + request.getParameter("tel2") + "-"
				+ request.getParameter("tel3");
		String location = request.getParameter("location1") + "-" + request.getParameter("location2");
		h.setNo(hoteldao.maxno() + 1);
		h.setHname(request.getParameter("hname"));
		h.setTel(tel);
		h.setLocation(location);
		h.setContent(request.getParameter("contents"));
		if (hoteldao.insert(h)) {
			uploadPhoto(h.getNo(), "¼÷¼Ò", request, mtfRequest);
		}
	}

	private void uploadPhoto(int no, String type, HttpServletRequest request, MultipartHttpServletRequest mtfRequest) {
		List<MultipartFile> fileList = mtfRequest.getFiles("photoname");

		for (MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename();
			String path = request.getServletContext().getRealPath("/") + "img/";
			String safeFile = path + System.currentTimeMillis() + originFileName;

			Photo p = new Photo();
			p.setNo(no);
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
		h.setPhoto(p);
		h.setPhotourl(p.get(0).getPhotourl());
		return h;
	}

	public void regist2(Room room, HttpServletRequest request, MultipartHttpServletRequest mtfRequest) {
		if (roomdao.insert(room)) {
			uploadPhoto(room.getHno(), room.getName(), request, mtfRequest);
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
		List<Photo> p = photodao.selectOne2(hno, name);
		r.setPhoto(p);
		r.setPhotourl(p.get(0).getPhotourl());
		return r;
	}
}