package be.ngusim.dao;

import java.sql.Connection;
import java.util.ArrayList;

import be.ngusim.pojo.RecipeF;

public class RecipeFDAO extends DAO<RecipeF> {

	public RecipeFDAO(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean create(RecipeF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(RecipeF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(RecipeF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public RecipeF findbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<RecipeF> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
