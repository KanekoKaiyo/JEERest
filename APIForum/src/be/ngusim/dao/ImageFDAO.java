package be.ngusim.dao;

import java.sql.Connection;
import java.util.ArrayList;

import be.ngusim.pojo.ImageF;

public class ImageFDAO extends DAO<ImageF>{

	public ImageFDAO(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean create(ImageF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(ImageF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(ImageF obj) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public ImageF findbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ImageF> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
