package Vo;

public class SearchVO {
    private String snt_cob_nm; //�뾽醫낅챸
    private String site_addr; // �냼�옱吏�吏�踰�

    public SearchVO() {}

    public SearchVO(String snt_cob_nm, String site_addr) {
    	this.snt_cob_nm = null;
    	this.site_addr = null;
        this.snt_cob_nm = snt_cob_nm;
        this.site_addr = site_addr;
    }

    public String getSnt_cob_nm() {
        return snt_cob_nm;
    }

    public void setSnt_cob_nm(String snt_cob_nm) {
        this.snt_cob_nm = snt_cob_nm;
    }

    public String getSite_addr() {
        return site_addr;
    }

    public void setSite_addr(String site_addr) {
        this.site_addr = site_addr;
    }
}
