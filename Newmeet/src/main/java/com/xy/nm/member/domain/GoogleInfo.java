package com.xy.nm.member.domain;

public class GoogleInfo {
   
   private int nidx;
   private String nemail;
   private String nnic;
   private String ntype;
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
   public String getNtype() {
      return ntype;
   }
   public void setNtype(String ntype) {
      this.ntype = ntype;
   }
   @Override
   public String toString() {
      return "GoogleInfo [nidx=" + nidx + ", nemail=" + nemail + ", nnic=" + nnic + ", ntype=" + ntype + "]";
   }
   
   
   
}