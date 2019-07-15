package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.HotelMapper;
import logic.Hotel;

@Repository
public class HotelDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String NS = "dao.mapper.HotelMapper.";
	private Map<String, Object> param = new HashMap<String, Object>();

	public int maxno() {
		return sqlSession.getMapper(HotelMapper.class).maxno();
	}

	public boolean insert(Hotel h) {
		return sqlSession.getMapper(HotelMapper.class).insert(h);
	}

	public List<Hotel> list() {
		return sqlSession.selectList(NS + "list");
	}

	public List<Integer> nolist() {
		return sqlSession.getMapper(HotelMapper.class).nolist();
	}

	public Hotel selectOne(Integer i) {
		return sqlSession.getMapper(HotelMapper.class).selectOne(i);
	}

}