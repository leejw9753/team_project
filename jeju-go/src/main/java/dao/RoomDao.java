package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.RoomMapper;
import logic.Room;

@Repository
public class RoomDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String NS = "dao.mapper.RoomMapper.";
	private Map<String, Object> param = new HashMap<String, Object>();

	public boolean insert(Room room) {

		return sqlSession.getMapper(RoomMapper.class).insert(room);
	}

	public List<Room> selectList(Integer no) {
		return sqlSession.getMapper(RoomMapper.class).selectList(no);
	}

	public int count(Integer no) {
		return sqlSession.getMapper(RoomMapper.class).count(no);
	}

	public Room selectOne(Integer hno, String name) {
		param.clear();
		param.put("hno", hno);
		param.put("name", name);
		return sqlSession.getMapper(RoomMapper.class).selectOne(param);
	}

}