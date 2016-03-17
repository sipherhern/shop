package com.shop.entity.vo;

import java.util.List;

import com.shop.entity.Category;
import com.shop.entity.SkuProd;

public class CategoryForm {

	private List<Category> cates;
	private List<SkuProd> skuprods;

	private List<String> colors;
	private List<String> sizes;
	private List<String> editions;
	private List<String> netcontents;
	private List<String> grids;
	private List<String> memory;
	
	public CategoryForm(List<Category> cates, List<SkuProd> skuprods,
			List<String> colors, List<String> sizes, List<String> editions,
			List<String> netcontents, List<String> grids, List<String> memory) {
		this.cates = cates;
		this.skuprods = skuprods;
		this.colors = colors;
		this.sizes = sizes;
		this.editions = editions;
		this.netcontents = netcontents;
		this.grids = grids;
		this.memory = memory;
	}
	public CategoryForm() {
	}

	public List<Category> getCates() {
		return cates;
	}
	public void setCates(List<Category> cates) {
		this.cates = cates;
	}
	public List<SkuProd> getSkuprods() {
		return skuprods;
	}
	public void setSkuprods(List<SkuProd> skuprods) {
		this.skuprods = skuprods;
	}
	public List<String> getColors() {
		return colors;
	}
	public void setColors(List<String> colors) {
		this.colors = colors;
	}
	public List<String> getSizes() {
		return sizes;
	}
	public void setSizes(List<String> sizes) {
		this.sizes = sizes;
	}
	public List<String> getEditions() {
		return editions;
	}
	public void setEditions(List<String> editions) {
		this.editions = editions;
	}
	public List<String> getNetcontents() {
		return netcontents;
	}
	public void setNetcontents(List<String> netcontents) {
		this.netcontents = netcontents;
	}
	public List<String> getGrids() {
		return grids;
	}
	public void setGrids(List<String> grids) {
		this.grids = grids;
	}
	public List<String> getMemory() {
		return memory;
	}
	public void setMemory(List<String> memory) {
		this.memory = memory;
	}

	
	

}
