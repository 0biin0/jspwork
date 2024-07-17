package ch06;

import java.sql.*;
import java.util.ArrayList;

public class UseBeanDBPool7 {
	private DBConnectionMgr pool = null;
	
	public UseBeanDBPool7() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public ArrayList<bean2> getList() {
		ArrayList<bean2> alist = new ArrayList<bean2>();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		
		try {
			con = pool.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select * from EMPLOYEE");
			while(rs.next()) {
				bean2 bean = new bean2();
				bean.setEmp_id(rs.getString("emp_id"));
				bean.setEmp_name(rs.getString("emp_name"));
				bean.setEmail(rs.getString("email"));
				bean.setPhone(rs.getString("phone"));
				bean.setJob_code(rs.getString("job_code"));
				alist.add(bean);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(con);
		}
		return alist;
	}
}
