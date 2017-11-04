package com.ututor.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import sun.misc.BASE64Encoder;

public class DigestUtil {
	/**
	 * MD5加密
	 * @param psw
	 * @return 
	 */
	public static String digestMD5(String psw){
		MessageDigest md;
		try {
			//将原字符串采用MD5加密成byte[]
			md = MessageDigest.getInstance("MD5");
			byte[] bbs = md.digest(psw.getBytes());
			//采用Base64算法将byte[]编码成字符串
			BASE64Encoder base64 = new BASE64Encoder();
			String s = base64.encode(bbs);
			return s;
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args){
		String s = 
			DigestUtil.digestMD5("abc");
		System.out.println(s);
		s = DigestUtil
			.digestMD5("123456dfdfgdf");
		System.out.println(s);
	}
	
}
