package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import VO.testSol2VO;

public class testSol2DAO {
public List<testSol2VO> selectBBSList(Connection conn) throws Exception{
	String query = "select sid, title, owner, createdate from bbs";
	PreparedStatement pstmt = conn.prepareStatement(query);
	
	ResultSet rs = pstmt.executeQuery();
	
	List<testSol2VO> list = new ArrayList<testSol2VO>();
	
	while(rs.next()) {
		testSol2VO vo = new testSol2VO();
		vo.setSid(rs.getInt("sid"));
		vo.setTitle(rs.getString("title"));
		vo.setOwner(rs.getString("owner"));
		vo.setCreateDate(rs.getString("createdate"));			
		list.add(vo);
	}
	return list;
	}
}
