package com.action;



import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TGonggaoDAO;
import com.dao.THuodongDAO;
import com.dao.TJieshaoDAO;
import com.dao.TLianjieDAO;
import com.model.TCatelog;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
	private THuodongDAO huodongDAO;
	
	private TJieshaoDAO jieshaoDAO;
	private TGonggaoDAO gonggaoDAO;
	private TCatelogDAO catelogDAO;
    private TLianjieDAO lianjieDAO;
	
	public String index()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		Map session= ServletActionContext.getContext().getSession();

		String sql="from THuodong ";
		List huodongList=huodongDAO.getHibernateTemplate().find(sql);
		request.put("huodongList", huodongList);

		sql="from TJieshao where id=1";
		List list=jieshaoDAO.getHibernateTemplate().find(sql);
		request.put("jieshao", list.get(0));

		sql="from TGonggao ";
		List gonggaoList=gonggaoDAO.getHibernateTemplate().find(sql);
		request.put("gonggaoList", gonggaoList);
		
		sql="from TLianjie where del='no'";
		List lianjieList =lianjieDAO.getHibernateTemplate().find(sql);
		request.put("lianjieList", lianjieList);
		
		sql="from TCatelog where catelogDel='no' ";
		List<TCatelog> cateLogList=catelogDAO.getHibernateTemplate().find(sql);
		session.put("cateLogList", cateLogList);
		return ActionSupport.SUCCESS;
	}

	public THuodongDAO getHuodongDAO() {
		return huodongDAO;
	}

	public void setHuodongDAO(THuodongDAO huodongDAO) {
		this.huodongDAO = huodongDAO;
	}

	public TGonggaoDAO getGonggaoDAO() {
		return gonggaoDAO;
	}

	public void setGonggaoDAO(TGonggaoDAO gonggaoDAO) {
		this.gonggaoDAO = gonggaoDAO;
	}

	public TJieshaoDAO getJieshaoDAO() {
		return jieshaoDAO;
	}

	public void setJieshaoDAO(TJieshaoDAO jieshaoDAO) {
		this.jieshaoDAO = jieshaoDAO;
	}

	public TLianjieDAO getLianjieDAO() {
		return lianjieDAO;
	}

	public void setLianjieDAO(TLianjieDAO lianjieDAO) {
		this.lianjieDAO = lianjieDAO;
	}

	public TCatelogDAO getCatelogDAO() {
		return catelogDAO;
	}

	public void setCatelogDAO(TCatelogDAO catelogDAO) {
		this.catelogDAO = catelogDAO;
	}

}
