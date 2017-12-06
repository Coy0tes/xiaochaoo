package com.mxc.links.entity;

public class Links {

	private String id;
	private String home;	// 网站
	private String urls;	// 链接地址
	private String createDate;	// 创建时间
	private String createBy;	// 创建人
	private String updateDate;	// 更新时间
	private String updateBy;	// 更新人
	
	public Links() {
		System.out.println("This is links..................");
	}
	public Links(String id, String home, String urls, String createDate, String createBy, String updateDate,
			String updateBy) {
		super();
		this.id = id;
		this.home = home;
		this.urls = urls;
		this.createDate = createDate;
		this.createBy = createBy;
		this.updateDate = updateDate;
		this.updateBy = updateBy;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	public String getUrls() {
		return urls;
	}
	public void setUrls(String urls) {
		this.urls = urls;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public String getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	@Override
	public String toString() {
		return "Links [id=" + id + ", home=" + home + ", urls=" + urls + ", createDate=" + createDate + ", createBy="
				+ createBy + ", updateDate=" + updateDate + ", updateBy=" + updateBy + "]";
	}
	
	
}
