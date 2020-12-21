package be.ngusim.API;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import be.ngusim.connexion.ConnectDB;
import be.ngusim.pojo.UserF;

@Path("user")
public class UserFAPI {
	
	
	private Connection conn = ConnectDB.getInstance();
	//@SuppressWarnings("unused")
	
	@GET
	@Path("{id}")
	//@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.APPLICATION_JSON)
	public Response FindById(@PathParam("id")  int id) {
	
			//Requete
			String sql = "SELECT IdUserF,Pseudo , Email, password, DateInscription FROM Utilisateur WHERE IdUserF= ?";
			PreparedStatement prepare = null;
			ResultSet result = null ;
			UserF utilisateur = null;
			
			try {
				
				prepare = conn.prepareStatement(sql);
				prepare.setInt(1, id);
				result = prepare.executeQuery(); 
				if(result.next()) {
					utilisateur = new UserF(
						result.getInt(1),
						result.getString(2),
						result.getString(3),
						result.getString(4),
						result.getDate(5));
				}
				else {
					return Response.status(Status.OK).entity(new Error(1001, "Aucun utilisateur trouver")).build();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				return Response.status(Status.OK).entity(new Error(1000, "Aucune Connexion à la Base de données")).build();
			} 
			
			//retourner la reponse
			return Response.status(Status.OK).entity(utilisateur).build();
			
		
	}
	
	
}
