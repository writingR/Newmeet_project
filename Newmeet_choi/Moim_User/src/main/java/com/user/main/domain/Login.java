package com.user.main.domain;

public class Login {
	
	private String nemail;
	private String nnic;
	private String nphoto;
	
	
	public Login(String nemail,String nnic, String nphoto) {
		
		this.nemail = nemail;
		this.nnic = nnic;
		this.nphoto = nphoto;
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
	public String getNphoto() {
		return nphoto;
	}
	public void setNphoto(String nphoto) {
		this.nphoto = nphoto;
	}
	@Override
	public String toString() {
		return "Login [nemail=" + nemail + ", nnic=" + nnic + ", nphoto=" + nphoto + "]";
	}
		
	
	
	
}
