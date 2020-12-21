package be.ngusim.dao;

import java.sql.Connection;
import java.util.ArrayList;

import be.ngusim.pojo.CommentF;

public class CommentFDAO extends DAO<CommentF>{

	public CommentFDAO(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean create(CommentF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(CommentF obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(CommentF obj) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public CommentF findbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<CommentF> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
