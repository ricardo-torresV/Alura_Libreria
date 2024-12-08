Aplicación de Gestión de Libros - Consola
Descripción
Esta es una aplicación de consola desarrollada en Java con Spring Boot 3.4, que interactúa con la API de Gutendex para buscar libros por título, almacenarlos en una base de datos PostgreSQL, y realizar diversas consultas y estadísticas relacionadas con libros y autores.

Características principales
Buscar libros por título: Realiza búsquedas en la API de Gutendex, guarda los resultados en la base de datos.
Listar libros registrados: Muestra los libros almacenados en la base de datos.
Listar autores registrados: Despliega todos los autores registrados.
Listar autores vivos por año: Filtra los autores vivos para un año específico.
Listar libros por idioma: Muestra la cantidad de libros almacenados en un idioma particular.
Interfaz de usuario: Presenta un menú interactivo en consola para acceder a las funcionalidades.
Tecnologías utilizadas
Java 17
Spring Boot 3.4
Maven
PostgreSQL
Jackson (para serialización/deserialización JSON)
Gutendex API (https://gutendex.com/)
Requisitos previos
Java 17 o superior instalado.
PostgreSQL instalado y configurado.
Maven para gestionar las dependencias.
Configurar las variables de entorno para la base de datos o actualizar application.properties.
Configuración del proyecto
Clonar el repositorio:

bash
Copiar código
git clone <URL-DEL-REPOSITORIO>
cd nombre-del-proyecto
Configurar la base de datos PostgreSQL:

Crea una base de datos llamada libros_db.

Configura las credenciales en el archivo src/main/resources/application.properties:

properties
Copiar código
spring.datasource.url=jdbc:postgresql://localhost:5432/libros_db
spring.datasource.username=tu_usuario
spring.datasource.password=tu_contraseña
spring.jpa.hibernate.ddl-auto=update
Instalar dependencias con Maven:

bash
Copiar código
mvn clean install
Ejecutar la aplicación:

bash
Copiar código
mvn spring-boot:run
Cómo usar la aplicación
Una vez iniciada, aparecerá un menú interactivo en consola.
Elige una opción ingresando el número correspondiente:
1 para buscar un libro por título y guardarlo.
2 para listar los libros registrados.
3 para listar autores registrados.
4 para listar autores vivos por un año específico.
5 para listar libros por idioma.
6 para salir de la aplicación.
Sigue las instrucciones que se presenten en consola.
Estructura del proyecto
bash
Copiar código
src/
├── main/
│   ├── java/com/alura/libros/
│   │   ├── client/           # Cliente para la API Gutendex
│   │   ├── config/           # Configuración de beans
│   │   ├── model/            # Clases de entidad: Libro y Autor
│   │   ├── repository/       # Repositorios JPA para acceso a datos
│   │   ├── service/          # Lógica de negocio
│   │   └── LibrosApplication # Clase principal
│   └── resources/
│       └── application.properties # Configuración de la base de datos
└── test/ # Clases de pruebas unitarias
Ejemplo de uso
Buscar un libro por título:
Entrada del usuario:
bash
Copiar código
Ingrese el título del libro a buscar:
Pride and Prejudice
Salida esperada:
bash
Copiar código
Libro guardado: {titulo: "Pride and Prejudice", autor: "Jane Austen", idioma: "en", numDescargas: 15000}
Listar libros registrados:
Salida esperada:
bash
Copiar código
Libros registrados:
1. Título: Pride and Prejudice, Autor: Jane Austen, Idioma: en, Descargas: 15000
2. Título: Cien Años de Soledad, Autor: Gabriel García Márquez, Idioma: es, Descargas: 5000
Contribuciones
Si deseas contribuir:

Haz un fork del repositorio.
Crea una rama para tus cambios:
bash
Copiar código
git checkout -b feature/nueva-funcionalidad
Realiza tus cambios y haz un commit:
bash
Copiar código
git commit -m "Descripción del cambio"
Envía un pull request.
