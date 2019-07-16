package logic;


import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.ArrayList;
import java.util.List;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;
@Service
public class ShopService {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	@Autowired
	private UserDao userDao;
	private static byte[] randomKey;
	   private final static byte[] iv = new byte[] {
	         (byte)0x8E,0x12,0x39,(byte)0x9C,
	              0x07,0x72,0x6F,(byte)0x5A,
	         (byte)0x8E,0x12,0x39,(byte)0x9C,
	              0x07,0x72,0x6F,(byte)0x5A}; 
	   
	 AlgorithmParameterSpec paramSpec = new IvParameterSpec(iv);
	   static Cipher cipher;
	   static {
	      try {
	         cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	public void userCreate(User user) {
	      String password = messageDigest(user.getPassword());
	      user.setPassword(password);
	     // user.setEmail(encrypt(user.getEmail(),user.getPassword()));
	      userDao.insert(user);
	   }
	
	   private String encrypt(String plain, String password) {
	      byte[] cipherMsg = new byte[1024];
	      try {
	         Key genKey = new SecretKeySpec(password.substring(0,16).getBytes(),"AES");
	         cipher.init(Cipher.ENCRYPT_MODE, genKey,paramSpec);
	         cipherMsg = cipher.doFinal(plain.getBytes());
	      }catch(Exception e) {
	         e.printStackTrace();
	      }
	      return byteToHex(cipherMsg);
	   }
	   private String byteToHex(byte[] cipherMsg) {
	      if(cipherMsg == null) return null;
	      String str = "";
	      for(byte b : cipherMsg) {
	         str += String.format("%02X", b);
	      }
	      return str;
	   }
	   public String messageDigest(String password) {
		      byte[] plain= password.getBytes();
		      byte[] hash = null;
		      String result = "";
		      MessageDigest md;
		      try {
		         md = MessageDigest.getInstance("SHA-256");
		         hash = md.digest(plain);//해쉬암호 생성
		      for(byte b : hash) {
		         result += String.format("%02X",b); //핵사값으로 출력(16진수)
		      }
		   } catch (NoSuchAlgorithmException e) {
		         e.printStackTrace();
		      }
		      return result;
		}
		   public User userSelect(String userId ) {   
		      User user = userDao.selectOne(userId);
		      if(user != null) {
		      //user.setEmail(decript(user.getEmail(),user.getPassword()));
		      }
		      return user;
		   }

		public String get_searchId(String username, String phone) {
			return userDao.searchId(username, phone);
		}

}