package be.ngusim.dao;

import java.sql.SQLException;
import java.util.ArrayList;

public interface IDAO<T> {
	
	public abstract boolean create(T obj);

	public abstract boolean delete(T obj);

	public abstract boolean update(T obj);

	public abstract T findbyid(int id);
	
	public abstract ArrayList<T> findAll();
	
	public boolean updateStatement(String query) throws SQLException;


}