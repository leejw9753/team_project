package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Photo;

public interface PhotoMapper {
	@Insert("insert into photo(no,hno,roomnum,photourl,photoname) values(#{no},#{hno},#{roomnum},#{photourl},#{photoname})")
	void insert(Photo p);

	@Select("select * from photo where no = #{no}")
	List<Photo> selectOne(Integer no);

	@Select("select * from photo where no = #{no} and roomnum=#{roomnum}")
	List<Photo> selectOne2(Map<String, Object> param);

	@Select("select ifnull(max(no),0) from photo")
	int maxno();

}