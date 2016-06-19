package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.jdbc.DBConn;
import org.junit.Test;

public class DBConnTest {
	

	@Test
	public void testSaveStudenet() {
		Connection conn = null;
		PreparedStatement ps = null;
		conn = new DBConn().getConn();
		String sql = "insert into xsb values('test','testName','1',TO_DATE('19950714','YYYYMMDD'),'testZy',30,'testBz')";
		try {
			ps=conn.prepareStatement(sql);
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
