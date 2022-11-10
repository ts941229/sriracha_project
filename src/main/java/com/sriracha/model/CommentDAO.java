package com.sriracha.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sriracha.mybatis.SqlMapConfig;

public class CommentDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public CommentDAO() {
		sqlsession = factory.openSession(true);
	}

	public List<FullDTO> getComment(int board_num) {
		List<FullDTO> commentList = sqlsession.selectList("Comment.getComment");
		
		return commentList;
	}
	
	

}
