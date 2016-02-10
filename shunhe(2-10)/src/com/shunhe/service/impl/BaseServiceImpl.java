package com.shunhe.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.hql.ast.QuerySyntaxException;
import org.springframework.beans.factory.annotation.Autowired;

import com.shunhe.service.BaseService;

public class BaseServiceImpl<T> implements BaseService<T> {

	// 依赖注入,加载 SessionFactory
	@Autowired
	private SessionFactory sessionFactory;

	
	/**
	 * 新建一个Session对象，该Session对象启动一个新线程，能够手动配置事务
	 * 
	 * @return
	 */
	public Session openSession(){
		return sessionFactory.openSession();
	}
	
	
	/**
	 * 获取当前Session对象
	 * 
	 * @return
	 */
	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	/**
	 * 保存对象
	 */
	public void save(T entity) {
		this.getCurrentSession().save(entity);
	}

	/**
	 * 删除对象
	 */
	public void delete(T entity){
		this.getCurrentSession().delete(entity);
	}

	/**
	 * 更新
	 */
	public void update(T entity) {
		this.getCurrentSession().update(entity);
	}

	/**
	 * 合并
	 */
	public void merge(T entity) {
		this.getCurrentSession().merge(entity);
	}

	/**
	 * 使用Persist方法保存对象
	 */
	@Override
	public void persist(T entity) {
		this.persist(entity);
	}
	
	
	
	/**
	 * 保存或更新
	 */
	public void saveOrUpdate(T entity) {
		this.getCurrentSession().saveOrUpdate(entity);
	}

	/**
	 * 根据ID加载对象
	 */
	@SuppressWarnings("unchecked")
	public T load(Class<T> c, Serializable id) {
		return (T) this.getCurrentSession().load(c, id);
	}

	/**
	 * 根据ID获取对象
	 */
	@SuppressWarnings("unchecked")
	public T get(Class<T> c, Serializable id) {
		return (T) this.getCurrentSession().get(c, id);
	}

	/**
	 * 根据HQL语句获取对象
	 */
	public T get(String hql) {
		return this.get(hql, null);
	}

	/**
	 * 根据HQL语句和参数获取对象
	 */
	public T get(String hql, Map<String, Object> params) {
		// 查询出来的结果集
		List<T> list = this.find(hql, params);
		// 如果结果非空
		if (list != null && list.size() > 0) {
			// 返回第一个对象
			return list.get(0);
		}
		return null;
	}

	/**
	 * 根据HQL查询结果集
	 * 
	 * @param hql
	 * @return
	 */
	public List<T> find(String hql) {
		return find(hql, null);
	}

	/**
	 * 根据HQL查询缓存中结果集
	 * 
	 * @param hql
	 * @return
	 */
	public Iterator<T> findByCache(String hql) {
		return findByCache(hql, null);
	}
	/**
	 * 使用HQL查询对象集合,注:
	 * 如果以'SQL：'开头则使用SQL语句，返回类型list<List>
	 * 如果以'SQM：'开头则使用SQL语句，返回类型list<Map>
	 * 如果以'HQM：'开头则使用HQL语句，返回类型list<Map>
	 */
	@SuppressWarnings("unchecked")
	public List<T> find(String hql, Map<String, Object> params) {
		Query query = null;
		List<T> list = new ArrayList<T>();
		boolean matcherSQL = hql.startsWith("SQL:");
		boolean matcherSQLToMap = hql.startsWith("SQM:");
		boolean matcherHQLToMap = hql.startsWith("HQM:");
		try{
			//匹配以SQL:开头的所有语句
			if(matcherSQL == true)
			{
				hql = hql.substring(4);
				query= this.getCurrentSession().createSQLQuery(hql);
			}
			//匹配以MQL:开头的所有语句
			else if (matcherSQLToMap == true)
			{
				hql = hql.substring(4);
				query = this.getCurrentSession().createSQLQuery(hql).setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
			}	
			//匹配以HQM:开头的所有语句
			else if (matcherHQLToMap == true)
			{
				hql = hql.substring(4);
				query = this.getCurrentSession().createQuery(hql).setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
			}
			else
			{
				query = this.getCurrentSession().createQuery(hql);
			}
		}
		catch(QuerySyntaxException e){
			this.getCurrentSession().close();
			e.printStackTrace();
		}
		// 如果参数非空
		if (params != null && params.size() > 0) {
			// 设置参数
			this.setParameters(query, params);
		}
		// 返回查询结果
		try{
			list = query.list();
		}
		catch(Exception e){
			this.getCurrentSession().close();
			e.printStackTrace();
		}
		return list;
	}



