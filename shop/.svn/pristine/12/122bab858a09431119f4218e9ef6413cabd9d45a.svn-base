package com.shop.controller.system;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.controller.base.RequestContext;
import com.shop.entity.News;
import com.shop.service.NewsService;

@Controller
@RequestMapping("/shopsys/news")
public class SysNewsController extends RequestContext {

	@Autowired
	private NewsService sysNewsService;

	@RequestMapping(value = "addNews", method = RequestMethod.POST)
	public void addNews(HttpServletResponse res, @RequestBody JSONObject json)
			throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		News news = new News();
		try {
			news = objectMapper.readValue(json.toString(), News.class);
			res.setStatus(sysNewsService.addNews(news));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "updateNews", method = RequestMethod.POST)
	public void updateNews(HttpServletResponse res, @RequestBody JSONObject json)
			throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		News news = new News();
		try {
			news = objectMapper.readValue(json.toString(), News.class);
			res.setStatus(sysNewsService.updateNews(news));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "delNews", method = RequestMethod.POST)
	public void delNews(HttpServletResponse res, @RequestBody JSONObject json)
			throws Exception {
		int news_id = json.getInt("newId");
		res.setStatus(sysNewsService.deleteNews(news_id));
	}
}
