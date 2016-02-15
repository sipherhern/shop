package com.shunhe.service;

import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;


@Service
public interface BaseService<T> {
	/**
	 * 保存一个对象
	 * 
	 * @param entity
	 */
	public void save(T entity);

	/**
	 * 删除一个对象
	 * 
	 * @param entity
	 */
	public void delete(T entity);

	/**
	 * 更新一个对象
	 * 
	 * @param entity
	 */
	public void update(T entity);

	/**
	 * 合并一个对象
	 * 
	 * @param entity
	 */
	public void merge(T entity);

	/**
	 * 添加或更新对象
	 * 
	 * @param entity
	 */
	public void saveOrUpdate(T entity);

	/**
	 * 加载一个对象
	 * 
	 * @param c
	 * @param id
	 * @return
	 */
	public T load(Class<T> c, Serializable id);

	/**
	 * 获取一个对象
	 * 
	 * @param c
	 * @param id
	 * @return
	 */
	public T get(Class<T> c, Serializable id);
	
	
	/**
	 * 获取一个对象
	 * 
	 * @param hql
	 * @return
	 */
	public T get(String hql);

	/**
	 * 获取一个对象
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public T get(String hql, Map<String, Object> params);

	/**
	 * 根据HQL语句查询结果集
	 * 
	 * @param hql
	 * @return
	 */
	public List<T> find(String hql);

	/**
	 * 根据HQL语句查询缓存中的结果集
	 * 
	 * @param hql
	 * @return
	 */
	public Iterator<T> findByCache(String hql);
	
	
	/**
	 * 查询对象集合
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public List<T> find(String hql, Map<String, Object> params);
	
	/**
	 * 查询对象集合(缓存读取)
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public Iterator<T> findByCache(String hql, Map<String, Object> params);
	/**
	 * 查询对象集合
	 * 
	 * @param hql
	 * @param page
	 * @param rows
	 * @param params
	 * @return
	 */
	public List<T> find(String hql, int page, int rows,
			Map<String, Object> params);

	/**
	 * Select count(*) from
	 * 
	 * @param hql
	 * @return
	 */
	
	public Iterator<T> findByCache(String hql, int page, int rows,
			Map<String, Object> params);
	
	/**
	 * Select count(*) from cache
	 * 
	 * @param hql
	 * @return
	 */
	public Long count(String hql);

	/**
	 * Select count(*) from
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public Long count(String hql, Map<String, Object> params);

	/**
	 * 执行HQL语句
	 * 
	 * @param hql
	 * @return
	 */
	public Integer executeHql(String hql);

	/**
	 * 执行HQL语句
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public Integer executeHql(String hql, Map<String, Object> params)
			throws Exception;
	
	
    /**
     * <根据ID删除数据>
     * @param Id 实体id
     * @return 是否删除成功
     * 
     */
    public boolean deleteById(String Id);
    
 
    
	/**
	 * @author 
	 * @param hql
	 *            查询全表信息的HQL语句，不支持原生SQL。由于使用createQuery方法，所以不支持原生的SQL语句；
	 *            如果想使用原生的SQL，需要修改DaoImpl中的实现(将createQuery方法修改为createSQLQuery)，
	 *            但是由于使用通用的DAO，修改后查询的结果会变成Object类型，在页面(view层)无法使用对象模型获取
	 *            对象的属性值，如果每个实体类都有自己的Dao及DaoImpl层，则不存在这个问题。
	 * 
	 * @param offset
	 *            当前页的起始记录。
	 * @param length
	 *            当前页需要显示的记录条数，及长度。
	 * */
	public List<T> getAllRecordAndDivPage(final String hql, final int offset,
			final int length);

	/**
	 * 查询表中记录总条数
	 * */
	public int getAllRowCount(String hql);
	/**
	 * 持久化一个对象，该对象不会以及存在数据库中，直到调用flush方法
	 * 
	 * @param entity
	 */
	public void persist(T entity);

}
