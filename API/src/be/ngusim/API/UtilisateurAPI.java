package be.ngusim.API;

import java.sql.Connection;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import be.ngusim.dao.ConnectDB;
import be.ngusim.javabean.Utilisateur;

public class UtilisateurAPI {
	@SuppressWarnings("unused")
	private Connection conn = ConnectDB.getInstance();
	
	@Path("/login")
	@POST
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.APPLICATION_JSON)
	public Response login() {
		return null;
	}
	
	@Path("/register")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response register(Utilisateur utilisateur) {
		return null;
	}
}
