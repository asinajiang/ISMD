package org.hust.ismd.dao;

import java.util.List;

import org.hust.ismd.entity.Pic;
import org.springframework.stereotype.Repository;

@Repository
public class PicDao extends BaseDao<Pic>{
	public static final String GET_ROLL_BIG_PIC = "from Pic p where p.picType = 0";  //查询所有的主页轮播图
	public static final String GET_LISENCE_PIC = "from Pic p where p.picType = 1";   //查询所有的成员图
	
	public List<Pic> getRollBigPic(){
		return this.find(GET_ROLL_BIG_PIC);
	}
	
	public List<Pic> getLisencePic(){
		return this.find(GET_LISENCE_PIC);
	}
	
}
