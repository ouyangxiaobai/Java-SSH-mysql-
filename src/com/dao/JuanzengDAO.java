package com.dao;
import com.model.Juanzeng;
import java.util.List;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class JuanzengDAO extends HibernateDaoSupport
{
    private static final Log log = LogFactory.getLog(JuanzengDAO.class);

	protected void initDao() {
		// do nothing
	}

	public void save(Juanzeng transientInstance) {
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Juanzeng persistentInstance) {
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Juanzeng findById(java.lang.Integer id) {
		log.debug("getting Juanzeng instance with id: " + id);
		try {
			Juanzeng instance = (Juanzeng) getHibernateTemplate().get(
					"com.model.Juanzeng", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Juanzeng instance) {
		log.debug("finding Juanzeng instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Juanzeng instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Juanzeng as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all Juanzeng instances");
		try {
			String queryString = "from Juanzeng";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Juanzeng merge(Juanzeng detachedInstance) {
		log.debug("merging TAdmin instance");
		try {
			Juanzeng result = (Juanzeng) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Juanzeng instance) {
		log.debug("attaching dirty Juanzeng instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Juanzeng instance) {
		log.debug("attaching clean TAdmin instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static JuanzengDAO getFromApplicationContext(ApplicationContext ctx) {
		return (JuanzengDAO) ctx.getBean("JuanzengDAO");
	}
}
