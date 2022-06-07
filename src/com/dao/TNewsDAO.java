package com.dao;

import java.util.Date;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TNews;

/**
 * Data access object (DAO) for domain model class TNews.
 * 
 * @see com.model.TNews
 * @author MyEclipse Persistence Tools
 */

public class TNewsDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TNewsDAO.class);

	// property constants
	public static final String NEWS_TITLE = "newsTitle";

	public static final String NEWS_CONTENT = "newsContent";

	public static final String NEWS_DATE = "newsDate";

	public static final String NEWS_ONE1 = "newsOne1";

	public static final String NEWS_ONE2 = "newsOne2";

	public static final String NEWS_ONE3 = "newsOne3";

	public static final String NEWS_ONE4 = "newsOne4";

	public static final String NEWS_ONE5 = "newsOne5";

	public static final String NEWS_ONE6 = "newsOne6";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TNews transientInstance)
	{
		log.debug("saving TNews instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}
	
	public void update(TNews transientInstance)
	{
		log.debug("saving TNews instance");
		try
		{
			getHibernateTemplate().update(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TNews persistentInstance)
	{
		log.debug("deleting TNews instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TNews findById(java.lang.Integer id)
	{
		log.debug("getting TNews instance with id: " + id);
		try
		{
			TNews instance = (TNews) getHibernateTemplate().get(
					"com.model.TNews", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TNews instance)
	{
		log.debug("finding TNews instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TNews instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TNews as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByNewsTitle(Object newsTitle)
	{
		return findByProperty(NEWS_TITLE, newsTitle);
	}

	public List findByNewsContent(Object newsContent)
	{
		return findByProperty(NEWS_CONTENT, newsContent);
	}

	public List findByNewsDate(Object newsDate)
	{
		return findByProperty(NEWS_DATE, newsDate);
	}

	public List findByNewsOne1(Object newsOne1)
	{
		return findByProperty(NEWS_ONE1, newsOne1);
	}

	public List findByNewsOne2(Object newsOne2)
	{
		return findByProperty(NEWS_ONE2, newsOne2);
	}

	public List findByNewsOne3(Object newsOne3)
	{
		return findByProperty(NEWS_ONE3, newsOne3);
	}

	public List findByNewsOne4(Object newsOne4)
	{
		return findByProperty(NEWS_ONE4, newsOne4);
	}

	public List findByNewsOne5(Object newsOne5)
	{
		return findByProperty(NEWS_ONE5, newsOne5);
	}

	public List findByNewsOne6(Object newsOne6)
	{
		return findByProperty(NEWS_ONE6, newsOne6);
	}

	public List findAll()
	{
		log.debug("finding all TNews instances");
		try
		{
			String queryString = "from TNews order by catelogId";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TNews merge(TNews detachedInstance)
	{
		log.debug("merging TNews instance");
		try
		{
			TNews result = (TNews) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TNews instance)
	{
		log.debug("attaching dirty TNews instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TNews instance)
	{
		log.debug("attaching clean TNews instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TNewsDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TNewsDAO) ctx.getBean("TNewsDAO");
	}
}