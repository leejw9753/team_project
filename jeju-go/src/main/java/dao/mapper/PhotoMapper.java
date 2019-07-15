package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Photo;

public interface PhotoMapper {
	@Insert("insert into photo(no,type,photourl,photoname) values(#{no},#{type},#{photourl},#{photoname})")
	void insert(Photo p);

	@Select("select * from photo where no = #{no}")
	List<Photo> selectOne(Integer no);

	@Select("select * from photo where no = #{no} and type=#{type}")
	List<Photo> selectOne2(Map<String, Object> param);

}