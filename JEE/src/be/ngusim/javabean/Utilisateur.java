package be.ngusim.javabean;

import java.io.Serializable;
import java.util.Date;

public class Utilisateur implements Serializable{
	private static final long serialVersionUID = 1L;
	// Variable
	private String pseudo;
	private String email;
	private String motDePasse;
	private Date dateInscription;
	// Getter Setter
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
	public String getMotDePasse() {
		return motDePasse;
	}
	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}
	public Date getDateInscription() {
		return dateInscription;
	}
	public void setDateInscription(Date dateInscription) {
		this.dateInscription = dateInscription;
	}
	// Constructor
	public Utilisateur() {}
	public Utilisateur(String pseudo, String email, String motDePasse, Date dateInscription) {
		this.pseudo = pseudo;
		this.email = email;
		this.motDePasse = motDePasse;
		this.dateInscription = dateInscription;
	}
}
