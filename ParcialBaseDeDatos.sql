CREATE TABLE DueñoMascota 
	(
		NumeroIdentidad INT PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR (50) NOT NULL,
		Apellido VARCHAR(50) NOT NULL,
		Direccion VARCHAR(100) NOT NULL,
		Departamento VARCHAR(25) NOT NULL,
		Municipio VARCHAR(25) NOT NULL,
		CodigoPostal INT NOT NULL,
		NumeroTelefono INT NOT NULL,
	);

CREATE TABLE Mascota 
	(
		NumeroIdentidadMascota INT PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR(50) NOT NULL,
		Raza VARCHAR(50) NOT NULL,
		Peso VARCHAR(100) NOT NULL,
		TipoMascota VARCHAR(50) NOT NULL,
		ObservacionesMascota VARCHAR(100) NOT NULL,
	);

CREATE TABLE Ingresos 
	(	
		ObservacionesIngreso VARCHAR(100) PRIMARY KEY NOT NULL,
		Motivo VARCHAR(100) NOT NULL,
		FechaIngreso VARCHAR(10) NOT NULL,
	);

CREATE TABLE Veterinario 
	(
		NumeroIdentidadVeterinario INT PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR(50) NOT NULL,
		Apellido VARCHAR(50) NOT NULL,
		Cargo VARCHAR(50) NOT NULL,
	);

	CREATE TABLE Consulta 
	(
		IdentidadDueño INT,
		IdentidadMascota INT,
		IdentidadVeterinario INT,
		ObsIngreso VARCHAR(100),

		FOREIGN KEY (IdentidadDueño) REFERENCES DueñoMascota(NumeroIdentidad),
		FOREIGN KEY (IdentidadMascota) REFERENCES Mascota(NumeroIdentidadMascota),
		FOREIGN KEY (IdentidadVeterinario) REFERENCES Veterinario(NumeroIdentidadVeterinario),
		FOREIGN KEY (ObsIngreso) REFERENCES Ingresos(ObservacionesIngreso),
	);

INSERT INTO Veterinario VALUES('Manuel', 'Lopez', 'Cirujano');
INSERT INTO Veterinario VALUES('Maria', 'Landaverde', 'Enfermera');
INSERT INTO Veterinario VALUES('Kelly', 'Cardoza', 'Veterinario');
INSERT INTO Veterinario VALUES('Lucia', 'Rivas', 'Veterinaria');



INSERT INTO Mascota VALUES('Luna', 'Normal', '34.56', 'Pequeña','tiene piojos');
INSERT INTO Mascota VALUES('Swat', 'Normal', '37.45', 'Pequeña','Presenta manchas en la piel');
INSERT INTO Mascota VALUES('Manchas', 'Normal', '34.56', 'Pequeña','Tiene vomito rojo');
INSERT INTO Mascota VALUES('Gringo', 'Normal', '43.45', 'Pequeña','Tiene moquillo');
INSERT INTO Mascota VALUES('Oso', 'Normal', '65.36', 'Pequeña','tiene zarna');
INSERT INTO Mascota VALUES('Campeon', 'Normal', '23.36', 'Pequeña','Tiene gripe');
INSERT INTO Mascota VALUES('Princesa', 'Normal', '35.56', 'Pequeña','Tiene sintomas de cancer');



INSERT INTO Ingresos VALUES('la mascota ingreso con Pulgas', 'Enfermedad','10/02/21');
INSERT INTO Ingresos VALUES( 'la mascota ingreso con Diarrea', 'Enfermedad','10/02/20');
INSERT INTO Ingresos VALUES( 'la mascota ingreso con asma', 'Enfermedad','23/02/21');
