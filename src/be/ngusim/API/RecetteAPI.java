package be.ngusim.API;

import java.sql.Connection;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import be.ngusim.dao.ConnectDB;

@Path("/recette")
public class RecetteAPI {
	@SuppressWarnings("unused")
	private Connection conn = ConnectDB.getInstance();
	
	// Get All
	@Path("all")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response GetAll() {
		return null;
	}
	
	
	/* 
	 * TODO Methode pour recuperer une liste de recette avec une liste(ou tableau) de parametre ( une liste d'ingredient ) 
	 */
	// Get by filter
	@Path("/...")
	@GET
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response GetRecipeByIngredient() {
		return null;
	}
	// Create
	@Path("/add")
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	public Response add() {
		return null;
	}
	
	// Update
	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response update() {
		return null;}
	
	// Delete
	@DELETE
	public Response delete() {
		return null;
	}
	
}
