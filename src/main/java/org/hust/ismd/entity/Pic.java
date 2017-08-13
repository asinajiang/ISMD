package org.hust.ismd.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * 网站照片PO类
 * @author guweif2011
 *
 */

@Entity
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
@Table(name = "ismd_pic")
public class Pic {
	
	/*  首页滚动大图  */
	public static final int ROLL_BIG_PIC = 0;
	
	/*  团队成员列表图(证件图)  */
	public static final int LISERNCE_PIC = 1;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pic_id")
	private int picId;
	
	@Column(name = "pic_name")
	private String picName;
	
	@Column(name = "pic_type")
	private int picType;
	
	@Column(name = "pic_address")
	private String pic_address;  //图片的存储目录

	public int getPicId() {
		return picId;
	}

	public void setPicId(int picId) {
		this.picId = picId;
	}

	public String getPicName() {
		return picName;
	}

	public void setPicName(String picName) {
		this.picName = picName;
	}

	public int getPicType() {
		return picType;
	}

	public void setPicType(int picType) {
		this.picType = picType;
	}

	public String getPic_address() {
		return pic_address;
	}

	public void setPic_address(String pic_address) {
		this.pic_address = pic_address;
	}
	
	
}











