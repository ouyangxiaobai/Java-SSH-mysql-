package com.action;
import java.util.List;
import java.util.Map;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.model.Juanzeng;
import com.dao.JuanzengDAO;
public class JuanzengAction extends ActionSupport
{
	private int id;
	private String message;
	private String path;
 
	private JuanzengDAO juanzengDAO;
	
	private Juanzeng juanzeng = new Juanzeng();	
	private String name;
	private String xiangmu;
	public String juanzengMana()
	{
		String sql="from Juanzeng where 1=1 ";
		if(name!=null && !"".equals(name)){
			sql = sql + " and name like '%"+name+"%'";
		}
		if(xiangmu!=null && !"".equals(xiangmu)){
			sql = sql + " and xiangmu like '%"+xiangmu+"%'";
		}
		List juanzengList=juanzengDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("juanzengList", juanzengList);
		return ActionSupport.SUCCESS;
	}

	public String juanzengList()
	{
		String sql="from Juanzeng where 1=1 ";
		if(name!=null && !"".equals(name)){
			sql = sql + " and name like '%"+name+"%'";
		}
		if(xiangmu!=null && !"".equals(xiangmu)){
			sql = sql + " and xiangmu like '%"+xiangmu+"%'";
		}
		List juanzengList=juanzengDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("juanzengList", juanzengList);
		return ActionSupport.SUCCESS;
	}

	public String juanzengDetail()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		Juanzeng juanzeng=juanzengDAO.findById(id);
		request.put("juanzeng", juanzeng);
		return ActionSupport.SUCCESS;
	}
	
	public String juanzengAdd()
	{
		juanzengDAO.save(juanzeng);
		this.setMessage("操作成功");
		this.setPath("juanzengMana.action");
		return "succeed";
	}
	
	public String juanzengDel()
	{
		Juanzeng juanzeng=juanzengDAO.findById(id);
		juanzengDAO.delete(juanzeng);
		this.setMessage("操作成功");
		this.setPath("juanzengMana.action");
		return "succeed";
	}
	
	public String tojuanzengEdit()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		Juanzeng juanzeng=juanzengDAO.findById(id);
		request.put("juanzeng", juanzeng);
		return ActionSupport.SUCCESS;
	}
	
	public String juanzengEdit()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		juanzengDAO.attachDirty(juanzeng);
		this.setMessage("操作成功");
		this.setPath("juanzengMana.action");
		return "succeed";
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
	public void setJuanzengDAO(JuanzengDAO juanzengDAO) {
		this.juanzengDAO = juanzengDAO;
	}
    public Juanzeng getJuanzeng() {
		return juanzeng;
	}
	public void setJuanzeng(Juanzeng juanzeng) {
		this.juanzeng = juanzeng;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getXiangmu() {
		return xiangmu;
	}

	public void setXiangmu(String xiangmu) {
		this.xiangmu = xiangmu;
	}
	
}
