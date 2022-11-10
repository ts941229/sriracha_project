package com.sriracha.model;

public class FullBoardDTO {
	//board 테이블
	private int board_num;
	private String board_title;
	private String board_content;
	private String board_date;
	private int board_like;
	private String board_presence;
	private int user_num;
	private int movie_id;
	
	//user 테이블
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_presence;
	
	//comment 테이블
	private int comment_num;
	private String comment_content;
	private String comment_date;
	private String comment_presence;
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public int getBoard_like() {
		return board_like;
	}
	public void setBoard_like(int board_like) {
		this.board_like = board_like;
	}
	public String getBoard_presence() {
		return board_presence;
	}
	public void setBoard_presence(String board_presence) {
		this.board_presence = board_presence;
	}
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_presence() {
		return user_presence;
	}
	public void setUser_presence(String user_presence) {
		this.user_presence = user_presence;
	}
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	public String getComment_presence() {
		return comment_presence;
	}
	public void setComment_presence(String comment_presence) {
		this.comment_presence = comment_presence;
	}

	
}
