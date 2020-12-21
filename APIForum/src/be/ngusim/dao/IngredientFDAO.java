package be.ngusim.dao;

import java.sql.Connection;
import java.util.ArrayList;

import be.ngusim.pojo.IngredientF;

public class IngredientFDAO extends DAO<IngredientF>{

	public IngredientFDAO(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean create(IngredientF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(IngredientF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(IngredientF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public IngredientF findbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<IngredientF> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
