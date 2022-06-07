package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.THuodongDAO;
import com.model.THuodong;
import com.opensymphony.xwork2.ActionSupport;

public class huodongAction extends ActionSupport
{
	private int id;
 
	private String fujian;
 
	private String message;
	private String path;

	private THuodongDAO huodongDAO;
	
	private THuodong thuodong;
	
	private String name;
	
	public String huodongMana()
	{
		String sql="from THuodong where 1=1 ";
		if(name!=null && !"".equals(name)){
			sql = sql + " and name like '%"+name+"%'";
		}
		List huodongList=huodongDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("huodongList", huodongList);
		return ActionSupport.SUCCESS;
	}
	
	public String huodongDetail()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		THuodong huodong=huodongDAO.findById(id);
		request.put("huodong", huodong);
		return ActionSupport.SUCCESS;
	}
	
	public String huodongAdd()
	{
		thuodong.setPic(fujian);
		huodongDAO.save(thuodong);
		this.setMessage("添加成功");
		this.setPath("huodongMana.action");
		return "succeed";
	}
	
	public String huodongDel()
	{
		THuodong huodong=huodongDAO.findById(id);
		huodongDAO.delete(huodong);
		this.setMessage("删除成功");
		this.setPath("huodongMana.action");
		return "succeed";
	}

	public String toEditHuodong()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		THuodong huodong=huodongDAO.findById(id);
		request.put("huodong", huodong);
		return ActionSupport.SUCCESS;
	}
	
	public String editHuodong()
	{
		thuodong.setPic(fujian);
		huodongDAO.attachDirty(thuodong);
		this.setMessage("操作成功");
		this.setPath("huodongMana.action");
		return "succeed";
	}

	public String huodongList()
	{
		String sql="from THuodong ";
		List huodongList=huodongDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("huodongList", huodongList);
		return ActionSupport.SUCCESS;
	}

	public String huodongView()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		THuodong huodong=huodongDAO.findById(id);
		request.put("huodong", huodong);
		return ActionSupport.SUCCESS;
	}

	public String getFujian()
	{
		return fujian;
	}

	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}

	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
    
	public THuodongDAO getHuodongDAO() {
		return huodongDAO;
	}

	public void setHuodongDAO(THuodongDAO huodongDAO) {
		this.huodongDAO = huodongDAO;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public THuodong getThuodong() {
		return thuodong;
	}

	public void setThuodong(THuodong thuodong) {
		this.thuodong = thuodong;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
