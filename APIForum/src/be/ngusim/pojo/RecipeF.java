package be.ngusim.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class RecipeF implements Serializable{
	private static final long serialVersionUID = 1L;
	
	// Variables
	private int id;
	private String title;
	private String category;
	private String difficulty;
	private int timeCooking;
	private int timePreparation;
	private int timeTotal;
	private double cost;
	private ImageF image;
	private List<StepF> stape = new ArrayList<StepF>();
	private List<IngredientF> ingredients = new ArrayList<IngredientF>();	
	private List<CommentF> comments = new ArrayList<CommentF>();
	
	// Constructor
	public RecipeF() {
	}
	
	public RecipeF(String title, String category, String difficulty, int timeCooking, int timePreparation,
			int timeTotal, double cost, ImageF image, List<StepF> stape, List<IngredientF> ingredients,
			List<CommentF> comments) {
		this.title = title;
		this.category = category;
		this.difficulty = difficulty;
		this.timeCooking = timeCooking;
		this.timePreparation = timePreparation;
		this.timeTotal = timeTotal;
		this.cost = cost;
		this.image = image;
		this.stape = stape;
		this.ingredients = ingredients;
		this.comments = comments;
	}
	
	
	public RecipeF(int id, String title, String category, String difficulty, int timeCooking, int timePreparation,
			int timeTotal, double cost, ImageF image, List<StepF> stape, List<IngredientF> ingredients,
			List<CommentF> comments) {
		this.id= id;
		this.title = title;
		this.category = category;
		this.difficulty = difficulty;
		this.timeCooking = timeCooking;
		this.timePreparation = timePreparation;
		this.timeTotal = timeTotal;
		this.cost = cost;
		this.image = image;
		this.stape = stape;
		this.ingredients = ingredients;
		this.comments = comments;
	}

	
	// Getter and Setter
	public int getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getCategory() {
		return category;
	}

	public String getDifficulty() {
		return difficulty;
	}

	public int getTimeCooking() {
		return timeCooking;
	}

	public int getTimePreparation() {
		return timePreparation;
	}

	public int getTimeTotal() {
		return timeTotal;
	}

	public double getCost() {
		return cost;
	}

	public ImageF getImage() {
		return image;
	}

	public List<StepF> getStape() {
		return stape;
	}

	public List<IngredientF> getIngredients() {
		return ingredients;
	}

	public List<CommentF> getComments() {
		return comments;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}

	public void setTimeCooking(int timeCooking) {
		this.timeCooking = timeCooking;
	}

	public void setTimePreparation(int timePreparation) {
		this.timePreparation = timePreparation;
	}

	public void setTimeTotal(int timeTotal) {
		this.timeTotal = timeTotal;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public void setImage(ImageF image) {
		this.image = image;
	}

	public void setStape(List<StepF> stape) {
		this.stape = stape;
	}

	public void setIngredients(List<IngredientF> ingredients) {
		this.ingredients = ingredients;
	}

	public void setComments(List<CommentF> comments) {
		this.comments = comments;
	}

	
	@Override
	public String toString() {
		return "RecipeF [id=" + id + ", title=" + title + ", category=" + category + ", difficulty=" + difficulty
				+ ", timeCooking=" + timeCooking + ", timePreparation=" + timePreparation + ", timeTotal=" + timeTotal
				+ ", cost=" + cost + ", image=" + image + ", stape=" + stape + ", ingredients=" + ingredients
				+ ", comments=" + comments + "]";
	}
	
	
	
	
		
}
