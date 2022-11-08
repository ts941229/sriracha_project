package com.sriracha.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sriracha.mybatis.SqlMapConfig;

public class TestDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public TestDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public boolean insertRow(TestDTO tdto) {
		boolean result = false;
		
		if(sqlSession.insert("Test.insertRow", tdto)>0) {
			System.out.println("인서트 잘됨");
			result = true;
		}
		
		return result; 
	}
	
}
