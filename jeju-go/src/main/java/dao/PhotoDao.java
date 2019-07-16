package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.PhotoMapper;
import logic.Photo;

@Repository
public class PhotoDao {
   @Autowired
   private SqlSessionTemplate sqlSession;
   private final String NS = "dao.mapper.PhotoMapper.";
   private Map<String, Object> param = new HashMap<String, Object>();
   
   public void insert(Photo p) {
      sqlSession.getMapper(PhotoMapper.class).insert(p);
   }

   public List<Photo> selectOne(Integer i) {
      return sqlSession.getMapper(PhotoMapper.class).selectOne(i);
   }
   public List<Photo> selectOne2(Integer no,String roomnum) {
      param.clear();
      param.put("no", no);
      param.put("roomnum", roomnum);
      return sqlSession.getMapper(PhotoMapper.class).selectOne2(param);
   }

   public int maxno() {
      return sqlSession.getMapper(PhotoMapper.class).maxno();
   }
}