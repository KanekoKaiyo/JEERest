package be.ngusim.pojo;

import java.io.Serializable;

public class StepF implements Serializable{
	private static final long serialVersionUID = 1L;
	
	//les Variables
	private int id;
	private int numberStep;
	private String descriptionStape;
	
	//les constructeurs
	public StepF() {}
	
	public StepF(int numberStep, String descriptionStape) {
		this.numberStep = numberStep;
		this.descriptionStape = descriptionStape;
	}
	
	public StepF(int id,int numberStep, String descriptionStape) {
		this.id = id;
		this.numberStep = numberStep;
		this.descriptionStape = descriptionStape;
	}
	
	
	//les getters et setters
		public int getId() {
			return id;
		}
		
		public int getNumberStep() {
			return numberStep;
		}
		public void setNumberStep(int numberStep) {
			this.numberStep = numberStep;
		}
		public String getDescriptionStape() {
			return descriptionStape;
		}
		public void setDescriptionStape(String descriptionStape) {
			this.descriptionStape = descriptionStape;
		}

}
