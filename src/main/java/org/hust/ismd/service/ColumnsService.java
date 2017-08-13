package org.hust.ismd.service;

import java.io.Serializable;
import java.util.List;

import org.hust.ismd.dao.ColumnsDao;
import org.hust.ismd.entity.Columns;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ColumnsService {
	
	private ColumnsDao columnsDao;

	public ColumnsDao getColumnsDao() {
		return columnsDao;
	}
	@Autowired
	public void setColumnsDao(ColumnsDao columnsDao) {
		this.columnsDao = columnsDao;
	}
	
	public void save(Columns columns){
		columnsDao.save(columns);
	}
	
	public void remove(Columns columns){
		columnsDao.remove(columns);
	}
	
	public void update(Columns columns){
		columnsDao.update(columns);
	}
	
	public Columns get(Serializable id){
		return columnsDao.get(id);
	}
	
	public List<Columns> getAll(){
		return columnsDao.getAll();
	}
	
	public List<Columns> getColumnsBySectionId(int sectionId){
		return columnsDao.getColumnsBySectionId(sectionId);
	}
}
