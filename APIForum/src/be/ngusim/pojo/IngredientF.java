package be.ngusim.pojo;

import java.io.Serializable;

public class IngredientF implements Serializable{
	private static final long serialVersionUID = 1L;
	// Variables
	private int id;
	private String title;
	private double quantity;
	private String measure;
	
	//Constructor
	public IngredientF() {}
	
	public IngredientF(int id,String title, double quantity, String measure) {
		this.id = id;
		this.title = title;
		this.quantity = quantity;
		this.measure = measure;
	}
	
	public IngredientF(String title, double quantity, String measure) {
		this.title = title;
		this.quantity = quantity;
		this.measure = measure;
	}
	
	// Getters et Setters
		public int getId() {
			return id;
		}
	
		public String getTitre() {
			return title;
		}
		public void setTitre(String title) {
			this.title = title;
		}
		public double getQuantite() {
			return quantity;
		}
		public void setQuantite(double quantity) {
			this.quantity = quantity;
		}
		public String getmeasure() {
			return measure;
		}
		public void setmeasure(String measure) {
			this.measure = measure;
		}

}
