package kr.green.SpringTest.dao;

import org.apache.ibatis.annotations.Param;

public interface Mapper {
	public String getId(@Param("id") String id);
	public String getPw(@Param("id") String id);
	public String getEmail(@Param("id") String id);
	public User getUser(@Param("id") String id);   //한번에 검색하기
	
}
