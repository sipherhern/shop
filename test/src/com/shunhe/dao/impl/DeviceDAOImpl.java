package com.shunhe.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.shunhe.Device;
import com.shunhe.dao.DeviceDAO;
import com.shunhe.service.impl.BaseServiceImpl;

@Repository
public class DeviceDAOImpl extends BaseServiceImpl<Device> implements DeviceDAO {

	@Override
	public List recordQuery(String startDate, String endDate, int offset,
			int length) {
		String hql = "from Device d where d.deviceCreatedTime >= '" + startDate
				+ "' and d.deviceCreatedTime <= '" + endDate + "'";
		try {
			Query query = this.getCurrentSession().createQuery(hql);
			query.setMaxResults(length);
			query.setFirstResult(offset);
			List list = query.list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public int getCount(String startDate, String endDate) {
		String hql = "select count(d.deviceId) from Device d where d.deviceCreatedTime >= '"
				+ startDate + "' and d.deviceCreatedTime <= '" + endDate + "'";
		Query q = this.getCurrentSession().createQuery(hql);
		return Integer.parseInt(q.list().get(0).toString());
	}
}
