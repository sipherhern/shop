package com.shop.controller.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.controller.base.RequestContext;
import com.shop.entity.News;
import com.shop.entity.Pictures;
import com.shop.service.NewsService;


@Controller
@RequestMapping("/shopadmin/news")
public class adminNewsController extends RequestContext {

	@Autowired
	private NewsService newsService;

	@RequestMapping(value = "addAdvertise", method = RequestMethod.POST, consumes = "application/json")
	public void addAdvertise(@RequestBody List<Map<String,Object>> json,
			HttpServletResponse res) throws Exception {
		News news = new News();
		Pictures picture = new Pictures();
		JSONArray jsonArray = JSONArray.fromObject(json);  
		JSONObject jsonNews = jsonArray.getJSONObject(0);
		ArrayList<Pictures> pic = new ArrayList<Pictures>();
		// get News
		ObjectMapper objectMapper = new ObjectMapper();
	    news = objectMapper.readValue(jsonNews.toString(), News.class);
		jsonArray.remove(0);
		// get pictures
		for(int i = 0 ;i < jsonArray.size();i++){
			jsonNews = jsonArray.getJSONObject(i);
			picture = objectMapper.readValue(jsonNews.toString(), Pictures.class);
			pic.add(i, picture);
		}
		res.setStatus(newsService.addAdvertise(news, pic));
	}
	
	@RequestMapping(value = "updateAdvertise", method = RequestMethod.POST, consumes = "application/json")
	public void updateAdvertise(@RequestBody List<Map<String,Object>> json,
			HttpServletResponse res) throws Exception {
		News news = new News();
		Pictures picture = new Pictures();
		JSONArray jsonArray = JSONArray.fromObject(json);  
		JSONObject jsonNews = jsonArray.getJSONObject(0);
		ArrayList<Pictures> pic = new ArrayList<Pictures>();
		// get News
		ObjectMapper objectMapper = new ObjectMapper();
	    news = objectMapper.readValue(jsonNews.toString(), News.class);
		jsonArray.remove(0);
		// get Pictures
		for(int i = 0 ;i < jsonArray.size();i++){
			jsonNews = jsonArray.getJSONObject(i);
			picture = objectMapper.readValue(jsonNews.toString(), Pictures.class);
			pic.add(i, picture);
		}
		res.setStatus(newsService.updateAdvertise(news, pic));
	}

	@ResponseBody
	@RequestMapping(value = "delAdvertise", method = RequestMethod.POST, consumes = "application/json")
	public void delAdvertise(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		int new_id = json.getInt("newId");
		res.setStatus(newsService.delAdvertise(new_id));
	}

}
