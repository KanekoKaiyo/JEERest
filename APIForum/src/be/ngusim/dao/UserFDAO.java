package be.ngusim.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import be.ngusim.pojo.UserF;


public class UserFDAO extends DAO<UserF>{

	public UserFDAO(Connection conn) {
		super(conn);
	}

	@Override
	public boolean create(UserF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(UserF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(UserF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UserF findbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<UserF> findAll() {
		ArrayList<UserF> utilisateurs = new ArrayList<UserF>();
		try {
			
			/*CallableStatement cstmt = connect.prepareCall("{? = CALL balance(?)}");
			cstmt.registerOutParameter(1, Types.FLOAT);
			cstmt.setInt(2, acctNo);
			cstmt.executeUpdate();
			float acctBal = cstmt.getFloat(1);*/
			
			
			PreparedStatement ps = connect.prepareStatement(String.format("SELECT * FROM Person"), 
					ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);  
            ResultSet result = ps.executeQuery(); 
            utilisateurs = null;
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
            		
        return utilisateurs;
            
	}
	
	

}
