package be.ngusim.pojo;

import java.io.Serializable;

public class ImageF implements Serializable{
	private static final long serialVersionUID = 1L;
	
	//attributs
	private int id;
	private String url;

	
	//constructeurs
	public ImageF() {}
	
	public ImageF(String url) {
		this.url = url;
	}
	
	public ImageF(int id,String url) {
		this.id = id;
		this.url = url;
	}
	
	//getters et setters
	
	public int getId() {
		return id;
	}
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
}
