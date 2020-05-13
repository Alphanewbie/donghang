package Vo;

public class BusinessVO {

    private int cgg_code; //시군구코드
    private int snt_cob_code; //업종코드
    private int upso_sno; // 업소일련번호
    private String snt_cob_nm; //업종명
    private String perm_nt_ymd; //허가신고일
    private String upso_nm; // 업소명
    private String site_addr; // 소재지지번
    private String site_stdt; //소재지시작일
    private String admdng_nm; //행정동명
    private String dcb_ymd; //폐업일자
    private String dcb_gbn_nm; //폐업구분
    private String dcb_why; //폐업사유
    private String snt_uptae_nm; //업태명
    private String ed_fin_ymd; //교육수료일자
    private boolean ge_eh_yn; //모범음식점여부
    private String perm_nt_no; //허가(신고)번호

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

    public int getUpso_sno() {
        return upso_sno;
    }

    public void setUpso_sno(int upso_sno) {
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

    public String getSite_addr() {
        return site_addr;
    }

    public void setSite_addr(String site_addr) {
        this.site_addr = site_addr;
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

    public String getEd_fin_ymd() {
        return ed_fin_ymd;
    }

    public void setEd_fin_ymd(String ed_fin_ymd) {
        this.ed_fin_ymd = ed_fin_ymd;
    }

    public boolean isGe_eh_yn() {
        return ge_eh_yn;
    }

    public void setGE_EH_YN(String ge_eh_yn) {
        if(ge_eh_yn.equals("비대상"))
            this.ge_eh_yn = false;
        else
            this.ge_eh_yn = true;
    }

    public void setGe_eh_yn(boolean ge_eh_yn) {
        this.ge_eh_yn = ge_eh_yn;
    }

    public String getPerm_nt_no() {
        return perm_nt_no;
    }

    public void setPerm_nt_no(String perm_nt_no) {
        this.perm_nt_no = perm_nt_no;
    }




}
