package org.hust.ismd.service;

import java.io.Serializable;
import java.util.List;

import org.hust.ismd.dao.PicDao;
import org.hust.ismd.entity.Pic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PicService {
	private PicDao picDao;

	public PicDao getPicDao() {
		return picDao;
	}
	
	@Autowired
	public void setPicDao(PicDao picDao) {
		this.picDao = picDao;
	}
	
	public void save(Pic pic){
		picDao.save(pic);
	}
	
	public void remove(Pic pic){
		picDao.remove(pic);
	}
	
	public void update(Pic pic){
		picDao.update(pic);
	}
	
	public Pic get(Serializable id){
		return picDao.get(id);
	}
	
	public List<Pic> getAll(){
		return picDao.getAll();
	}
}
