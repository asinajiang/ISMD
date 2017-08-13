package org.hust.ismd.dao;

import java.util.ArrayList;
import java.util.List;

import org.hust.ismd.entity.Columns;
import org.springframework.stereotype.Repository;

@Repository
public class ColumnsDao extends BaseDao<Columns>{
	public List<Columns> getColumnsBySectionId(int sectionId){
		List<Columns> cols = new ArrayList<Columns>();
		List<Columns> allCols = this.getAll();
		for(Columns attri:allCols){
			if(attri.getSection().getSectionId() == sectionId){
				cols.add(attri);
			}
		}
		return cols;
	}
}
