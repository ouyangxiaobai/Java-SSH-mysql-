package com.model;


public class Juanzeng implements java.io.Serializable
{
	protected static final long serialVersionUID = -1L;
	public Juanzeng(){
	}

	private Integer id;

	private String name;

	private String xiangmu;

	private Integer je;

	private String jzsj;
	public Integer getId(){
		return this.id;
	}
	public void setId(Integer id){
		this.id = id;
	}
	public String getName(){
		return this.name;
	}
	public void setName(String name){
		this.name = name;
	}
	public String getXiangmu(){
		return this.xiangmu;
	}
	public void setXiangmu(String xiangmu){
		this.xiangmu = xiangmu;
	}
	public Integer getJe(){
		return this.je;
	}
	public void setJe(Integer je){
		this.je = je;
	}
	public String getJzsj(){
		return this.jzsj;
	}
	public void setJzsj(String jzsj){
		this.jzsj = jzsj;
	}

}
