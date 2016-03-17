package com.shop.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.dialect.function.ClassicAvgFunction;
import org.hibernate.dialect.function.ClassicCountFunction;
import org.hibernate.dialect.function.ClassicSumFunction;
import org.hibernate.dialect.function.StandardSQLFunction;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.type.StringType;
  
public final class HibernateUtil {  
    private HibernateUtil(){}  
    private static SessionFactory sessionFactory;  
    static{  
        Configuration cfg = new Configuration();  
        cfg.configure();  
          
        ServiceRegistry  sr = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).getBootstrapServiceRegistry();    
        sessionFactory = cfg.buildSessionFactory(sr);  
    }  
    public static SessionFactory getSessionFactory() {  
        return sessionFactory;  
    }  
    public static Session getSession(){  
        return sessionFactory.openSession();  
    }  
    
    
    /*	 使HQL兼容SQL的函数,内容如下：
     * 	count()：返回匹配指定条件的行数
     * 	avg():返回数值列的平均值
     * 	sum():返回数值列的总数
     *  group_concat():返回带有来自一个组的连接的非NULL值的字符串结果;
     * */
    	public static Configuration UseSqlConfiguration() {
    		Configuration classicCfg = new Configuration();
    		classicCfg.addSqlFunction("count", new ClassicCountFunction());
    		classicCfg.addSqlFunction("avg", new ClassicAvgFunction());
    		classicCfg.addSqlFunction("sum", new ClassicSumFunction());
    		classicCfg.addSqlFunction("group_concat", new StandardSQLFunction("group_concat", new StringType()));
    		return classicCfg;
    	}
}  
