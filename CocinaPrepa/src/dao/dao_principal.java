package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dao_principal {
	static String db = "Cocinav2";
	static String admin = "root";
	static String pass = "admin";
	static String url = "jdbc:mysql://localhost:3306/" + db
			+ "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private Connection conn = null;

	public dao_principal() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, admin, pass);
			if (conn != null)
				System.out.println("Estàs conectado a la base de datos");
		} catch (SQLException e) {
			// TODO: handle exception
			System.err.println("Hay una excepcion en la conexion: " + e.getMessage());
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			System.err.println("Hay una excepcion en el driver: " + e.getMessage());
		}
	}

	public Connection getConnection() {
		return conn;
	}

	public void disconnect() {
		System.out.println("Base de datos desconectado: " + conn);
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
				System.err.println(e.getMessage());
			}
		}
	}
}
