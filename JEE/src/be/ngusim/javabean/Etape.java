package be.ngusim.javabean;

import java.io.Serializable;

public class Etape implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int numéroEtape;
	private String descriptionEtape;
	
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
	
	public Etape() {}
	
	public Etape(int numéroEtape, String descriptionEtape) {
		this.numéroEtape = numéroEtape;
		this.descriptionEtape = descriptionEtape;
	}

}
