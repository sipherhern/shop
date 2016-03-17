package com.shop.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.junit.Test;
import org.springframework.util.StringUtils;

public class MyConverter{
	private String dateFormatPattern = "YYYY/MM/DD"; // 转换的格式

	public MyConverter() {
	}

	@Test
	public void con() {

		String source = "2015/8/29";

		if (!StringUtils.hasLength(source)) {
			return;
		}
		DateFormat df = new SimpleDateFormat(dateFormatPattern);
		try {

			System.out.println(df.parse(source));
			return;
		} catch (ParseException e) {
			throw new IllegalArgumentException(String.format(
					"类型转换失败，需要格式%s，但格式是[%s]", dateFormatPattern, source));
		}
	}
}
