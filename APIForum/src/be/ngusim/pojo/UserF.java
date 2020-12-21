package be.ngusim.pojo;

import java.io.Serializable;
import java.util.Date;

public class UserF implements Serializable{
	private static final long serialVersionUID = 1L;
	
	
	// Variables
	private int id;
	private String pseudo;
	private String email;
	private String passWord;
	private Date dateInscription;
	
	
	// Constructor
	public UserF() {}
	public UserF(String pseudo, String email, String passWord, Date dateInscription) {
		this.pseudo = pseudo;
		this.email = email;
		this.passWord = passWord;
		this.dateInscription = dateInscription;
	}
	
	public UserF(int id,String pseudo, String email, String passWord, Date dateInscription) {
		this.id= id;
		this.pseudo = pseudo;
		this.email = email;
		this.passWord = passWord;
		this.dateInscription = dateInscription;
	}
	
	// Getters et Setters
		public int getId() {
			return id;
		}
		public String getPseudo() {
			return pseudo;
		}
		public void setPseudo(String pseudo) {
			this.pseudo = pseudo;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassWord() {
			return passWord;
		}
		public void setPassWord(String passWord) {
			this.passWord = passWord;
		}
		public Date getDateInscription() {
			return dateInscription;
		}
		public void setDateInscription(Date dateInscription) {
			this.dateInscription = dateInscription;
		}
}
