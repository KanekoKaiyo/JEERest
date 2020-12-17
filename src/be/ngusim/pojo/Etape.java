package be.ngusim.pojo;

import java.io.Serializable;

public class Etape implements Serializable{
	private static final long serialVersionUID = 1L;
	
	//les Variables
	private int id;
	private int num�roEtape;
	private String descriptionEtape;
	
	//les constructeurs
	public Etape() {}
	
	public Etape(int num�roEtape, String descriptionEtape) {
		this.num�roEtape = num�roEtape;
		this.descriptionEtape = descriptionEtape;
	}
	
	public Etape(int id,int num�roEtape, String descriptionEtape) {
		this.id = id;
		this.num�roEtape = num�roEtape;
		this.descriptionEtape = descriptionEtape;
	}
	
	
	//les getters et setters
		public int getId() {
			return id;
		}
		
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

}
