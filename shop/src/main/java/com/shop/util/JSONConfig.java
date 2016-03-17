package com.shop.util;

import net.sf.json.JsonConfig;

public class JSONConfig {

	public static JsonConfig prodConfig() {

		JsonConfig prodconfig = new JsonConfig();
		prodconfig.setExcludes(new String[] {"shop","promotion","collects", "prodCommts",
				"thirdClass", "pictureRelates", "skuProds" });
		return prodconfig;
	}

	public static JsonConfig cartitemConfig() {

		JsonConfig Cartitemconfig = new JsonConfig();
		Cartitemconfig.setExcludes(new String[] { "skuProd", "customer" });
		return Cartitemconfig;
	}

	public static JsonConfig categoryConfig() {

		JsonConfig Categoryconfig = new JsonConfig();
		Categoryconfig.setExcludes(new String[] { "category",
				"skuProdsForSku2Id2", "categories", "skuProdsForSku2Id1" });
		return Categoryconfig;
	}

	public static JsonConfig pageSetConfig() {

		JsonConfig pageSetConfig = new JsonConfig();
		pageSetConfig.setExcludes(new String[] { "list", "userdefinedlist" });
		return pageSetConfig;
	}

	public static JsonConfig pictureConfig() {

		JsonConfig pictureConfig = new JsonConfig();
		pictureConfig.setExcludes(new String[] { "pictureRelate" });
		return pictureConfig;
	}
	
	public static JsonConfig skuProdConfig() {

		JsonConfig skuProdConfig = new JsonConfig();
		skuProdConfig.setExcludes(new String[] { "categoryBySku2Id1", "categoryBySku2Id2", "product", "prodCommts","cartitems", "orderRelates"});
		return skuProdConfig;
	}

}
