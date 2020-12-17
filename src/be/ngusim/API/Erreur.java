package be.ngusim.API;

public class Erreur {
	private int code;
	private String message;
	
	//constructeur
	public Erreur(int code, String message) {
		this.code = code;
		this.message = message;
	}

	
	//Getters et setters
	public int getCode() {
		return code;
	}

	public String getMessage() {
		return message;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
