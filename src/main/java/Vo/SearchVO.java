package Vo;

public class SearchVO {
    private String upso_nm; //�뾽醫낅챸
    private String site_addr; // �냼�옱吏�吏�踰�

    public SearchVO() {}

    public SearchVO(String upso_nm, String site_addr) {
    	this.upso_nm = null;
    	this.site_addr = null;
        this.upso_nm = upso_nm;
        this.site_addr = site_addr;
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

}
