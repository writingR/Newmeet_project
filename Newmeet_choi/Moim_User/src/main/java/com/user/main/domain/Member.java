package com.user.main.domain;

import java.util.Date;
import java.util.Random;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class Member {

	private int nidx;
	private String nemail;
	private String nnic;
	private String npw;
	private String nphoto;
	private String ntype;
	private char verify;
	private String code;
	
	
	public Member() {
		getRandomSting();
	}



	public Member(String nemail, String npw) {
		this.nemail = nemail;
		this.npw = npw;
		getRandomSting();
		
	}



	public Member(int nidx, String nemail, String npw) {
		this.nidx = nidx;
		this.nemail = nemail;
		this.npw = npw;
		getRandomSting();
	}



	public Member(int nidx, String nemail, String npw, String nphoto, String ntype, char verify, String code) {
		super();
		this.nidx = nidx;
		this.nemail = nemail;
		this.npw = npw;
		this.nphoto = nphoto;
		this.ntype = ntype;
		this.verify = verify;
		this.code = code;
	}



	public int getNidx() {
		return nidx;
	}


	public void setNidx(int nidx) {
		this.nidx = nidx;
	}


	public String getNemail() {
		return nemail;
	}


	public void setNemail(String nemail) {
		this.nemail = nemail;
	}

	
	
	
	public String getNnic() {
		return nnic;
	}



	public void setNnic(String nnic) {
		this.nnic = nnic;
	}



	public String getNpw() {
		return npw;
	}


	public void setNpw(String npw) {
		this.npw = npw;
	}


	public String getNphoto() {
		return nphoto;
	}


	public void setNphoto(String nphoto) {
		this.nphoto = nphoto;
	}


	public String getNtype() {
		return ntype;
	}


	public void setNtype(String ntype) {
		this.ntype = ntype;
	}

	public char getVerify() {
		return verify;
	}


	public void setVerify(char verify) {
		this.verify = verify;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}
	




	@Override
	public String toString() {
		return "Member [nidx=" + nidx + ", nemail=" + nemail + ", nnic=" + nnic + ", npw=" + npw + ", nphoto=" + nphoto
				+ ", ntype=" + ntype + ", verify=" + verify + ", code=" + code + "]";
	}



	public Login toLogin() {

		return new Login(nemail, nnic,nphoto);

	}
	
	public boolean PasswordEqualNpw(String npw) {

		return npw != null && !npw.isEmpty() && this.npw.equals(npw); 

	}
	
	
	public void getRandomSting() {
		
		Random r = new Random(System.nanoTime());
		StringBuffer sb = new StringBuffer();
		
		for(int i=0 ; i<20 ; i++ ) {
			if(r.nextBoolean()) {
				sb.append(r.nextInt(10));
			} else {
				sb.append((char)(r.nextInt(26)+97));
			}
		}
		
		System.out.println("난수코드 생성 : " + sb) ;
		
		setCode(sb.toString());
			
	}
	
	 
	
	
}
