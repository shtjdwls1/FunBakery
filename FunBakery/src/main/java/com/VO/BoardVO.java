package com.VO;

import java.util.Date;

public class BoardVO {
	private int article_seq;
	private String article_title;
	private String article_content;
	private Date article_date;
	private String mb_name;
	private String id;
	private int count;
	
	public int getArticle_seq() {
		return article_seq;
	}
	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}
	public String getArticle_title() {
		return article_title;
	}
	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}
	public String getArticle_content() {
		return article_content;
	}
	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}
	public Date getArticle_date() {
		return article_date;
	}
	public void setArticle_date(Date article_date) {
		this.article_date = article_date;
	}
	public String getMb_name() {
		return mb_name;
	}
	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public BoardVO(int article_seq, String article_title, String article_content, Date article_date, String mb_name, int count) {
		super();
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_date = article_date;
		this.mb_name = mb_name;
		this.count = count;
	}
	
	public BoardVO(int article_seq, String article_title, String article_content, Date article_date, String mb_name, String id) {
		super();
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_date = article_date;
		this.mb_name = mb_name;
		this.id = id;
	}
	
	public BoardVO(String article_title, String article_content, String id) {
		super();
		this.article_title = article_title;
		this.article_content = article_content;
		this.id = id;
	}
	
	public BoardVO(int article_seq, String article_title, String article_content) {
		super();
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.article_content = article_content;
	}
	
	public BoardVO(int article_seq, String article_title, String mb_name, String id) {
		super();
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.mb_name = mb_name;
	}
	
}
