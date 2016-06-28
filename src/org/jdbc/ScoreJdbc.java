package org.jdbc;

import java.sql.*;
import java.util.ArrayList;
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
			
			if (this.conn == null || this.conn.isClosed()){
				DBConn mc = new DBConn();
				this.conn = mc.getConn();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * 添加成绩
	 * @param score
	 * @return
	 */
	public boolean addScore(Score score) {
	    boolean flag = false;
		CallableStatement csmt = null;
		try {
		    
		    conn = this.getConn();
		    // 使用CJ_Data存储过程
            csmt = conn.prepareCall("{call CJ_Data(?,?,?)}");
            csmt.setString(1, score.getXh());
            csmt.setString(2, score.getKch());
            csmt.setString(3, score.getCj());
            csmt.executeUpdate();
            flag = true;
            
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            System.out.println("!!!!插入成绩失败!!!!");
            e.printStackTrace();
        } finally {
            try {
                csmt.close();
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
		return flag;
	}

	/**
	 * 查询所有课程
	 * @return
	 */
	public List<Course> showCourse() throws SQLException{
	    String sql = "select * from kcb";
	    List<Course> courseList = new ArrayList<Course>();
	    try {
            psmt = this.getConn().prepareStatement(sql);
            result = psmt.executeQuery();
            // 读出所有课程号和课程名放入studentList中
            while (result.next()) {
                Course course = new Course();
                course.setKch(result.getString("kch"));
                course.setKcm(result.getString("kcm"));
                courseList.add(course);
            }
            return courseList;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            System.out.println("!!!!查询课程失败！！！！");
            e.printStackTrace();
        } finally {
            try {
                psmt.close();
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return courseList;
	}

	/**
	 * 查询所有学生
	 * @return
	 */
	public List<Student> showStudent() throws SQLException {
	    String sql = "select * from xsb";
	    List<Student> studentList = new ArrayList<Student>();
	    try {
            psmt = this.getConn().prepareStatement(sql);
            result = psmt.executeQuery();
            while (result.next()) {
                Student student = new Student();
                student.setXh(result.getString("xh"));
                student.setXm(result.getString("xm"));
                studentList.add(student);
            }
            return studentList;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            System.out.println("!!!!查询学生失败!!!!");
            e.printStackTrace();
        } finally {
            try {
                psmt.close();
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
		return studentList;
	}
	
}
