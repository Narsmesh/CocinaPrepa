package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import modelo.mo_nombre;

public class dao_pais {
	dao_principal conn;
	public dao_pais(dao_principal conn) {
		this.conn = conn;
	}
	public List<mo_nombre> getPais(String continente){
		try {
			String sql = "SELECT PAISNOMBRE FROM PAIS, CONTINENTE WHERE PAIS.IDContinente = CONTINENTE.IDCONTINENTE AND CONTINENTE.CONTINENTENOMBRE =?;";
			PreparedStatement ps = conn.getConnection().prepareStatement(sql);
			ps.setString(1, continente);
			ResultSet rs = ps.executeQuery();
			List<mo_nombre> list = new LinkedList<>();
			while(rs.next()) {
				mo_nombre pais = new mo_nombre();
				pais.setNombre(rs.getString("PAISNOMBRE"));
				list.add(pais);
			}
			return list;
		} catch (SQLException e) {
			// TODO: handle exception
			System.err.println("Error getPais: " + e.getMessage());
			return null;
		}
	}
}
