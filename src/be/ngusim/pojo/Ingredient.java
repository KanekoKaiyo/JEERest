package be.ngusim.pojo;

import java.io.Serializable;

public class Ingredient implements Serializable{
	private static final long serialVersionUID = 1L;
	// Variables
	private int id;
	private String titre;
	private double quantite;
	private String mesure;
	
	//Constructor
	public Ingredient() {}
	
	public Ingredient(int id,String titre, double quantite, String mesure) {
		this.id = id;
		this.titre = titre;
		this.quantite = quantite;
		this.mesure = mesure;
	}
	
	public Ingredient(String titre, double quantite, String mesure) {
		this.titre = titre;
		this.quantite = quantite;
		this.mesure = mesure;
	}
	
	// Getters et Setters
		public int getId() {
			return id;
		}
	
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

}
