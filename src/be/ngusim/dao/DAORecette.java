package be.ngusim.dao;

import java.sql.Connection;

import be.ngusim.pojo.Recette;

public class DAORecette extends DAO<Recette> {

	public DAORecette(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean create(Recette obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Recette obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Recette obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Recette find(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Recette[] getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
