package be.ngusim.javabean;

import java.io.Serializable;

public class Ingredient implements Serializable{
	private static final long serialVersionUID = 1L;
	// Variable
	private String titre;
	private double quantite;
	private String mesure;
	// Getter Setter
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public double getQuantite() {
		return quantite;
	}
	public void setQuantite(double quantite) {
		this.quantite = quantite;
	}
	public String getMesure() {
		return mesure;
	}
	public void setMesure(String mesure) {
		this.mesure = mesure;
	}
	//Constructor
	public Ingredient() {}
	public Ingredient(String titre, double quantite, String mesure) {
		super();
		this.titre = titre;
		this.quantite = quantite;
		this.mesure = mesure;
	}

}
