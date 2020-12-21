package be.ngusim.API;

import java.sql.Connection;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import be.ngusim.connexion.ConnectDB;

@Path("/ingredient")
public class IngredientFAPI {
	@SuppressWarnings("unused")
	private Connection conn = ConnectDB.getInstance();
	
	// Get All
	@Path("all")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response GetAll() {
		return null;
	}
	
	
}
