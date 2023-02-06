package com.VO;

import java.util.Date;

public class CommentVO {
	private int cseq;
	private int aseq;
	private String content;
	private Date date;
	private String id;
	private String name;
	
	public int getCseq() {
		return cseq;
	}
	public void setCseq(int cseq) {
		this.cseq = cseq;
	}
	public int getAseq() {
		return aseq;
	}
	public void setAseq(int aseq) {
		this.aseq = aseq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public CommentVO(String content, Date date, String name) {
		super();
		this.content = content;
		this.date = date;
		this.name = name;
	}
	
	public CommentVO(int aseq, String content, String id) {
		super();
		this.aseq = aseq;
		this.content = content;
		this.id = id;
	}
}
