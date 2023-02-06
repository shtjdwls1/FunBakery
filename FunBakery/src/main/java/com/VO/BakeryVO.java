package com.VO;

public class BakeryVO {
	private int b_seq;
	private String b_category;
	private String b_name;
	private String b_desc;
	private String b_img;
	private int b_count;
	
	private int b_r_index;
	private String ingr_name;
	private String ingr_weight;
	private float ingr_rate;
	
	private String r_content;
	private String r_img;
	private int r_order;
	
	public BakeryVO(String b_name, String b_desc, String b_img, int b_count, int b_r_index, String ingr_name,
			String ingr_weight, float ingr_rate, String r_content, String r_img, int r_order) {
		super();
		this.b_name = b_name;
		this.b_desc = b_desc;
		this.b_img = b_img;
		this.b_count = b_count;
		this.b_r_index = b_r_index;
		this.ingr_name = ingr_name;
		this.ingr_weight = ingr_weight;
		this.ingr_rate = ingr_rate;
		this.r_content = r_content;
		this.r_img = r_img;
		this.r_order = r_order;
	}

	public BakeryVO(int b_r_index, String b_name, String b_desc, String b_img) {
		super();
		this.b_r_index = b_r_index;
		this.b_name = b_name;
		this.b_desc = b_desc;
		this.b_img = b_img;
	}

	public BakeryVO(int b_r_index, String ingr_name, String ingr_weight, float ingr_rate) {
		super();
		this.b_r_index = b_r_index;
		this.ingr_name = ingr_name;
		this.ingr_weight = ingr_weight;
		this.ingr_rate = ingr_rate;
	}

	public BakeryVO(int b_seq, String r_content, String r_img, int r_order) {
		super();
		this.b_seq = b_seq;
		this.r_content = r_content;
		this.r_img = r_img;
		this.r_order = r_order;
	}
	
	public BakeryVO(int b_seq, String b_category, String b_name, String b_img, int b_count) {
		super();
		this.b_seq = b_seq;
		this.b_category = b_category;
		this.b_name = b_name;
		this.b_img = b_img;
		this.b_count = b_count;
	}
	
	public BakeryVO(String b_category, int b_count) {
		super();
		this.b_category = b_category;
		this.b_count = b_count;
	}

	
	public int getB_seq() {
		return b_seq;
	}

	public void setB_seq(int b_seq) {
		this.b_seq = b_seq;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_desc() {
		return b_desc;
	}

	public void setB_desc(String b_desc) {
		this.b_desc = b_desc;
	}

	public String getB_img() {
		return b_img;
	}

	public void setB_img(String b_img) {
		this.b_img = b_img;
	}

	public int getB_count() {
		return b_count;
	}

	public void setB_count(int b_count) {
		this.b_count = b_count;
	}

	public int getB_r_index() {
		return b_r_index;
	}

	public void setB_r_index(int b_r_index) {
		this.b_r_index = b_r_index;
	}

	public String getIngr_name() {
		return ingr_name;
	}

	public void setIngr_name(String ingr_name) {
		this.ingr_name = ingr_name;
	}

	public String getIngr_weight() {
		return ingr_weight;
	}

	public void setIngr_weight(String ingr_weight) {
		this.ingr_weight = ingr_weight;
	}

	public float getIngr_rate() {
		return ingr_rate;
	}

	public void setIngr_rate(float ingr_rate) {
		this.ingr_rate = ingr_rate;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public String getR_img() {
		return r_img;
	}

	public void setR_img(String r_img) {
		this.r_img = r_img;
	}

	public int getR_order() {
		return r_order;
	}

	public void setR_order(int r_order) {
		this.r_order = r_order;
	}
	
	public String getB_category() {
		return b_category;
	}
	
	public void setB_category(String b_category) {
		this.b_category = b_category;
	}
	
}
