package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Room;

public interface RoomMapper {

	@Insert("insert into room(hno,roomnum,price,convenient,bed,bedcount,max,roomnum) values(#{hno},#{roomnum},#{price},#{convenient},#{bed},#{bedcount},#{max},#{roomnum})")
	boolean insert(Room room);

	@Select("select * from room where hno = #{no}")
	List<Room> selectList(Integer no);

	@Select("select count(*) from room where hno=#{no}")
	Integer count(Integer no);

	@Select("select * from room where hno=#{hno} and name=#{name}")
	Room selectOne(Map<String, Object> param);

}
