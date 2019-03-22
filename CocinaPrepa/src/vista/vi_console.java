package vista;

import controlador.co_contenido;
import dao.dao_principal;

public class vi_console {
	public static void main(String[] args) {
		dao_principal conn = new dao_principal();
		co_contenido contenido = new co_contenido(conn);
		contenido.title("Cocina Prepa v1.0");
		contenido.sectionContinente();
		conn.disconnect();
	}
}
