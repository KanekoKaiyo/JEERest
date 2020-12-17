package be.ngusim.dao;

import java.sql.Connection;

import be.ngusim.pojo.Etape;

public class DAOEtape extends DAO<Etape>{

	public DAOEtape(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean create(Etape obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Etape obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Etape obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Etape find(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Etape[] getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
