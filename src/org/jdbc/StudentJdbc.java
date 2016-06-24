package org.jdbc;

import java.sql.*;
import java.util.*;

import org.vo.Student;

public class StudentJdbc {

	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet result = null;

	/**
	 * 获取数据库连接
	 * @return
	 */
	public Connection getConn() {

		try {
			if (this.conn == null || this.conn.isClosed()) {
				conn = new DBConn().getConn();
				System.out.println("------数据库连接成功------");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("StudentJdbc 获取连接失败");
			e.printStackTrace();
		}

		return conn;

	}

	/**
	 * 添加学生
	 * @param student
	 * @return
	 */
	public boolean addStudent(Student student) {

		boolean flag = false;
		// TODO Auto-generated method stub
		String sql1 = "insert into xsb(xh,xm,xb,cssj,zy,zxf,bz) values(?,?,?,?,?,?,?)";
		String sql2 = "insert into xszp(xh,zp) values(?,?)";

		try {

			// 预编译语句
			psmt = this.getConn().prepareStatement(sql1);

			// 收集数据
			psmt.setString(1, student.getXh());
			psmt.setString(2, student.getXm());
			psmt.setString(3, student.getXb());
			psmt.setTimestamp(4, new Timestamp(student.getCssj().getTime()));
			psmt.setString(5, student.getZy());
			psmt.setInt(6, student.getZxf());
			psmt.setString(7, student.getBz());

			// 执行，将数据插入到xsb中
			psmt.execute();
			System.out.println("------插入XSB成功------");

			// 添加学生照片
			psmt = this.getConn().prepareStatement(sql2);
			psmt.setString(1, student.getXh());
			psmt.setBytes(2, student.getZp());
			psmt.execute();
			System.out.println("------插入XSZP成功------");
			flag = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				psmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("!!!!!!!!!添加学生信息失败!!!!!!!!!!!");
				e.printStackTrace();
			}
		}

		return flag;

	}
	
	/**
	 * 查询所有学生信息
	 * @return
	 * @throws SQLException
	 */
	public List<Student> showStudent() throws SQLException {
	    
	    String sql = "select * from xsb";
	    
	    List<Student> studentList = new ArrayList<Student>();
	    
	    try {
	        
            psmt = this.getConn().prepareStatement(sql);
            result = psmt.executeQuery();
            // 读取ResultSet中的数据，存放到list中
            while (result.next()) {
                Student student = new Student();
                student.setBz(result.getString("bz"));
                student.setCssj(result.getDate("cssj"));
                student.setXb(result.getString("xb"));
                student.setXh(result.getString("xh"));
                student.setXm(result.getString("xm"));
                student.setZxf(result.getInt("zxf"));
                student.setZy(result.getString("zy"));
                // 添加到list中
                studentList.add(student);
                
            }
            
        } catch (Exception e) {
            // TODO Auto-generated catch block
            System.out.println("！！！！！查询出错！！！！！");
            e.printStackTrace();
        } finally {
            try {
                if (result != null) {
                    result.close();
                    result = null;
                }
                if (psmt != null) {
                    psmt.close();
                    psmt = null;
                }
                if (conn != null) {
                    conn.close();
                    conn = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
	    
		return studentList;
	}

	/**
	 * 查询单个学生信息
	 * @param xh
	 * @return
	 */
	public Student showOneStudent(String xh) {
		ResultSet rs = null;
		String sql1 = "select * from xsb where xh = '" + xh + "'";
		String sql2 = "select zp from xszp where xh = '" + xh + "'";
		Student student = new Student();
		try{
			
			// 查询一个学生
			psmt = this.getConn().prepareStatement(sql1);
			rs = psmt.executeQuery();
			while (rs.next()) {
				student.setBz(rs.getString("bz"));
				student.setCssj(rs.getDate("cssj"));
				student.setXb(rs.getString("xb"));
				student.setXh(rs.getString("xh"));
				student.setXm(rs.getString("xm"));
				System.out.println("rs.xm=" + rs.getString("xm"));
				student.setZxf(rs.getInt("zxf"));
				student.setZy(rs.getString("zy"));
			}
			
			// 查询学生相片
			psmt = this.getConn().prepareStatement(sql2);
			rs = psmt.executeQuery();
			while (rs.next()) {
				student.setZp(rs.getBytes("zp"));
			}
			
		} catch (Exception e){
			System.out.println("！！！查询单个学生信息失败！！！");
			e.printStackTrace();
		} finally {
			try {
				psmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return student;
	}
	

}
