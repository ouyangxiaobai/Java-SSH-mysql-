package com.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.model.TCatelog;
import com.opensymphony.xwork2.ActionSupport;

public class catelogAction extends ActionSupport
{
	private int catelogId;
	private String catelogName;
	private String catelogMiaoshu;
	private int pid;
	private String message;
	private String path;
	
	private TCatelogDAO catelogDAO;

	public String catelogMana()
	{
		String sql="from TCatelog where catelogDel='no'";
		List cateLogList=catelogDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("cateLogList", cateLogList);
		return ActionSupport.SUCCESS;
	}

	public String toAddCatelog()
	{
		String sql="from TCatelog where pid = 0 ";
		List cateLogList=catelogDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("cateLogList", cateLogList);
		return ActionSupport.SUCCESS;
	}
	
	public String catelogAll()
	{
		String sql="from TCatelog where catelogDel='no'";
		List cateLogList=catelogDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("cateLogList", cateLogList);
		return ActionSupport.SUCCESS;
	}
	
	public String catelogAdd()
	{
		TCatelog catelog=new TCatelog();
		catelog.setCatelogName(catelogName);
		catelog.setCatelogMiaoshu(catelogMiaoshu);
		catelog.setPid(pid);
		catelog.setCatelogDel("no");
		catelogDAO.save(catelog);
		this.setMessage("操作成功");
		this.setPath("catelogMana.action");
		return "succeed";
	}
	
	public String catelogEditSave(){
		TCatelog catelog=catelogDAO.findById(catelogId);
		catelog.setCatelogName(catelogName);
		catelog.setCatelogMiaoshu(catelogMiaoshu);
		catelog.setPid(pid);
		catelogDAO.update(catelog);
		this.setMessage("更新成功");
		this.setPath("catelogMana.action");
		return "succeed";
	}
	
	public String catelogDel()
	{
			TCatelog catelog=catelogDAO.findById(catelogId);
		 
			catelogDAO.delete(catelog);
			this.setMessage("操作成功");
			this.setPath("catelogMana.action");
		return "succeed";
	}
	
	public String catelogEdit()
	{
		HttpServletRequest req = ServletActionContext.getRequest();
		TCatelog catelog=catelogDAO.findById(catelogId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		req.setAttribute("catelog", catelog);
		String sql="from TCatelog where pid = 0 ";
		List cateLogList=catelogDAO.getHibernateTemplate().find(sql);
		request.put("cateLogList", cateLogList);
		
		return ActionSupport.SUCCESS;
	}

	public TCatelogDAO getCatelogDAO()
	{
		return catelogDAO;
	}

	public void setCatelogDAO(TCatelogDAO catelogDAO)
	{
		this.catelogDAO = catelogDAO;
	}

	public int getCatelogId()
	{
		return catelogId;
	}

	public void setCatelogId(int catelogId)
	{
		this.catelogId = catelogId;
	}

	public String getCatelogMiaoshu()
	{
		return catelogMiaoshu;
	}

	public void setCatelogMiaoshu(String catelogMiaoshu)
	{
		this.catelogMiaoshu = catelogMiaoshu;
	}

	public String getCatelogName()
	{
		return catelogName;
	}

	public void setCatelogName(String catelogName)
	{
		this.catelogName = catelogName;
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

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

}
