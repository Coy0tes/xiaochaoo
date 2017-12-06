package com.mxc.sysMenu.entity;

public class SysMenu {
	public String id;
	public String name;
	public String sort;		// 排序
	public String href;		// 链接
	public String target;	// 目标
	public String icon;		// 图标
	public String isShow;	// 是否显示
	public String permission;	// 权限
	public String createBy; 	// 创建者
	public String createDate;	// 修改时间
	public String updateBy;		// 修改人
	
	
	
	public SysMenu() {
		super();
	}
	public SysMenu(String id, String name, String sort, String href, String target, String icon, String isShow,
			String permission, String createBy, String createDate, String updateBy) {
		super();
		this.id = id;
		this.name = name;
		this.sort = sort;
		this.href = href;
		this.target = target;
		this.icon = icon;
		this.isShow = isShow;
		this.permission = permission;
		this.createBy = createBy;
		this.createDate = createDate;
		this.updateBy = updateBy;
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
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getHref() {
		return href;
	}
	public void setHref(String href) {
		this.href = href;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getIsShow() {
		return isShow;
	}
	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	@Override
	public String toString() {
		return "SysMenuEntity [id=" + id + ", name=" + name + ", sort=" + sort + ", href=" + href + ", target=" + target
				+ ", icon=" + icon + ", isShow=" + isShow + ", permission=" + permission + ", createBy=" + createBy
				+ ", createDate=" + createDate + ", updateBy=" + updateBy + "]";
	}
	
}
