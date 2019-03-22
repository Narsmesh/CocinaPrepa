create database Cocinav2;
/*drop database Cocinav2;*/
use Cocinav2;

Create table Continente(
IDContinente int not null primary key auto_increment,
ContinenteNombre varchar(50) not null
) Engine=InnoDB auto_increment = 1010 default charset=latin1;

Create table Pais(
IDContinente int not null,
IDPais int not null primary key auto_increment,
PaisNombre varchar(70) not null,
constraint fk_continente_pais foreign key(IDContinente)
references Continente(IDContinente)
) Engine=InnoDB;

Create table Comidas(
IDPais int not null,
IDcomida int not null primary key auto_increment,
ComidaNombre varchar(70),
CONSTRAINT FK_PAIS_COMIDA foreign key(IDPais)
REFERENCES PAIS(IDPais)
) Engine=InnoDB auto_increment = 2000 default charset=latin1;

-- Insert Continentes
INSERT INTO `Continente` (`ContinenteNombre`) 
VALUES 
('America'),('Europa'),('Africa'),('Asia'),('Oceania');

-- Insert Paises
    -- Continente americano
    INSERT INTO `Pais` (`IDContinente`, `PaisNombre`) VALUES 
    ('1010', 'Antigua y Barbuda'),('1010', 'Argentina'),('1010','Bahamas'),
    ('1010', 'Barbados'),('1010','Belice'),('1010','Bolivia'),
    ('1010', 'Brasil'),('1010', 'Canada'),('1010', 'Chile'),
    ('1010', 'Colombia'),('1010', 'Costa Rica'),('1010', 'Cuba'),
    ('1010', 'Dominica'),('1010', 'Ecuador'),('1010', 'El Salvador'),
	('1010', 'Estados Unidos'),('1010', 'Granada'),('1010', 'Guatemala'),
    ('1010', 'Guyana'),('1010', 'Haiti'),('1010', 'Honduras'),
    ('1010', 'Jamaica'),('1010', 'Mexico'),('1010', 'Nicaragua'),
    ('1010', 'Panama'),('1010', 'Paraguay'),('1010', 'Peru'),
    ('1010', 'Republica Dominicana'),('1010', 'San Cristobal y Nieves'),
	('1010', 'San Vicente y las Granadinas'),('1010', 'Santa Lucia'),
    ('1010', 'Surinam'),('1010', 'Trinidad y Tobago'),
    ('1010', 'Uruguay'),('1010', 'Venezuela');
    -- Continente Europeo
    INSERT INTO `Pais` (`IDContinente`, `PaisNombre`) VALUES
    ('1011', 'Albania'),('1011', 'Andorra'),('1011', 'Austria'),
    ('1011', 'Alemania'),('1011', 'Austria'),('1011', 'Bélgica'),
    ('1011', 'Bielorrusia'),('1011', 'Bosnia-Herzegovina'),
	('1011', 'Bulgaria'),('1011', 'Croacia'),('1011', 'Dinamarca'),
    ('1011', 'Eslovaquia'),('1011', 'Eslovenia'),('1011', 'España'),
    ('1011', 'Estonia'),('1011', 'Finlandia'),('1011', 'Francia'),
    ('1011', 'Grecia'),('1011', 'Hungría'),('1011', 'Irlanda'),
    ('1011', 'Islandia'),('1011', 'Italia'),('1011', 'Letonia'),
    ('1011', 'Kosovo'),('1011', 'Liechtenstein'),('1011', 'Lituania'),
    ('1011', 'Luxemburgo'),('1011', 'Malta'),('1011', 'Macedonia'),
    ('1011', 'Moldavia'),('1011', 'Mónaco'),('1011', 'Montenegro'),
    ('1011', 'Noruega'),('1011', 'Países Bajos'),('1011', 'Polonia'),
    ('1011', 'Portugal'),('1011', 'Reino Unido'),('1011', 'República Checa'),
    ('1011', 'Rumanía'),('1011', 'Rusia'),('1011', 'San Marino'),
    ('1011', 'Serbia'),('1011', 'Suecia'),('1011', 'Suiza'), 
    ('1011', 'Ucrania'), ('1011', 'Vaticano');
    -- Continente Africano
    INSERT INTO `Pais` (`IDContinente`, `PaisNombre`) VALUES
    ('1012', 'Angola'),('1012', 'Argelia'),('1012', 'Benín'),
    ('1012', 'Botsuana'),('1012', 'Burkina Faso'),('1012', 'Burundi'),
    ('1012', 'Cabo Verde'),('1012', 'Camerún'),('1012', 'Chad'),
    ('1012', 'Comoras'),('1012', 'Costa de Marfil'),('1012', 'Egipto'),
    ('1012', 'Eritrea'),('1012', 'Etiopía'),('1012', 'Gabón'),
    ('1012', 'Gambia'),('1012', 'Ghana'),('1012', 'Guinea'),
    ('1012', 'Guinea-Bisáu'),('1012', 'Guinea Ecuatorial'),('1012', 'Kenia'),
    ('1012', 'Lesoto'),('1012', 'Liberia'),('1012', 'Libia'),
    ('1012', 'Madagascar'),('1012', 'Malaui'),('1012', 'Malí o Mali'),
    ('1012', 'Marruecos'),('1012', 'Mauricio'),('1012', 'Mauritania'),
    ('1012', 'Mozambique'),('1012', 'Namibia'),('1012', 'Níger'),
    ('1012', 'Nigeria'),('1012', 'República Centroafricana'),
	('1012', 'República del Congo'),('1012', 'República Democrática del Congo'),
    ('1012', 'Ruanda'),('1012', 'Santo Tomé y Príncipe'),
    ('1012', 'Senegal'),('1012', 'Seychelles'),('1012', 'Sierra Leona'),
    ('1012', 'Somalia'),('1012', 'Suazilandia'),('1012', 'Sudáfrica'),
    ('1012', 'Sudán'),('1012', 'Sudán del Sur'),('1012', 'Tanzania'),
    ('1012', 'Togo'),('1012', 'Túnez'),('1012', 'Uganda'),
    ('1012', 'Yibuti'),('1012', 'Zambia'),('1012', 'Zimbabue');
    -- Continente Asiatico
    INSERT INTO `Pais` (`IDContinente`, `PaisNombre`) VALUES
    ('1013', 'Afganistán'),('1013', 'Arabia Saudita'),('1013', 'Armenia'),
    ('1013', 'Azerbaiyán'),('1013', 'Bangladés'),('1013', 'Baréin'),
    ('1013', 'Birmania'),('1013', 'Brunéi'),('1013', 'Bután'),
    ('1013', 'Camboya'),('1013', 'Catar'),('1013', 'China'),
    ('1013', 'Chipre'),('1013', 'Corea del Norte'),('1013', 'Corea del Sur'),
    ('1013', 'Emiratos Árabes Unidos'),('1013', 'Filipinas'),('1013', 'Georgia'),
    ('1013', 'India'),('1013', 'Indonesia'),('1013', 'Irak'),
    ('1013', 'Irán'),('1013', 'Israel'),('1013', 'Japón'),
    ('1013', 'Jordania'),('1013', 'Kazajistán'),('1013', 'Kirguistán'),
    ('1013', 'Kuwait'),('1013', 'Laos'),('1013', 'Líbano'),
    ('1013', 'Malasia'),('1013', 'Maldivas'),('1013', 'Mongolia'),
    ('1013', 'Nepal'),('1013', 'Omán'),('1013', 'Pakistán'),
    ('1013', 'Singapur'),('1013', 'Siria'),('1013', 'Sri Lanka'),
    ('1013', 'Tailandia'),('1013', 'Tayikistán'),('1013', 'Timor Oriental'),
    ('1013', 'Turkmenistán'),('1013', 'Turquía'),('1013', 'Uzbekistán'),
    ('1013', 'Vietnam'),('1013', 'Yemen');
    -- Continente Oceánico
    INSERT INTO `Pais` (`IDContinente`, `PaisNombre`) VALUES
    ('1014', 'Australia'),('1014', 'Fiyi'),('1014', 'Islas Marshall'),
    ('1014', 'Islas Salomón'),('1014', 'Kiribati'),('1014', 'Micronesia'),
    ('1014', 'Nauru'),('1014', 'Nueva Zelanda'),('1014', 'Palaos'),
    ('1014', 'Papúa Nueva Guinea'),('1014', 'Samoa'),('1014', 'Tonga'),
    ('1014', 'Tuvalu'),('1014', 'Vanuatu');
    
USE COCINAV2;
SELECT * FROM CONTINENTE;
SELECT * FROM PAIS;
SELECT * FROM COMIDAS;
SELECT PAISNOMBRE FROM PAIS, CONTINENTE WHERE PAIS.IDContinente = CONTINENTE.IDCONTINENTE AND CONTINENTE.CONTINENTENOMBRE = 'america';
