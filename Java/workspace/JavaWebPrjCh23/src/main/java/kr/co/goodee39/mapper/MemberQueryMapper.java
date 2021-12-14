package kr.co.goodee39.mapper;

import org.apache.ibatis.annotations.Select;

public interface MemberQueryMapper {
	
	@Select("select count(*) from member")
	public int getCount();
}
