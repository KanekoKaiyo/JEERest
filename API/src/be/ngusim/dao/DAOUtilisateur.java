package be.ngusim.dao;

import java.sql.Connection;

import be.ngusim.javabean.Utilisateur;

public class DAOUtilisateur extends DAO<Utilisateur>{

	public DAOUtilisateur(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean create(Utilisateur obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Utilisateur obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Utilisateur obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Utilisateur find(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Utilisateur[] getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