	@SuppressWarnings("unchecked")
	public Iterator<T> findByCache(String hql, Map<String, Object> params) {
		// 创建Query
		Query query = this.getCurrentSession().createQuery(hql);

		// 如果参数非空
		if (params != null && params.size() > 0) {
			// 设置参数
			this.setParameters(query, params);
		}
		// 返回查询结果
		return query.iterate();
	}

	/**
	 * 使用HQL查询分页的结果集，如果以'SQL:'开头则使用SQL语句
	 */
	@SuppressWarnings("unchecked")
	public List<T> find(String hql, int page, int rows,
			Map<String, Object> params ) {
		Query query = null;
		boolean matcherSQL = hql.startsWith("SQL:");
		boolean matcherSQLToMap = hql.startsWith("SQM:");
		boolean matcherHQLToMap = hql.startsWith("HQM:");
		try{
			//匹配以SQL:开头的所有语句
			if(matcherSQL == true)
			{
				hql = hql.substring(4);
				query= this.getCurrentSession().createSQLQuery(hql);
			}
			//匹配以MQL:开头的所有语句
			else if (matcherSQLToMap == true)
			{
				hql = hql.substring(4);
				query = this.getCurrentSession().createSQLQuery(hql).setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
			}	
			//匹配以HQM:开头的所有语句
			else if (matcherHQLToMap == true)
			{
				hql = hql.substring(4);
				query = this.getCurrentSession().createQuery(hql).setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
			}
			else
			{
				query = this.getCurrentSession().createQuery(hql);
			}
		}
		catch(QuerySyntaxException e){
			e.printStackTrace();
		}
		// 如果参数非空
		if (params != null && params.size() > 0) {
			// 设置参数
			this.setParameters(query, params);
		}

		// 查询结果并返回
		return query.setFirstResult((page - 1) * rows).setMaxResults(rows)
				.list();
	}

	/**
	 * 分页的结果集,通过缓存
	 */
	@SuppressWarnings("unchecked")
	public Iterator<T> findByCache(String hql, int page, int rows,
			Map<String, Object> params) {
		// 创建Query
		Query query = this.getCurrentSession().createQuery(hql);
		// 如果参数非空
		if (params != null && params.size() > 0) {
			// 设置参数
			this.setParameters(query, params);
		}
		// 查询结果并返回
		return query.setFirstResult((page - 1) * rows).setMaxResults(rows)
				.iterate();
	}

	/**
	 * 无参数的 Select count(*) from
	 */
	public Long count(String hql) {
		// 通过另一个方法实现^_^
		return this.count(hql, null);
	}

	/**
	 * 带参数的 Select count(*) from
	 */
	public Long count(String hql, Map<String, Object> params) {

		// 给传递过来的hql添加前缀内容
		hql = "select count(*) " + hql;

		// 创建Query
		Query query = this.getCurrentSession().createQuery(hql);

		// 如果参数非空
		if (params != null && params.size() > 0) {
			// 设置参数
			this.setParameters(query, params);
		}

		// 返回查询结果
		return (Long) query.uniqueResult();
	}

	/**
	 * 执行HQL
	 */
	public Integer executeHql(String hql) {
		// 通过另一个方法实现^_^
		return this.executeHql(hql, null);
	}

	/**
	 * 执行HQL
	 */
	public Integer executeHql(String hql, Map<String, Object> params) {

		// 创建Query
		Query query = this.getCurrentSession().createQuery(hql);

		// 如果参数不为null
		if (params != null && params.size() > 0) {
			// 设置参数
			this.setParameters(query, params);
		}

		// 执行HQL
		return query.executeUpdate();
	}

