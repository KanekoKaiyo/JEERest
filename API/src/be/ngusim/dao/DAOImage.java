package be.ngusim.dao;

import java.sql.Connection;

import be.ngusim.javabean.Image;

public class DAOImage extends DAO<Image>{

	public DAOImage(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean create(Image obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Image obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Image obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Image find(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Image[] getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
