package com.shop.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Service;

import com.shop.entity.Address;

@Service
@SuppressWarnings("rawtypes")
public interface AddressService {

	/** 增加新地址
	 * 
	 * @param address
	 * @return
	 * @throws SQLException
	 */

	public int addAddress(Address address) throws Exception;

	/** 更新地址信息
	 *  
	 * @param address
	 * @return
	 * @throws SQLException
	 */

	public int updateAddress(Address address) throws Exception;

	/** 删除地址
	 * 
	 * @param address_id
	 * @return
	 * @throws SQLException
	 */

	public int delAddress(int address_id) throws Exception;

	/** 获取地址分页信息
	 * 
	 * @param cust_id
	 * @return
	 * @throws Exception
	 */

	public List getAddressPage(int cust_id, int pageIndex, int pageSize) throws Exception;
	
	/**  获取默认地址
	 * 
	 * @param cust_id
	 * @return
	 * @throws Exception
	 */
	public List getDefaultAddress(int cust_id) throws Exception;

}
