package be.ngusim.javabean;

import java.io.Serializable;

public class Image implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String url;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	
	
	public Image() {
		super();
	}

	public Image(String url) {
		super();
		this.url = url;
	}
	
	
}
