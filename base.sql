CREATE TABLE Autor (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    anio_nacimiento INTEGER,
    anio_fallecimiento INTEGER
);

CREATE TABLE Libro (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    idioma VARCHAR(50) NOT NULL,
    num_descargas INTEGER,
    autor_id INTEGER NOT NULL,
    CONSTRAINT fk_autor FOREIGN KEY (autor_id) REFERENCES Autor(id)
);

