package be.ngusim.pojo;

import java.io.Serializable;
import java.util.Date;

public class CommentF implements Serializable{
	private static final long serialVersionUID = 1L;
	
	//les variables
	private int id;
	private String message;
	private Date dateHeureMessage;
	private UserF user;
	
	//Constructeurs
	
	public CommentF() {}
	
	public CommentF(String message, Date dateHeureMessage, UserF user) {
		this.message = message;
		this.dateHeureMessage = dateHeureMessage;
		this.user = user;
	}
	
	public CommentF( int id,String message, Date dateHeureMessage, UserF user) {
		this.id = id;
		this.message = message;
		this.dateHeureMessage = dateHeureMessage;
		this.user = user;
	}
	
	//getters et setters
	public int getId() {
		return id;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getDateHeureMessage() {
		return dateHeureMessage;
	}
	public void setDateHeureMessage(Date dateHeureMessage) {
		this.dateHeureMessage = dateHeureMessage;
	}
	public UserF getUtilisateur() {
		return user;
	}
	public void setUtilisateur(UserF user) {
		this.user = user;
	}
	
	
}
