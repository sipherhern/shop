package com.shop.service.pingpp.imp;

import java.util.HashMap;
import java.util.Map;

import com.pingplusplus.Pingpp;
import com.pingplusplus.exception.APIConnectionException;
import com.pingplusplus.exception.APIException;
import com.pingplusplus.exception.AuthenticationException;
import com.pingplusplus.exception.ChannelException;
import com.pingplusplus.exception.InvalidRequestException;
import com.pingplusplus.model.Charge;
import com.pingplusplus.model.ChargeRefundCollection;
import com.pingplusplus.model.Refund;


public class RefundsServiceImpl {

	/**
	 * pingpp 管理平台对应的 API key
	 */
	private final String apiKey ="sk_test_jH8arDj9u9m9PeDq54CiDaDC";
	public String chargeId =null;
	
	public RefundsServiceImpl()
	{
		Pingpp.apiKey=this.apiKey;
	}
	public RefundsServiceImpl(String chargeId)
	{
		Pingpp.apiKey=this.apiKey;
		this.chargeId=chargeId;
	}
  
    /**
     * 退款
     * 
     * 创建退款，需要先获得 charge ,然后调用 charge.getRefunds().create();
     * 参数具体说明参考：https://pingxx.com/document/api#api-r-new
     * 
     * 可以一次退款，也可以分批退款。
     * 
     * @param charge
     * @return
     */
    public Refund refund(Charge charge) {
        Refund refund = null;
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("description", "苹果被咬了一口。");
        try {
            refund = charge.getRefunds().create(params);
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
        return refund;
    }

    /**
     * 查询退款
     * 
     * 根据 Id 查询退款记录。需要传递 charge。
     * 参考文档：https://pingxx.com/document/api#api-r-inquiry
     * 
     * @param id
     * @param charge
     */
    public void retrieve(String id, Charge charge) {

        try {
            Refund refund = charge.getRefunds().retrieve(id);
            System.out.println(refund);
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
    }

    /**
     * 分页查询退款
     * 
     * 批量查询退款。默认一次 10 条，用户可以通过 limit 自定义查询数目，但是最多不超过 100 条。
     * 参考文档：https://pingxx.com/document/api#api-r-list
     * 
     * @param charge
     */
    public void all(Charge charge) {
        Map<String, Object> refundParams = new HashMap<String, Object>();
        refundParams.put("limit", 3);
        try {
            ChargeRefundCollection refunds = charge.getRefunds().all(refundParams);
            System.out.println(refunds);
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
    }
}
