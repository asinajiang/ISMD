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
 * 网站一级标题PO类
 * @author guweif2011
 *
 */

@Entity
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
@Table(name = "ismd_section")
public class Section extends BaseDomain{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "section_id")
	private int sectionId;
	
	@Column(name = "section_name")
	private String sectionName;

	public int getSectionId() {
		return sectionId;
	}

	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}
	
	
}
