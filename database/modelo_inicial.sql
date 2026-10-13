-- Modelo inicial propuesto para SQLite. No conectado a una aplicacion.
PRAGMA foreign_keys = ON;

CREATE TABLE lectores (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    correo TEXT NOT NULL UNIQUE,
    activo INTEGER NOT NULL DEFAULT 1 CHECK (activo IN (0, 1))
);

CREATE TABLE libros (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    autor TEXT NOT NULL,
    isbn TEXT NOT NULL UNIQUE,
    ejemplares_totales INTEGER NOT NULL CHECK (ejemplares_totales > 0),
    activo INTEGER NOT NULL DEFAULT 1 CHECK (activo IN (0, 1))
);

CREATE TABLE prestamos (
    id INTEGER PRIMARY KEY,
    lector_id INTEGER NOT NULL REFERENCES lectores(id),
    libro_id INTEGER NOT NULL REFERENCES libros(id),
    fecha_prestamo TEXT NOT NULL,
    fecha_limite TEXT NOT NULL,
    fecha_devolucion TEXT,
    CHECK (fecha_limite >= fecha_prestamo),
    CHECK (fecha_devolucion IS NULL OR fecha_devolucion >= fecha_prestamo)
);

CREATE INDEX idx_prestamos_libro ON prestamos(libro_id);
CREATE INDEX idx_prestamos_lector ON prestamos(lector_id);

-- Disponibilidad: ejemplares_totales menos prestamos sin fecha_devolucion.
-- La aplicacion debe verificar disponibilidad dentro de una transaccion
-- antes de insertar un prestamo; este esquema aun no aplica esa regla.
