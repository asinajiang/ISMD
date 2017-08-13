package org.hust.ismd.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * 网站二级标题PO类
 * @author guweif2011
 *
 */

@Entity
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
@Table(name = "ismd_columns")
public class Columns {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "columns_id")
	private int columnsId;
	
	@Column(name = "columns_name")
	private String columnsName;
	
	@ManyToOne
	@JoinColumn(name = "section_id")
	private Section section;

	public int getColumnsId() {
		return columnsId;
	}

	public void setColumnsId(int columnsId) {
		this.columnsId = columnsId;
	}

	public String getColumnsName() {
		return columnsName;
	}

	public void setColumnsName(String columnsName) {
		this.columnsName = columnsName;
	}

	public Section getSection() {
		return section;
	}

	public void setSectionId(Section section) {
		this.section = section;
	}
	
	
}
