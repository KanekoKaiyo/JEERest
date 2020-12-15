package be.ngusim.dao;

import java.sql.Connection;

import be.ngusim.javabean.Ingredient;

public class DAOIngredient extends DAO<Ingredient>{

	public DAOIngredient(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean create(Ingredient obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Ingredient obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Ingredient obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Ingredient find(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Ingredient[] getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
