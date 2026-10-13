# Requisitos funcionales del sistema Biblioteca

Documento inicial para orientar el desarrollo. Los requisitos aun no estan implementados.

## Catalogo
- RF01: registrar libros con titulo, autor, ISBN y cantidad de ejemplares.
- RF02: consultar libros por titulo, autor o ISBN y mostrar su disponibilidad.

## Usuarios
- RF03: registrar lectores con nombre y correo electronico unico.

## Prestamos y devoluciones
- RF04: registrar un prestamo para un lector y un libro con un ejemplar disponible.
- RF05: registrar la fecha de prestamo y la fecha limite de devolucion.
- RF06: registrar la devolucion y restituir la disponibilidad del ejemplar.
- RF07: consultar los prestamos activos, vencidos y el historial de cada lector.

## Reglas iniciales
- No permitir prestamos cuando no quedan ejemplares disponibles.
- No registrar dos veces la devolucion de un mismo prestamo.
- Conservar el historial de prestamos al desactivar un lector o un libro.
