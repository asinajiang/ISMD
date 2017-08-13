package org.hust.ismd.dao;

import java.util.List;

import org.hust.ismd.entity.Section;
import org.springframework.stereotype.Repository;

@Repository
public class SectionDao extends BaseDao<Section>{
	/*public static final String GET_ALL_SECTION = "from Section s order by s.sectionId desc";
	
	public List<Section> getAllSections(){
		return this.find(GET_ALL_SECTION);
	}*/
}
