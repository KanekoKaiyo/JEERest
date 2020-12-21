package be.ngusim.API;

public class Error {
	private int code;
	private String message;
	
	//constructeur
	public Error(int code, String message) {
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
