package com.mxc.news.entity;

public class News {

	private String id;
	private String title;	// 文章标题
	private String author;	// 作者、发布人
	private String isStatus;	// 审核状态
	private String competence;	// 浏览权限
	private String isShow;	// 是否展示
	private String isRecommend;	// 是否推荐 
	private String keywords;	// 关键字
	private String summary;		// 内容摘要
	private String content;		// 文本
	private String collect;		// 收藏
	private String createDate;	// 创建时间
	private String createBy;		// 创建人
	private String updateDate;	
	private String updateBy;
	
	public News() {
		System.out.println("this is eneity: news");
	}
	public News(String id, String title, String author, String isStatus, String competence, String isShow,
			String isRecommend, String keywords, String summary, String content, String collect, String createDate,
			String createBy, String updateDate, String updateBy) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.isStatus = isStatus;
		this.competence = competence;
		this.isShow = isShow;
		this.isRecommend = isRecommend;
		this.keywords = keywords;
		this.summary = summary;
		this.content = content;
		this.collect = collect;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getIsStatus() {
		return isStatus;
	}
	public void setIsStatus(String isStatus) {
		this.isStatus = isStatus;
	}
	public String getCompetence() {
		return competence;
	}
	public void setCompetence(String competence) {
		this.competence = competence;
	}
	public String getIsShow() {
		return isShow;
	}
	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}
	public String getIsRecommend() {
		return isRecommend;
	}
	public void setIsRecommend(String isRecommend) {
		this.isRecommend = isRecommend;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCollect() {
		return collect;
	}
	public void setCollect(String collect) {
		this.collect = collect;
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
		return "News [id=" + id + ", title=" + title + ", author=" + author + ", isStatus=" + isStatus + ", competence="
				+ competence + ", isShow=" + isShow + ", isRecommend=" + isRecommend + ", keywords=" + keywords
				+ ", summary=" + summary + ", content=" + content + ", collect=" + collect + ", createDate="
				+ createDate + ", createBy=" + createBy + ", updateDate=" + updateDate + ", updateBy=" + updateBy + "]";
	}
	
}
