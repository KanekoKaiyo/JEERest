package be.ngusim.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Recette implements Serializable{
	private static final long serialVersionUID = 1L;
	
	// Variables
	private int id;
	private String titre;
	private String categorie;
	private String difficulte;
	private int tempsCuisson;
	private int tempsPreparation;
	private int tempsTotal;
	private double cout;
	private Image image;
	private List<Etape> etapes = new ArrayList<Etape>();
	private List<Ingredient> ingredients = new ArrayList<Ingredient>();	
	private List<Commentaire> commentaires = new ArrayList<Commentaire>();
	
	// Constructor
	public Recette() {
	}
	
	public Recette(String titre, String categorie, String difficulte, int tempsCuisson, int tempsPreparation,
			int tempsTotal, double cout, Image image, List<Etape> etapes, List<Ingredient> ingredients,
			List<Commentaire> commentaires) {
		this.titre = titre;
		this.categorie = categorie;
		this.difficulte = difficulte;
		this.tempsCuisson = tempsCuisson;
		this.tempsPreparation = tempsPreparation;
		this.tempsTotal = tempsTotal;
		this.cout = cout;
		this.image = image;
		this.etapes = etapes;
		this.ingredients = ingredients;
		this.commentaires = commentaires;
	}
	
	
	public Recette(int id, String titre, String categorie, String difficulte, int tempsCuisson, int tempsPreparation,
			int tempsTotal, double cout, Image image, List<Etape> etapes, List<Ingredient> ingredients,
			List<Commentaire> commentaires) {
		this.id= id;
		this.titre = titre;
		this.categorie = categorie;
		this.difficulte = difficulte;
		this.tempsCuisson = tempsCuisson;
		this.tempsPreparation = tempsPreparation;
		this.tempsTotal = tempsTotal;
		this.cout = cout;
		this.image = image;
		this.etapes = etapes;
		this.ingredients = ingredients;
		this.commentaires = commentaires;
	}
	
	// Getter Setter
		public int getId() {
			return id;
		}
	
		public String getTitre() {
			return titre;
		}
		public void setTitre(String titre) {
			this.titre = titre;
		}
		public String getCategorie() {
			return categorie;
		}
		public void setCategorie(String categorie) {
			this.categorie = categorie;
		}
		public String getDifficulte() {
			return difficulte;
		}
		public void setDifficulte(String difficulte) {
			this.difficulte = difficulte;
		}
		public int getTempsCuisson() {
			return tempsCuisson;
		}
		public void setTempsCuisson(int tempsCuisson) {
			this.tempsCuisson = tempsCuisson;
		}
		public int getTempsPreparation() {
			return tempsPreparation;
		}
		public void setTempsPreparation(int tempsPreparation) {
			this.tempsPreparation = tempsPreparation;
		}
		public int getTempsTotal() {
			return tempsTotal;
		}
		public void setTempsTotal(int tempsTotal) {
			this.tempsTotal = tempsTotal;
		}
		public double getCout() {
			return cout;
		}
		public void setCout(double cout) {
			this.cout = cout;
		}
		public Image getImage() {
			return image;
		}
		public void setImage(Image image) {
			this.image = image;
		}
		public List<Etape> getEtapes() {
			return etapes;
		}
		public void setEtapes(List<Etape> etapes) {
			this.etapes = etapes;
		}
		public List<Ingredient> getIngredients() {
			return ingredients;
		}
		public void setIngredients(List<Ingredient> ingredients) {
			this.ingredients = ingredients;
		}
		public List<Commentaire> getCommentaires() {
			return commentaires;
		}
		public void setCommentaires(List<Commentaire> commentaires) {
			this.commentaires = commentaires;
		}
		
}
