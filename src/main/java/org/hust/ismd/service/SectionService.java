package org.hust.ismd.service;

import java.io.Serializable;
import java.util.List;

import org.hust.ismd.dao.SectionDao;
import org.hust.ismd.entity.Section;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SectionService {
	private SectionDao sectionDao;

	public SectionDao getSectionDao() {
		return sectionDao;
	}

	@Autowired
	public void setSectionDao(SectionDao sectionDao) {
		this.sectionDao = sectionDao;
	}
	
	public void save(Section section){
		sectionDao.save(section);
	}
	
	public void remove(Section section){
		sectionDao.remove(section);
	}
	
	public void update(Section section){
		sectionDao.update(section);
	}
	
	public Section get(Serializable id){
		return sectionDao.get(id);
	}
	
	public List<Section> getAll(){
		return sectionDao.getAll();
	}
}