	/**
	 * 给Query赋值的方法
	 * 
	 * @param query
	 *            Hibernate Query对象
	 * @param params
	 *            Map集合参数
	 */
	private void setParameters(Query query, Map<String, Object> params) {

		// 获取所有Key
		Set<String> keys = params.keySet();

		// 循环取值,赋值
		for (String key : keys) {

			// 获取到参数中的对象
			Object obj = params.get(key);

			// 判断参数类型
			if (obj instanceof Collection<?>) {// 是集合
				// System.out.println("参数为集合的大小为:" + ((Collection<?>)
				// obj).size());
				query.setParameterList(key, (Collection<?>) obj);
			} else if (obj instanceof Object[]) {// 是数组
				// System.out.println("参数为数姐的大小为:" + ((Object[]) obj).length);
				query.setParameterList(key, (Object[]) obj);
			} else {// 普通对象
				// System.out.println("普通对象");
				query.setParameter(key, obj);
			}
		}
	}

	@Override
	public boolean deleteById(String Id) {
		T t = get(Id);
		if (t == null) {
			return false;
		}
		delete(t);
		return true;
	}

	/**
	 * 分页
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<T> getAllRecordAndDivPage(String hql, int offset, int length) {
		List<T> list = new ArrayList<T>();
		Query query = getCurrentSession().createQuery(hql);
		query.setFirstResult(offset);
		query.setMaxResults(length);
		list = query.list();
		return list;
	}

	@Override
	public int getAllRowCount(String hql) {
		return getCurrentSession().createQuery(hql).list().size();
	}



	
		
	
	
	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> List<T> getList(Class<T> c){
		try{
		return this.sessionFactory.getCurrentSession().createQuery("from "+c.getName()).list();
		}
		catch(Exception e){
			
			System.out.println("!!!");
			e.printStackTrace();
			
		}
		return null;
	}
	
	
	
	
	public <T> List<T> getListHaveParameter(final Class<T> c,final Map map,final String lastHql){
				return this.sessionFactory.getCurrentSession().createQuery("from "+c.getName()+" where "+changeMapParameter(map)+" "+lastHql).setProperties(map).list();
	}
	
	public String changeMapParameter(Map map){
		int i=0;
		String r="";
		 for (Object key : map.keySet()) {
			 if(i==0)
			  r=r+key.toString()+"=:"+ key.toString();
			 else
			  r=r+" and "+key.toString()+"=:"+ key.toString();	 
		     i++;
		 }
		return r;
	}
	
	
	public <T> List<T> getListHaveParameterAndPage(final Class<T> c,final Map map,final String lastHql,final int first,final int max){
				return this.sessionFactory.getCurrentSession().createQuery("from "+c.getName()+" where "+changeMapParameter(map)+" "+lastHql).setProperties(map).setFirstResult(first).setMaxResults(max).list();
	}
	
	
	/**
	 * 保存对象
	 */
	public Integer save2(T entity) {
		return (Integer)this.getCurrentSession().save(entity);
	}
	
	
	public <T> Integer getEntityCount(final T c){
	     Session arg0=this.getCurrentSession();
				Long l= (Long)arg0.createQuery("select count(*) from "+ c.getClass().getName()).uniqueResult();
				return l.intValue();
		 
	}
	
	public <T> Integer getEntityCountHaveParam(final T c,final Map<String,Object> map){
		Session arg0=this.getCurrentSession();
				Long l= (Long)arg0.createQuery("select count(*) from "+c.getClass().getName()+" where "+changeMapParameter(map)).setProperties(map).uniqueResult();
				return l.intValue();
	}
	
	public <T> Integer getEntityCountHaveParam(final T c,final Map<String,Object> map,final String lastsql){
		Session arg0=this.getCurrentSession();
				Long l= (Long)arg0.createQuery("select count(*) from "+c.getClass().getName()+" where "+changeMapParameter(map)+" "+lastsql).setProperties(map).uniqueResult();
				return l.intValue();
	}
	
	
	
}
