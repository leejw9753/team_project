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
	private Map<String, Object> param = new HashMap<String, Object>();
	
	public void insert(User user) {
		sqlSession.getMapper(UserMapper.class).insert(user);
		
	}

	public User selectOne(String userId) {
		return sqlSession.getMapper(UserMapper.class).selectOne(userId);
	}

	public List<User> list(String d) {
		param.clear();
		param.put("delete", d);
		return sqlSession.selectList(NS+"list",param);
	}
	
	
}
