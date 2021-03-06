package com.shop.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.shop.entity.Address;
import com.shop.service.AddressService;
import com.shop.util.UUIdutil;

@SuppressWarnings("rawtypes")
@Component
public class AddressServiceImpl extends BaseServiceImpl<Address> implements
		AddressService {

	@Override
	public int addAddress(Address address) throws Exception {
		try {
			// 添加Uuid
			address.setAddressUuid(UUIdutil.uuid());
			this.save(address);
			return 200;
		} catch (Exception ex) {
			ex.printStackTrace();
			return 404;
		}
	}

	@Override
	public int updateAddress(Address address) throws Exception {
		try {
			this.update(address);
			return 200;
		} catch (Exception ex) {
			ex.printStackTrace();
			return 404;
		}
	}

	@Override
	public int delAddress(int address_id) throws Exception {
		Address addr = new Address();
		Map<String, Object> address = new HashMap<String, Object>();
		address.put("addressId", address_id);
		try {
			// find the record
			List list = this.find(
					"From Address a where a.addressId = :addressId", address);
			if (list.isEmpty()) {
				return 202;
			} else {
				addr = (Address) list.get(0);
				this.delete(addr);
				return 200;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			return 404;
		}
	}

	@Override
	public List getAddressPage(int cust_id, int pageIndex, int pageSize) throws Exception {
		Map<String, Object> cust = new HashMap<String, Object>();
		// 获取custId来查询此顾客地址
		cust.put("custId", cust_id);
		try {
			String hql = "from Address a where a.custId = :custId group by a.addressId";
			return this.find(hql, pageIndex, pageSize, cust);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getDefaultAddress(int cust_id) throws Exception {
		Map<String, Object> cust = new HashMap<String, Object>();
		cust.put("custId", cust_id);
		try {
			String hql = "from Address a where a.custId = :custId and a.addressDefaulted = 1 group by a.addressId";
			return this.find(hql,cust);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
