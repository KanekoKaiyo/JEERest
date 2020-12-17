package be.ngusim.pojo;

import java.io.Serializable;

public class Etape implements Serializable{
	private static final long serialVersionUID = 1L;
	
	//les Variables
	private int id;
	private int numéroEtape;
	private String descriptionEtape;
	
	//les constructeurs
	public Etape() {}
	
	public Etape(int numéroEtape, String descriptionEtape) {
		this.numéroEtape = numéroEtape;
		this.descriptionEtape = descriptionEtape;
	}
	
	public Etape(int id,int numéroEtape, String descriptionEtape) {
		this.id = id;
		this.numéroEtape = numéroEtape;
		this.descriptionEtape = descriptionEtape;
	}
	
	
	//les getters et setters
		public int getId() {
			return id;
		}
		
		public int getNuméroEtape() {
			return numéroEtape;
		}
		public void setNuméroEtape(int numéroEtape) {
			this.numéroEtape = numéroEtape;
		}
		public String getDescriptionEtape() {
			return descriptionEtape;
		}
		public void setDescriptionEtape(String descriptionEtape) {
			this.descriptionEtape = descriptionEtape;
		}

}
