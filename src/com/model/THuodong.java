package com.model;

public class THuodong implements java.io.Serializable
{
    private Integer id;
    
    private String name;
    
    private String dizhi;
    
    private String info;
    
    private String pic;
    
    private String tel;
    private String shijian;
    private String zt;

	public String getZt() {
		return zt;
	}

	public void setZt(String zt) {
		this.zt = zt;
	}

	public String getShijian() {
		return shijian;
	}

	public void setShijian(String shijian) {
		this.shijian = shijian;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDizhi() {
		return dizhi;
	}

	public void setDizhi(String dizhi) {
		this.dizhi = dizhi;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}  
}