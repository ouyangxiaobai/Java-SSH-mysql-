package com.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TNewsDAO;
import com.model.TNews;
import com.opensymphony.xwork2.ActionSupport;

public class newsAction extends ActionSupport
{
	private int newsId;
	private String newsTitle;
	private String newsContent;
	private int catelogId;
	private String fujian;
	
	private String message;
	private String path;
	
	private TNewsDAO newsDAO;
	private TCatelogDAO catelogDAO;

	public String newsAdd()
	{
		TNews news=new TNews();
		news.setNewsTitle(newsTitle);
		news.setNewsContent(newsContent);
		news.setNewsDate(new Date().toLocaleString());
		news.setCatelogId(catelogId);
		news.setFujian(fujian);
		newsDAO.save(news);
		this.setMessage("操作成功");
		this.setPath("newsMana.action");
		return "succeed";
	}
	
	public String newsMana()
	{
		List newsList=newsDAO.findAll();
		for(int i=0;i<newsList.size();i++)
		{
			TNews news=(TNews)newsList.get(i);
			if(news.getCatelogId()>0){
			news.setCatelogName(catelogDAO.findById(news.getCatelogId()).getCatelogName());
			}
			System.out.print(news.getCatelogName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("newsList", newsList);
		return ActionSupport.SUCCESS;
	}

	public String newsAll()
	{
		TNews tt=new TNews();
		List newsList=null;
		tt.setCatelogId(catelogId);
		if(catelogId>0){
			newsList=newsDAO.findByExample(tt);
			
		}else{
		 newsList=newsDAO.findAll();
		}
		 
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("newsList", newsList);
		return ActionSupport.SUCCESS;
	}
	
	public String newsDel()
	{
		TNews news=newsDAO.findById(newsId);
		newsDAO.delete(news);
		this.setMessage("操作成功");
		this.setPath("newsMana.action");
		return "succeed";
	}
	
	public String newsDetailHou()
	{
		TNews news=newsDAO.findById(newsId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("news", news);
		return ActionSupport.SUCCESS;
	}
	
	public String newsDetailQian()
	{
		TNews news=newsDAO.findById(newsId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("news", news);
		return ActionSupport.SUCCESS;
	}

	public String newsEdit()
	{
		TNews news=newsDAO.findById(newsId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("news", news);
		return ActionSupport.SUCCESS;
	}
	
	public String newsEditSave()
	{
		TNews news=newsDAO.findById(newsId);
		news.setNewsTitle(newsTitle);
		news.setNewsContent(newsContent);
		news.setNewsDate(new Date().toLocaleString());
		news.setCatelogId(catelogId);
		news.setFujian(fujian);
		newsDAO.update(news);
		
		this.setMessage("操作成功");
		this.setPath("newsMana.action");
		return "succeed";
	}

	public String newsSearch()
	{
		String sql="from TNews where newsTitle like '%"+newsTitle.trim()+"%'";
		List newsList=newsDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("newsList", newsList);
		return ActionSupport.SUCCESS;
	}

	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}

	public String getNewsContent()
	{
		return newsContent;
	}

	public TCatelogDAO getCatelogDAO()
	{
		return catelogDAO;
	}

	public void setCatelogDAO(TCatelogDAO catelogDAO)
	{
		this.catelogDAO = catelogDAO;
	}

	public void setNewsContent(String newsContent)
	{
		this.newsContent = newsContent;
	}

	public int getCatelogId()
	{
		return catelogId;
	}

	public void setCatelogId(int catelogId)
	{
		this.catelogId = catelogId;
	}

	public TNewsDAO getNewsDAO()
	{
		return newsDAO;
	}

	public void setNewsDAO(TNewsDAO newsDAO)
	{
		this.newsDAO = newsDAO;
	}

	public int getNewsId()
	{
		return newsId;
	}

	public void setNewsId(int newsId)
	{
		this.newsId = newsId;
	}

	public String getNewsTitle()
	{
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle)
	{
		this.newsTitle = newsTitle;
	}

	public String getPath()
	{
		return path;
	}

	public void setPath(String path)
	{
		this.path = path;
	}

	public String getFujian() {
		return fujian;
	}

	public void setFujian(String fujian) {
		this.fujian = fujian;
	}
}
