package org.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

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

}
