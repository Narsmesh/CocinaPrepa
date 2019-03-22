package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

import modelo.mo_nombre;

public class dao_continente {
	dao_principal conn;
	public dao_continente(dao_principal conn) {
		this.conn = conn;
	}
	public List<mo_nombre> getContinente(){
		try {
			String sql = "SELECT CONTINENTENOMBRE FROM CONTINENTE;";
			PreparedStatement ps = conn.getConnection().prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			List<mo_nombre> list = new LinkedList<>();
			while(rs.next()) {
				mo_nombre continente = new mo_nombre();
				continente.setNombre(rs.getString("CONTINENTENOMBRE"));
				list.add(continente);
			}
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println("Error getContinente: " + e.getMessage());
			return null;
		}
	}
	
}
