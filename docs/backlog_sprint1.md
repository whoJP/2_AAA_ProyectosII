# Backlog inicial del sprint 1

Plan propuesto para iniciar el sistema Biblioteca. Responsable: Julio Cesar Prudencio Miranda.

## Objetivo del sprint
Preparar el catalogo de libros y el registro de lectores como base del flujo de prestamos.

## Trabajo pendiente
- [ ] HU01: como encargado, registrar libros para mantener el catalogo. Criterio: guardar titulo, autor, ISBN y cantidad; rechazar un ISBN duplicado y cantidades no positivas.
- [ ] HU02: como encargado, buscar libros por titulo, autor o ISBN. Criterio: mostrar coincidencias y disponibilidad calculada a partir de los prestamos activos.
- [ ] HU03: como encargado, registrar lectores. Criterio: guardar nombre y correo; rechazar correos duplicados.
- [ ] HU04: como encargado, prestar un libro disponible. Criterio: validar lector y libro activos, disponibilidad y fechas dentro de una transaccion.
- [ ] HU05: como encargado, registrar una devolucion. Criterio: actualizar una sola vez la fecha de devolucion y reflejar la disponibilidad.
- [ ] Disenar el prototipo en Figma y agregar su enlace.
- [ ] Preparar pruebas de registro, disponibilidad, prestamos y devoluciones.

## Preparacion completada
- [x] Crear la estructura de carpetas.
- [x] Documentar el proyecto en README.
- [x] Definir requisitos funcionales iniciales.
- [x] Crear y verificar la sintaxis del modelo SQL inicial.

## Condicion de finalizacion
El desarrollo solo se considerara completado cuando las funciones se implementen y se comprueben sus criterios. Este backlog no acredita una implementacion terminada.
