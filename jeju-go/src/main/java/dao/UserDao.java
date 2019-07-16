package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.UserMapper;
import logic.User;


@Repository
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String NS = "dao.mapper.UserMapper.";
	private Map<String, Object> param = new HashMap<String,Object>();

	public void insert(User user) {
		sqlSession.getMapper(UserMapper.class).insert(user);	
	}

	public User selectOne(String userid) {
		param.clear();
		param.put("userid", userid);
		return sqlSession.selectOne(NS+"list",param);
	}
	public String searchId(String username, String phone) {
		param.clear();
		param.put("username",username);
		param.put("phone", phone);
		
		return sqlSession.getMapper(UserMapper.class).userSearch(username, phone);
	}
}