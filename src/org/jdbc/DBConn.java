package org.jdbc;

import java.sql.*;


public class DBConn {
	private Connection conn = null;
	public DBConn(){
		// 获取数据库连接
		this.conn = this.getConnection();
	}
	
	/**
	 * 获取连接类
	 * @return
	 */
	private Connection getConnection() {
		// TODO Auto-generated method stub
		
		try {
			
			/*加载oracle的jdbc驱动程序*/
			Class.forName("oracle.jdbc.OracleDriver");
			
			/*建立oracle连接*/
			conn=DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:XSCJ",
					"SCOTT",
					"tiger"
					);			
			
		} catch (Exception e) {			
			// TODO Auto-generated catch block
			System.out.println("数据库连接失败");
			e.printStackTrace();
		}
		
		return conn;
	}
	
	/**
	 * 返回一个Connection
	 * @return
	 */
	public Connection getConn(){
		return conn;
	}
	
}
