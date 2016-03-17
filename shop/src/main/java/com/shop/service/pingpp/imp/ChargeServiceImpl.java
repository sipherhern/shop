package com.shop.service.pingpp.imp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import com.pingplusplus.Pingpp;
import com.pingplusplus.exception.APIConnectionException;
import com.pingplusplus.exception.APIException;
import com.pingplusplus.exception.AuthenticationException;
import com.pingplusplus.exception.ChannelException;
import com.pingplusplus.exception.InvalidRequestException;
import com.pingplusplus.exception.PingppException;
import com.pingplusplus.model.App;
import com.pingplusplus.model.Charge;
import com.pingplusplus.model.ChargeCollection;
import com.shop.service.pingpp.ChargeService;

public class ChargeServiceImpl implements ChargeService{
	/**
	 * pingpp 管理平台对应的 API key
	 */
	private final String apiKey ="sk_test_jH8arDj9u9m9PeDq54CiDaDC";
	/**
	 * pingpp 管理平台对应的应用 ID
	 */
	private final String appId ="app_XnPujLivnjXPrL8K";
	
	public ChargeServiceImpl()
	{
		Pingpp.apiKey=this.apiKey;
	}
	@Override
	public Charge createCharge(JSONObject jsonobject) {
			Charge charge = null;
	        Map<String, Object> chargeMap = new HashMap<String, Object>();
	        chargeMap.put("amount", jsonobject.get("amount"));//设置订单总金额
	        chargeMap.put("currency","cny");//设置三位货币代码（cny人民币）
	        chargeMap.put("order_no", jsonobject.get("order_no"));
	        chargeMap.put("channel", jsonobject.getString("channel"));//alipay;alipay_wap;wx;
	        chargeMap.put("client_ip", jsonobject.getString("client_ip"));
	        chargeMap.put("subject", jsonobject.get("subject"));
	        chargeMap.put("body", jsonobject.get("body"));
	        Map<String, String> app = new HashMap<String, String>();
	        app.put("id",appId);
	        chargeMap.put("app", app);
	        try {
	            //发起交易请求
	            charge = Charge.create(chargeMap);
	            //System.out.println(charge);
	        } catch (PingppException e) {
	            e.printStackTrace();
	        }
	        return charge;
	}

	@Override
	public Charge retrieve(String id) {
		 try {
	            Map<String, Object> param = new HashMap<String, Object>();
	            List<String> expande = new ArrayList<String>();
	            expande.add("app");
	            param.put("expand", expande);
	            //Charge charge = Charge.retrieve(id);
	            //Expand app
	            Charge charge = Charge.retrieve(id, param);
	            if (charge.getApp() instanceof App) {
	                //App app = (App) charge.getApp();
	                // System.out.println("App Object ,appId = " + app.getId());
	            } else {
	                // System.out.println("String ,appId = " + charge.getApp());
	            }
	          return charge;

	        } catch (PingppException e) {
	            e.printStackTrace();
	            return null;
	        }
	}

	@Override
	public ChargeCollection all() {
		   ChargeCollection chargeCollection = null;
	        Map<String, Object> chargeParams = new HashMap<String, Object>();
	        chargeParams.put("limit", 3);

	//增加此处设施，刻意获取app expande 
//	        List<String> expande = new ArrayList<String>();
//	        expande.add("app");
//	        chargeParams.put("expand", expande);

	        try {
	            chargeCollection = Charge.all(chargeParams);
	            System.out.println(chargeCollection);
	        } catch (AuthenticationException e) {
	            e.printStackTrace();
	        } catch (InvalidRequestException e) {
	            e.printStackTrace();
	        } catch (APIConnectionException e) {
	            e.printStackTrace();
	        } catch (APIException e) {
	            e.printStackTrace();
	        } catch (ChannelException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        return chargeCollection;
	}

}
