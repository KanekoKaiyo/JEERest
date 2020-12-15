package be.ngusim.javabean;

import java.io.Serializable;

public class Etape implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int num�roEtape;
	private String descriptionEtape;
	
	public int getNum�roEtape() {
		return num�roEtape;
	}
	public void setNum�roEtape(int num�roEtape) {
		this.num�roEtape = num�roEtape;
	}
	public String getDescriptionEtape() {
		return descriptionEtape;
	}
	public void setDescriptionEtape(String descriptionEtape) {
		this.descriptionEtape = descriptionEtape;
	}
	
	public Etape() {}
	
	public Etape(int num�roEtape, String descriptionEtape) {
		this.num�roEtape = num�roEtape;
		this.descriptionEtape = descriptionEtape;
	}

}
