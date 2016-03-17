package com.shop.service.pingpp.imp;

import java.io.FileInputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.X509EncodedKeySpec;

import org.apache.commons.codec.binary.Base64;

public class AuthWebHookServiceImpl {
	private String PUBLIC_KEY=null;//RSA公钥，加密算法为SHA256withRSA
	public void init(String wEBHOOK_INFO,
			String hEADER_SIGN) throws IOException {
		PUBLIC_KEY=this.getRawKey("classpath:/my-server.pub");
		WEBHOOK_INFO = wEBHOOK_INFO;
		HEADER_SIGN = hEADER_SIGN;
	}
	private String WEBHOOK_INFO;//订单信息
	private String HEADER_SIGN;//request头部得到的签名
	//将信息以base64解码
	private byte[] getByteFromFile(String info, boolean base64) throws Exception {
		if (base64) 
			return Base64.decodeBase64(info);
		else
			return info.getBytes();
	}
	//输入 RSA公钥,获取签名
	private PublicKey getPubKey() throws Exception {
		String rawkey = PUBLIC_KEY.replaceAll("(-+BEGIN PUBLIC KEY-+\\r?\\n|-+END PUBLIC KEY-+\\r?\\n?)", "");
		byte[] keyBytes = Base64.decodeBase64(rawkey);
		// generate public key
		X509EncodedKeySpec spec = new X509EncodedKeySpec(keyBytes);
		KeyFactory keyFactory = KeyFactory.getInstance("RSA");
		PublicKey publicKey = keyFactory.generatePublic(spec);
		return publicKey;
	}
	//验证签名结果
	private boolean verifyData(byte[] data, byte[] sigBytes, PublicKey publicKey) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
		Signature signature = Signature.getInstance("SHA256withRSA");
		signature.initVerify(publicKey);
		signature.update(data);
		return signature.verify(sigBytes);
	}
	private String getRawKey(String file) throws IOException
	{
		FileInputStream in = new FileInputStream(file);
		byte[] fileBytes = new byte[in.available()];
		in.read(fileBytes);
		in.close();
		String pubKey = new String(fileBytes, "UTF-8");
		return pubKey;
	}
	
	//返回签名结果
	public boolean Varify() throws InvalidKeyException, NoSuchAlgorithmException, SignatureException, Exception
	{
		return this.verifyData(getByteFromFile(WEBHOOK_INFO, false), getByteFromFile(HEADER_SIGN, true), getPubKey());
	}
}
