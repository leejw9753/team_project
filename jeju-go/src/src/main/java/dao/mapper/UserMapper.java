package dao.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.User;

public interface UserMapper {

	@Insert("insert into member(userid,username,password,phone) values(#{userid},#{username},#{password},#{phone})")
	void insert(User user);

	@Select("select * from member where userid =#{userid}")
	User selectOne(String userid);

}
