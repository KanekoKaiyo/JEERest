package be.ngusim.connexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;




public class ConnectDB {
	
	private static Connection instance = null;
	
	private ConnectDB() {
		try 
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}
		catch(ClassNotFoundException e) 
		{
			JOptionPane.showMessageDialog(null, "driver introuvable" + e.getMessage());
			//System.exit(0);
		}
			
		
			
			String username="student03_16";
			String pwd = "pwdniv";
			String ip = "193.190.64.10";
			String port = "1522";
			String service_name = "XEPDB1";
			String chaineConnexion = "jdbc:oracle:thin:@//"+ip+":"+port+"/"+service_name;
			try {
					instance = DriverManager.getConnection(
							chaineConnexion, 
							username, 
					        pwd);	
				
				}
					
				catch(SQLException e) 
				{
					e.printStackTrace();
					
					JOptionPane.showMessageDialog(null, "probleme de connexion" + e.getMessage());
					//System.exit(0);
				}
		
		
		}
	
		public static Connection getInstance() 
		{
			if(instance == null)
			{
				new ConnectDB();
			}
			return instance;
		}
}
