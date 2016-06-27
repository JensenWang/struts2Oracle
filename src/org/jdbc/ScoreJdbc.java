package org.jdbc;

import java.sql.*;
import java.util.List;

import org.vo.Course;
import org.vo.Score;
import org.vo.Student;

public class ScoreJdbc {
	
	private Connection conn = null;
	private ResultSet result = null;
	private PreparedStatement psmt = null;
	
	public ScoreJdbc(){}

	public Connection getConn() {
		try {
			
			if (this.conn == null && this.conn.isClosed()){
				DBConn mc = new DBConn();
				mc.getConn();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public void addScore(Score score) {
		
	}

	public List<Course> showCourse() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Student> showStudent() {
		// TODO Auto-generated method stub
		return null;
	}

}
