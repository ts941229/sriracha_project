package com.sriracha.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sriracha.mybatis.SqlMapConfig;

public class MovieDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public MovieDAO() {
		sqlSession = factory.openSession();
	}
	
//	public boolean login() {
//		boolean result = false;
//		
//		if()
//		
//		return result;
//	}
	public String login(String user_id) {
		
		return sqlSession.selectOne("Test.login",user_id);
	}

	
}
