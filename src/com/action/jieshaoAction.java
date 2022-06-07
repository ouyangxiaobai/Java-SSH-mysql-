package com.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

import com.dao.TJieshaoDAO;
import com.model.Juanzeng;
import com.opensymphony.xwork2.ActionSupport;

public class jieshaoAction extends ActionSupport
{
	private String neirong;
	private TJieshaoDAO jieshaoDAO;
	private String message;
	private String path;
	public String jieshaoMana()
	{
		String sql="from TJieshao where id=1";
		List list=jieshaoDAO.getHibernateTemplate().find(sql);
		
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("jieshao", list.get(0));
		return ActionSupport.SUCCESS;
	}
	
	public String jieshaoEdit()
	{
		String sql="update TJieshao set neirong=? where id=1";
		Object[] c={neirong};
		jieshaoDAO.getHibernateTemplate().bulkUpdate(sql,c);
		
		this.setMessage("操作成功");
		this.setPath("jieshaoMana.action");
		return "succeed";
	}

	public String jieshaoShow()
	{
		String sql="from TJieshao where id=1";
		List list=jieshaoDAO.getHibernateTemplate().find(sql);
		
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("jieshao", list.get(0));
		return ActionSupport.SUCCESS;
	}

	public TJieshaoDAO getJieshaoDAO()
	{
		return jieshaoDAO;
	}

	public void setJieshaoDAO(TJieshaoDAO jieshaoDAO)
	{
		this.jieshaoDAO = jieshaoDAO;
	}

	public String getNeirong()
	{
		return neirong;
	}

	public void setNeirong(String neirong)
	{
		this.neirong = neirong;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
		
}
