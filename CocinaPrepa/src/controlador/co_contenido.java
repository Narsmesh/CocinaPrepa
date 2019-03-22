package controlador;

import java.util.List;
import java.util.Random;
import java.util.Scanner;

import dao.dao_continente;
import dao.dao_pais;
import dao.dao_principal;
import modelo.mo_nombre;

public class co_contenido {
	dao_principal conn = new dao_principal();
	dao_continente continentedb = new dao_continente(conn);
	dao_pais paisdb = new dao_pais(conn);

	Scanner read = new Scanner(System.in);
	
	String nombreContinente = null;

	List<mo_nombre> continente = continentedb.getContinente();
	List<mo_nombre> pais = null;
	Random RAN = new Random();
	public co_contenido(dao_principal conn) {
		this.conn = conn;
	}

	public void title(String title) {
		System.out.println("");
		System.out.println("-----------------------------");
		System.out.println("     " + title + "        ");
		System.out.println("-----------------------------");
	}

	public void sectionContinente() {
		System.out.println("Muestra los Continente:");
		int contadorC = 1;
		for (mo_nombre conti : continente) {
			System.out.println(contadorC + ") " + conti.getNombre());
			contadorC++;
		}
		addAleatorioContinente();
	}

	public void selectAleatorioContinente() {
		int getRandomC = RAN.nextInt(continente.size());
		System.out.println("El continente Aleatorio es: " + continente.get(getRandomC).getNombre());
		nombreContinente = continente.get(getRandomC).getNombre();
	}

	public void addAleatorioContinente() {
		System.out.println("¿Quieres escoger aleatoriamente? si / no");
		String opcContinente = read.nextLine();
		if (opcContinente != null) {
			if (opcContinente.equals("si") || opcContinente.equals("no")) {
				if (opcContinente.equals("si")) {
					selectAleatorioContinente();
					sectionPais();
				}
				if (opcContinente.equals("no"))
					System.out.println("No hay nada que pueda hacer.");
			} else {
				addAleatorioContinente();
			}
		}
	}

	public String getGentilicio(String nombre) {
		String gentilicio = null;
		if (nombre.equals("Europa"))
			gentilicio = "Europeo";
		if (nombre.equals("America"))
			gentilicio = "Americano";
		if (nombre.equals("Africa"))
			gentilicio = "Africano";
		if (nombre.equals("Asia"))
			gentilicio = "Asiatico";
		if (nombre.equals("Oceania"))
			gentilicio = "Oceánico";
		return gentilicio;
	}

	public void sectionPais() {
		System.out.println("Paises del Continente " + getGentilicio(nombreContinente) + ":");
		System.out.println("------------------------------------------");
		int contadorP = 1;
		pais = paisdb.getPais(nombreContinente);
		for (mo_nombre nombrePais : pais) {
			System.out.println(contadorP + ") " + nombrePais.getNombre());
			contadorP++;
		}
		addAleatorioPais();
	}

	public void selectAleatorioPais() {
		int getRandomP = RAN.nextInt(pais.size());
		System.out.println("El Pais Aleatorio es: " + pais.get(getRandomP).getNombre() + " ubicado en el Continente " + getGentilicio(nombreContinente) + ".");
	}

	public void addAleatorioPais() {
		System.out.println("¿Quieres escoger Aleatoriamente? si / no");
		String opcPais = read.nextLine();
		if (opcPais != null) {
			if (opcPais.equals("si") || opcPais.equals("no")) {
				if (opcPais.equals("si"))
					selectAleatorioPais();
				if (opcPais.equals("no"))
					System.out.println("No hay nada que hacer");
			} else {
				addAleatorioContinente();
			}
		}
	}
}
