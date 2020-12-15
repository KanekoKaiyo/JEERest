package be.ngusim.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;

public class ConnectDB {
	
private static Connection instance = null;
	
	private ConnectDB() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String connectionString = "jdbc:oracle:thin:student03_16/pwdniv@193.190.64.10:1522/XEPDB1";
			instance = DriverManager.getConnection(connectionString);
		} catch(ClassNotFoundException ex) {
			JOptionPane.showMessageDialog(null, "Classe de driver introuvable" + ex.getMessage());
			System.exit(0);
		} catch (SQLException ex1) {
			JOptionPane.showMessageDialog(null, "Erreur JDBC : " + ex1.getMessage());
		}
		if(instance == null) {
            JOptionPane.showMessageDialog(null, "La base de donn�es est inaccessible, fermeture du programme.");
            System.exit(0);
		}
	}
	
	public static Connection getInstance() {
		if(instance == null){
			new ConnectDB();
		}
		return instance;
	}
}
