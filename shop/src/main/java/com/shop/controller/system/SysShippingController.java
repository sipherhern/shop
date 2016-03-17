package com.shop.controller.system;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.controller.base.RequestContext;
import com.shop.entity.vo.ShipForm;
import com.shop.service.ShippingService;

@Component
@RequestMapping(value = "/shopsys/shipping")
public class SysShippingController extends RequestContext {
	@Autowired
	private ShippingService sysShippingService;
	/**
	 * 增加运费模板
	 * @throws IOException 
	 */
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public void add(ShipForm shipform) throws IOException{
		sysShippingService.addShipping(shipform);
	}
	@RequestMapping(value = "list", method = RequestMethod.POST)
	public List<Object> list(int pageSize,int pageIndex) throws IOException{
		return sysShippingService.listAllShippingByPage(pageSize,pageIndex);
	}
	@RequestMapping(value = "remove", method = RequestMethod.POST)
	public void remove(String uuid) throws IOException{
		sysShippingService.deleteShipping(uuid);
	}
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public void update(ShipForm shipform) throws IOException{
		sysShippingService.updateShipping(shipform);
	}
	@RequestMapping(value = "listone", method = RequestMethod.POST)
	public void listOne(ShipForm shipform) throws IOException{
		sysShippingService.updateShipping(shipform);
	}
	
	
}