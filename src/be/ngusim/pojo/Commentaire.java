package be.ngusim.pojo;

import java.io.Serializable;
import java.util.Date;

public class Commentaire implements Serializable{
	private static final long serialVersionUID = 1L;
	
	//les variables
	private int id;
	private String message;
	private Date dateHeureMessage;
	private Utilisateur utilisateur;
	
	//Constructeurs
	
	public Commentaire() {}
	
	public Commentaire(String message, Date dateHeureMessage, Utilisateur utilisateur) {
		this.message = message;
		this.dateHeureMessage = dateHeureMessage;
		this.utilisateur = utilisateur;
	}
	
	public Commentaire( int id,String message, Date dateHeureMessage, Utilisateur utilisateur) {
		this.id = id;
		this.message = message;
		this.dateHeureMessage = dateHeureMessage;
		this.utilisateur = utilisateur;
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
	public Utilisateur getUtilisateur() {
		return utilisateur;
	}
	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}
	
	
}
