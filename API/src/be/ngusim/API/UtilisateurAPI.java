package be.ngusim.API;

import java.sql.Connection;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

import be.ngusim.dao.ConnectDB;

public class UtilisateurAPI {
	private Connection conn = ConnectDB.getInstance();
	
	@Patch("/login")
	@POST
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.APPLICATION_JSON)
	public Response login() {
		
	}
}
