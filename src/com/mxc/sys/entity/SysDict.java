package com.mxc.sys.entity;

public class SysDict {
	private String value;	// 数据值
	private String label;	// 标签名
	private String type;	// 类型
	private String description;// 描述
	private Integer sort;	// 排序
	private String parentId;//父Id
	
	public SysDict() {
		System.out.println("This is SysDict......");
	}
	public SysDict(String value, String label, String type, String description, Integer sort, String parentId) {
		super();
		this.value = value;
		this.label = label;
		this.type = type;
		this.description = description;
		this.sort = sort;
		this.parentId = parentId;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	@Override
	public String toString() {
		return "SysDict [value=" + value + ", label=" + label + ", type=" + type + ", description=" + description
				+ ", sort=" + sort + ", parentId=" + parentId + "]";
	}
	
}
