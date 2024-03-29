package Vo;

public class BusinessVO {


    private int cgg_code;			//시군구코드
    private int snt_cob_code;		//업종 코드
    private int yy;					//년도
    private String upso_sno;		//업소일련번호
    private String snt_cob_nm;		//업종명
    private String perm_nt_ymd;		//허가신고일
    private String upso_nm ;		//업소명
    private String site_addr_rd;	//도로명주소
    private String site_addr;		//소재지지번
    private String upso_site_telno;	//소재지전화번호
    private String bup_nm;
    private String site_stdt;
    private String admdng_nm;
    private String dcb_ymd ;
    private String dcb_gbn_nm;
    private String dcb_why ;
    private String snt_uptae_nm;
    private String ge_eh_yn ;
    private String site_loc_gbn ;
    private float trdp_area_etc ;
    private String perm_nt_no ;
    private String cn_perm_stdt ;
    private String cn_perm_enddt;
    private String cn_perm_nt_sayu ;
//    private String pern_nt_cn ;
//    private String perm_nt_cn;
    private int geoLat;
    private int geoLon;

    
	public int getCgg_code() {
		return cgg_code;
	}
	public void setCgg_code(int cgg_code) {
		this.cgg_code = cgg_code;
	}
	public int getSnt_cob_code() {
		return snt_cob_code;
	}
	public void setSnt_cob_code(int snt_cob_code) {
		this.snt_cob_code = snt_cob_code;
	}
	public int getYy() {
		return yy;
	}
	public void setYy(int yy) {
		this.yy = yy;
	}
	public String getUpso_sno() {
		return upso_sno;
	}
	public void setUpso_sno(String upso_sno) {
		this.upso_sno = upso_sno;
	}
	public String getSnt_cob_nm() {
		return snt_cob_nm;
	}
	public void setSnt_cob_nm(String snt_cob_nm) {
		this.snt_cob_nm = snt_cob_nm;
	}
	public String getPerm_nt_ymd() {
		return perm_nt_ymd;
	}
	public void setPerm_nt_ymd(String perm_nt_ymd) {
		this.perm_nt_ymd = perm_nt_ymd;
	}
	public String getUpso_nm() {
		return upso_nm;
	}
	public void setUpso_nm(String upso_nm) {
		this.upso_nm = upso_nm;
	}
	public String getSite_addr_rd() {
		return site_addr_rd;
	}
	public void setSite_addr_rd(String site_addr_rd) {
		this.site_addr_rd = site_addr_rd;
	}
	public String getSite_addr() {
		return site_addr;
	}
	public void setSite_addr(String site_addr) {
		this.site_addr = site_addr;
	}
	public String getUpso_site_telno() {
		return upso_site_telno;
	}
	public void setUpso_site_telno(String upso_site_telno) {
		this.upso_site_telno = upso_site_telno;
	}

	public String getBup_nm() {
		return bup_nm;
	}
	public void setBup_nm(String bup_nm) {
		this.bup_nm = bup_nm;
	}
	public String getSite_stdt() {
		return site_stdt;
	}
	public void setSite_stdt(String site_stdt) {
		this.site_stdt = site_stdt;
	}
	public String getAdmdng_nm() {
		return admdng_nm;
	}
	public void setAdmdng_nm(String admdng_nm) {
		this.admdng_nm = admdng_nm;
	}
	public String getDcb_ymd() {
		return dcb_ymd;
	}
	public void setDcb_ymd(String dcb_ymd) {
		this.dcb_ymd = dcb_ymd;
	}
	public String getDcb_gbn_nm() {
		return dcb_gbn_nm;
	}
	public void setDcb_gbn_nm(String dcb_gbn_nm) {
		this.dcb_gbn_nm = dcb_gbn_nm;
	}
	public String getDcb_why() {
		return dcb_why;
	}
	public void setDcb_why(String dcb_why) {
		this.dcb_why = dcb_why;
	}
	public String getSnt_uptae_nm() {
		return snt_uptae_nm;
	}
	public void setSnt_uptae_nm(String snt_uptae_nm) {
		this.snt_uptae_nm = snt_uptae_nm;
	}
	public String getGe_eh_yn() {
		return ge_eh_yn;
	}
	public void setGe_eh_yn(String ge_eh_yn) {
		this.ge_eh_yn = ge_eh_yn;
	}
	public String getSite_loc_gbn() {
		return site_loc_gbn;
	}
	public void setSite_loc_gbn(String site_loc_gbn) {
		this.site_loc_gbn = site_loc_gbn;
	}
	public float getTrdp_area_etc() {
		return trdp_area_etc;
	}
	public void setTrdp_area_etc(float trdp_area_etc) {
		this.trdp_area_etc = trdp_area_etc;
	}
	public String getPerm_nt_no() {
		return perm_nt_no;
	}
	public void setPerm_nt_no(String perm_nt_no) {
		this.perm_nt_no = perm_nt_no;
	}
	public String getCn_perm_stdt() {
		return cn_perm_stdt;
	}
	public void setCn_perm_stdt(String cn_perm_stdt) {
		this.cn_perm_stdt = cn_perm_stdt;
	}
	public String getCn_perm_enddt() {
		return cn_perm_enddt;
	}
	public void setCn_perm_enddt(String cn_perm_enddt) {
		this.cn_perm_enddt = cn_perm_enddt;
	}
	public String getCn_perm_nt_sayu() {
		return cn_perm_nt_sayu;
	}
	public void setCn_perm_nt_sayu(String cn_perm_nt_sayu) {
		this.cn_perm_nt_sayu = cn_perm_nt_sayu;
	}
//	public String getPern_nt_cn() {
//		return pern_nt_cn;
//	}
//	public void setPern_nt_cn(String pern_nt_cn) {
//		this.pern_nt_cn = pern_nt_cn;
//	}
//	public String getPerm_nt_cn() {
//		return perm_nt_cn;
//	}
//	public void setPerm_nt_cn(String perm_nt_cn) {
//		this.perm_nt_cn = perm_nt_cn;
//	}
	public int getGeoLat() {
		return geoLat;
	}
	public void setGeoLat(int geoLat) {
		this.geoLat = geoLat;
	}
	public int getGeoLon() {
		return geoLon;
	}
	public void setGeoLon(int geoLon) {
		this.geoLon = geoLon;
	}
    
}
