package be.ngusim.dao;

import java.sql.Connection;

import be.ngusim.javabean.Commentaire;

public class DAOCommentaire extends DAO<Commentaire>{

	public DAOCommentaire(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean create(Commentaire obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Commentaire obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Commentaire obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Commentaire find(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Commentaire[] getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
